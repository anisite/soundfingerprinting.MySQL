## Sound Fingerprinting MySQL
_soundfingerprinting.sql_ persistent storage implementation which allows storing [soundfingerprinting](https://github.com/AddictedCS/soundfingerprinting) algorithm's data objects in _MySQL_ database. 
## Usage
The MSySQL database initialization script can be find [here](src/Scripts/MySQL_script.sql). Do not forget to add connection string <code>FingerprintConnectionString</code> in your app.config file.
```xml
<connectionStrings>
    <add name="FingerprintConnectionString" connectionString="server=mySqlServer;port=3306;database=fingerprintsdb;uid=root;password=******" providerName="MySql.Data.MySqlClient"/>
</connectionStrings>
```
Use <code>MySqlModelService</code> class when fingerprinting and querying
```csharp
private readonly IModelService modelService = new MySqlModelService(); // SQL back end
private readonly IAudioService audioService = new NAudioService(); // use NAudio audio processing library
private readonly IFingerprintCommandBuilder fingerprintCommandBuilder = new FingerprintCommandBuilder();

public void StoreAudioFileFingerprintsInStorageForLaterRetrieval(string pathToAudioFile)
{
    TrackData track = new TrackData("GBBKS1200164", "Adele", "Skyfall", "Skyfall", 2012, 290);
	
    // store track metadata in the database
    var trackReference = modelService.InsertTrack(track);

    // create sub-fingerprints and its hash representation
    var hashedFingerprints = fingerprintCommandBuilder
                                .BuildFingerprintCommand()
                                .From(pathToAudioFile)
                                .UsingServices(audioService)
                                .Hash()
                                .Result;
								
    // store sub-fingerprints and its hash representation in the database 
    modelService.InsertHashedFingerprintsForTrack(hashedFingerprints, trackReference); // insert in SQL backend
}
```
## Binaries
    git clone git@github.com:anisite/soundfingerprinting.MySQL.git
In order to build latest version of the <code>SoundFingerprinting.MySQL</code> assembly run the following command from repository root
    .\build.cmd
## Get it on NuGet (not yet ready)
    Install-Package SoundFingerprinting.MySQL
