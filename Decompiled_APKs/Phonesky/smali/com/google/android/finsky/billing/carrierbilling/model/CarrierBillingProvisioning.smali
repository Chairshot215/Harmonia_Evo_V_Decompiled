.class public Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;
.super Ljava/lang/Object;
.source "CarrierBillingProvisioning.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$1;,
        Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;
    }
.end annotation


# instance fields
.field private final mAccountType:Ljava/lang/String;

.field private final mAddressSnippet:Ljava/lang/String;

.field private final mApiVersion:I

.field private final mCountry:Ljava/lang/String;

.field private final mCredentials:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;

.field private final mEncryptedSubscriberInfo:Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;

.field private final mIsProvisioned:Z

.field private final mPasswordForgotUrl:Ljava/lang/String;

.field private final mPasswordPrompt:Ljava/lang/String;

.field private final mPasswordRequired:Z

.field private final mProvisioningId:Ljava/lang/String;

.field private final mSubscriberCurrency:Ljava/lang/String;

.field private final mSubscriberInfo:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

.field private final mTosUrl:Ljava/lang/String;

.field private final mTosVersion:Ljava/lang/String;

.field private final mTransactionLimit:J


# direct methods
.method private constructor <init>(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;)V
    .locals 2
    .parameter "builder"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    #getter for: Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->apiVersion:I
    invoke-static {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->access$000(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mApiVersion:I

    .line 30
    #getter for: Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->isProvisioned:Z
    invoke-static {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->access$100(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mIsProvisioned:Z

    .line 31
    #getter for: Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->provisioningId:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->access$200(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mProvisioningId:Ljava/lang/String;

    .line 32
    #getter for: Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->tosUrl:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->access$300(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mTosUrl:Ljava/lang/String;

    .line 33
    #getter for: Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->tosVersion:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->access$400(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mTosVersion:Ljava/lang/String;

    .line 34
    #getter for: Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->subscriberCurrency:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->access$500(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mSubscriberCurrency:Ljava/lang/String;

    .line 35
    #getter for: Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->transactionLimit:J
    invoke-static {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->access$600(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mTransactionLimit:J

    .line 36
    #getter for: Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->accountType:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->access$700(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mAccountType:Ljava/lang/String;

    .line 37
    #getter for: Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->subscriberInfo:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;
    invoke-static {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->access$800(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mSubscriberInfo:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    .line 38
    #getter for: Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->credentials:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;
    invoke-static {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->access$900(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mCredentials:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;

    .line 39
    #getter for: Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->passwordRequired:Z
    invoke-static {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->access$1000(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mPasswordRequired:Z

    .line 40
    #getter for: Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->passwordPrompt:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->access$1100(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mPasswordPrompt:Ljava/lang/String;

    .line 41
    #getter for: Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->passwordForgotUrl:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->access$1200(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mPasswordForgotUrl:Ljava/lang/String;

    .line 42
    #getter for: Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->encryptedSubscriberInfo:Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;
    invoke-static {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->access$1300(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;)Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mEncryptedSubscriberInfo:Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;

    .line 43
    #getter for: Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->addressSnippet:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->access$1400(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mAddressSnippet:Ljava/lang/String;

    .line 44
    #getter for: Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->country:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;->access$1500(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mCountry:Ljava/lang/String;

    .line 45
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;-><init>(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning$Builder;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 120
    if-ne p0, p1, :cond_1

    .line 128
    :cond_0
    :goto_0
    return v1

    .line 123
    :cond_1
    instance-of v3, p1, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    if-nez v3, :cond_2

    move v1, v2

    .line 124
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 127
    check-cast v0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    .line 128
    .local v0, that:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;
    iget v3, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mApiVersion:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mApiVersion:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mIsProvisioned:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, v0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mIsProvisioned:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mProvisioningId:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mProvisioningId:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mTosUrl:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mTosUrl:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mTosVersion:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mTosVersion:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mSubscriberCurrency:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mSubscriberCurrency:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-wide v3, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mTransactionLimit:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, v0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mTransactionLimit:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mAccountType:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mAccountType:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mSubscriberInfo:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    iget-object v4, v0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mSubscriberInfo:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mCredentials:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;

    iget-object v4, v0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mCredentials:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mPasswordRequired:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, v0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mPasswordRequired:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mPasswordPrompt:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mPasswordPrompt:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mPasswordForgotUrl:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mPasswordForgotUrl:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mEncryptedSubscriberInfo:Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;

    iget-object v4, v0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mEncryptedSubscriberInfo:Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mAddressSnippet:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mAddressSnippet:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mCountry:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mCountry:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto/16 :goto_0
.end method

.method public getAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mAccountType:Ljava/lang/String;

    return-object v0
.end method

.method public getAddressSnippet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mAddressSnippet:Ljava/lang/String;

    return-object v0
.end method

.method public getApiVersion()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mApiVersion:I

    return v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mCountry:Ljava/lang/String;

    return-object v0
.end method

.method public getCredentials()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mCredentials:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;

    return-object v0
.end method

.method public getEncryptedSubscriberInfo()Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mEncryptedSubscriberInfo:Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;

    return-object v0
.end method

.method public getPasswordForgotUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mPasswordForgotUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPasswordPrompt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mPasswordPrompt:Ljava/lang/String;

    return-object v0
.end method

.method public getProvisioningId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mProvisioningId:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscriberCurrency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mSubscriberCurrency:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscriberInfo()Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mSubscriberInfo:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    return-object v0
.end method

.method public getTosUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mTosUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTosVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mTosVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionLimit()J
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mTransactionLimit:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 148
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mApiVersion:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mIsProvisioned:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mProvisioningId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mTosUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mTosVersion:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mSubscriberCurrency:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-wide v2, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mTransactionLimit:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mAccountType:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mSubscriberInfo:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mCredentials:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-boolean v2, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mPasswordRequired:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mPasswordPrompt:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mPasswordForgotUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mEncryptedSubscriberInfo:Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mAddressSnippet:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mCountry:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/finsky/utils/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isPasswordRequired()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mPasswordRequired:Z

    return v0
.end method

.method public isProvisioned()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mIsProvisioned:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CarrierBillingProvisioning:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  apiVersion             : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mApiVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  isProvisioned          : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mIsProvisioned:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  provisioningId         : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mProvisioningId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  tosUrl                 : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mTosUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  tosVersion             : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mTosVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  subscriberCurrency     : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mSubscriberCurrency:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  transactionLimit       : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mTransactionLimit:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  accountType            : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mAccountType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  subscriberInfo         : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mSubscriberInfo:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  credentials            : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mCredentials:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  passwordRequired       : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mPasswordRequired:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  passwordPrompt         : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mPasswordPrompt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  passwordForgotUrl      : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mPasswordForgotUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  encryptedSubscriberInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mEncryptedSubscriberInfo:Lcom/google/android/finsky/billing/carrierbilling/model/EncryptedSubscriberInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  addressSnippet         : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mAddressSnippet:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  country                : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->mCountry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
