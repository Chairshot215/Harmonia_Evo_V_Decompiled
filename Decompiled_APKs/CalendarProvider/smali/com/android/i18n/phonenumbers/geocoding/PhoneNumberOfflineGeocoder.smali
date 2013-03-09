.class public Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;
.super Ljava/lang/Object;
.source "PhoneNumberOfflineGeocoder.java"


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger; = null

.field private static final MAPPING_DATA_DIRECTORY:Ljava/lang/String; = "/com/android/i18n/phonenumbers/geocoding/data/"

.field private static instance:Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;


# instance fields
.field private availablePhonePrefixMaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;",
            ">;"
        }
    .end annotation
.end field

.field private mappingFileProvider:Lcom/android/i18n/phonenumbers/geocoding/MappingFileProvider;

.field private final phonePrefixDataDirectory:Ljava/lang/String;

.field private final phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->instance:Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    .line 40
    const-class v0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "phonePrefixDataDirectory"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    .line 47
    new-instance v0, Lcom/android/i18n/phonenumbers/geocoding/MappingFileProvider;

    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/geocoding/MappingFileProvider;-><init>()V

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->mappingFileProvider:Lcom/android/i18n/phonenumbers/geocoding/MappingFileProvider;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->availablePhonePrefixMaps:Ljava/util/Map;

    .line 55
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->phonePrefixDataDirectory:Ljava/lang/String;

    .line 56
    invoke-direct {p0}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->loadMappingFileProvider()V

    .line 57
    return-void
.end method

