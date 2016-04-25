namespace SoundFingerprinting.MySQL.Infrastructure
{
    using Ninject;

    using SoundFingerprinting.Infrastructure;
    using SoundFingerprinting.MySQL.Connection;
    using SoundFingerprinting.MySQL.ORM;

    internal class MySQLModuleLoader : IModuleLoader
    {
        public void LoadAssemblyBindings(IKernel kernel)
        {
            kernel.Bind<IModelBinderFactory>().To<CachedModelBinderFactory>().InSingletonScope();
            kernel.Bind<IModelBinderFactory>().To<ModelBinderFactory>()
                                              .WhenInjectedInto<CachedModelBinderFactory>();

            kernel.Bind<IDatabaseProviderFactory>().To<MySqlDatabaseProviderFactory>();
            kernel.Bind<IConnectionStringFactory>().To<DefaultConnectionStringFactory>().InSingletonScope();
        }
    }
}
