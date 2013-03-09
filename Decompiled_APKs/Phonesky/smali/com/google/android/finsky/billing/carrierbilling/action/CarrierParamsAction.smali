.class public Lcom/google/android/finsky/billing/carrierbilling/action/CarrierParamsAction;
.super Ljava/lang/Object;
.source "CarrierParamsAction.java"


# instance fields
.field private final mResponse:Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;


# direct methods
.method public constructor <init>(Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierParamsAction;->mResponse:Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;

    .line 21
    return-void
.end method


# virtual methods
.method createCarrierBillingParameters(Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;
    .locals 8
    .parameter "metadata"

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 42
    const/4 v4, 0x0

    .line 43
    .local v4, proto:Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;
    if-nez p1, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-object v3

    .line 46
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->getBillingParameterList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;

    .line 47
    .local v0, candidate:Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;
    invoke-virtual {v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->getBillingInstrumentType()I

    move-result v5

    if-ne v5, v6, :cond_2

    .line 49
    move-object v4, v0

    .line 53
    .end local v0           #candidate:Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;
    :cond_3
    if-eqz v4, :cond_0

    .line 59
    :try_start_0
    new-instance v5, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;

    invoke-direct {v5}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;-><init>()V

    invoke-virtual {v4}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->setId(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->setName(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->getMncMccList()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->setMncMccs(Ljava/util/List;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->getBackendUrl(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->setGetProvisioningUrl(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->getBackendUrl(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->setGetCredentialsUrl(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->getIconId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->setCarrierIconId(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->getInstrumentTosRequired()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->setShowCarrierTos(Z)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->getApiVersion()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->setCarrierApiVersion(I)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->getPerTransactionCredentialsRequired()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->setPerTransactionCredentialsRequired(Z)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->getSendSubscriberIdWithCarrierBillingRequests()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->setSendSubscriberInfoWithCarrierRequests(Z)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->getDeviceAssociationMethod()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->setAssociationMethod(I)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->getUserTokenRequestMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->setRequestUserTokenText(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->getUserTokenRequestAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->setRequestUserTokenTo(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->getPassphraseRequired()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->setPasswordRequired(Z)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->build()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .local v3, params:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;
    goto/16 :goto_0

    .line 76
    .end local v3           #params:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;
    :catch_0
    move-exception v2

    .line 77
    .local v2, iae:Ljava/lang/IllegalArgumentException;
    const-string v5, "Missing fields for creating carrier billing parameters"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    const/4 v3, 0x0

    .restart local v3       #params:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;
    goto/16 :goto_0
.end method

.method public run(Ljava/lang/Runnable;)V
    .locals 3
    .parameter "finishCallback"

    .prologue
    .line 28
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierParamsAction;->mResponse:Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierParamsAction;->createCarrierBillingParameters(Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    move-result-object v0

    .line 29
    .local v0, carrierBillingParams:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;
    if-eqz v0, :cond_0

    .line 30
    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getCarrierBillingStorage()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->setParams(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;)V

    .line 35
    :goto_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 36
    return-void

    .line 32
    :cond_0
    const-string v1, "Saving carrier billing params failed."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getCarrierBillingStorage()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->clearParams()V

    goto :goto_0
.end method
