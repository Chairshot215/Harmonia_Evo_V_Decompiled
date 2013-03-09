.class public Lcom/google/android/finsky/billing/carrierbilling/Dcb3Instrument;
.super Lcom/google/android/finsky/billing/Instrument;
.source "Dcb3Instrument.java"


# instance fields
.field private mPassphrase:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "checkoutOption"
    .parameter "displayIcon"

    .prologue
    .line 154
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/billing/Instrument;-><init>(Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;Landroid/graphics/drawable/Drawable;)V

    .line 155
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 52
    invoke-static {}, Lcom/google/android/finsky/billing/carrierbilling/Dcb3Instrument;->canAssociate()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()Ljava/util/Map;
    .locals 1

    .prologue
    .line 52
    invoke-static {}, Lcom/google/android/finsky/billing/carrierbilling/Dcb3Instrument;->getDcb3UserIdentifierParams()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static canAssociate()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 282
    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->isDeviceInService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 285
    :goto_0
    return v1

    :cond_0
    sget-object v0, Lcom/google/android/finsky/config/G;->dcb3SetupWhileRoamingEnabled:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->isNetworkRoaming()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private static getDcb3UserIdentifierParams()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 252
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    .line 253
    .local v1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getCarrierBillingStorage()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getCurrentSimIdentifier()Ljava/lang/String;

    move-result-object v2

    .line 254
    .local v2, simIdentifier:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 255
    const-string v5, "dcbch"

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    :cond_0
    sget-object v5, Lcom/google/android/finsky/config/G;->dcb3SendProvisioningData:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v5}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 258
    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getSubscriberIdFromTelephony()Ljava/lang/String;

    move-result-object v4

    .line 259
    .local v4, subscriberId:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 260
    const-string v5, "dcbsubid"

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    :cond_1
    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getDeviceIdFromTelephony()Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, deviceId:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 264
    const-string v5, "dcbhardwareid"

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    :cond_2
    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getSimSerialNumberFromTelephony()Ljava/lang/String;

    move-result-object v3

    .line 267
    .local v3, simSerialNumber:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 268
    const-string v5, "dcbsimserialnumber"

    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    .end local v0           #deviceId:Ljava/lang/String;
    .end local v3           #simSerialNumber:Ljava/lang/String;
    .end local v4           #subscriberId:Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/google/android/finsky/billing/carrierbilling/Dcb3Instrument;->performDeviceBootedCheck()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 272
    const-string v5, "dcbdevicerebooted"

    const-string v6, "true"

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    :cond_4
    return-object v1
.end method

.method private getInstrumentStatus()Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;
    .locals 4

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/Dcb3Instrument;->getCheckoutOption()Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;

    move-result-object v0

    .line 192
    .local v0, checkoutOption:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->hasInstrument()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 193
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getInstrument()Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    move-result-object v1

    .line 194
    .local v1, instrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->hasCarrierBillingStatus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 195
    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->getCarrierBillingStatus()Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;

    move-result-object v2

    .line 199
    .end local v1           #instrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    :goto_0
    return-object v2

    .line 198
    :cond_0
    const-string v2, "CheckoutOption does not have instrument status."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isAssociationValid()Z
    .locals 2

    .prologue
    .line 203
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/Dcb3Instrument;->getInstrumentStatus()Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;

    move-result-object v0

    .line 204
    .local v0, status:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;->getAssociationRequired()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static performDeviceBootedCheck()Z
    .locals 10

    .prologue
    .line 295
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 296
    .local v5, now:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 297
    .local v0, awakeTime:J
    sget-object v7, Lcom/google/android/finsky/billing/BillingPreferences;->LAST_DCB3_PROVISIONING_TIME_MILLIS:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v7}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 299
    .local v3, lastCheck:J
    sub-long v7, v5, v3

    cmp-long v7, v7, v0

    if-lez v7, :cond_0

    const/4 v2, 0x1

    .line 303
    .local v2, hasBootedSinceLastCheck:Z
    :goto_0
    sget-object v7, Lcom/google/android/finsky/billing/BillingPreferences;->LAST_DCB3_PROVISIONING_TIME_MILLIS:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 304
    return v2

    .line 299
    .end local v2           #hasBootedSinceLastCheck:Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static registerWithFactory(Lcom/google/android/finsky/billing/InstrumentFactory;)V
    .locals 3
    .parameter "instrumentFactory"

    .prologue
    .line 62
    const/4 v0, 0x2

    const/4 v1, 0x3

    new-instance v2, Lcom/google/android/finsky/billing/carrierbilling/Dcb3Instrument$1;

    invoke-direct {v2}, Lcom/google/android/finsky/billing/carrierbilling/Dcb3Instrument$1;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/finsky/billing/InstrumentFactory;->registerFormOfPayment(IILcom/google/android/finsky/billing/InstrumentFactory$FormOfPayment;)V

    .line 151
    return-void
.end method


