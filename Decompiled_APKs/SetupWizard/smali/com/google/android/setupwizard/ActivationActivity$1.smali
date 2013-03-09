.class Lcom/google/android/setupwizard/ActivationActivity$1;
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
    .line 138
    iput-object p1, p0, Lcom/google/android/setupwizard/ActivationActivity$1;->this$0:Lcom/google/android/setupwizard/ActivationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity$1;->this$0:Lcom/google/android/setupwizard/ActivationActivity;

    const-wide/16 v1, 0x0

    #setter for: Lcom/google/android/setupwizard/ActivationActivity;->mGenericEndtime:J
    invoke-static {v0, v1, v2}, Lcom/google/android/setupwizard/ActivationActivity;->access$002(Lcom/google/android/setupwizard/ActivationActivity;J)J

    .line 142
    const-string v0, "ActivationActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTimeOutWaitingForGenericActivation.run() mState == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/setupwizard/ActivationActivity$1;->this$0:Lcom/google/android/setupwizard/ActivationActivity;

    #getter for: Lcom/google/android/setupwizard/ActivationActivity;->mState:I
    invoke-static {v2}, Lcom/google/android/setupwizard/ActivationActivity;->access$100(Lcom/google/android/setupwizard/ActivationActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity$1;->this$0:Lcom/google/android/setupwizard/ActivationActivity;

    #getter for: Lcom/google/android/setupwizard/ActivationActivity;->mState:I
    invoke-static {v0}, Lcom/google/android/setupwizard/ActivationActivity;->access$100(Lcom/google/android/setupwizard/ActivationActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 144
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity$1;->this$0:Lcom/google/android/setupwizard/ActivationActivity;

    #calls: Lcom/google/android/setupwizard/ActivationActivity;->onFailure()V
    invoke-static {v0}, Lcom/google/android/setupwizard/ActivationActivity;->access$200(Lcom/google/android/setupwizard/ActivationActivity;)V

    .line 146
    :cond_0
    return-void
.end method
