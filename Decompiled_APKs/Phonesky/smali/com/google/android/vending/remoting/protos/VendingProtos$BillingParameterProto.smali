.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BillingParameterProto"
.end annotation


# instance fields
.field private apiVersion_:I

.field private applicationId_:Ljava/lang/String;

.field private backendUrl_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private billingInstrumentType_:I

.field private cachedSize:I

.field private deviceAssociationMethod_:I

.field private hasApiVersion:Z

.field private hasApplicationId:Z

.field private hasBillingInstrumentType:Z

.field private hasDeviceAssociationMethod:Z

.field private hasIconId:Z

.field private hasId:Z

.field private hasInstrumentTosRequired:Z

.field private hasName:Z

.field private hasPassphraseRequired:Z

.field private hasPerTransactionCredentialsRequired:Z

.field private hasSendSubscriberIdWithCarrierBillingRequests:Z

.field private hasTosUrl:Z

.field private hasUserTokenRequestAddress:Z

.field private hasUserTokenRequestMessage:Z

.field private iconId_:Ljava/lang/String;

.field private id_:Ljava/lang/String;

.field private instrumentTosRequired_:Z

.field private mncMcc_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private name_:Ljava/lang/String;

.field private passphraseRequired_:Z

.field private perTransactionCredentialsRequired_:Z

.field private sendSubscriberIdWithCarrierBillingRequests_:Z

.field private tosUrl_:Ljava/lang/String;

.field private userTokenRequestAddress_:Ljava/lang/String;

.field private userTokenRequestMessage_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 15489
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 15497
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->id_:Ljava/lang/String;

    .line 15514
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->name_:Ljava/lang/String;

    .line 15530
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->mncMcc_:Ljava/util/List;

    .line 15563
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->backendUrl_:Ljava/util/List;

    .line 15597
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->iconId_:Ljava/lang/String;

    .line 15614
    iput v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->billingInstrumentType_:I

    .line 15631
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->applicationId_:Ljava/lang/String;

    .line 15648
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->tosUrl_:Ljava/lang/String;

    .line 15665
    iput-boolean v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->instrumentTosRequired_:Z

    .line 15682
    iput v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->apiVersion_:I

    .line 15699
    iput-boolean v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->perTransactionCredentialsRequired_:Z

    .line 15716
    iput-boolean v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->sendSubscriberIdWithCarrierBillingRequests_:Z

    .line 15733
    iput v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->deviceAssociationMethod_:I

    .line 15750
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->userTokenRequestMessage_:Ljava/lang/String;

    .line 15767
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->userTokenRequestAddress_:Ljava/lang/String;

    .line 15784
    iput-boolean v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->passphraseRequired_:Z

    .line 15878
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->cachedSize:I

    .line 15489
    return-void
.end method


