.class public Lcom/android/i18n/addressinput/ClientData;
.super Ljava/lang/Object;
.source "ClientData.java"

# interfaces
.implements Lcom/android/i18n/addressinput/DataSource;


# instance fields
.field private final mBootstrapMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/i18n/addressinput/JsoMap;",
            ">;"
        }
    .end annotation
.end field

.field private mCacheData:Lcom/android/i18n/addressinput/CacheData;


# direct methods
.method public constructor <init>(Lcom/android/i18n/addressinput/CacheData;)V
    .locals 1
    .parameter "cacheData"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/i18n/addressinput/ClientData;->mBootstrapMap:Ljava/util/Map;

    .line 47
    iput-object p1, p0, Lcom/android/i18n/addressinput/ClientData;->mCacheData:Lcom/android/i18n/addressinput/CacheData;

    .line 48
    invoke-direct {p0}, Lcom/android/i18n/addressinput/ClientData;->buildRegionalData()V

    .line 49
    return-void
.end method

.method private buildRegionalData()V
    .locals 11

    .prologue
    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .local v0, countries:Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/android/i18n/addressinput/RegionDataConstants;->getCountryFormatMap()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 149
    .local v1, countryCode:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "~"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-static {}, Lcom/android/i18n/addressinput/RegionDataConstants;->getCountryFormatMap()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 151
    .local v6, json:Ljava/lang/String;
    const/4 v4, 0x0

    .line 153
    .local v4, jso:Lcom/android/i18n/addressinput/JsoMap;
    :try_start_0
    invoke-static {v6}, Lcom/android/i18n/addressinput/JsoMap;->buildJsoMap(Ljava/lang/String;)Lcom/android/i18n/addressinput/JsoMap;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 158
    :goto_1
    new-instance v9, Lcom/android/i18n/addressinput/AddressData$Builder;

    invoke-direct {v9}, Lcom/android/i18n/addressinput/AddressData$Builder;-><init>()V

    invoke-virtual {v9, v1}, Lcom/android/i18n/addressinput/AddressData$Builder;->setCountry(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/i18n/addressinput/AddressData$Builder;->build()Lcom/android/i18n/addressinput/AddressData;

    move-result-object v2

    .line 159
    .local v2, data:Lcom/android/i18n/addressinput/AddressData;
    new-instance v9, Lcom/android/i18n/addressinput/LookupKey$Builder;

    sget-object v10, Lcom/android/i18n/addressinput/LookupKey$KeyType;->DATA:Lcom/android/i18n/addressinput/LookupKey$KeyType;

    invoke-direct {v9, v10}, Lcom/android/i18n/addressinput/LookupKey$Builder;-><init>(Lcom/android/i18n/addressinput/LookupKey$KeyType;)V

    invoke-virtual {v9, v2}, Lcom/android/i18n/addressinput/LookupKey$Builder;->setAddressData(Lcom/android/i18n/addressinput/AddressData;)Lcom/android/i18n/addressinput/LookupKey$Builder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/i18n/addressinput/LookupKey$Builder;->build()Lcom/android/i18n/addressinput/LookupKey;

    move-result-object v7

    .line 160
    .local v7, key:Lcom/android/i18n/addressinput/LookupKey;
    iget-object v9, p0, Lcom/android/i18n/addressinput/ClientData;->mBootstrapMap:Ljava/util/Map;

    invoke-virtual {v7}, Lcom/android/i18n/addressinput/LookupKey;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 162
    .end local v1           #countryCode:Ljava/lang/String;
    .end local v2           #data:Lcom/android/i18n/addressinput/AddressData;
    .end local v4           #jso:Lcom/android/i18n/addressinput/JsoMap;
    .end local v6           #json:Ljava/lang/String;
    .end local v7           #key:Lcom/android/i18n/addressinput/LookupKey;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 168
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "{\"id\":\"data\",\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/android/i18n/addressinput/AddressDataKey;->COUNTRIES:Lcom/android/i18n/addressinput/AddressDataKey;

    invoke-virtual {v10}, Lcom/android/i18n/addressinput/AddressDataKey;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\": \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\"}"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 171
    .local v8, str:Ljava/lang/String;
    const/4 v5, 0x0

    .line 173
    .local v5, jsoData:Lcom/android/i18n/addressinput/JsoMap;
    :try_start_1
    invoke-static {v8}, Lcom/android/i18n/addressinput/JsoMap;->buildJsoMap(Ljava/lang/String;)Lcom/android/i18n/addressinput/JsoMap;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 177
    :goto_2
    iget-object v9, p0, Lcom/android/i18n/addressinput/ClientData;->mBootstrapMap:Ljava/util/Map;

    const-string v10, "data"

    invoke-interface {v9, v10, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    return-void

    .line 154
    .end local v5           #jsoData:Lcom/android/i18n/addressinput/JsoMap;
    .end local v8           #str:Ljava/lang/String;
    .restart local v1       #countryCode:Ljava/lang/String;
    .restart local v4       #jso:Lcom/android/i18n/addressinput/JsoMap;
    .restart local v6       #json:Ljava/lang/String;
    :catch_0
    move-exception v9

    goto :goto_1

    .line 174
    .end local v1           #countryCode:Ljava/lang/String;
    .end local v4           #jso:Lcom/android/i18n/addressinput/JsoMap;
    .end local v6           #json:Ljava/lang/String;
    .restart local v5       #jsoData:Lcom/android/i18n/addressinput/JsoMap;
    .restart local v8       #str:Ljava/lang/String;
    :catch_1
    move-exception v9

    goto :goto_2
.end method

.method private fetchDataIfNotAvailable(Ljava/lang/String;)V
    .locals 7
    .parameter "key"

    .prologue
    .line 187
    iget-object v5, p0, Lcom/android/i18n/addressinput/ClientData;->mCacheData:Lcom/android/i18n/addressinput/CacheData;

    invoke-virtual {v5, p1}, Lcom/android/i18n/addressinput/CacheData;->getObj(Ljava/lang/String;)Lcom/android/i18n/addressinput/JsoMap;

    move-result-object v1

    .line 188
    .local v1, jso:Lcom/android/i18n/addressinput/JsoMap;
    if-nez v1, :cond_0

    .line 190
    iget-object v5, p0, Lcom/android/i18n/addressinput/ClientData;->mBootstrapMap:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/i18n/addressinput/JsoMap;

    .line 191
    .local v4, regionalData:Lcom/android/i18n/addressinput/JsoMap;
    new-instance v2, Lcom/android/i18n/addressinput/NotifyingListener;

    invoke-direct {v2, p0}, Lcom/android/i18n/addressinput/NotifyingListener;-><init>(Ljava/lang/Object;)V

    .line 193
    .local v2, listener:Lcom/android/i18n/addressinput/NotifyingListener;
    invoke-static {p1}, Lcom/android/i18n/addressinput/LookupKey;->hasValidKeyPrefix(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 194
    new-instance v5, Lcom/android/i18n/addressinput/LookupKey$Builder;

    invoke-direct {v5, p1}, Lcom/android/i18n/addressinput/LookupKey$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/i18n/addressinput/LookupKey$Builder;->build()Lcom/android/i18n/addressinput/LookupKey;

    move-result-object v3

    .line 195
    .local v3, lookupKey:Lcom/android/i18n/addressinput/LookupKey;
    iget-object v5, p0, Lcom/android/i18n/addressinput/ClientData;->mCacheData:Lcom/android/i18n/addressinput/CacheData;

    invoke-virtual {v5, v3, v4, v2}, Lcom/android/i18n/addressinput/CacheData;->fetchDynamicData(Lcom/android/i18n/addressinput/LookupKey;Lorg/json/JSONObject;Lcom/android/i18n/addressinput/DataLoadListener;)V

    .line 197
    :try_start_0
    invoke-virtual {v2}, Lcom/android/i18n/addressinput/NotifyingListener;->waitLoadingEnd()V

    .line 199
    iget-object v5, p0, Lcom/android/i18n/addressinput/ClientData;->mCacheData:Lcom/android/i18n/addressinput/CacheData;

    invoke-virtual {v5, p1}, Lcom/android/i18n/addressinput/CacheData;->getObj(Ljava/lang/String;)Lcom/android/i18n/addressinput/JsoMap;

    move-result-object v5

    if-nez v5, :cond_0

    invoke-direct {p0, p1}, Lcom/android/i18n/addressinput/ClientData;->isCountryKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 201
    const-string v5, "ClientData"

    const-string v6, "Server failure: looking up key in region data constants."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v5, p0, Lcom/android/i18n/addressinput/ClientData;->mCacheData:Lcom/android/i18n/addressinput/CacheData;

    invoke-virtual {v5, v3}, Lcom/android/i18n/addressinput/CacheData;->getFromRegionDataConstants(Lcom/android/i18n/addressinput/LookupKey;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    .end local v2           #listener:Lcom/android/i18n/addressinput/NotifyingListener;
    .end local v3           #lookupKey:Lcom/android/i18n/addressinput/LookupKey;
    .end local v4           #regionalData:Lcom/android/i18n/addressinput/JsoMap;
    :cond_0
    return-void

    .line 204
    .restart local v2       #listener:Lcom/android/i18n/addressinput/NotifyingListener;
    .restart local v3       #lookupKey:Lcom/android/i18n/addressinput/LookupKey;
    .restart local v4       #regionalData:Lcom/android/i18n/addressinput/JsoMap;
    :catch_0
    move-exception v0

    .line 205
    .local v0, e:Ljava/lang/InterruptedException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method private getCountryKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "hierarchyKey"

    .prologue
    const/4 v3, 0x1

    .line 84
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-gt v1, v3, :cond_0

    .line 85
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot get country key with key \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 87
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/i18n/addressinput/ClientData;->isCountryKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    .end local p1
    :goto_0
    return-object p1

    .line 91
    .restart local p1
    :cond_1
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, parts:[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private isCountryKey(Ljava/lang/String;)Z
    .locals 2
    .parameter "hierarchyKey"

    .prologue
    .line 100
    const-string v0, "Cannot use null as a key"

    invoke-static {p1, v0}, Lcom/android/i18n/addressinput/Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidDataKey(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 139
    const-string v0, "data"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected createNodeData(Lcom/android/i18n/addressinput/JsoMap;)Lcom/android/i18n/addressinput/AddressVerificationNodeData;
    .locals 5
    .parameter

    .prologue
    .line 109
    new-instance v1, Ljava/util/EnumMap;

    const-class v0, Lcom/android/i18n/addressinput/AddressDataKey;

    invoke-direct {v1, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 112
    invoke-virtual {p1}, Lcom/android/i18n/addressinput/JsoMap;->getKeys()Lorg/json/JSONArray;

    move-result-object v2

    .line 113
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 115
    :try_start_0
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/i18n/addressinput/AddressDataKey;->get(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressDataKey;

    move-result-object v3

    .line 117
    if-nez v3, :cond_0

    .line 113
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {v3}, Lcom/android/i18n/addressinput/AddressDataKey;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/i18n/addressinput/JsoMap;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 124
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 125
    :catch_0
    move-exception v3

    goto :goto_1

    .line 131
    :cond_1
    new-instance v0, Lcom/android/i18n/addressinput/AddressVerificationNodeData;

    invoke-direct {v0, v1}, Lcom/android/i18n/addressinput/AddressVerificationNodeData;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public get(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressVerificationNodeData;
    .locals 2
    .parameter "key"

    .prologue
    .line 53
    iget-object v1, p0, Lcom/android/i18n/addressinput/ClientData;->mCacheData:Lcom/android/i18n/addressinput/CacheData;

    invoke-virtual {v1, p1}, Lcom/android/i18n/addressinput/CacheData;->getObj(Ljava/lang/String;)Lcom/android/i18n/addressinput/JsoMap;

    move-result-object v0

    .line 54
    .local v0, jso:Lcom/android/i18n/addressinput/JsoMap;
    if-nez v0, :cond_0

    .line 55
    invoke-direct {p0, p1}, Lcom/android/i18n/addressinput/ClientData;->fetchDataIfNotAvailable(Ljava/lang/String;)V

    .line 56
    iget-object v1, p0, Lcom/android/i18n/addressinput/ClientData;->mCacheData:Lcom/android/i18n/addressinput/CacheData;

    invoke-virtual {v1, p1}, Lcom/android/i18n/addressinput/CacheData;->getObj(Ljava/lang/String;)Lcom/android/i18n/addressinput/JsoMap;

    move-result-object v0

    .line 58
    :cond_0
    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/i18n/addressinput/ClientData;->isValidDataKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    invoke-virtual {p0, v0}, Lcom/android/i18n/addressinput/ClientData;->createNodeData(Lcom/android/i18n/addressinput/JsoMap;)Lcom/android/i18n/addressinput/AddressVerificationNodeData;

    move-result-object v1

    .line 61
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDefaultData(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressVerificationNodeData;
    .locals 4
    .parameter "key"

    .prologue
    .line 67
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 68
    iget-object v1, p0, Lcom/android/i18n/addressinput/ClientData;->mBootstrapMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/addressinput/JsoMap;

    .line 69
    .local v0, jso:Lcom/android/i18n/addressinput/JsoMap;
    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/i18n/addressinput/ClientData;->isValidDataKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 70
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not have bootstrap data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 72
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/i18n/addressinput/ClientData;->createNodeData(Lcom/android/i18n/addressinput/JsoMap;)Lcom/android/i18n/addressinput/AddressVerificationNodeData;

    move-result-object v1

    .line 80
    :goto_0
    return-object v1

    .line 75
    .end local v0           #jso:Lcom/android/i18n/addressinput/JsoMap;
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/i18n/addressinput/ClientData;->getCountryKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 76
    iget-object v1, p0, Lcom/android/i18n/addressinput/ClientData;->mBootstrapMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/addressinput/JsoMap;

    .line 77
    .restart local v0       #jso:Lcom/android/i18n/addressinput/JsoMap;
    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/android/i18n/addressinput/ClientData;->isValidDataKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 78
    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not have bootstrap data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 80
    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/i18n/addressinput/ClientData;->createNodeData(Lcom/android/i18n/addressinput/JsoMap;)Lcom/android/i18n/addressinput/AddressVerificationNodeData;

    move-result-object v1

    goto :goto_0
.end method

.method public requestData(Lcom/android/i18n/addressinput/LookupKey;Lcom/android/i18n/addressinput/DataLoadListener;)V
    .locals 3
    .parameter "key"
    .parameter "listener"

    .prologue
    .line 212
    const-string v1, "Null lookup key not allowed"

    invoke-static {p1, v1}, Lcom/android/i18n/addressinput/Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    iget-object v1, p0, Lcom/android/i18n/addressinput/ClientData;->mBootstrapMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/i18n/addressinput/LookupKey;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/addressinput/JsoMap;

    .line 214
    .local v0, regionalData:Lcom/android/i18n/addressinput/JsoMap;
    iget-object v1, p0, Lcom/android/i18n/addressinput/ClientData;->mCacheData:Lcom/android/i18n/addressinput/CacheData;

    invoke-virtual {v1, p1, v0, p2}, Lcom/android/i18n/addressinput/CacheData;->fetchDynamicData(Lcom/android/i18n/addressinput/LookupKey;Lorg/json/JSONObject;Lcom/android/i18n/addressinput/DataLoadListener;)V

    .line 215
    return-void
.end method
