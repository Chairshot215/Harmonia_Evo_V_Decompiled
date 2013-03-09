.class Lcom/google/android/gsf/login/PlusCheckTask$1;
.super Lcom/google/android/gsf/login/CancelableCallbackThread;
.source "PlusCheckTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/login/PlusCheckTask;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/login/PlusCheckTask;

.field final synthetic val$resultMessage:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/login/PlusCheckTask;Landroid/os/Message;Landroid/os/Message;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lcom/google/android/gsf/login/PlusCheckTask$1;->this$0:Lcom/google/android/gsf/login/PlusCheckTask;

    iput-object p3, p0, Lcom/google/android/gsf/login/PlusCheckTask$1;->val$resultMessage:Landroid/os/Message;

    invoke-direct {p0, p2}, Lcom/google/android/gsf/login/CancelableCallbackThread;-><init>(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method protected runInBackground()V
    .locals 3

    .prologue
    .line 26
    iget-object v1, p0, Lcom/google/android/gsf/login/PlusCheckTask$1;->this$0:Lcom/google/android/gsf/login/PlusCheckTask;

    #getter for: Lcom/google/android/gsf/login/PlusCheckTask;->mGlsUser:Lcom/google/android/gsf/loginservice/GLSUser;
    invoke-static {v1}, Lcom/google/android/gsf/login/PlusCheckTask;->access$100(Lcom/google/android/gsf/login/PlusCheckTask;)Lcom/google/android/gsf/loginservice/GLSUser;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/login/PlusCheckTask$1;->this$0:Lcom/google/android/gsf/login/PlusCheckTask;

    #getter for: Lcom/google/android/gsf/login/PlusCheckTask;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;
    invoke-static {v2}, Lcom/google/android/gsf/login/PlusCheckTask;->access$000(Lcom/google/android/gsf/login/PlusCheckTask;)Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gsf/loginservice/GLSUser;->checkGplus(Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;)Landroid/content/Intent;

    move-result-object v0

    .line 27
    .local v0, res:Landroid/content/Intent;
    const-string v1, "authtoken"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 28
    iget-object v1, p0, Lcom/google/android/gsf/login/PlusCheckTask$1;->val$resultMessage:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "intent"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 33
    :goto_0
    return-void

    .line 31
    :cond_0
    sget-object v1, Lcom/google/android/gsf/loginservice/GLSUser$Status;->SUCCESS:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    iget-object v2, p0, Lcom/google/android/gsf/login/PlusCheckTask$1;->val$resultMessage:Landroid/os/Message;

    invoke-virtual {v1, v2}, Lcom/google/android/gsf/loginservice/GLSUser$Status;->toMessage(Landroid/os/Message;)V

    goto :goto_0
.end method
