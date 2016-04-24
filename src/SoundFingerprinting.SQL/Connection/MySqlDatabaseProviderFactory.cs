namespace SoundFingerprinting.SQL.Connection
{
    using System.Data;
    using System.Data.Common;

    using SoundFingerprinting.Infrastructure;
    using MySql.Data.MySqlClient;
    internal class MySqlDatabaseProviderFactory : IDatabaseProviderFactory
    {
        private readonly IConnectionStringFactory connectionStringFactory;

        private readonly DbProviderFactory databaseProvider;

        public MySqlDatabaseProviderFactory()
            : this(DependencyResolver.Current.Get<IConnectionStringFactory>())
        {
        }

        public MySqlDatabaseProviderFactory(IConnectionStringFactory connectionStringFactory)
        {
            this.connectionStringFactory = connectionStringFactory;
            databaseProvider = MySqlClientFactory.Instance;
        }

        public IDbConnection CreateConnection()
        {
            IDbConnection connection = databaseProvider.CreateConnection();
            if (connection != null)
            {
                connection.ConnectionString = connectionStringFactory.GetConnectionString();
                return connection;
            }

            return null;
        }
    }
}