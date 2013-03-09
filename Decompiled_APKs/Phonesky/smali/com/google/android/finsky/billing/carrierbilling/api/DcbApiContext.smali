.class public Lcom/google/android/finsky/billing/carrierbilling/api/DcbApiContext;
.super Ljava/lang/Object;
.source "DcbApiContext.java"


# instance fields
.field private final mDcbStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

.field private final mLine1Number:Ljava/lang/String;

.field private final mSubscriberId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "dcbStorage"
    .parameter "line1Number"
    .parameter "subscriberId"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApiContext;->mDcbStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    .line 19
    iput-object p2, p0, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApiContext;->mLine1Number:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApiContext;->mSubscriberId:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public getCarrierBillingParameters()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApiContext;->mDcbStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getParams()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    move-result-object v0

    return-object v0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApiContext;->mLine1Number:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApiContext;->mSubscriberId:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[DcbApiContext: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Line1Number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApiContext;->mLine1Number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SubscriberId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApiContext;->mSubscriberId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
