.class public Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils;
.super Ljava/lang/Object;
.source "CarrierBillingUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetRetriableErrors(Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;)Ljava/util/ArrayList;
    .locals 3
    .parameter "response"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->getResult()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;->getErrorInputFieldList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils;->getInvalidEntries(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    .line 144
    .local v0, retriableErrorList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 148
    .end local v0           #retriableErrorList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static areCredentialsValid(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;)Z
    .locals 11
    .parameter "dcbStorage"

    .prologue
    const/4 v8, 0x0

    .line 57
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getCredentials()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;

    move-result-object v0

    .line 58
    .local v0, credentials:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;
    if-nez v0, :cond_0

    .line 64
    :goto_0
    return v8

    .line 61
    :cond_0
    sget-object v7, Lcom/google/android/finsky/config/G;->vendingCarrierCredentialsBufferMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v7}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 62
    .local v3, expiryBufferTime:J
    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;->getExpirationTime()J

    move-result-wide v9

    sub-long v1, v9, v3

    .line 63
    .local v1, expiresAt:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 64
    .local v5, now:J
    invoke-static {p0}, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils;->isProvisioned(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;->getCredentials()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    cmp-long v7, v1, v5

    if-lez v7, :cond_1

    const/4 v7, 0x1

    :goto_1
    move v8, v7

    goto :goto_0

    :cond_1
    move v7, v8

    goto :goto_1
.end method

.method private static getInvalidEntries(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    .local p0, inputErrors:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v1, errors:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;

    .line 114
    .local v0, error:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;->getInputField()I

    move-result v3

    .line 115
    .local v3, inputField:I
    packed-switch v3, :pswitch_data_0

    .line 126
    :pswitch_0
    const-string v4, "InputValidationError that can\'t be edited: type=%d, message=%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;->getInputField()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;->getErrorMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 123
    :pswitch_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 131
    .end local v0           #error:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;
    .end local v3           #inputField:I
    :cond_0
    return-object v1

    .line 115
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static initializeCarrierBillingParams(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 2
    .parameter "context"
    .parameter "completionCallback"

    .prologue
    .line 200
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierParamsAction;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getMarketMetadata()Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierParamsAction;-><init>(Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;)V

    .line 201
    .local v0, cpa:Lcom/google/android/finsky/billing/carrierbilling/action/CarrierParamsAction;
    new-instance v1, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils$1;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierParamsAction;->run(Ljava/lang/Runnable;)V

    .line 212
    return-void
.end method

.method public static initializeCarrierBillingProvisioning(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "completionCallback"

    .prologue
    .line 220
    invoke-static {}, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils;->isCarrierBillingParamsAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 221
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;

    invoke-direct {v0}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;-><init>()V

    .line 222
    .local v0, carrierProvisioningAction:Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;
    invoke-virtual {v0, p0}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;->run(Ljava/lang/Runnable;)V

    .line 226
    .end local v0           #carrierProvisioningAction:Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    if-eqz p0, :cond_0

    .line 224
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public static initializeCarrierBillingStorage(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "completionCallback"

    .prologue
    .line 188
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierBillingAction;

    invoke-direct {v0}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierBillingAction;-><init>()V

    .line 189
    .local v0, cba:Lcom/google/android/finsky/billing/carrierbilling/action/CarrierBillingAction;
    invoke-virtual {v0, p0}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierBillingAction;->run(Ljava/lang/Runnable;)V

    .line 190
    return-void
.end method

.method public static isCarrierBillingParamsAvailable()Z
    .locals 1

    .prologue
    .line 235
    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getCarrierBillingStorage()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getCarrierBillingStorage()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getParams()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDcb30()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 93
    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getCarrierBillingStorage()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    move-result-object v1

    .line 94
    .local v1, storage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;
    if-nez v1, :cond_1

    .line 95
    const-string v4, "CarrierBillingStorage is null, fallback to 3.0"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4, v3}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    :cond_0
    :goto_0
    return v2

    .line 98
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getParams()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    move-result-object v0

    .line 99
    .local v0, params:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;
    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->getCarrierApiVersion()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method public static isProvisioned(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;)Z
    .locals 4
    .parameter "dcbStorage"

    .prologue
    const/4 v1, 0x0

    .line 74
    if-nez p0, :cond_1

    .line 75
    const-string v2, "CarrierBillingStorage is null. Return false"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    :cond_0
    :goto_0
    return v1

    .line 78
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getProvisioning()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    move-result-object v0

    .line 79
    .local v0, provisioning:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;
    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->isProvisioned()Z

    move-result v1

    goto :goto_0
.end method

.method public static isRadioNetworkAvailable()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 45
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/FinskyApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 47
    .local v0, manager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 48
    .local v1, network:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public static registerDcbInstrument(Lcom/google/android/finsky/billing/InstrumentFactory;)V
    .locals 3
    .parameter "instrumentFactory"

    .prologue
    const/4 v2, 0x0

    .line 245
    invoke-static {}, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils;->isDcb30()Z

    move-result v0

    if-nez v0, :cond_3

    .line 247
    sget-boolean v0, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 248
    const-string v0, "Register DCB 2.0 Instrument."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 250
    :cond_0
    invoke-static {p0}, Lcom/google/android/finsky/billing/carrierbilling/Dcb2Instrument;->registerWithFactory(Lcom/google/android/finsky/billing/InstrumentFactory;)V

    .line 252
    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getCarrierBillingStorage()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils;->isProvisioned(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 256
    sget-boolean v0, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 257
    const-string v0, "Register DCB 3.0 Instrument."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 259
    :cond_1
    invoke-static {p0}, Lcom/google/android/finsky/billing/carrierbilling/Dcb3Instrument;->registerWithFactory(Lcom/google/android/finsky/billing/InstrumentFactory;)V

    .line 267
    :cond_2
    :goto_0
    return-void

    .line 262
    :cond_3
    sget-boolean v0, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 263
    const-string v0, "Register DCB 3.0 Instrument."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 265
    :cond_4
    invoke-static {p0}, Lcom/google/android/finsky/billing/carrierbilling/Dcb3Instrument;->registerWithFactory(Lcom/google/android/finsky/billing/InstrumentFactory;)V

    goto :goto_0
.end method

.method public static storeDcbStatus(Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;)V
    .locals 6
    .parameter "carrierBillingStatus"

    .prologue
    .line 159
    new-instance v2, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;

    invoke-direct {v2}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;-><init>()V

    .line 160
    .local v2, dcbTos:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;
    new-instance v3, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;

    invoke-direct {v3}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;-><init>()V

    .line 161
    .local v3, piiTos:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;
    const/4 v0, 0x0

    .line 163
    .local v0, associationRequired:Z
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->hasCarrierTos()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 164
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->getCarrierTos()Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;

    move-result-object v1

    .line 165
    .local v1, carrierTos:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;
    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->hasDcbTos()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 166
    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->getDcbTos()Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;

    move-result-object v2

    .line 168
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->hasPiiTos()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 169
    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->getPiiTos()Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;

    move-result-object v3

    .line 172
    .end local v1           #carrierTos:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->hasAssociationRequired()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 173
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->getAssociationRequired()Z

    move-result v0

    .line 175
    :cond_2
    sget-object v4, Lcom/google/android/finsky/billing/BillingPreferences;->CARRIER_DCB_TOS_URL:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 176
    sget-object v4, Lcom/google/android/finsky/billing/BillingPreferences;->CARRIER_DCB_TOS_VERSION:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 177
    sget-object v4, Lcom/google/android/finsky/billing/BillingPreferences;->CARRIER_PII_TOS_URL:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 178
    sget-object v4, Lcom/google/android/finsky/billing/BillingPreferences;->CARRIER_PII_TOS_VERSION:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 179
    sget-object v4, Lcom/google/android/finsky/billing/BillingPreferences;->DEVICE_ASSOCIATION_NEEDED:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 180
    return-void
.end method
