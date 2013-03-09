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

.method private getAreaDescriptionForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "number"
    .parameter "lang"
    .parameter "script"
    .parameter "region"

    .prologue
    .line 175
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 178
    .local v0, countryCallingCode:I
    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    move v1, v0

    .line 180
    .local v1, phonePrefix:I
    :goto_0
    invoke-direct {p0, v1, p2, p3, p4}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getPhonePrefixDescriptions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;

    move-result-object v2

    .line 182
    .local v2, phonePrefixDescriptions:Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;
    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;->lookup(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    return-object v3

    .line 178
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

    .line 182
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
    .line 118
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v1, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v0

    .line 119
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
    .line 107
    const-class v1, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->instance:Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    const-string v2, "/com/android/i18n/phonenumbers/geocoding/data/"

    invoke-direct {v0, v2}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->instance:Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    .line 110
    :cond_0
    sget-object v0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->instance:Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 107
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
    .line 73
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->mappingFileProvider:Lcom/android/i18n/phonenumbers/geocoding/MappingFileProvider;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/i18n/phonenumbers/geocoding/MappingFileProvider;->getFileName(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, fileName:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 75
    const/4 v1, 0x0

    .line 80
    :goto_0
    return-object v1

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->availablePhonePrefixMaps:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 78
    invoke-direct {p0, v0}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->loadAreaCodeMapFromFile(Ljava/lang/String;)V

    .line 80
    :cond_1
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->availablePhonePrefixMaps:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;

    goto :goto_0
.end method

.method private loadAreaCodeMapFromFile(Ljava/lang/String;)V
    .locals 7
    .parameter "fileName"

    .prologue
    .line 84
    const-class v4, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->phonePrefixDataDirectory:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 88
    .local v3, source:Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 89
    .local v1, in:Ljava/io/ObjectInputStream;
    new-instance v2, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;

    invoke-direct {v2}, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;-><init>()V

    .line 90
    .local v2, map:Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;
    invoke-virtual {v2, v1}, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;->readExternal(Ljava/io/ObjectInput;)V

    .line 91
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->availablePhonePrefixMaps:Ljava/util/Map;

    invoke-interface {v4, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .end local v1           #in:Ljava/io/ObjectInputStream;
    .end local v2           #map:Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, e:Ljava/io/IOException;
    sget-object v4, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->LOGGER:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private loadMappingFileProvider()V
    .locals 6

    .prologue
    .line 60
    const-class v3, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->phonePrefixDataDirectory:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "config"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 64
    .local v2, source:Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 65
    .local v1, in:Ljava/io/ObjectInputStream;
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->mappingFileProvider:Lcom/android/i18n/phonenumbers/geocoding/MappingFileProvider;

    invoke-virtual {v3, v1}, Lcom/android/i18n/phonenumbers/geocoding/MappingFileProvider;->readExternal(Ljava/io/ObjectInput;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .end local v1           #in:Ljava/io/ObjectInputStream;
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, e:Ljava/io/IOException;
    sget-object v3, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->LOGGER:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getDescriptionForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .parameter "number"
    .parameter "languageCode"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    const-string v0, ""

    .line 159
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
    .line 134
    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, langStr:Ljava/lang/String;
    const-string v3, ""

    .line 136
    .local v3, scriptStr:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, regionStr:Ljava/lang/String;
    invoke-direct {p0, p1, v1, v3, v2}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getAreaDescriptionForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
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
