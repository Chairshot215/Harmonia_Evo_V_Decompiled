.class public Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;
.super Ljava/lang/Object;
.source "CarrierBillingStorage.java"


# instance fields
.field private final mCurrentSimIdentifier:Ljava/lang/String;

.field private volatile mIsInit:Z

.field private final mStore:Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-boolean v2, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->mIsInit:Z

    .line 88
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->initCurrentSimIdentifier()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->mCurrentSimIdentifier:Ljava/lang/String;

    .line 91
    new-instance v0, Lcom/google/android/finsky/utils/persistence/FileBasedKeyValueStore;

    const-string v1, "carrier_billing"

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->mCurrentSimIdentifier:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/utils/persistence/FileBasedKeyValueStore;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 94
    .local v0, backingStore:Lcom/google/android/finsky/utils/persistence/FileBasedKeyValueStore;
    new-instance v1, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;

    invoke-direct {v1, v0}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;-><init>(Lcom/google/android/finsky/utils/persistence/KeyValueStore;)V

    iput-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->mStore:Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;

    .line 95
    return-void
.end method

.method private booleanToString(Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 1
    .parameter "b"

    .prologue
    .line 470
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getParamsKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 438
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 439
    const-string v0, "params"

    .line 441
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "params"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/finsky/utils/Md5Util;->secureHash([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private initCurrentSimIdentifier()Ljava/lang/String;
    .locals 3

    .prologue
    .line 484
    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getSubscriberIdFromTelephony()Ljava/lang/String;

    move-result-object v1

    .line 485
    .local v1, subscriberId:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 486
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/finsky/utils/Sha1Util;->secureHash([B)Ljava/lang/String;

    move-result-object v2

    .line 493
    :goto_0
    return-object v2

    .line 489
    :cond_0
    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getDeviceIdFromTelephony()Ljava/lang/String;

    move-result-object v0

    .line 490
    .local v0, deviceId:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 491
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/finsky/utils/Sha1Util;->secureHash([B)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 493
    :cond_1
    const-string v2, "invalid_sim_id"

    goto :goto_0
.end method

.method private integerToString(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1
    .parameter "i"

    .prologue
    .line 463
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private longToString(Ljava/lang/Long;)Ljava/lang/String;
    .locals 2
    .parameter "l"

    .prologue
    .line 477
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private stringToBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .parameter "str"

    .prologue
    .line 473
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method private stringToInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .parameter "str"

    .prologue
    .line 466
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method private stringToLong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2
    .parameter "str"

    .prologue
    .line 480
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public clearCredentials()V
    .locals 2

    .prologue
    .line 449
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->mStore:Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;

    const-string v1, "credentials"

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->delete(Ljava/lang/String;)V

    .line 450
    return-void
.end method

.method public clearParams()V
    .locals 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->mStore:Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;

    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getParamsKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->delete(Ljava/lang/String;)V

    .line 365
    return-void
.end method

.method public clearProvisioning()V
    .locals 2

    .prologue
    .line 419
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->mStore:Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;

    const-string v1, "provisioning"

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->delete(Ljava/lang/String;)V

    .line 420
    return-void
.end method

.method public getCredentials()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;
    .locals 8

    .prologue
    .line 297
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->isInit()Z

    move-result v6

    if-nez v6, :cond_0

    .line 298
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Attempt to fetch credentials when key store isn\'t ready."

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 302
    :cond_0
    iget-object v6, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->mStore:Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;

    const-string v7, "credentials"

    invoke-virtual {v6, v7}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->get(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    .line 303
    .local v5, values:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v5, :cond_1

    .line 304
    const/4 v6, 0x0

    .line 330
    :goto_0
    return-object v6

    .line 307
    :cond_1
    new-instance v7, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;

    invoke-direct {v7}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;-><init>()V

    const-string v6, "credentials"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;->setCredentials(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;

    move-result-object v1

    .line 310
    .local v1, builder:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;
    const-string v6, "api_version"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->stringToInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 311
    .local v0, apiVersion:Ljava/lang/Integer;
    if-eqz v0, :cond_2

    .line 312
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;->setApiVersion(I)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;

    .line 315
    :cond_2
    const-string v6, "expiration_time"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->stringToLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 316
    .local v2, expirationTime:Ljava/lang/Long;
    if-eqz v2, :cond_3

    .line 317
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;->setExpirationTime(J)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;

    .line 320
    :cond_3
    const-string v6, "is_provisioned"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->stringToBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    .line 321
    .local v4, isProvisioned:Ljava/lang/Boolean;
    if-eqz v4, :cond_4

    .line 322
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v1, v6}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;->setIsProvisioned(Z)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;

    .line 325
    :cond_4
    const-string v6, "invalid_password"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->stringToBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    .line 326
    .local v3, invalidPassword:Ljava/lang/Boolean;
    if-eqz v3, :cond_5

    .line 327
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v1, v6}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;->setInvalidPassword(Z)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;

    .line 330
    :cond_5
    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;->build()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;

    move-result-object v6

    goto :goto_0
.end method

.method public getCurrentSimIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->mCurrentSimIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getParams()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;
    .locals 13

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->isInit()Z

    move-result v11

    if-nez v11, :cond_0

    .line 136
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "Attempt to fetch params when key store isn\'t ready."

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 139
    :cond_0
    iget-object v11, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->mStore:Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;

    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getParamsKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->get(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v10

    .line 140
    .local v10, values:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v10, :cond_1

    .line 141
    const/4 v11, 0x0

    .line 198
    :goto_0
    return-object v11

    .line 144
    :cond_1
    new-instance v12, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;

    invoke-direct {v12}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;-><init>()V

    const-string v11, "carrier_id"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v12, v11}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->setId(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;

    move-result-object v12

    const-string v11, "carrier_name"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v12, v11}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->setName(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;

    move-result-object v12

    const-string v11, "mnc_mcc_csv"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {p0, v11}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->stringToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    invoke-virtual {v12, v11}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->setMncMccs(Ljava/util/List;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;

    move-result-object v12

    const-string v11, "get_provisioning_url"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v12, v11}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->setGetProvisioningUrl(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;

    move-result-object v12

    const-string v11, "get_credentials_url"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v12, v11}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->setGetCredentialsUrl(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;

    move-result-object v12

    const-string v11, "carrier_icon_id"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v12, v11}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->setCarrierIconId(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;

    move-result-object v1

    .line 152
    .local v1, builder:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;
    const-string v11, "carrier_api_version"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-direct {p0, v11}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->stringToInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 153
    .local v2, carrierApiVersion:Ljava/lang/Integer;
    if-eqz v2, :cond_2

    .line 154
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v1, v11}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->setCarrierApiVersion(I)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;

    .line 157
    :cond_2
    const-string v11, "show_carrier_tos"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-direct {p0, v11}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->stringToBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    .line 158
    .local v9, showCarrierTos:Ljava/lang/Boolean;
    if-eqz v9, :cond_3

    .line 159
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    invoke-virtual {v1, v11}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->setShowCarrierTos(Z)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;

    .line 162
    :cond_3
    const-string v11, "per_transaction_credentials_required"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-direct {p0, v11}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->stringToBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    .line 164
    .local v5, perTransactionCredentialsRequired:Ljava/lang/Boolean;
    if-eqz v5, :cond_4

    .line 165
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    invoke-virtual {v1, v11}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->setPerTransactionCredentialsRequired(Z)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;

    .line 168
    :cond_4
    const-string v11, "per_transaction_credentials_required"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-direct {p0, v11}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->stringToBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v8

    .line 170
    .local v8, sendSubscriberInfoWithCarrierRequests:Ljava/lang/Boolean;
    if-eqz v8, :cond_5

    .line 171
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    invoke-virtual {v1, v11}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->setSendSubscriberInfoWithCarrierRequests(Z)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;

    .line 174
    :cond_5
    const-string v11, "password_required"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-direct {p0, v11}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->stringToBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    .line 175
    .local v4, passwordRequired:Ljava/lang/Boolean;
    if-eqz v4, :cond_6

    .line 176
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    invoke-virtual {v1, v11}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->setPasswordRequired(Z)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;

    .line 179
    :cond_6
    const-string v11, "association_method"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-direct {p0, v11}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->stringToInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 180
    .local v0, associationMethod:Ljava/lang/Integer;
    if-eqz v0, :cond_7

    .line 181
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v1, v11}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->setAssociationMethod(I)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;

    .line 184
    :cond_7
    const-string v11, "user_token_request_address"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 185
    .local v6, requestUserTokenAddress:Ljava/lang/String;
    if-eqz v0, :cond_8

    .line 186
    invoke-virtual {v1, v6}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->setRequestUserTokenTo(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;

    .line 189
    :cond_8
    const-string v11, "user_token_request_message"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 190
    .local v7, requestUserTokenText:Ljava/lang/String;
    if-eqz v0, :cond_9

    .line 191
    invoke-virtual {v1, v7}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->setRequestUserTokenText(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;

    .line 194
    :cond_9
    const-string v11, "customer_support"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 195
    .local v3, customerSupport:Ljava/lang/String;
    if-eqz v0, :cond_a

    .line 196
    invoke-virtual {v1, v3}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->setCustomerSupport(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;

    .line 198
    :cond_a
    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->build()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    move-result-object v11

    goto/16 :goto_0
.end method

.method public getProvisioning()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;
    .locals 15

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->isInit()Z

    move-result v13

    if-nez v13, :cond_0

    .line 207
    new-instance v13, Ljava/lang/IllegalStateException;

    const-string v14, "Attempt to fetch provisioning when key store isn\'t ready."

    invoke-direct {v13, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 211
    :cond_0
    iget-object v13, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->mStore:Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;

    const-string v14, "provisioning"

    invoke-virtual {v13, v14}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->get(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v12

    .line 212
    .local v12, values:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getCredentials()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;

    move-result-object v3

    .line 213
    .local v3, credentials:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;
    if-nez v12, :cond_2

    .line 216
    if-eqz v3, :cond_1

    .line 217
    new-instance v13, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    invoke-direct {v13}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;-><init>()V

    invoke-virtual {v13, v3}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->setCredentials(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->build()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    move-result-object v13

    .line 289
    :goto_0
    return-object v13

    .line 221
    :cond_1
    const/4 v13, 0x0

    goto :goto_0

    .line 224
    :cond_2
    new-instance v1, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    invoke-direct {v1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;-><init>()V

    .line 225
    .local v1, builder:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;
    const-string v13, "id"

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v1, v13}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->setProvisioningId(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    move-result-object v14

    const-string v13, "tos_url"

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->setTosUrl(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    move-result-object v14

    const-string v13, "tos_version"

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->setTosVersion(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    move-result-object v14

    const-string v13, "subscriber_currency"

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->setSubscriberCurrency(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    move-result-object v14

    const-string v13, "account_type"

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->setAccountType(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    move-result-object v14

    const-string v13, "password_prompt"

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->setPasswordPrompt(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    move-result-object v14

    const-string v13, "password_forgot_url"

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->setPasswordForgotUrl(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    move-result-object v14

    const-string v13, "address_snippet"

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->setAddressSnippet(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    move-result-object v14

    const-string v13, "country"

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->setCountry(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    move-result-object v13

    invoke-virtual {v13, v3}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->setCredentials(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    .line 236
    const-string v13, "api_version"

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-direct {p0, v13}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->stringToInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 237
    .local v0, apiVersion:Ljava/lang/Integer;
    if-eqz v0, :cond_3

    .line 238
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v1, v13}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->setApiVersion(I)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    .line 241
    :cond_3
    const-string v13, "is_provisioned"

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-direct {p0, v13}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->stringToBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    .line 242
    .local v7, isProvisioned:Ljava/lang/Boolean;
    if-eqz v7, :cond_4

    .line 243
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-virtual {v1, v13}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->setIsProvisioned(Z)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    .line 246
    :cond_4
    const-string v13, "transaction_limit"

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-direct {p0, v13}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->stringToLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    .line 247
    .local v11, transactionLimit:Ljava/lang/Long;
    if-eqz v11, :cond_5

    .line 248
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual {v1, v13, v14}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->setTransactionLimit(J)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    .line 251
    :cond_5
    const-string v13, "password_required"

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-direct {p0, v13}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->stringToBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    .line 252
    .local v9, passwordRequired:Ljava/lang/Boolean;
    if-eqz v9, :cond_6

    .line 253
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-virtual {v1, v13}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->setPasswordRequired(Z)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    .line 256
    :cond_6
    const-string v13, "subscriber_token"

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 257
    .local v8, obfuscatedSubscriberInfo:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_7

    .line 258
    invoke-static {v8}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->fromObfuscatedString(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    move-result-object v10

    .line 260
    .local v10, subscriberInfo:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;
    if-eqz v10, :cond_7

    .line 261
    invoke-virtual {v1, v10}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->setSubscriberInfo(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    .line 265
    .end local v10           #subscriberInfo:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;
    :cond_7
    new-instance v14, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;

    invoke-direct {v14}, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;-><init>()V

    const-string v13, "encrypted_message"

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13}, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;->setMessage(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;

    move-result-object v14

    const-string v13, "encrypted_key"

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13}, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;->setEncryptedKey(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;

    move-result-object v14

    const-string v13, "encrypted_signature"

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13}, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;->setSignature(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;

    move-result-object v14

    const-string v13, "encrypted_init_vector"

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13}, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;->setInitVector(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;

    move-result-object v5

    .line 272
    .local v5, encryptedSubscriberInfoBuilder:Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;
    const-string v13, "encrypted_google_key_version"

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-direct {p0, v13}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->stringToInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 274
    .local v6, googleKeyVersion:Ljava/lang/Integer;
    if-eqz v6, :cond_8

    .line 275
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v5, v13}, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;->setGoogleKeyVersion(I)Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;

    .line 278
    :cond_8
    const-string v13, "encrypted_carrier_key_version"

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-direct {p0, v13}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->stringToInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 280
    .local v2, carrierKeyVersion:Ljava/lang/Integer;
    if-eqz v2, :cond_9

    .line 281
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v5, v13}, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;->setCarrierKeyVersion(I)Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;

    .line 284
    :cond_9
    invoke-virtual {v5}, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo$Builder;->build()Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;

    move-result-object v4

    .line 285
    .local v4, encryptedSubscriberInfo:Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;
    invoke-virtual {v4}, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_a

    .line 286
    invoke-virtual {v1, v4}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->setEncryptedSubscriberInfo(Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;

    .line 289
    :cond_a
    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->build()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    move-result-object v13

    goto/16 :goto_0
.end method

.method public init(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "runnable"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->mStore:Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;

    new-instance v1, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage$1;-><init>(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->load(Ljava/lang/Runnable;)V

    .line 116
    return-void
.end method

.method public isInit()Z
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->mIsInit:Z

    return v0
.end method

.method listToString(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 454
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ","

    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setCredentials(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;)V
    .locals 4
    .parameter "credentials"

    .prologue
    .line 428
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 429
    .local v0, values:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "credentials"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;->getCredentials()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    const-string v1, "expiration_time"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;->getExpirationTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->longToString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    const-string v1, "is_provisioned"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;->isProvisioned()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->booleanToString(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    const-string v1, "invalid_password"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;->invalidPassword()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->booleanToString(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->mStore:Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;

    const-string v2, "credentials"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->put(Ljava/lang/String;Ljava/util/Map;)V

    .line 435
    return-void
.end method

.method setInit(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->mIsInit:Z

    .line 128
    return-void
.end method

.method public setParams(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;)V
    .locals 3
    .parameter "params"

    .prologue
    .line 339
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 340
    .local v0, values:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "carrier_id"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    const-string v1, "carrier_name"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    const-string v1, "mnc_mcc_csv"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->getMncMccs()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->listToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    const-string v1, "get_provisioning_url"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->getGetProvisioningUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    const-string v1, "get_credentials_url"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->getGetCredentialsUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    const-string v1, "carrier_icon_id"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->getCarrierIconId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    const-string v1, "show_carrier_tos"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->showCarrierTos()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->booleanToString(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    const-string v1, "carrier_api_version"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->getCarrierApiVersion()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->integerToString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    const-string v1, "per_transaction_credentials_required"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->perTransactionCredentialsRequired()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->booleanToString(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    const-string v1, "send_subscriber_info_with_carrier_requests"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->sendSubscriberInfoWithCarrierRequests()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->booleanToString(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    const-string v1, "password_required"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->passwordRequired()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->booleanToString(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    const-string v1, "association_method"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->getAssociationMethod()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->integerToString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    const-string v1, "user_token_request_address"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->getRequestUserTokenTo()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    const-string v1, "user_token_request_message"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->getRequestUserTokenText()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    const-string v1, "customer_support"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->getCustomerSupport()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->mStore:Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;

    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getParamsKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->put(Ljava/lang/String;Ljava/util/Map;)V

    .line 358
    return-void
.end method

.method public setProvisioning(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;)V
    .locals 6
    .parameter "provisioning"

    .prologue
    .line 373
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 374
    .local v2, values:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "api_version"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getApiVersion()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->integerToString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    const-string v3, "is_provisioned"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->isProvisioned()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->booleanToString(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    const-string v3, "id"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getProvisioningId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    const-string v3, "tos_url"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getTosUrl()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    const-string v3, "tos_version"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getTosVersion()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    const-string v3, "subscriber_currency"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getSubscriberCurrency()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    const-string v3, "transaction_limit"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getTransactionLimit()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->longToString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    const-string v3, "account_type"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getAccountType()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getSubscriberInfo()Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 384
    const-string v3, "subscriber_token"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getSubscriberInfo()Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->toObfuscatedString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    :cond_0
    const-string v3, "password_required"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->isPasswordRequired()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->booleanToString(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    const-string v3, "password_prompt"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getPasswordPrompt()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    const-string v3, "password_forgot_url"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getPasswordForgotUrl()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    const-string v3, "address_snippet"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getAddressSnippet()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    const-string v3, "country"

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getEncryptedSubscriberInfo()Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;

    move-result-object v1

    .line 395
    .local v1, encryptedSubscriberInfo:Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;
    if-eqz v1, :cond_1

    .line 396
    const-string v3, "encrypted_message"

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    const-string v3, "encrypted_key"

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;->getEncryptedKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    const-string v3, "encrypted_signature"

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;->getSignature()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    const-string v3, "encrypted_init_vector"

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;->getInitVector()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    const-string v3, "encrypted_carrier_key_version"

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;->getCarrierKeyVersion()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->integerToString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    const-string v3, "encrypted_google_key_version"

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;->getGoogleKeyVersion()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->integerToString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getCredentials()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;

    move-result-object v0

    .line 408
    .local v0, credentials:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;
    if-eqz v0, :cond_2

    .line 409
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->setCredentials(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;)V

    .line 412
    :cond_2
    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->mStore:Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;

    const-string v4, "provisioning"

    invoke-virtual {v3, v4, v2}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->put(Ljava/lang/String;Ljava/util/Map;)V

    .line 413
    return-void
.end method

.method stringToList(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .parameter "str"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 458
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method
