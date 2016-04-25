namespace SoundFingerprinting.MySQL.Connection
{
    using System.Data;

    internal interface IDatabaseProviderFactory
    {
        IDbConnection CreateConnection();
    }
}