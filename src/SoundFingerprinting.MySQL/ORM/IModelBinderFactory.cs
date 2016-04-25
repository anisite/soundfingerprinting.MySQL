namespace SoundFingerprinting.MySQL.ORM
{
    using System.Data;

    using SoundFingerprinting.MySQL.Conditions;
    using MySql.Data.MySqlClient;
    internal interface IModelBinderFactory
    {
        IModelBinder<TModel> Create<TModel>(params ICondition<TModel>[] conditions) where TModel : new();

        DbType GetParameterType<T>();
    }
}