.method private close(Ljava/io/InputStream;)V
    .locals 4
    .parameter "in"

    .prologue
    .line 102
    if-eqz p1, :cond_0

    .line 104
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, e:Ljava/io/IOException;
    sget-object v1, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->LOGGER:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getAreaDescriptionForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "number"
    .parameter "lang"
    .parameter "script"
    .parameter "region"

    .prologue
    .line 189
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 192
    .local v0, countryCallingCode:I
    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    move v1, v0

    .line 194
    .local v1, phonePrefix:I
    :goto_0
    invoke-direct {p0, v1, p2, p3, p4}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getPhonePrefixDescriptions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;

    move-result-object v2

    .line 196
    .local v2, phonePrefixDescriptions:Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;
    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;->lookup(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    return-object v3

    .line 192
    .end local v1           #phonePrefix:I
    .end local v2           #phonePrefixDescriptions:Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;
    :cond_0
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v3

    const-wide/32 v5, 0x989680

    div-long/2addr v3, v5

    long-to-int v3, v3

    add-int/lit16 v1, v3, 0x3e8

    goto :goto_0

    .line 196
    .restart local v1       #phonePrefix:I
    .restart local v2       #phonePrefixDescriptions:Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;
    :cond_1
    const-string v3, ""

    goto :goto_1
.end method

.method private getCountryNameForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;
    .locals 3
    .parameter "number"
    .parameter "language"

    .prologue
    .line 132
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v1, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, regionCode:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "ZZ"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, ""

    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Ljava/util/Locale;

    const-string v2, ""

    invoke-direct {v1, v2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;
    .locals 3

    .prologue
    .line 121
    const-class v1, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->instance:Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    const-string v2, "/com/android/i18n/phonenumbers/geocoding/data/"

    invoke-direct {v0, v2}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->instance:Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    .line 124
    :cond_0
    sget-object v0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->instance:Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getPhonePrefixDescriptions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;
    .locals 2
    .parameter "countryCallingCode"
    .parameter "language"
    .parameter "script"
    .parameter "region"

    .prologue
    .line 75
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->mappingFileProvider:Lcom/android/i18n/phonenumbers/geocoding/MappingFileProvider;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/i18n/phonenumbers/geocoding/MappingFileProvider;->getFileName(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, fileName:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 77
    const/4 v1, 0x0

    .line 82
    :goto_0
    return-object v1

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->availablePhonePrefixMaps:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 80
    invoke-direct {p0, v0}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->loadAreaCodeMapFromFile(Ljava/lang/String;)V

    .line 82
    :cond_1
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->availablePhonePrefixMaps:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;

    goto :goto_0
.end method

.method private loadAreaCodeMapFromFile(Ljava/lang/String;)V
    .locals 8
    .parameter "fileName"

    .prologue
    .line 86
    const-class v5, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->phonePrefixDataDirectory:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 88
    .local v4, source:Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 90
    .local v1, in:Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .end local v1           #in:Ljava/io/ObjectInputStream;
    .local v2, in:Ljava/io/ObjectInputStream;
    :try_start_1
    new-instance v3, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;

    invoke-direct {v3}, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;-><init>()V

    .line 92
    .local v3, map:Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;
    invoke-virtual {v3, v2}, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;->readExternal(Ljava/io/ObjectInput;)V

    .line 93
    iget-object v5, p0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->availablePhonePrefixMaps:Ljava/util/Map;

    invoke-interface {v5, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 97
    invoke-direct {p0, v2}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->close(Ljava/io/InputStream;)V

    move-object v1, v2

    .line 99
    .end local v2           #in:Ljava/io/ObjectInputStream;
    .end local v3           #map:Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;
    .restart local v1       #in:Ljava/io/ObjectInputStream;
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, e:Ljava/io/IOException;
    :goto_1
    :try_start_2
    sget-object v5, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->LOGGER:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 97
    invoke-direct {p0, v1}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->close(Ljava/io/InputStream;)V

    goto :goto_0

    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_2
    invoke-direct {p0, v1}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->close(Ljava/io/InputStream;)V

    throw v5

    .end local v1           #in:Ljava/io/ObjectInputStream;
    .restart local v2       #in:Ljava/io/ObjectInputStream;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2           #in:Ljava/io/ObjectInputStream;
    .restart local v1       #in:Ljava/io/ObjectInputStream;
    goto :goto_2

    .line 94
    .end local v1           #in:Ljava/io/ObjectInputStream;
    .restart local v2       #in:Ljava/io/ObjectInputStream;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2           #in:Ljava/io/ObjectInputStream;
    .restart local v1       #in:Ljava/io/ObjectInputStream;
    goto :goto_1
.end method

.method private loadMappingFileProvider()V
    .locals 7

    .prologue
    .line 60
    const-class v4, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->phonePrefixDataDirectory:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "config"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 62
    .local v3, source:Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 64
    .local v1, in:Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v1           #in:Ljava/io/ObjectInputStream;
    .local v2, in:Ljava/io/ObjectInputStream;
    :try_start_1
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->mappingFileProvider:Lcom/android/i18n/phonenumbers/geocoding/MappingFileProvider;

    invoke-virtual {v4, v2}, Lcom/android/i18n/phonenumbers/geocoding/MappingFileProvider;->readExternal(Ljava/io/ObjectInput;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 69
    invoke-direct {p0, v2}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->close(Ljava/io/InputStream;)V

    move-object v1, v2

    .line 71
    .end local v2           #in:Ljava/io/ObjectInputStream;
    .restart local v1       #in:Ljava/io/ObjectInputStream;
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, e:Ljava/io/IOException;
    :goto_1
    :try_start_2
    sget-object v4, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->LOGGER:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    invoke-direct {p0, v1}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->close(Ljava/io/InputStream;)V

    goto :goto_0

    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_2
    invoke-direct {p0, v1}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->close(Ljava/io/InputStream;)V

    throw v4

    .end local v1           #in:Ljava/io/ObjectInputStream;
    .restart local v2       #in:Ljava/io/ObjectInputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2           #in:Ljava/io/ObjectInputStream;
    .restart local v1       #in:Ljava/io/ObjectInputStream;
    goto :goto_2

    .line 66
    .end local v1           #in:Ljava/io/ObjectInputStream;
    .restart local v2       #in:Ljava/io/ObjectInputStream;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2           #in:Ljava/io/ObjectInputStream;
    .restart local v1       #in:Ljava/io/ObjectInputStream;
    goto :goto_1
.end method


# virtual methods
.method public getDescriptionForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .parameter "number"
    .parameter "languageCode"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    const-string v0, ""

    .line 173
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getDescriptionForValidNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDescriptionForValidNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;
    .locals 5
    .parameter "number"
    .parameter "languageCode"

    .prologue
    .line 148
    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, langStr:Ljava/lang/String;
    const-string v3, ""

    .line 150
    .local v3, scriptStr:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 152
    .local v2, regionStr:Ljava/lang/String;
    invoke-direct {p0, p1, v1, v3, v2}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getAreaDescriptionForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, areaDescription:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .end local v0           #areaDescription:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #areaDescription:Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getCountryNameForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
