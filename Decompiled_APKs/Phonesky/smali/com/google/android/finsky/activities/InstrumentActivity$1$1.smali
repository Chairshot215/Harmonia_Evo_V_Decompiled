.class Lcom/google/android/finsky/activities/InstrumentActivity$1$1;
.super Ljava/lang/Object;
.source "InstrumentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/InstrumentActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/finsky/activities/InstrumentActivity$1;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/InstrumentActivity$1;)V
    .locals 0
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/google/android/finsky/activities/InstrumentActivity$1$1;->this$1:Lcom/google/android/finsky/activities/InstrumentActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/android/finsky/activities/InstrumentActivity$1$1;->this$1:Lcom/google/android/finsky/activities/InstrumentActivity$1;

    iget-object v0, v0, Lcom/google/android/finsky/activities/InstrumentActivity$1;->this$0:Lcom/google/android/finsky/activities/InstrumentActivity;

    new-instance v1, Lcom/google/android/finsky/activities/InstrumentActivity$1$1$1;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/InstrumentActivity$1$1$1;-><init>(Lcom/google/android/finsky/activities/InstrumentActivity$1$1;)V

    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils;->initializeCarrierBillingParams(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 226
    return-void
.end method
