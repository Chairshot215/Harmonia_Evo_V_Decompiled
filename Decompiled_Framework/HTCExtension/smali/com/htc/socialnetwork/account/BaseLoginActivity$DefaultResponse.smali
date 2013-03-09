.class Lcom/htc/socialnetwork/account/BaseLoginActivity$DefaultResponse;
.super Ljava/lang/Object;
.source "BaseLoginActivity.java"

# interfaces
.implements Lcom/htc/socialnetwork/account/TaskResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/socialnetwork/account/BaseLoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultResponse"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/socialnetwork/account/TaskResponse",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/socialnetwork/account/BaseLoginActivity;


# direct methods
.method constructor <init>(Lcom/htc/socialnetwork/account/BaseLoginActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity$DefaultResponse;->this$0:Lcom/htc/socialnetwork/account/BaseLoginActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/htc/socialnetwork/SocialNetworkException;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity$DefaultResponse;->this$0:Lcom/htc/socialnetwork/account/BaseLoginActivity;

    invoke-virtual {v0, p1}, Lcom/htc/socialnetwork/account/BaseLoginActivity;->handleError(Lcom/htc/socialnetwork/SocialNetworkException;)V

    iget-object v0, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity$DefaultResponse;->this$0:Lcom/htc/socialnetwork/account/BaseLoginActivity;

    invoke-virtual {v0}, Lcom/htc/socialnetwork/account/BaseLoginActivity;->dismissProgressDialog()V

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/htc/socialnetwork/account/BaseLoginActivity$DefaultResponse;->onResult(Ljava/lang/String;)V

    return-void
.end method

.method public onResult(Ljava/lang/String;)V
    .locals 6

    const-string v3, "BaseLoginActivity"

    const-string v4, "DefaultResponse onResult"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity$DefaultResponse;->this$0:Lcom/htc/socialnetwork/account/BaseLoginActivity;

    iget-object v3, v3, Lcom/htc/socialnetwork/account/BaseLoginActivity;->loginExecutor:Lcom/htc/socialnetwork/account/BaseLoginActivity$LoginFuture;

    invoke-virtual {v3}, Lcom/htc/socialnetwork/account/BaseLoginActivity$LoginFuture;->isCancled()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v0, Landroid/accounts/Account;

    iget-object v3, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity$DefaultResponse;->this$0:Lcom/htc/socialnetwork/account/BaseLoginActivity;

    invoke-virtual {v3}, Lcom/htc/socialnetwork/account/BaseLoginActivity;->getAccountType()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p1, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity$DefaultResponse;->this$0:Lcom/htc/socialnetwork/account/BaseLoginActivity;

    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    iget-object v3, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity$DefaultResponse;->this$0:Lcom/htc/socialnetwork/account/BaseLoginActivity;

    #getter for: Lcom/htc/socialnetwork/account/BaseLoginActivity;->storePassword:Z
    invoke-static {v3}, Lcom/htc/socialnetwork/account/BaseLoginActivity;->access$100(Lcom/htc/socialnetwork/account/BaseLoginActivity;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity$DefaultResponse;->this$0:Lcom/htc/socialnetwork/account/BaseLoginActivity;

    invoke-virtual {v3}, Lcom/htc/socialnetwork/account/BaseLoginActivity;->getPassword()Ljava/lang/String;

    move-result-object v3

    :goto_0
    iget-object v5, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity$DefaultResponse;->this$0:Lcom/htc/socialnetwork/account/BaseLoginActivity;

    invoke-virtual {v5}, Lcom/htc/socialnetwork/account/BaseLoginActivity;->getData()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v4, v0, v3, v5}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    iget-object v3, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity$DefaultResponse;->this$0:Lcom/htc/socialnetwork/account/BaseLoginActivity;

    invoke-virtual {v3, v0}, Lcom/htc/socialnetwork/account/BaseLoginActivity;->doInBackgroundAfterLogin(Landroid/accounts/Account;)V

    iget-object v3, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity$DefaultResponse;->this$0:Lcom/htc/socialnetwork/account/BaseLoginActivity;

    invoke-virtual {v3}, Lcom/htc/socialnetwork/account/BaseLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "accountAuthenticatorResponse"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/accounts/AccountAuthenticatorResponse;

    if-eqz v2, :cond_2

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "authAccount"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "accountType"

    iget-object v4, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity$DefaultResponse;->this$0:Lcom/htc/socialnetwork/account/BaseLoginActivity;

    invoke-virtual {v4}, Lcom/htc/socialnetwork/account/BaseLoginActivity;->getAccountType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/accounts/AccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V

    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity$DefaultResponse;->this$0:Lcom/htc/socialnetwork/account/BaseLoginActivity;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/htc/socialnetwork/account/BaseLoginActivity;->loginSuccess:Z

    iget-object v3, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity$DefaultResponse;->this$0:Lcom/htc/socialnetwork/account/BaseLoginActivity;

    invoke-virtual {v3}, Lcom/htc/socialnetwork/account/BaseLoginActivity;->finish()V

    iget-object v3, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity$DefaultResponse;->this$0:Lcom/htc/socialnetwork/account/BaseLoginActivity;

    iget-object v3, v3, Lcom/htc/socialnetwork/account/BaseLoginActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v3}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    return-void

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    const-string v3, "BaseLoginActivity"

    const-string v4, "No callback IBinder"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onStart()V
    .locals 2

    iget-object v0, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity$DefaultResponse;->this$0:Lcom/htc/socialnetwork/account/BaseLoginActivity;

    iget-object v0, v0, Lcom/htc/socialnetwork/account/BaseLoginActivity;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/htc/socialnetwork/account/BaseLoginActivity$DefaultResponse$1;

    invoke-direct {v1, p0}, Lcom/htc/socialnetwork/account/BaseLoginActivity$DefaultResponse$1;-><init>(Lcom/htc/socialnetwork/account/BaseLoginActivity$DefaultResponse;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
