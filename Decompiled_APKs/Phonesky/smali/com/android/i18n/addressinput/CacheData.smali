.class public final Lcom/android/i18n/addressinput/CacheData;
.super Ljava/lang/Object;
.source "CacheData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/i18n/addressinput/CacheData$JsonHandler;,
        Lcom/android/i18n/addressinput/CacheData$CacheListener;
    }
.end annotation


# instance fields
.field private final mBadKeys:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mCache:Lcom/android/i18n/addressinput/JsoMap;

.field private final mClientCacheManager:Lcom/android/i18n/addressinput/ClientCacheManager;

.field private final mRequestedKeys:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceUrl:Ljava/lang/String;

.field private final mTemporaryListenerStore:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/i18n/addressinput/LookupKey;",
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/i18n/addressinput/CacheData$CacheListener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/android/i18n/addressinput/SimpleClientCacheManager;

    invoke-direct {v0}, Lcom/android/i18n/addressinput/SimpleClientCacheManager;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/i18n/addressinput/CacheData;-><init>(Lcom/android/i18n/addressinput/ClientCacheManager;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Lcom/android/i18n/addressinput/ClientCacheManager;)V
    .locals 1
    .parameter "clientCacheManager"

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/i18n/addressinput/CacheData;->mRequestedKeys:Ljava/util/HashSet;

    .line 67
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/i18n/addressinput/CacheData;->mBadKeys:Ljava/util/HashSet;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/i18n/addressinput/CacheData;->mTemporaryListenerStore:Ljava/util/HashMap;

    .line 90
    iput-object p1, p0, Lcom/android/i18n/addressinput/CacheData;->mClientCacheManager:Lcom/android/i18n/addressinput/ClientCacheManager;

    .line 91
    iget-object v0, p0, Lcom/android/i18n/addressinput/CacheData;->mClientCacheManager:Lcom/android/i18n/addressinput/ClientCacheManager;

    invoke-interface {v0}, Lcom/android/i18n/addressinput/ClientCacheManager;->getAddressServerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/i18n/addressinput/CacheData;->setUrl(Ljava/lang/String;)V

    .line 92
    invoke-static {}, Lcom/android/i18n/addressinput/JsoMap;->createEmptyJsoMap()Lcom/android/i18n/addressinput/JsoMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/addressinput/CacheData;->mCache:Lcom/android/i18n/addressinput/JsoMap;

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/android/i18n/addressinput/CacheData;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/i18n/addressinput/CacheData;->mBadKeys:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/i18n/addressinput/CacheData;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/i18n/addressinput/CacheData;->notifyListenersAfterJobDone(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/i18n/addressinput/CacheData;Lcom/android/i18n/addressinput/DataLoadListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/i18n/addressinput/CacheData;->triggerDataLoadingEndIfNotNull(Lcom/android/i18n/addressinput/DataLoadListener;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/i18n/addressinput/CacheData;)Lcom/android/i18n/addressinput/JsoMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/i18n/addressinput/CacheData;->mCache:Lcom/android/i18n/addressinput/JsoMap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/i18n/addressinput/CacheData;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/i18n/addressinput/CacheData;->mRequestedKeys:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/i18n/addressinput/CacheData;)Lcom/android/i18n/addressinput/ClientCacheManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/i18n/addressinput/CacheData;->mClientCacheManager:Lcom/android/i18n/addressinput/ClientCacheManager;

    return-object v0
.end method

.method private addListenerToTempStore(Lcom/android/i18n/addressinput/LookupKey;Lcom/android/i18n/addressinput/CacheData$CacheListener;)V
    .locals 2
    .parameter "key"
    .parameter "listener"

    .prologue
    .line 386
    invoke-static {p1}, Lcom/android/i18n/addressinput/Util;->checkNotNull(Ljava/lang/Object;)V

    .line 387
    invoke-static {p2}, Lcom/android/i18n/addressinput/Util;->checkNotNull(Ljava/lang/Object;)V

    .line 388
    iget-object v1, p0, Lcom/android/i18n/addressinput/CacheData;->mTemporaryListenerStore:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 389
    .local v0, listeners:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/android/i18n/addressinput/CacheData$CacheListener;>;"
    if-nez v0, :cond_0

    .line 390
    new-instance v0, Ljava/util/HashSet;

    .end local v0           #listeners:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/android/i18n/addressinput/CacheData$CacheListener;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 391
    .restart local v0       #listeners:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/android/i18n/addressinput/CacheData$CacheListener;>;"
    iget-object v1, p0, Lcom/android/i18n/addressinput/CacheData;->mTemporaryListenerStore:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 394
    return-void
.end method

