.class Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage$1;
.super Ljava/lang/Object;
.source "CarrierBillingStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->init(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage$1;->this$0:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    iput-object p2, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage$1;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage$1;->this$0:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->setInit(Z)V

    .line 111
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage$1;->val$runnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage$1;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 114
    :cond_0
    return-void
.end method