# virtual methods
.method public completePurchase(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Landroid/os/Bundle;)Lcom/google/android/finsky/billing/BillingFlow;
    .locals 15
    .parameter "billingFlowContext"
    .parameter "listener"
    .parameter "parameters"

    .prologue
    .line 160
    const-string v1, "authAccount"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 161
    .local v11, accountName:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-static {v11, v1}, Lcom/google/android/finsky/api/AccountHandler;->findAccount(Ljava/lang/String;Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v10

    .line 162
    .local v10, account:Landroid/accounts/Account;
    if-nez v10, :cond_0

    .line 163
    const-string v1, "Invalid account passed in parameters."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    const/4 v1, 0x0

    .line 182
    :goto_0
    return-object v1

    .line 166
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/Dcb3Instrument;->getCheckoutOption()Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;

    move-result-object v13

    .line 167
    .local v13, checkoutOption:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;
    invoke-virtual {v13}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->hasInstrument()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 168
    invoke-virtual {v13}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getInstrument()Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    move-result-object v14

    .line 169
    .local v14, instrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    const-string v1, "dcb_instrument"

    invoke-static {v14}, Lcom/google/android/finsky/utils/ParcelableProto;->forProto(Lcom/google/protobuf/micro/MessageMicro;)Lcom/google/android/finsky/utils/ParcelableProto;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 176
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    iget-object v2, v10, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/FinskyApp;->getDfeApi(Ljava/lang/String;)Lcom/google/android/finsky/api/DfeApi;

    move-result-object v3

    .line 178
    .local v3, dfeApi:Lcom/google/android/finsky/api/DfeApi;
    new-instance v12, Lcom/android/volley/toolbox/AndroidAuthenticator;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    sget-object v1, Lcom/google/android/finsky/config/G;->checkoutAuthTokenType:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v12, v2, v10, v1}, Lcom/android/volley/toolbox/AndroidAuthenticator;-><init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 180
    .local v12, authenticator:Lcom/android/volley/toolbox/AndroidAuthenticator;
    new-instance v9, Lcom/google/android/finsky/billing/AsyncAuthenticator;

    invoke-direct {v9, v12}, Lcom/google/android/finsky/billing/AsyncAuthenticator;-><init>(Lcom/android/volley/toolbox/Authenticator;)V

    .line 182
    .local v9, asyncAuthenticator:Lcom/google/android/finsky/billing/AsyncAuthenticator;
    new-instance v1, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v5

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v6

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object/from16 v7, p3

    move-object v8, p0

    invoke-direct/range {v1 .. v9}, Lcom/google/android/finsky/billing/carrierbilling/flow/CompleteDcb3Flow;-><init>(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/billing/BillingFlowListener;Lcom/google/android/finsky/analytics/Analytics;Lcom/google/android/finsky/analytics/FinskyEventLog;Landroid/os/Bundle;Lcom/google/android/finsky/billing/carrierbilling/Dcb3Instrument;Lcom/google/android/finsky/billing/AsyncAuthenticator;)V

    goto :goto_0

    .line 172
    .end local v3           #dfeApi:Lcom/google/android/finsky/api/DfeApi;
    .end local v9           #asyncAuthenticator:Lcom/google/android/finsky/billing/AsyncAuthenticator;
    .end local v12           #authenticator:Lcom/android/volley/toolbox/AndroidAuthenticator;
    .end local v14           #instrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    :cond_1
    const-string v1, "Checkout option does not contain valid DCB instrument."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCompleteParams()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 230
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    .line 231
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getCarrierBillingStorage()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getCurrentSimIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 232
    .local v1, simIdentifier:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 233
    const-string v2, "dcbch"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    :cond_0
    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/Dcb3Instrument;->mPassphrase:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 236
    const-string v2, "dcbpassphrase"

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/Dcb3Instrument;->mPassphrase:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    :cond_1
    return-object v0
.end method

.method public getMessages()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 219
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/Dcb3Instrument;->isAssociationValid()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/google/android/finsky/billing/carrierbilling/Dcb3Instrument;->canAssociate()Z

    move-result v1

    if-nez v1, :cond_0

    .line 220
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 221
    .local v0, messages:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    const v2, 0x7f070079

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    invoke-super {p0}, Lcom/google/android/finsky/billing/Instrument;->getMessages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 225
    .end local v0           #messages:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/google/android/finsky/billing/Instrument;->getMessages()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public hasMessages()Z
    .locals 1

    .prologue
    .line 214
    invoke-super {p0}, Lcom/google/android/finsky/billing/Instrument;->hasMessages()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/Dcb3Instrument;->isAssociationValid()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/android/finsky/billing/carrierbilling/Dcb3Instrument;->canAssociate()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/Dcb3Instrument;->isAssociationValid()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/finsky/billing/carrierbilling/Dcb3Instrument;->canAssociate()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-super {p0}, Lcom/google/android/finsky/billing/Instrument;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPassphrase(Ljava/lang/String;)V
    .locals 0
    .parameter "passphrase"

    .prologue
    .line 313
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/Dcb3Instrument;->mPassphrase:Ljava/lang/String;

    .line 314
    return-void
.end method
