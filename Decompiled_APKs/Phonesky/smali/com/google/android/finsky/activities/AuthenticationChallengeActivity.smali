.class public Lcom/google/android/finsky/activities/AuthenticationChallengeActivity;
.super Lcom/google/android/finsky/activities/ChallengeActivity;
.source "AuthenticationChallengeActivity.java"


# instance fields
.field private mFlow:Lcom/google/android/finsky/billing/BillingFlow;

.field private final mNavigationManager:Lcom/google/android/finsky/activities/FakeNavigationManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/google/android/finsky/activities/ChallengeActivity;-><init>()V

    .line 26
    new-instance v0, Lcom/google/android/finsky/activities/FakeNavigationManager;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/activities/FakeNavigationManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/AuthenticationChallengeActivity;->mNavigationManager:Lcom/google/android/finsky/activities/FakeNavigationManager;

    return-void
.end method

.method public static getIntent(ILcom/google/android/finsky/remoting/protos/ChallengeProtos$Challenge;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 3
    .parameter "backend"
    .parameter "challenge"
    .parameter "extraParameters"

    .prologue
    .line 38
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    const-class v2, Lcom/google/android/finsky/activities/AuthenticationChallengeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 39
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "challenge"

    invoke-static {p1}, Lcom/google/android/finsky/utils/ParcelableProto;->forProto(Lcom/google/protobuf/micro/MessageMicro;)Lcom/google/android/finsky/utils/ParcelableProto;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 40
    const-string v1, "extra_parameters"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 41
    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/google/android/finsky/activities/ChallengeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v3, 0x7f040015

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/activities/AuthenticationChallengeActivity;->setContentView(I)V

    .line 49
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticationChallengeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "challenge"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/utils/ParcelableProto;

    .line 51
    .local v2, parceledChallenge:Lcom/google/android/finsky/utils/ParcelableProto;,"Lcom/google/android/finsky/utils/ParcelableProto<Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Challenge;>;"
    invoke-virtual {v2}, Lcom/google/android/finsky/utils/ParcelableProto;->getPayload()Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Challenge;

    .line 52
    .local v0, challenge:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Challenge;
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AuthenticationChallengeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "extra_parameters"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 53
    .local v1, extraParameters:Landroid/os/Bundle;
    new-instance v3, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFlow;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Challenge;->getAuthenticationChallenge()Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;

    move-result-object v4

    invoke-direct {v3, p0, p0, v4, v1}, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFlow;-><init>(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;Landroid/os/Bundle;)V

    iput-object v3, p0, Lcom/google/android/finsky/activities/AuthenticationChallengeActivity;->mFlow:Lcom/google/android/finsky/billing/BillingFlow;

    .line 55
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Challenge;->getAuthenticationChallenge()Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;->getGaiaHeaderText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/activities/AuthenticationChallengeActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 56
    if-eqz p1, :cond_0

    .line 57
    iget-object v3, p0, Lcom/google/android/finsky/activities/AuthenticationChallengeActivity;->mFlow:Lcom/google/android/finsky/billing/BillingFlow;

    invoke-virtual {v3, p1}, Lcom/google/android/finsky/billing/BillingFlow;->resumeFromSavedState(Landroid/os/Bundle;)V

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v3, p0, Lcom/google/android/finsky/activities/AuthenticationChallengeActivity;->mFlow:Lcom/google/android/finsky/billing/BillingFlow;

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/BillingFlow;->start()V

    goto :goto_0
.end method

.method public onFinished(Lcom/google/android/finsky/billing/BillingFlow;ZLandroid/os/Bundle;)V
    .locals 3
    .parameter "flow"
    .parameter "canceled"
    .parameter "result"

    .prologue
    const/4 v2, 0x0

    .line 73
    if-eqz p2, :cond_0

    .line 74
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v0

    const-string v1, "authChallenge.canceled"

    invoke-interface {v0, v2, v2, v1}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v0

    const-string v1, "authChallenge.canceled"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/finsky/activities/ChallengeActivity;->onFinished(Lcom/google/android/finsky/billing/BillingFlow;ZLandroid/os/Bundle;)V

    .line 79
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/google/android/finsky/activities/ChallengeActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 66
    iget-object v0, p0, Lcom/google/android/finsky/activities/AuthenticationChallengeActivity;->mFlow:Lcom/google/android/finsky/billing/BillingFlow;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/google/android/finsky/activities/AuthenticationChallengeActivity;->mFlow:Lcom/google/android/finsky/billing/BillingFlow;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/billing/BillingFlow;->saveState(Landroid/os/Bundle;)V

    .line 69
    :cond_0
    return-void
.end method
