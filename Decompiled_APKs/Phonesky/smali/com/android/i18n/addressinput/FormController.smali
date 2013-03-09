.class Lcom/android/i18n/addressinput/FormController;
.super Ljava/lang/Object;
.source "FormController.java"


# static fields
.field private static final ADDRESS_HIERARCHY:[Lcom/android/i18n/addressinput/AddressField;

.field private static final ROOT_KEY:Lcom/android/i18n/addressinput/LookupKey;


# instance fields
.field private mCurrentCountry:Ljava/lang/String;

.field private mIntegratedData:Lcom/android/i18n/addressinput/ClientData;

.field private mLanguageCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    invoke-static {}, Lcom/android/i18n/addressinput/FormController;->getDataKeyForRoot()Lcom/android/i18n/addressinput/LookupKey;

    move-result-object v0

    sput-object v0, Lcom/android/i18n/addressinput/FormController;->ROOT_KEY:Lcom/android/i18n/addressinput/LookupKey;

    .line 40
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/i18n/addressinput/AddressField;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/i18n/addressinput/AddressField;->COUNTRY:Lcom/android/i18n/addressinput/AddressField;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/android/i18n/addressinput/AddressField;->ADMIN_AREA:Lcom/android/i18n/addressinput/AddressField;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/android/i18n/addressinput/AddressField;->LOCALITY:Lcom/android/i18n/addressinput/AddressField;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/android/i18n/addressinput/AddressField;->DEPENDENT_LOCALITY:Lcom/android/i18n/addressinput/AddressField;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/i18n/addressinput/FormController;->ADDRESS_HIERARCHY:[Lcom/android/i18n/addressinput/AddressField;

    return-void
.end method

.method constructor <init>(Lcom/android/i18n/addressinput/ClientData;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "integratedData"
    .parameter "languageCode"
    .parameter "currentCountry"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-string v3, "null data not allowed"

    invoke-static {p1, v3}, Lcom/android/i18n/addressinput/Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iput-object p2, p0, Lcom/android/i18n/addressinput/FormController;->mLanguageCode:Ljava/lang/String;

    .line 60
    iput-object p3, p0, Lcom/android/i18n/addressinput/FormController;->mCurrentCountry:Ljava/lang/String;

    .line 62
    new-instance v3, Lcom/android/i18n/addressinput/AddressData$Builder;

    invoke-direct {v3}, Lcom/android/i18n/addressinput/AddressData$Builder;-><init>()V

    const-string v4, "ZZ"

    invoke-virtual {v3, v4}, Lcom/android/i18n/addressinput/AddressData$Builder;->setCountry(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/i18n/addressinput/AddressData$Builder;->build()Lcom/android/i18n/addressinput/AddressData;

    move-result-object v0

    .line 63
    .local v0, address:Lcom/android/i18n/addressinput/AddressData;
    invoke-virtual {p0, v0}, Lcom/android/i18n/addressinput/FormController;->getDataKeyFor(Lcom/android/i18n/addressinput/AddressData;)Lcom/android/i18n/addressinput/LookupKey;

    move-result-object v2

    .line 65
    .local v2, defaultCountryKey:Lcom/android/i18n/addressinput/LookupKey;
    invoke-virtual {v2}, Lcom/android/i18n/addressinput/LookupKey;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/i18n/addressinput/ClientData;->getDefaultData(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressVerificationNodeData;

    move-result-object v1

    .line 67
    .local v1, defaultCountryData:Lcom/android/i18n/addressinput/AddressVerificationNodeData;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "require data for default country key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/i18n/addressinput/Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iput-object p1, p0, Lcom/android/i18n/addressinput/FormController;->mIntegratedData:Lcom/android/i18n/addressinput/ClientData;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/android/i18n/addressinput/FormController;Lcom/android/i18n/addressinput/LookupKey;Ljava/lang/String;)Lcom/android/i18n/addressinput/LookupKey;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/i18n/addressinput/FormController;->buildDataLookupKey(Lcom/android/i18n/addressinput/LookupKey;Ljava/lang/String;)Lcom/android/i18n/addressinput/LookupKey;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/i18n/addressinput/FormController;Lcom/android/i18n/addressinput/LookupKey;Ljava/util/Queue;Lcom/android/i18n/addressinput/DataLoadListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/android/i18n/addressinput/FormController;->requestDataRecursively(Lcom/android/i18n/addressinput/LookupKey;Ljava/util/Queue;Lcom/android/i18n/addressinput/DataLoadListener;)V

    return-void
.end method

.method private buildDataLookupKey(Lcom/android/i18n/addressinput/LookupKey;Ljava/lang/String;)Lcom/android/i18n/addressinput/LookupKey;
    .locals 5
    .parameter "lookupKey"
    .parameter "subKey"

    .prologue
    .line 174
    invoke-virtual {p1}, Lcom/android/i18n/addressinput/LookupKey;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, subKeys:[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/i18n/addressinput/FormController;->mLanguageCode:Ljava/lang/String;

    if-nez v3, :cond_1

    const/4 v1, 0x0

    .line 177
    .local v1, languageCodeSubTag:Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/i18n/addressinput/LookupKey;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, key:Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/i18n/addressinput/FormController;->isDefaultLanguage(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 182
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "--"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 184
    :cond_0
    new-instance v3, Lcom/android/i18n/addressinput/LookupKey$Builder;

    invoke-direct {v3, v0}, Lcom/android/i18n/addressinput/LookupKey$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/i18n/addressinput/LookupKey$Builder;->build()Lcom/android/i18n/addressinput/LookupKey;

    move-result-object v3

    return-object v3

    .line 175
    .end local v0           #key:Ljava/lang/String;
    .end local v1           #languageCodeSubTag:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/i18n/addressinput/FormController;->mLanguageCode:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/i18n/addressinput/Util;->getLanguageSubtag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static getDataKeyForRoot()Lcom/android/i18n/addressinput/LookupKey;
    .locals 3

    .prologue
    .line 88
    new-instance v1, Lcom/android/i18n/addressinput/AddressData$Builder;

    invoke-direct {v1}, Lcom/android/i18n/addressinput/AddressData$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/android/i18n/addressinput/AddressData$Builder;->build()Lcom/android/i18n/addressinput/AddressData;

    move-result-object v0

    .line 89
    .local v0, address:Lcom/android/i18n/addressinput/AddressData;
    new-instance v1, Lcom/android/i18n/addressinput/LookupKey$Builder;

    sget-object v2, Lcom/android/i18n/addressinput/LookupKey$KeyType;->DATA:Lcom/android/i18n/addressinput/LookupKey$KeyType;

    invoke-direct {v1, v2}, Lcom/android/i18n/addressinput/LookupKey$Builder;-><init>(Lcom/android/i18n/addressinput/LookupKey$KeyType;)V

    invoke-virtual {v1, v0}, Lcom/android/i18n/addressinput/LookupKey$Builder;->setAddressData(Lcom/android/i18n/addressinput/AddressData;)Lcom/android/i18n/addressinput/LookupKey$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/i18n/addressinput/LookupKey$Builder;->build()Lcom/android/i18n/addressinput/LookupKey;

    move-result-object v1

    return-object v1
.end method

.method private getScriptType()Lcom/android/i18n/addressinput/LookupKey$ScriptType;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/i18n/addressinput/FormController;->mLanguageCode:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/i18n/addressinput/FormController;->mLanguageCode:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/i18n/addressinput/Util;->isExplicitLatinScript(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    sget-object v0, Lcom/android/i18n/addressinput/LookupKey$ScriptType;->LATIN:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    .line 84
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/i18n/addressinput/LookupKey$ScriptType;->LOCAL:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    goto :goto_0
.end method

.method private getSubKey(Lcom/android/i18n/addressinput/LookupKey;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "parentKey"
    .parameter "name"

    .prologue
    .line 277
    invoke-virtual {p0, p1}, Lcom/android/i18n/addressinput/FormController;->getRegionData(Lcom/android/i18n/addressinput/LookupKey;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/i18n/addressinput/RegionData;

    .line 278
    .local v1, subRegion:Lcom/android/i18n/addressinput/RegionData;
    invoke-virtual {v1, p2}, Lcom/android/i18n/addressinput/RegionData;->isValidName(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 279
    invoke-virtual {v1}, Lcom/android/i18n/addressinput/RegionData;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 282
    .end local v1           #subRegion:Lcom/android/i18n/addressinput/RegionData;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private normalizeLookupKey(Lcom/android/i18n/addressinput/LookupKey;)Lcom/android/i18n/addressinput/LookupKey;
    .locals 10
    .parameter "key"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 296
    invoke-static {p1}, Lcom/android/i18n/addressinput/Util;->checkNotNull(Ljava/lang/Object;)V

    .line 297
    invoke-virtual {p1}, Lcom/android/i18n/addressinput/LookupKey;->getKeyType()Lcom/android/i18n/addressinput/LookupKey$KeyType;

    move-result-object v6

    sget-object v7, Lcom/android/i18n/addressinput/LookupKey$KeyType;->DATA:Lcom/android/i18n/addressinput/LookupKey$KeyType;

    if-eq v6, v7, :cond_0

    .line 298
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Only DATA keyType is supported"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 301
    :cond_0
    invoke-virtual {p1}, Lcom/android/i18n/addressinput/LookupKey;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 304
    .local v5, subStr:[Ljava/lang/String;
    array-length v6, v5

    const/4 v7, 0x2

    if-ge v6, v7, :cond_1

    .line 334
    .end local p1
    :goto_0
    return-object p1

    .line 308
    .restart local p1
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    aget-object v6, v5, v8

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 309
    .local v4, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    array-length v6, v5

    if-ge v0, v6, :cond_5

    .line 311
    const/4 v1, 0x0

    .line 312
    .local v1, languageCode:Ljava/lang/String;
    if-ne v0, v9, :cond_2

    aget-object v6, v5, v0

    const-string v7, "--"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 313
    aget-object v6, v5, v0

    const-string v7, "--"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 314
    .local v3, s:[Ljava/lang/String;
    aget-object v6, v3, v8

    aput-object v6, v5, v0

    .line 315
    aget-object v1, v3, v9

    .line 318
    .end local v3           #s:[Ljava/lang/String;
    :cond_2
    new-instance v6, Lcom/android/i18n/addressinput/LookupKey$Builder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/i18n/addressinput/LookupKey$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/android/i18n/addressinput/LookupKey$Builder;->build()Lcom/android/i18n/addressinput/LookupKey;

    move-result-object v6

    aget-object v7, v5, v0

    invoke-direct {p0, v6, v7}, Lcom/android/i18n/addressinput/FormController;->getSubKey(Lcom/android/i18n/addressinput/LookupKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 323
    .local v2, normalizedSubKey:Ljava/lang/String;
    if-nez v2, :cond_3

    .line 324
    :goto_2
    array-length v6, v5

    if-ge v0, v6, :cond_5

    .line 325
    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v5, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 329
    :cond_3
    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    if-eqz v1, :cond_4

    .line 331
    const-string v6, "--"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 334
    .end local v1           #languageCode:Ljava/lang/String;
    .end local v2           #normalizedSubKey:Ljava/lang/String;
    :cond_5
    new-instance v6, Lcom/android/i18n/addressinput/LookupKey$Builder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/i18n/addressinput/LookupKey$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/android/i18n/addressinput/LookupKey$Builder;->build()Lcom/android/i18n/addressinput/LookupKey;

    move-result-object p1

    goto :goto_0
.end method

.method private requestDataRecursively(Lcom/android/i18n/addressinput/LookupKey;Ljava/util/Queue;Lcom/android/i18n/addressinput/DataLoadListener;)V
    .locals 2
    .parameter "key"
    .parameter
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/i18n/addressinput/LookupKey;",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/i18n/addressinput/DataLoadListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 133
    .local p2, subkeys:Ljava/util/Queue;,"Ljava/util/Queue<Ljava/lang/String;>;"
    const-string v0, "Null key not allowed"

    invoke-static {p1, v0}, Lcom/android/i18n/addressinput/Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    const-string v0, "Null subkeys not allowed"

    invoke-static {p2, v0}, Lcom/android/i18n/addressinput/Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/android/i18n/addressinput/FormController;->mIntegratedData:Lcom/android/i18n/addressinput/ClientData;

    new-instance v1, Lcom/android/i18n/addressinput/FormController$1;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/android/i18n/addressinput/FormController$1;-><init>(Lcom/android/i18n/addressinput/FormController;Lcom/android/i18n/addressinput/LookupKey;Lcom/android/i18n/addressinput/DataLoadListener;Ljava/util/Queue;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/i18n/addressinput/ClientData;->requestData(Lcom/android/i18n/addressinput/LookupKey;Lcom/android/i18n/addressinput/DataLoadListener;)V

    .line 171
    return-void
.end method

.method private splitData(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "raw"

    .prologue
    .line 270
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 271
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 273
    :goto_0
    return-object v0

    :cond_1
    const-string v0, "~"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method getDataKeyFor(Lcom/android/i18n/addressinput/AddressData;)Lcom/android/i18n/addressinput/LookupKey;
    .locals 2
    .parameter "address"

    .prologue
    .line 93
    new-instance v0, Lcom/android/i18n/addressinput/LookupKey$Builder;

    sget-object v1, Lcom/android/i18n/addressinput/LookupKey$KeyType;->DATA:Lcom/android/i18n/addressinput/LookupKey$KeyType;

    invoke-direct {v0, v1}, Lcom/android/i18n/addressinput/LookupKey$Builder;-><init>(Lcom/android/i18n/addressinput/LookupKey$KeyType;)V

    invoke-virtual {v0, p1}, Lcom/android/i18n/addressinput/LookupKey$Builder;->setAddressData(Lcom/android/i18n/addressinput/AddressData;)Lcom/android/i18n/addressinput/LookupKey$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/LookupKey$Builder;->build()Lcom/android/i18n/addressinput/LookupKey;

    move-result-object v0

    return-object v0
.end method

.method getRegionData(Lcom/android/i18n/addressinput/LookupKey;)Ljava/util/List;
    .locals 10
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/i18n/addressinput/LookupKey;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/i18n/addressinput/RegionData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 220
    invoke-virtual {p1}, Lcom/android/i18n/addressinput/LookupKey;->getKeyType()Lcom/android/i18n/addressinput/LookupKey$KeyType;

    move-result-object v8

    sget-object v9, Lcom/android/i18n/addressinput/LookupKey$KeyType;->EXAMPLES:Lcom/android/i18n/addressinput/LookupKey$KeyType;

    if-ne v8, v9, :cond_0

    .line 221
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "example key not allowed for getting region data"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 223
    :cond_0
    const-string v8, "null regionKey not allowed"

    invoke-static {p1, v8}, Lcom/android/i18n/addressinput/Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    invoke-direct {p0, p1}, Lcom/android/i18n/addressinput/FormController;->normalizeLookupKey(Lcom/android/i18n/addressinput/LookupKey;)Lcom/android/i18n/addressinput/LookupKey;

    move-result-object v5

    .line 225
    .local v5, normalizedKey:Lcom/android/i18n/addressinput/LookupKey;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 228
    .local v7, results:Ljava/util/List;,"Ljava/util/List<Lcom/android/i18n/addressinput/RegionData;>;"
    sget-object v8, Lcom/android/i18n/addressinput/FormController;->ROOT_KEY:Lcom/android/i18n/addressinput/LookupKey;

    invoke-virtual {v5, v8}, Lcom/android/i18n/addressinput/LookupKey;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 229
    iget-object v8, p0, Lcom/android/i18n/addressinput/FormController;->mIntegratedData:Lcom/android/i18n/addressinput/ClientData;

    invoke-virtual {v5}, Lcom/android/i18n/addressinput/LookupKey;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/i18n/addressinput/ClientData;->getDefaultData(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressVerificationNodeData;

    move-result-object v1

    .line 231
    .local v1, data:Lcom/android/i18n/addressinput/AddressVerificationNodeData;
    sget-object v8, Lcom/android/i18n/addressinput/AddressDataKey;->COUNTRIES:Lcom/android/i18n/addressinput/AddressDataKey;

    invoke-virtual {v1, v8}, Lcom/android/i18n/addressinput/AddressVerificationNodeData;->get(Lcom/android/i18n/addressinput/AddressDataKey;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/i18n/addressinput/FormController;->splitData(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, countries:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v8, v0

    if-ge v2, v8, :cond_4

    .line 233
    new-instance v8, Lcom/android/i18n/addressinput/RegionData$Builder;

    invoke-direct {v8}, Lcom/android/i18n/addressinput/RegionData$Builder;-><init>()V

    aget-object v9, v0, v2

    invoke-virtual {v8, v9}, Lcom/android/i18n/addressinput/RegionData$Builder;->setKey(Ljava/lang/String;)Lcom/android/i18n/addressinput/RegionData$Builder;

    move-result-object v8

    aget-object v9, v0, v2

    invoke-virtual {v8, v9}, Lcom/android/i18n/addressinput/RegionData$Builder;->setName(Ljava/lang/String;)Lcom/android/i18n/addressinput/RegionData$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/i18n/addressinput/RegionData$Builder;->build()Lcom/android/i18n/addressinput/RegionData;

    move-result-object v6

    .line 237
    .local v6, rd:Lcom/android/i18n/addressinput/RegionData;
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 242
    .end local v0           #countries:[Ljava/lang/String;
    .end local v1           #data:Lcom/android/i18n/addressinput/AddressVerificationNodeData;
    .end local v2           #i:I
    .end local v6           #rd:Lcom/android/i18n/addressinput/RegionData;
    :cond_1
    iget-object v8, p0, Lcom/android/i18n/addressinput/FormController;->mIntegratedData:Lcom/android/i18n/addressinput/ClientData;

    invoke-virtual {v5}, Lcom/android/i18n/addressinput/LookupKey;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/i18n/addressinput/ClientData;->get(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressVerificationNodeData;

    move-result-object v1

    .line 244
    .restart local v1       #data:Lcom/android/i18n/addressinput/AddressVerificationNodeData;
    if-eqz v1, :cond_4

    .line 245
    sget-object v8, Lcom/android/i18n/addressinput/AddressDataKey;->SUB_KEYS:Lcom/android/i18n/addressinput/AddressDataKey;

    invoke-virtual {v1, v8}, Lcom/android/i18n/addressinput/AddressVerificationNodeData;->get(Lcom/android/i18n/addressinput/AddressDataKey;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/i18n/addressinput/FormController;->splitData(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 246
    .local v3, keys:[Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/i18n/addressinput/FormController;->getScriptType()Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    move-result-object v8

    sget-object v9, Lcom/android/i18n/addressinput/LookupKey$ScriptType;->LOCAL:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    if-ne v8, v9, :cond_2

    sget-object v8, Lcom/android/i18n/addressinput/AddressDataKey;->SUB_NAMES:Lcom/android/i18n/addressinput/AddressDataKey;

    invoke-virtual {v1, v8}, Lcom/android/i18n/addressinput/AddressVerificationNodeData;->get(Lcom/android/i18n/addressinput/AddressDataKey;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/i18n/addressinput/FormController;->splitData(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 250
    .local v4, names:[Ljava/lang/String;
    :goto_1
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2
    array-length v8, v3

    if-ge v2, v8, :cond_4

    .line 251
    new-instance v8, Lcom/android/i18n/addressinput/RegionData$Builder;

    invoke-direct {v8}, Lcom/android/i18n/addressinput/RegionData$Builder;-><init>()V

    aget-object v9, v3, v2

    invoke-virtual {v8, v9}, Lcom/android/i18n/addressinput/RegionData$Builder;->setKey(Ljava/lang/String;)Lcom/android/i18n/addressinput/RegionData$Builder;

    move-result-object v9

    array-length v8, v4

    if-ge v2, v8, :cond_3

    aget-object v8, v4, v2

    :goto_3
    invoke-virtual {v9, v8}, Lcom/android/i18n/addressinput/RegionData$Builder;->setName(Ljava/lang/String;)Lcom/android/i18n/addressinput/RegionData$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/i18n/addressinput/RegionData$Builder;->build()Lcom/android/i18n/addressinput/RegionData;

    move-result-object v6

    .line 256
    .restart local v6       #rd:Lcom/android/i18n/addressinput/RegionData;
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 246
    .end local v2           #i:I
    .end local v4           #names:[Ljava/lang/String;
    .end local v6           #rd:Lcom/android/i18n/addressinput/RegionData;
    :cond_2
    sget-object v8, Lcom/android/i18n/addressinput/AddressDataKey;->SUB_LNAMES:Lcom/android/i18n/addressinput/AddressDataKey;

    invoke-virtual {v1, v8}, Lcom/android/i18n/addressinput/AddressVerificationNodeData;->get(Lcom/android/i18n/addressinput/AddressDataKey;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/i18n/addressinput/FormController;->splitData(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 251
    .restart local v2       #i:I
    .restart local v4       #names:[Ljava/lang/String;
    :cond_3
    aget-object v8, v3, v2

    goto :goto_3

    .line 259
    .end local v2           #i:I
    .end local v3           #keys:[Ljava/lang/String;
    .end local v4           #names:[Ljava/lang/String;
    :cond_4
    return-object v7
.end method

.method isDefaultLanguage(Ljava/lang/String;)Z
    .locals 7
    .parameter "languageCode"

    .prologue
    const/4 v4, 0x1

    .line 192
    if-nez p1, :cond_1

    .line 206
    :cond_0
    :goto_0
    return v4

    .line 195
    :cond_1
    new-instance v5, Lcom/android/i18n/addressinput/AddressData$Builder;

    invoke-direct {v5}, Lcom/android/i18n/addressinput/AddressData$Builder;-><init>()V

    iget-object v6, p0, Lcom/android/i18n/addressinput/FormController;->mCurrentCountry:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/i18n/addressinput/AddressData$Builder;->setCountry(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/i18n/addressinput/AddressData$Builder;->build()Lcom/android/i18n/addressinput/AddressData;

    move-result-object v0

    .line 196
    .local v0, addr:Lcom/android/i18n/addressinput/AddressData;
    invoke-virtual {p0, v0}, Lcom/android/i18n/addressinput/FormController;->getDataKeyFor(Lcom/android/i18n/addressinput/AddressData;)Lcom/android/i18n/addressinput/LookupKey;

    move-result-object v3

    .line 197
    .local v3, lookupKey:Lcom/android/i18n/addressinput/LookupKey;
    iget-object v5, p0, Lcom/android/i18n/addressinput/FormController;->mIntegratedData:Lcom/android/i18n/addressinput/ClientData;

    invoke-virtual {v3}, Lcom/android/i18n/addressinput/LookupKey;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/i18n/addressinput/ClientData;->getDefaultData(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressVerificationNodeData;

    move-result-object v1

    .line 199
    .local v1, data:Lcom/android/i18n/addressinput/AddressVerificationNodeData;
    sget-object v5, Lcom/android/i18n/addressinput/AddressDataKey;->LANG:Lcom/android/i18n/addressinput/AddressDataKey;

    invoke-virtual {v1, v5}, Lcom/android/i18n/addressinput/AddressVerificationNodeData;->get(Lcom/android/i18n/addressinput/AddressDataKey;)Ljava/lang/String;

    move-result-object v2

    .line 202
    .local v2, defaultLanguage:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/i18n/addressinput/Util;->trimToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-static {p1}, Lcom/android/i18n/addressinput/Util;->getLanguageSubtag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Lcom/android/i18n/addressinput/Util;->getLanguageSubtag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 204
    const/4 v4, 0x0

    goto :goto_0
.end method

.method requestDataForAddress(Lcom/android/i18n/addressinput/AddressData;Lcom/android/i18n/addressinput/DataLoadListener;)V
    .locals 8
    .parameter "address"
    .parameter "listener"

    .prologue
    .line 109
    invoke-virtual {p1}, Lcom/android/i18n/addressinput/AddressData;->getPostalCountry()Ljava/lang/String;

    move-result-object v6

    const-string v7, "null country not allowed"

    invoke-static {v6, v7}, Lcom/android/i18n/addressinput/Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 114
    .local v4, subkeys:Ljava/util/Queue;,"Ljava/util/Queue<Ljava/lang/String;>;"
    sget-object v0, Lcom/android/i18n/addressinput/FormController;->ADDRESS_HIERARCHY:[Lcom/android/i18n/addressinput/AddressField;

    .local v0, arr$:[Lcom/android/i18n/addressinput/AddressField;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 115
    .local v1, field:Lcom/android/i18n/addressinput/AddressField;
    invoke-virtual {p1, v1}, Lcom/android/i18n/addressinput/AddressData;->getFieldValue(Lcom/android/i18n/addressinput/AddressField;)Ljava/lang/String;

    move-result-object v5

    .line 116
    .local v5, value:Ljava/lang/String;
    if-nez v5, :cond_1

    .line 121
    .end local v1           #field:Lcom/android/i18n/addressinput/AddressField;
    .end local v5           #value:Ljava/lang/String;
    :cond_0
    invoke-interface {v4}, Ljava/util/Queue;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 122
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Need at least country level info"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 119
    .restart local v1       #field:Lcom/android/i18n/addressinput/AddressField;
    .restart local v5       #value:Ljava/lang/String;
    :cond_1
    invoke-interface {v4, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 114
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 125
    .end local v1           #field:Lcom/android/i18n/addressinput/AddressField;
    .end local v5           #value:Ljava/lang/String;
    :cond_2
    if-eqz p2, :cond_3

    .line 126
    invoke-interface {p2}, Lcom/android/i18n/addressinput/DataLoadListener;->dataLoadingBegin()V

    .line 128
    :cond_3
    sget-object v6, Lcom/android/i18n/addressinput/FormController;->ROOT_KEY:Lcom/android/i18n/addressinput/LookupKey;

    invoke-direct {p0, v6, v4, p2}, Lcom/android/i18n/addressinput/FormController;->requestDataRecursively(Lcom/android/i18n/addressinput/LookupKey;Ljava/util/Queue;Lcom/android/i18n/addressinput/DataLoadListener;)V

    .line 129
    return-void
.end method

.method setCurrentCountry(Ljava/lang/String;)V
    .locals 0
    .parameter "currentCountry"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/i18n/addressinput/FormController;->mCurrentCountry:Ljava/lang/String;

    .line 78
    return-void
.end method

.method setLanguageCode(Ljava/lang/String;)V
    .locals 0
    .parameter "languageCode"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/i18n/addressinput/FormController;->mLanguageCode:Ljava/lang/String;

    .line 74
    return-void
.end method
