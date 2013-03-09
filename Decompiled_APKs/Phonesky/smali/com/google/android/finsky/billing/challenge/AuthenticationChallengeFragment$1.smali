.class Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment$1;
.super Ljava/lang/Object;
.source "AuthenticationChallengeFragment.java"

# interfaces
.implements Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ClientLoginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->verifyGaia(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment$1;->this$0:Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthFailure(Ljava/lang/String;Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ErrorType;)V
    .locals 6
    .parameter "password"
    .parameter "err"

    .prologue
    .line 180
    sget-object v3, Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ErrorType;->CAPTCHA:Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ErrorType;

    if-eq p2, v3, :cond_0

    sget-object v3, Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ErrorType;->TWO_FACTOR:Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ErrorType;

    if-eq p2, v3, :cond_0

    .line 181
    iget-object v3, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment$1;->this$0:Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;

    #calls: Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->failure()V
    invoke-static {v3}, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->access$100(Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;)V

    .line 219
    :goto_0
    return-void

    .line 186
    :cond_0
    iget-object v3, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment$1;->this$0:Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;

    #getter for: Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mAccountName:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->access$200(Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/finsky/api/AccountHandler;->findAccount(Ljava/lang/String;Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v1

    .line 187
    .local v1, account:Landroid/accounts/Account;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 188
    .local v0, accountManager:Landroid/accounts/AccountManager;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 189
    .local v2, options:Landroid/os/Bundle;
    const-string v3, "password"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v3, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment$1;->this$0:Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment$1$1;

    invoke-direct {v4, p0}, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment$1$1;-><init>(Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment$1;)V

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/accounts/AccountManager;->confirmCredentials(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    goto :goto_0
.end method

.method public onAuthSuccess()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment$1;->this$0:Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;

    #calls: Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->success()V
    invoke-static {v0}, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->access$000(Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;)V

    .line 176
    return-void
.end method
