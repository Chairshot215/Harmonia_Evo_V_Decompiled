.class Lcom/google/android/setupwizard/ActivationActivity$4;
.super Ljava/lang/Object;
.source "ActivationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/setupwizard/ActivationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/setupwizard/ActivationActivity;


# direct methods
.method constructor <init>(Lcom/google/android/setupwizard/ActivationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/google/android/setupwizard/ActivationActivity$4;->this$0:Lcom/google/android/setupwizard/ActivationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity$4;->this$0:Lcom/google/android/setupwizard/ActivationActivity;

    const-wide/16 v1, 0x0

    #setter for: Lcom/google/android/setupwizard/ActivationActivity;->mCancelEndtime:J
    invoke-static {v0, v1, v2}, Lcom/google/android/setupwizard/ActivationActivity;->access$702(Lcom/google/android/setupwizard/ActivationActivity;J)J

    .line 229
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity$4;->this$0:Lcom/google/android/setupwizard/ActivationActivity;

    #calls: Lcom/google/android/setupwizard/ActivationActivity;->onCancelCompleted()V
    invoke-static {v0}, Lcom/google/android/setupwizard/ActivationActivity;->access$800(Lcom/google/android/setupwizard/ActivationActivity;)V

    .line 230
    return-void
.end method
