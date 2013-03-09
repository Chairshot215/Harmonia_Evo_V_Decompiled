.class public Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;
.super Ljava/lang/Object;
.source "CarrierBillingParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$1;,
        Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;
    }
.end annotation


# instance fields
.field private final mAssociationMethod:I

.field private final mCarrierApiVersion:I

.field private final mCarrierIconId:Ljava/lang/String;

.field private final mCustomerSupport:Ljava/lang/String;

.field private final mGetCredentialsUrl:Ljava/lang/String;

.field private final mGetProvisioningUrl:Ljava/lang/String;

.field private final mId:Ljava/lang/String;

.field private final mMncMccs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mName:Ljava/lang/String;

.field private final mPasswordRequired:Z

.field private final mPerTransactionCredentialsRequired:Z

.field private final mRequestUserTokenText:Ljava/lang/String;

.field private final mRequestUserTokenTo:Ljava/lang/String;

.field private final mSendSubscriberInfoWithCarrierRequests:Z

.field private final mShowCarrierTos:Z


# direct methods
.method private constructor <init>(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    #getter for: Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->id:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->access$000(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mId:Ljava/lang/String;

    .line 42
    #getter for: Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->name:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->access$100(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mName:Ljava/lang/String;

    .line 43
    #getter for: Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->mncMccs:Ljava/util/List;
    invoke-static {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->access$200(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mMncMccs:Ljava/util/List;

    .line 44
    #getter for: Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->getProvisioningUrl:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->access$300(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mGetProvisioningUrl:Ljava/lang/String;

    .line 45
    #getter for: Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->getCredentialsUrl:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->access$400(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mGetCredentialsUrl:Ljava/lang/String;

    .line 46
    #getter for: Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->carrierIconId:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->access$500(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mCarrierIconId:Ljava/lang/String;

    .line 47
    #getter for: Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->showCarrierTos:Z
    invoke-static {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->access$600(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mShowCarrierTos:Z

    .line 48
    #getter for: Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->carrierApiVersion:I
    invoke-static {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->access$700(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mCarrierApiVersion:I

    .line 49
    #getter for: Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->perTransactionCredentialsRequired:Z
    invoke-static {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->access$800(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mPerTransactionCredentialsRequired:Z

    .line 50
    #getter for: Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->sendSubscriberInfoWithCarrierRequests:Z
    invoke-static {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->access$900(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mSendSubscriberInfoWithCarrierRequests:Z

    .line 51
    #getter for: Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->passwordRequired:Z
    invoke-static {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->access$1000(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mPasswordRequired:Z

    .line 52
    #getter for: Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->associationMethod:I
    invoke-static {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->access$1100(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mAssociationMethod:I

    .line 53
    #getter for: Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->requestUserTokenTo:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->access$1200(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mRequestUserTokenTo:Ljava/lang/String;

    .line 54
    #getter for: Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->requestUserTokenText:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->access$1300(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mRequestUserTokenText:Ljava/lang/String;

    .line 55
    #getter for: Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->customerSupport:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;->access$1400(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mCustomerSupport:Ljava/lang/String;

    .line 56
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;-><init>(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters$Builder;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 133
    if-ne p0, p1, :cond_1

    .line 141
    :cond_0
    :goto_0
    return v1

    .line 136
    :cond_1
    instance-of v3, p1, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    if-nez v3, :cond_2

    move v1, v2

    .line 137
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 140
    check-cast v0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    .line 141
    .local v0, that:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;
    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mId:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mId:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mName:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mMncMccs:Ljava/util/List;

    iget-object v4, v0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mMncMccs:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mGetProvisioningUrl:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mGetProvisioningUrl:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mGetCredentialsUrl:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mGetCredentialsUrl:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mCarrierIconId:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mCarrierIconId:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mShowCarrierTos:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, v0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mShowCarrierTos:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mCarrierApiVersion:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mCarrierApiVersion:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mPerTransactionCredentialsRequired:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, v0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mPerTransactionCredentialsRequired:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mSendSubscriberInfoWithCarrierRequests:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, v0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mSendSubscriberInfoWithCarrierRequests:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mPasswordRequired:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, v0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mPasswordRequired:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mAssociationMethod:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mAssociationMethod:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mRequestUserTokenTo:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mRequestUserTokenTo:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mRequestUserTokenText:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mRequestUserTokenText:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mCustomerSupport:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mCustomerSupport:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto/16 :goto_0
.end method

.method public getAssociationMethod()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mAssociationMethod:I

    return v0
.end method

.method public getCarrierApiVersion()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mCarrierApiVersion:I

    return v0
.end method

.method public getCarrierIconId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mCarrierIconId:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomerSupport()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mCustomerSupport:Ljava/lang/String;

    return-object v0
.end method

.method public getGetCredentialsUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mGetCredentialsUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getGetProvisioningUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mGetProvisioningUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getMncMccs()Ljava/util/List;
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
    .line 65
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mMncMccs:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestUserTokenText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mRequestUserTokenText:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestUserTokenTo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mRequestUserTokenTo:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 162
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mMncMccs:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mGetProvisioningUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mGetCredentialsUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mCarrierIconId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mShowCarrierTos:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget v2, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mCarrierApiVersion:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-boolean v2, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mPerTransactionCredentialsRequired:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-boolean v2, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mSendSubscriberInfoWithCarrierRequests:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-boolean v2, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mPasswordRequired:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget v2, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mAssociationMethod:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mRequestUserTokenTo:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mRequestUserTokenText:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mCustomerSupport:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/finsky/utils/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public passwordRequired()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mPasswordRequired:Z

    return v0
.end method

.method public perTransactionCredentialsRequired()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mPerTransactionCredentialsRequired:Z

    return v0
.end method

.method public sendSubscriberInfoWithCarrierRequests()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mSendSubscriberInfoWithCarrierRequests:Z

    return v0
.end method

.method public showCarrierTos()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mShowCarrierTos:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CarrierBillingParameters:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  id                                   : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  name                                 : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  mncMccs                              : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mMncMccs:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  getProvisioningUrl                   : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mGetProvisioningUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  getCredentialsUrl                    : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mGetCredentialsUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  carrierIconId                        : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mCarrierIconId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  showCarrierTos                       : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mShowCarrierTos:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  carrierApiVersion                    : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mCarrierApiVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  perTransactionCredentialsRequired    : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mPerTransactionCredentialsRequired:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  sendSubscriberInfoWithCarrierRequests: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mSendSubscriberInfoWithCarrierRequests:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  passwordRequired: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mPasswordRequired:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  assosiationMethod: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mAssociationMethod:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  userTokenRequestTo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mRequestUserTokenTo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  userTokenRequestText: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mRequestUserTokenText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  customerSupport: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->mCustomerSupport:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
