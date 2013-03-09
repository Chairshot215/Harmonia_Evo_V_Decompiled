.class Lcom/google/android/gsf/login/ChoosePasswordActivity$3;
.super Lcom/google/android/gsf/login/CancelableCallbackThread;
.source "ChoosePasswordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/login/ChoosePasswordActivity;->ratePassword()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/login/ChoosePasswordActivity;

.field final synthetic val$resultMessage:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/login/ChoosePasswordActivity;Landroid/os/Message;Landroid/os/Message;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity$3;->this$0:Lcom/google/android/gsf/login/ChoosePasswordActivity;

    iput-object p3, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity$3;->val$resultMessage:Landroid/os/Message;

    invoke-direct {p0, p2}, Lcom/google/android/gsf/login/CancelableCallbackThread;-><init>(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method protected runInBackground()V
    .locals 5

    .prologue
    .line 122
    iget-object v1, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity$3;->this$0:Lcom/google/android/gsf/login/ChoosePasswordActivity;

    iget-object v1, v1, Lcom/google/android/gsf/login/ChoosePasswordActivity;->mBackendStub:Lcom/google/android/gsf/login/BackendStub;

    iget-object v2, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity$3;->this$0:Lcom/google/android/gsf/login/ChoosePasswordActivity;

    iget-object v3, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity$3;->this$0:Lcom/google/android/gsf/login/ChoosePasswordActivity;

    #getter for: Lcom/google/android/gsf/login/ChoosePasswordActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;
    invoke-static {v3}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->access$700(Lcom/google/android/gsf/login/ChoosePasswordActivity;)Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity$3;->val$resultMessage:Landroid/os/Message;

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gsf/login/BackendStub;->ratePasswordSync(Landroid/content/Context;Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;Landroid/os/Message;)Lcom/google/android/gsf/loginservice/GLSUser$Status;

    move-result-object v0

    .line 126
    .local v0, status:Lcom/google/android/gsf/loginservice/GLSUser$Status;
    if-eqz v0, :cond_0

    .line 127
    iget-object v1, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity$3;->val$resultMessage:Landroid/os/Message;

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/loginservice/GLSUser$Status;->toMessage(Landroid/os/Message;)V

    .line 129
    :cond_0
    return-void
.end method
