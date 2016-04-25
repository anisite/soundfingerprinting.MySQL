namespace SoundFingerprinting.MySQL
{
    using System.Data;
    using SoundFingerprinting.DAO;
    using SoundFingerprinting.DAO.Data;
    using SoundFingerprinting.Infrastructure;
    using SoundFingerprinting.MySQL.Connection;
    using SoundFingerprinting.MySQL.ORM;
    using System;
    using Infrastructure;
    internal class SubFingerprintDao : AbstractDao, ISubFingerprintDao
    {
        private const string SpInsertSubFingerprint = "sp_InsertSubFingerprint";
        private const string SpReadSubFingerprintById = "sp_ReadSubFingerprintById";

        public SubFingerprintDao() : base(
                DependencyResolver.Current.Get<IDatabaseProviderFactory>(),
                DependencyResolver.Current.Get<IModelBinderFactory>())
        {
            // no op
        }

        public SubFingerprintDao(IDatabaseProviderFactory databaseProvider, IModelBinderFactory modelBinderFactory)
            : base(databaseProvider, modelBinderFactory)
        {
        }

        public SubFingerprintData ReadSubFingerprint(IModelReference subFingerprintReference)
        {
            return PrepareStoredProcedure(SpReadSubFingerprintById)
                        .WithParameter("Id", subFingerprintReference.Id, DbType.Int64)
                        .Execute()
                        .AsComplexModel<SubFingerprintData>((item, reader) =>
                            {
                                item.SubFingerprintReference = new ModelReference<int>(reader.GetInt32("Id"));
                                item.TrackReference = new ModelReference<int>(reader.GetInt32("TrackId"));
                            });
        }

        public IModelReference InsertSubFingerprint(byte[] signature, int sequenceNumber, double sequenceAt, IModelReference trackReference)
        {
            ulong subFingerprintId = PrepareStoredProcedure(SpInsertSubFingerprint)
                                .WithParameter("Signature", signature)
                                .WithParameter("TrackId", trackReference.Id, DbType.Int32)
                                .WithParameter("SequenceNumber", sequenceNumber, DbType.Int32)
                                .WithParameter("SequenceAt", sequenceAt, DbType.Double)
                                .Execute()
                                .AsScalar<ulong>();

            return new ModelReference<int>(Convert.ToInt32(subFingerprintId));
        }
    }
}