.method private notifyListenersAfterJobDone(Ljava/lang/String;)V
    .locals 5
    .parameter "key"

    .prologue
    .line 375
    new-instance v4, Lcom/android/i18n/addressinput/LookupKey$Builder;

    invoke-direct {v4, p1}, Lcom/android/i18n/addressinput/LookupKey$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/i18n/addressinput/LookupKey$Builder;->build()Lcom/android/i18n/addressinput/LookupKey;

    move-result-object v3

    .line 376
    .local v3, lookupKey:Lcom/android/i18n/addressinput/LookupKey;
    iget-object v4, p0, Lcom/android/i18n/addressinput/CacheData;->mTemporaryListenerStore:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 377
    .local v2, listeners:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/android/i18n/addressinput/CacheData$CacheListener;>;"
    if-eqz v2, :cond_1

    .line 378
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/i18n/addressinput/CacheData$CacheListener;

    .line 379
    .local v1, listener:Lcom/android/i18n/addressinput/CacheData$CacheListener;
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/android/i18n/addressinput/CacheData$CacheListener;->onAdd(Ljava/lang/String;)V

    goto :goto_0

    .line 381
    .end local v1           #listener:Lcom/android/i18n/addressinput/CacheData$CacheListener;
    :cond_0
    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 383
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private triggerDataLoadingEndIfNotNull(Lcom/android/i18n/addressinput/DataLoadListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 248
    if-eqz p1, :cond_0

    .line 249
    invoke-interface {p1}, Lcom/android/i18n/addressinput/DataLoadListener;->dataLoadingEnd()V

    .line 251
    :cond_0
    return-void
.end method


# virtual methods
.method fetchDynamicData(Lcom/android/i18n/addressinput/LookupKey;Lorg/json/JSONObject;Lcom/android/i18n/addressinput/DataLoadListener;)V
    .locals 9
    .parameter "key"
    .parameter "existingJso"
    .parameter "listener"

    .prologue
    const/4 v5, 0x0

    .line 263
    const-string v1, "null key not allowed."

    invoke-static {p1, v1}, Lcom/android/i18n/addressinput/Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    if-eqz p3, :cond_0

    .line 266
    invoke-interface {p3}, Lcom/android/i18n/addressinput/DataLoadListener;->dataLoadingBegin()V

    .line 270
    :cond_0
    iget-object v1, p0, Lcom/android/i18n/addressinput/CacheData;->mCache:Lcom/android/i18n/addressinput/JsoMap;

    invoke-virtual {p1}, Lcom/android/i18n/addressinput/LookupKey;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/i18n/addressinput/JsoMap;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 271
    invoke-direct {p0, p3}, Lcom/android/i18n/addressinput/CacheData;->triggerDataLoadingEndIfNotNull(Lcom/android/i18n/addressinput/DataLoadListener;)V

    .line 331
    :goto_0
    return-void

    .line 276
    :cond_1
    iget-object v1, p0, Lcom/android/i18n/addressinput/CacheData;->mBadKeys:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/android/i18n/addressinput/LookupKey;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 277
    invoke-direct {p0, p3}, Lcom/android/i18n/addressinput/CacheData;->triggerDataLoadingEndIfNotNull(Lcom/android/i18n/addressinput/DataLoadListener;)V

    goto :goto_0

    .line 282
    :cond_2
    iget-object v1, p0, Lcom/android/i18n/addressinput/CacheData;->mRequestedKeys:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/android/i18n/addressinput/LookupKey;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 283
    const-string v1, "CacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data for key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " requested but not cached yet"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    new-instance v1, Lcom/android/i18n/addressinput/CacheData$1;

    invoke-direct {v1, p0, p3}, Lcom/android/i18n/addressinput/CacheData$1;-><init>(Lcom/android/i18n/addressinput/CacheData;Lcom/android/i18n/addressinput/DataLoadListener;)V

    invoke-direct {p0, p1, v1}, Lcom/android/i18n/addressinput/CacheData;->addListenerToTempStore(Lcom/android/i18n/addressinput/LookupKey;Lcom/android/i18n/addressinput/CacheData$CacheListener;)V

    goto :goto_0

    .line 294
    :cond_3
    iget-object v1, p0, Lcom/android/i18n/addressinput/CacheData;->mClientCacheManager:Lcom/android/i18n/addressinput/ClientCacheManager;

    invoke-virtual {p1}, Lcom/android/i18n/addressinput/LookupKey;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/i18n/addressinput/ClientCacheManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 295
    .local v6, dataFromClientCache:Ljava/lang/String;
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 296
    new-instance v0, Lcom/android/i18n/addressinput/CacheData$JsonHandler;

    invoke-virtual {p1}, Lcom/android/i18n/addressinput/LookupKey;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/i18n/addressinput/CacheData$JsonHandler;-><init>(Lcom/android/i18n/addressinput/CacheData;Ljava/lang/String;Lorg/json/JSONObject;Lcom/android/i18n/addressinput/DataLoadListener;Lcom/android/i18n/addressinput/CacheData$1;)V

    .line 299
    .local v0, handler:Lcom/android/i18n/addressinput/CacheData$JsonHandler;
    :try_start_0
    invoke-static {v6}, Lcom/android/i18n/addressinput/JsoMap;->buildJsoMap(Ljava/lang/String;)Lcom/android/i18n/addressinput/JsoMap;

    move-result-object v1

    #calls: Lcom/android/i18n/addressinput/CacheData$JsonHandler;->handleJson(Lcom/android/i18n/addressinput/JsoMap;)V
    invoke-static {v0, v1}, Lcom/android/i18n/addressinput/CacheData$JsonHandler;->access$500(Lcom/android/i18n/addressinput/CacheData$JsonHandler;Lcom/android/i18n/addressinput/JsoMap;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 301
    :catch_0
    move-exception v7

    .line 302
    .local v7, e:Lorg/json/JSONException;
    const-string v1, "CacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Data from client\'s cache is in the wrong format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    .end local v0           #handler:Lcom/android/i18n/addressinput/CacheData$JsonHandler;
    .end local v7           #e:Lorg/json/JSONException;
    :cond_4
    new-instance v8, Lcom/android/i18n/addressinput/JsonpRequestBuilder;

    invoke-direct {v8}, Lcom/android/i18n/addressinput/JsonpRequestBuilder;-><init>()V

    .line 309
    .local v8, jsonp:Lcom/android/i18n/addressinput/JsonpRequestBuilder;
    const/16 v1, 0x1388

    invoke-virtual {v8, v1}, Lcom/android/i18n/addressinput/JsonpRequestBuilder;->setTimeout(I)V

    .line 310
    new-instance v0, Lcom/android/i18n/addressinput/CacheData$JsonHandler;

    invoke-virtual {p1}, Lcom/android/i18n/addressinput/LookupKey;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/i18n/addressinput/CacheData$JsonHandler;-><init>(Lcom/android/i18n/addressinput/CacheData;Ljava/lang/String;Lorg/json/JSONObject;Lcom/android/i18n/addressinput/DataLoadListener;Lcom/android/i18n/addressinput/CacheData$1;)V

    .line 312
    .restart local v0       #handler:Lcom/android/i18n/addressinput/CacheData$JsonHandler;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/i18n/addressinput/CacheData;->mServiceUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/i18n/addressinput/LookupKey;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/i18n/addressinput/CacheData$2;

    invoke-direct {v2, p0, p1, p3, v0}, Lcom/android/i18n/addressinput/CacheData$2;-><init>(Lcom/android/i18n/addressinput/CacheData;Lcom/android/i18n/addressinput/LookupKey;Lcom/android/i18n/addressinput/DataLoadListener;Lcom/android/i18n/addressinput/CacheData$JsonHandler;)V

    invoke-virtual {v8, v1, v2}, Lcom/android/i18n/addressinput/JsonpRequestBuilder;->requestObject(Ljava/lang/String;Lcom/android/i18n/addressinput/JsonpRequestBuilder$AsyncCallback;)V

    goto/16 :goto_0
.end method

.method getFromRegionDataConstants(Lcom/android/i18n/addressinput/LookupKey;)V
    .locals 5
    .parameter "key"

    .prologue
    .line 339
    const-string v2, "null key not allowed."

    invoke-static {p1, v2}, Lcom/android/i18n/addressinput/Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 340
    invoke-static {}, Lcom/android/i18n/addressinput/RegionDataConstants;->getCountryFormatMap()Ljava/util/Map;

    move-result-object v2

    sget-object v3, Lcom/android/i18n/addressinput/AddressField;->COUNTRY:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {p1, v3}, Lcom/android/i18n/addressinput/LookupKey;->getValueForUpperLevelField(Lcom/android/i18n/addressinput/AddressField;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 342
    .local v0, data:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 344
    :try_start_0
    iget-object v2, p0, Lcom/android/i18n/addressinput/CacheData;->mCache:Lcom/android/i18n/addressinput/JsoMap;

    invoke-virtual {p1}, Lcom/android/i18n/addressinput/LookupKey;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/android/i18n/addressinput/JsoMap;->buildJsoMap(Ljava/lang/String;)Lcom/android/i18n/addressinput/JsoMap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/i18n/addressinput/JsoMap;->putObj(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    :cond_0
    :goto_0
    return-void

    .line 345
    :catch_0
    move-exception v1

    .line 346
    .local v1, e:Lorg/json/JSONException;
    const-string v2, "CacheData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse data for key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from RegionDataConstants"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getObj(Ljava/lang/String;)Lcom/android/i18n/addressinput/JsoMap;
    .locals 1
    .parameter "key"

    .prologue
    .line 370
    const-string v0, "null key not allowed"

    invoke-static {p1, v0}, Lcom/android/i18n/addressinput/Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Lcom/android/i18n/addressinput/CacheData;->mCache:Lcom/android/i18n/addressinput/JsoMap;

    invoke-virtual {v0, p1}, Lcom/android/i18n/addressinput/JsoMap;->getObj(Ljava/lang/String;)Lcom/android/i18n/addressinput/JsoMap;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/i18n/addressinput/CacheData;->mServiceUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 218
    const-string v0, "Cannot set URL of address data server to null."

    invoke-static {p1, v0}, Lcom/android/i18n/addressinput/Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    iput-object p1, p0, Lcom/android/i18n/addressinput/CacheData;->mServiceUrl:Ljava/lang/String;

    .line 220
    return-void
.end method
