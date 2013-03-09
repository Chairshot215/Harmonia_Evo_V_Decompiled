.class public Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFlow;
.super Lcom/google/android/finsky/billing/BillingFlow;
.source "AuthenticationChallengeFlow.java"

# interfaces
.implements Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment$Listener;


# instance fields
.field private final mChallenge:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;

.field private mFragment:Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;Landroid/os/Bundle;)V
    .locals 0
    .parameter "billingFlowContext"
    .parameter "listener"
    .parameter "authenticationChallenge"
    .parameter "parameters"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/finsky/billing/BillingFlow;-><init>(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Landroid/os/Bundle;)V

    .line 28
    iput-object p3, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFlow;->mChallenge:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;

    .line 29
    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFlow;->cancel()V

    .line 64
    return-void
.end method

.method public onSuccess(II)V
    .locals 3
    .parameter "authenticationType"
    .parameter "retryCount"

    .prologue
    .line 53
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 54
    .local v0, challengeResponse:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFlow;->mChallenge:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;->getResponseAuthenticationTypeParam()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v1, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFlow;->mChallenge:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;->getResponseRetryCountParam()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFlow;->finish(Landroid/os/Bundle;)V

    .line 59
    return-void
.end method

.method public resumeFromSavedState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFlow;->mBillingFlowContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const-string v1, "auth_challenge_fragment"

    invoke-interface {v0, p1, v1}, Lcom/google/android/finsky/billing/BillingFlowContext;->restoreFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;

    iput-object v0, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFlow;->mFragment:Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;

    .line 43
    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFlow;->mFragment:Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->setListener(Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment$Listener;)V

    .line 44
    return-void
.end method

.method public saveState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFlow;->mBillingFlowContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    const-string v1, "auth_challenge_fragment"

    iget-object v2, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFlow;->mFragment:Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/finsky/billing/BillingFlowContext;->persistFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 49
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 33
    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFlow;->mParameters:Landroid/os/Bundle;

    const-string v1, "authAccount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFlow;->mChallenge:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;

    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->newInstance(Ljava/lang/String;Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;)Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFlow;->mFragment:Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;

    .line 35
    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFlow;->mFragment:Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->setListener(Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment$Listener;)V

    .line 36
    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFlow;->mBillingFlowContext:Lcom/google/android/finsky/billing/BillingFlowContext;

    iget-object v1, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFlow;->mFragment:Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;

    invoke-interface {v0, v1, v2, v2}, Lcom/google/android/finsky/billing/BillingFlowContext;->showFragment(Landroid/support/v4/app/Fragment;IZ)V

    .line 37
    return-void
.end method
