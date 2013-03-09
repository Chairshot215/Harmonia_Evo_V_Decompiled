.class public Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;
.super Ljava/lang/Object;
.source "CarrierBillingCredentials.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$1;,
        Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;
    }
.end annotation


# instance fields
.field private final mApiVersion:I

.field private final mCredentials:Ljava/lang/String;

.field private final mExpirationTime:J

.field private final mInvalidPassword:Z

.field private final mIsProvisioned:Z


# direct methods
.method private constructor <init>(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;)V
    .locals 2
    .parameter "builder"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    #getter for: Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;->apiVersion:I
    invoke-static {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;->access$000(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;->mApiVersion:I

    .line 19
    #getter for: Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;->credentials:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;->access$100(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;->mCredentials:Ljava/lang/String;

    .line 20
    #getter for: Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;->expirationTime:J
    invoke-static {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;->access$200(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;->mExpirationTime:J

    .line 21
    #getter for: Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;->isProvisioned:Z
    invoke-static {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;->access$300(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;->mIsProvisioned:Z

    .line 22
    #getter for: Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;->invalidPassword:Z
    invoke-static {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;->access$400(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;->mInvalidPassword:Z

    .line 23
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;-><init>(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials$Builder;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 55
    if-ne p0, p1, :cond_1

    .line 63
    :cond_0
    :goto_0
    return v1

    .line 58
    :cond_1
    instance-of v3, p1, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;

    if-nez v3, :cond_2

    move v1, v2

    .line 59
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 62
    check-cast v0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;

    .line 63
    .local v0, that:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;
    iget v3, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;->mApiVersion:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;->mApiVersion:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;->mCredentials:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;->mCredentials:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-wide v3, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;->mExpirationTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, v0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;->mExpirationTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;->mIsProvisioned:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, v0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;->mIsProvisioned:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;->mInvalidPassword:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, v0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;->mInvalidPassword:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getCredentials()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;->mCredentials:Ljava/lang/String;

    return-object v0
.end method

.method public getExpirationTime()J
    .locals 2

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;->mExpirationTime:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 72
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;->mApiVersion:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;->mCredentials:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;->mExpirationTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;->mIsProvisioned:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;->mInvalidPassword:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/finsky/utils/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public invalidPassword()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;->mInvalidPassword:Z

    return v0
.end method

.method public isProvisioned()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;->mIsProvisioned:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CarrierBillingCredentials: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "  apiVersion     : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;->mApiVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  credentials    : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;->mCredentials:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  expirationTime : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;->mExpirationTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  isProvisioned  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;->mIsProvisioned:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  invalidPassword: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;->mInvalidPassword:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
