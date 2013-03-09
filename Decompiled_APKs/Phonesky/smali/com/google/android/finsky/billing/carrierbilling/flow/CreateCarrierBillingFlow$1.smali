.class Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$1;
.super Ljava/lang/Object;
.source "CreateCarrierBillingFlow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;)V
    .locals 0
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$1;->this$0:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow$1;->this$0:Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;->performNext()V

    .line 217
    return-void
.end method
