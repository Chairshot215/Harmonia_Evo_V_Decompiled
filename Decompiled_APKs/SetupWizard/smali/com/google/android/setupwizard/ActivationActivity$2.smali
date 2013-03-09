.class Lcom/google/android/setupwizard/ActivationActivity$2;
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
    .line 157
    iput-object p1, p0, Lcom/google/android/setupwizard/ActivationActivity$2;->this$0:Lcom/google/android/setupwizard/ActivationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 160
    const-string v0, "ActivationActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mGenericTestSuccess.run() mState == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/setupwizard/ActivationActivity$2;->this$0:Lcom/google/android/setupwizard/ActivationActivity;

    #getter for: Lcom/google/android/setupwizard/ActivationActivity;->mState:I
    invoke-static {v2}, Lcom/google/android/setupwizard/ActivationActivity;->access$100(Lcom/google/android/setupwizard/ActivationActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity$2;->this$0:Lcom/google/android/setupwizard/ActivationActivity;

    #calls: Lcom/google/android/setupwizard/ActivationActivity;->onSuccess()V
    invoke-static {v0}, Lcom/google/android/setupwizard/ActivationActivity;->access$300(Lcom/google/android/setupwizard/ActivationActivity;)V

    .line 162
    return-void
.end method
