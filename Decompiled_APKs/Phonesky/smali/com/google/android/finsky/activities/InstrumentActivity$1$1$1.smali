.class Lcom/google/android/finsky/activities/InstrumentActivity$1$1$1;
.super Ljava/lang/Object;
.source "InstrumentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/InstrumentActivity$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/google/android/finsky/activities/InstrumentActivity$1$1;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/InstrumentActivity$1$1;)V
    .locals 0
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lcom/google/android/finsky/activities/InstrumentActivity$1$1$1;->this$2:Lcom/google/android/finsky/activities/InstrumentActivity$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/google/android/finsky/activities/InstrumentActivity$1$1$1;->this$2:Lcom/google/android/finsky/activities/InstrumentActivity$1$1;

    iget-object v0, v0, Lcom/google/android/finsky/activities/InstrumentActivity$1$1;->this$1:Lcom/google/android/finsky/activities/InstrumentActivity$1;

    iget-object v0, v0, Lcom/google/android/finsky/activities/InstrumentActivity$1;->this$0:Lcom/google/android/finsky/activities/InstrumentActivity;

    #getter for: Lcom/google/android/finsky/activities/InstrumentActivity;->mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;
    invoke-static {v0}, Lcom/google/android/finsky/activities/InstrumentActivity;->access$000(Lcom/google/android/finsky/activities/InstrumentActivity;)Lcom/google/android/finsky/billing/InstrumentFactory;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils;->registerDcbInstrument(Lcom/google/android/finsky/billing/InstrumentFactory;)V

    .line 223
    iget-object v0, p0, Lcom/google/android/finsky/activities/InstrumentActivity$1$1$1;->this$2:Lcom/google/android/finsky/activities/InstrumentActivity$1$1;

    iget-object v0, v0, Lcom/google/android/finsky/activities/InstrumentActivity$1$1;->this$1:Lcom/google/android/finsky/activities/InstrumentActivity$1;

    iget-object v0, v0, Lcom/google/android/finsky/activities/InstrumentActivity$1;->this$0:Lcom/google/android/finsky/activities/InstrumentActivity;

    iget-object v1, p0, Lcom/google/android/finsky/activities/InstrumentActivity$1$1$1;->this$2:Lcom/google/android/finsky/activities/InstrumentActivity$1$1;

    iget-object v1, v1, Lcom/google/android/finsky/activities/InstrumentActivity$1$1;->this$1:Lcom/google/android/finsky/activities/InstrumentActivity$1;

    iget-object v1, v1, Lcom/google/android/finsky/activities/InstrumentActivity$1;->this$0:Lcom/google/android/finsky/activities/InstrumentActivity;

    iget-object v1, v1, Lcom/google/android/finsky/activities/InstrumentActivity;->mSavedFlowState:Landroid/os/Bundle;

    #calls: Lcom/google/android/finsky/activities/InstrumentActivity;->startOrResumeFlow(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/google/android/finsky/activities/InstrumentActivity;->access$100(Lcom/google/android/finsky/activities/InstrumentActivity;Landroid/os/Bundle;)V

    .line 224
    return-void
.end method