# virtual methods
.method public addBackendUrl(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 15580
    if-nez p1, :cond_0

    .line 15581
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15583
    :cond_0
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->backendUrl_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15584
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->backendUrl_:Ljava/util/List;

    .line 15586
    :cond_1
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->backendUrl_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15587
    return-object p0
.end method

.method public addMncMcc(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 15547
    if-nez p1, :cond_0

    .line 15548
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15550
    :cond_0
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->mncMcc_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15551
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->mncMcc_:Ljava/util/List;

    .line 15553
    :cond_1
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->mncMcc_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15554
    return-object p0
.end method

.method public getApiVersion()I
    .locals 1

    .prologue
    .line 15683
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->apiVersion_:I

    return v0
.end method

.method public getApplicationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15632
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->applicationId_:Ljava/lang/String;

    return-object v0
.end method

.method public getBackendUrl(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 15570
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->backendUrl_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getBackendUrlList()Ljava/util/List;
    .locals 1
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
    .line 15566
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->backendUrl_:Ljava/util/List;

    return-object v0
.end method

.method public getBillingInstrumentType()I
    .locals 1

    .prologue
    .line 15616
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->billingInstrumentType_:I

    return v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 15881
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 15883
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->getSerializedSize()I

    .line 15885
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->cachedSize:I

    return v0
.end method

.method public getDeviceAssociationMethod()I
    .locals 1

    .prologue
    .line 15735
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->deviceAssociationMethod_:I

    return v0
.end method

.method public getIconId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15598
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->iconId_:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15498
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->id_:Ljava/lang/String;

    return-object v0
.end method

.method public getInstrumentTosRequired()Z
    .locals 1

    .prologue
    .line 15666
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->instrumentTosRequired_:Z

    return v0
.end method

.method public getMncMccList()Ljava/util/List;
    .locals 1
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
    .line 15533
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->mncMcc_:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15515
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getPassphraseRequired()Z
    .locals 1

    .prologue
    .line 15785
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->passphraseRequired_:Z

    return v0
.end method

.method public getPerTransactionCredentialsRequired()Z
    .locals 1

    .prologue
    .line 15700
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->perTransactionCredentialsRequired_:Z

    return v0
.end method

.method public getSendSubscriberIdWithCarrierBillingRequests()Z
    .locals 1

    .prologue
    .line 15717
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->sendSubscriberIdWithCarrierBillingRequests_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 15890
    const/4 v3, 0x0

    .line 15891
    .local v3, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasId()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 15892
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 15895
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasName()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 15896
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 15900
    :cond_1
    const/4 v0, 0x0

    .line 15901
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->getMncMccList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 15902
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_0

    .line 15905
    .end local v1           #element:Ljava/lang/String;
    :cond_2
    add-int/2addr v3, v0

    .line 15906
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->getMncMccList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 15909
    const/4 v0, 0x0

    .line 15910
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->getBackendUrlList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 15911
    .restart local v1       #element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_1

    .line 15914
    .end local v1           #element:Ljava/lang/String;
    :cond_3
    add-int/2addr v3, v0

    .line 15915
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->getBackendUrlList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 15917
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasIconId()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 15918
    const/4 v4, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->getIconId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 15921
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasBillingInstrumentType()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 15922
    const/4 v4, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->getBillingInstrumentType()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 15925
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasApplicationId()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 15926
    const/4 v4, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->getApplicationId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 15929
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasTosUrl()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 15930
    const/16 v4, 0x8

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->getTosUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 15933
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasInstrumentTosRequired()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 15934
    const/16 v4, 0x9

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->getInstrumentTosRequired()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 15937
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasApiVersion()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 15938
    const/16 v4, 0xa

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->getApiVersion()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 15941
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasPerTransactionCredentialsRequired()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 15942
    const/16 v4, 0xb

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->getPerTransactionCredentialsRequired()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 15945
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasSendSubscriberIdWithCarrierBillingRequests()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 15946
    const/16 v4, 0xc

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->getSendSubscriberIdWithCarrierBillingRequests()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 15949
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasDeviceAssociationMethod()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 15950
    const/16 v4, 0xd

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->getDeviceAssociationMethod()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 15953
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasUserTokenRequestMessage()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 15954
    const/16 v4, 0xe

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->getUserTokenRequestMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 15957
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasUserTokenRequestAddress()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 15958
    const/16 v4, 0xf

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->getUserTokenRequestAddress()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 15961
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasPassphraseRequired()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 15962
    const/16 v4, 0x10

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->getPassphraseRequired()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 15965
    :cond_f
    iput v3, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->cachedSize:I

    .line 15966
    return v3
.end method

.method public getTosUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15649
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->tosUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getUserTokenRequestAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15768
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->userTokenRequestAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getUserTokenRequestMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15751
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->userTokenRequestMessage_:Ljava/lang/String;

    return-object v0
.end method

.method public hasApiVersion()Z
    .locals 1

    .prologue
    .line 15684
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasApiVersion:Z

    return v0
.end method

.method public hasApplicationId()Z
    .locals 1

    .prologue
    .line 15633
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasApplicationId:Z

    return v0
.end method

.method public hasBillingInstrumentType()Z
    .locals 1

    .prologue
    .line 15615
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasBillingInstrumentType:Z

    return v0
.end method

.method public hasDeviceAssociationMethod()Z
    .locals 1

    .prologue
    .line 15734
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasDeviceAssociationMethod:Z

    return v0
.end method

.method public hasIconId()Z
    .locals 1

    .prologue
    .line 15599
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasIconId:Z

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 15499
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasId:Z

    return v0
.end method

.method public hasInstrumentTosRequired()Z
    .locals 1

    .prologue
    .line 15667
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasInstrumentTosRequired:Z

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 15516
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasName:Z

    return v0
.end method

.method public hasPassphraseRequired()Z
    .locals 1

    .prologue
    .line 15786
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasPassphraseRequired:Z

    return v0
.end method

.method public hasPerTransactionCredentialsRequired()Z
    .locals 1

    .prologue
    .line 15701
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasPerTransactionCredentialsRequired:Z

    return v0
.end method

.method public hasSendSubscriberIdWithCarrierBillingRequests()Z
    .locals 1

    .prologue
    .line 15718
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasSendSubscriberIdWithCarrierBillingRequests:Z

    return v0
.end method

.method public hasTosUrl()Z
    .locals 1

    .prologue
    .line 15650
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasTosUrl:Z

    return v0
.end method

.method public hasUserTokenRequestAddress()Z
    .locals 1

    .prologue
    .line 15769
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasUserTokenRequestAddress:Z

    return v0
.end method

.method public hasUserTokenRequestMessage()Z
    .locals 1

    .prologue
    .line 15752
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasUserTokenRequestMessage:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15974
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 15975
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 15979
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 15980
    :sswitch_0
    return-object p0

    .line 15985
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->setId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;

    goto :goto_0

    .line 15989
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->setName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;

    goto :goto_0

    .line 15993
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->addMncMcc(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;

    goto :goto_0

    .line 15997
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->addBackendUrl(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;

    goto :goto_0

    .line 16001
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->setIconId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;

    goto :goto_0

    .line 16005
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->setBillingInstrumentType(I)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;

    goto :goto_0

    .line 16009
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->setApplicationId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;

    goto :goto_0

    .line 16013
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->setTosUrl(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;

    goto :goto_0

    .line 16017
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->setInstrumentTosRequired(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;

    goto :goto_0

    .line 16021
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->setApiVersion(I)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;

    goto :goto_0

    .line 16025
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->setPerTransactionCredentialsRequired(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;

    goto :goto_0

    .line 16029
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->setSendSubscriberIdWithCarrierBillingRequests(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;

    goto :goto_0

    .line 16033
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->setDeviceAssociationMethod(I)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;

    goto :goto_0

    .line 16037
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->setUserTokenRequestMessage(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;

    goto :goto_0

    .line 16041
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->setUserTokenRequestAddress(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;

    goto/16 :goto_0

    .line 16045
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->setPassphraseRequired(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;

    goto/16 :goto_0

    .line 15975
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
        0x58 -> :sswitch_b
        0x60 -> :sswitch_c
        0x68 -> :sswitch_d
        0x72 -> :sswitch_e
        0x7a -> :sswitch_f
        0x80 -> :sswitch_10
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15487
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;

    move-result-object v0

    return-object v0
.end method

.method public setApiVersion(I)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 15686
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasApiVersion:Z

    .line 15687
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->apiVersion_:I

    .line 15688
    return-object p0
.end method

.method public setApplicationId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 15635
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasApplicationId:Z

    .line 15636
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->applicationId_:Ljava/lang/String;

    .line 15637
    return-object p0
.end method

.method public setBillingInstrumentType(I)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 15618
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasBillingInstrumentType:Z

    .line 15619
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->billingInstrumentType_:I

    .line 15620
    return-object p0
.end method

.method public setDeviceAssociationMethod(I)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 15737
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasDeviceAssociationMethod:Z

    .line 15738
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->deviceAssociationMethod_:I

    .line 15739
    return-object p0
.end method

.method public setIconId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 15601
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasIconId:Z

    .line 15602
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->iconId_:Ljava/lang/String;

    .line 15603
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 15501
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasId:Z

    .line 15502
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->id_:Ljava/lang/String;

    .line 15503
    return-object p0
.end method

.method public setInstrumentTosRequired(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 15669
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasInstrumentTosRequired:Z

    .line 15670
    iput-boolean p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->instrumentTosRequired_:Z

    .line 15671
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 15518
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasName:Z

    .line 15519
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->name_:Ljava/lang/String;

    .line 15520
    return-object p0
.end method

.method public setPassphraseRequired(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 15788
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasPassphraseRequired:Z

    .line 15789
    iput-boolean p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->passphraseRequired_:Z

    .line 15790
    return-object p0
.end method

.method public setPerTransactionCredentialsRequired(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 15703
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasPerTransactionCredentialsRequired:Z

    .line 15704
    iput-boolean p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->perTransactionCredentialsRequired_:Z

    .line 15705
    return-object p0
.end method

.method public setSendSubscriberIdWithCarrierBillingRequests(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 15720
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasSendSubscriberIdWithCarrierBillingRequests:Z

    .line 15721
    iput-boolean p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->sendSubscriberIdWithCarrierBillingRequests_:Z

    .line 15722
    return-object p0
.end method

.method public setTosUrl(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 15652
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasTosUrl:Z

    .line 15653
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->tosUrl_:Ljava/lang/String;

    .line 15654
    return-object p0
.end method

.method public setUserTokenRequestAddress(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 15771
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasUserTokenRequestAddress:Z

    .line 15772
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->userTokenRequestAddress_:Ljava/lang/String;

    .line 15773
    return-object p0
.end method

.method public setUserTokenRequestMessage(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 15754
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasUserTokenRequestMessage:Z

    .line 15755
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->userTokenRequestMessage_:Ljava/lang/String;

    .line 15756
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15828
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasId()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 15829
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 15831
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasName()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 15832
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 15834
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->getMncMccList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 15835
    .local v0, element:Ljava/lang/String;
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_0

    .line 15837
    .end local v0           #element:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->getBackendUrlList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 15838
    .restart local v0       #element:Ljava/lang/String;
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_1

    .line 15840
    .end local v0           #element:Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasIconId()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 15841
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->getIconId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 15843
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasBillingInstrumentType()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 15844
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->getBillingInstrumentType()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 15846
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasApplicationId()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 15847
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->getApplicationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 15849
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasTosUrl()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 15850
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->getTosUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 15852
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasInstrumentTosRequired()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 15853
    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->getInstrumentTosRequired()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 15855
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasApiVersion()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 15856
    const/16 v2, 0xa

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->getApiVersion()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 15858
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasPerTransactionCredentialsRequired()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 15859
    const/16 v2, 0xb

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->getPerTransactionCredentialsRequired()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 15861
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasSendSubscriberIdWithCarrierBillingRequests()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 15862
    const/16 v2, 0xc

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->getSendSubscriberIdWithCarrierBillingRequests()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 15864
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasDeviceAssociationMethod()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 15865
    const/16 v2, 0xd

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->getDeviceAssociationMethod()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 15867
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasUserTokenRequestMessage()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 15868
    const/16 v2, 0xe

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->getUserTokenRequestMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 15870
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasUserTokenRequestAddress()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 15871
    const/16 v2, 0xf

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->getUserTokenRequestAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 15873
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->hasPassphraseRequired()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 15874
    const/16 v2, 0x10

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;->getPassphraseRequired()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 15876
    :cond_f
    return-void
.end method
