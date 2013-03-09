.class public Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;
.super Landroid/support/v4/app/Fragment;
.source "AuthenticationChallengeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment$Listener;
    }
.end annotation


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

.field private mAuthRequest:Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation
.end field

.field private mAuthenticationType:I

.field private mChallenge:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;

.field private mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

.field private mInput:Landroid/widget/EditText;

.field private mListener:Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment$Listener;

.field private mRetryCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mAuthRequest:Lcom/android/volley/Request;

    .line 256
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->success()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->failure()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mAccountName:Ljava/lang/String;

    return-object v0
.end method

.method private failure()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 232
    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mInput:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 233
    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mInput:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07007c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 234
    iget v0, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mRetryCount:I

    .line 235
    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "authChallenge.failure?type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mAuthenticationType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&retries="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v3, v1}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const-string v1, "authChallenge.failure"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "type"

    aput-object v4, v2, v3

    iget v3, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mAuthenticationType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const-string v4, "retries"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mRetryCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 240
    return-void
.end method

.method public static newInstance(Ljava/lang/String;Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;)Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;
    .locals 4
    .parameter "account"
    .parameter "authenticationChallenge"

    .prologue
    .line 66
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 67
    .local v0, arguments:Landroid/os/Bundle;
    const-string v2, "authAccount"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v2, "authentication_challenge"

    invoke-static {p1}, Lcom/google/android/finsky/utils/ParcelableProto;->forProto(Lcom/google/protobuf/micro/MessageMicro;)Lcom/google/android/finsky/utils/ParcelableProto;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 70
    new-instance v1, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;

    invoke-direct {v1}, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;-><init>()V

    .line 71
    .local v1, fragment:Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;
    invoke-virtual {v1, v0}, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->setArguments(Landroid/os/Bundle;)V

    .line 72
    return-object v1
.end method

.method private success()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 243
    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mInput:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 244
    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mInput:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mListener:Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment$Listener;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mListener:Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment$Listener;

    iget v1, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mAuthenticationType:I

    iget v2, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mRetryCount:I

    invoke-interface {v0, v1, v2}, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment$Listener;->onSuccess(II)V

    .line 248
    :cond_0
    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->lastGaiaAuthTimestamp:Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    iget-object v1, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;->get(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 249
    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "authChallenge.success?type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mAuthenticationType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&retries="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v3, v1}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const-string v1, "authChallenge.success"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "type"

    aput-object v4, v2, v3

    iget v3, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mAuthenticationType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const-string v4, "retries"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mRetryCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 254
    return-void
.end method

.method private verifyGaia(Ljava/lang/String;)V
    .locals 3
    .parameter "password"

    .prologue
    .line 169
    new-instance v0, Lcom/google/android/finsky/billing/challenge/ClientLoginApi;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/finsky/billing/challenge/ClientLoginApi;-><init>(Lcom/android/volley/RequestQueue;)V

    .line 170
    .local v0, clientLoginApi:Lcom/google/android/finsky/billing/challenge/ClientLoginApi;
    iget-object v1, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mAccountName:Ljava/lang/String;

    new-instance v2, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment$1;

    invoke-direct {v2, p0}, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment$1;-><init>(Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/finsky/billing/challenge/ClientLoginApi;->validateUser(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ClientLoginListener;)Lcom/android/volley/Request;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mAuthRequest:Lcom/android/volley/Request;

    .line 221
    return-void
.end method

.method private verifyInput()V
    .locals 3

    .prologue
    .line 154
    iget-object v1, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, input:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mInput:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 156
    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->verifyGaia(Ljava/lang/String;)V

    .line 157
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 263
    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    .line 264
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 265
    invoke-direct {p0}, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->success()V

    .line 272
    :goto_0
    return-void

    .line 267
    :cond_0
    invoke-direct {p0}, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->failure()V

    goto :goto_0

    .line 270
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 137
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 139
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->verifyInput()V

    goto :goto_0

    .line 142
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mListener:Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment$Listener;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mListener:Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment$Listener;

    invoke-interface {v0}, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment$Listener;->onCancel()V

    goto :goto_0

    .line 137
    :pswitch_data_0
    .packed-switch 0x7f080031
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "authentication_challenge"

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/ParcelableProto;->getProtoFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;

    iput-object v0, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mChallenge:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;

    .line 80
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "authAccount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mAccountName:Ljava/lang/String;

    .line 81
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

    .line 82
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    .line 83
    if-eqz p1, :cond_0

    .line 84
    const-string v0, "retry_count"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mRetryCount:I

    .line 86
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 97
    const v6, 0x7f040016

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 99
    .local v5, result:Landroid/view/View;
    iget-object v6, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mChallenge:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;

    invoke-virtual {v6}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;->getAuthenticationType()I

    move-result v6

    iput v6, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mAuthenticationType:I

    .line 100
    iget-object v6, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "authChallenge.trigger?type="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mAuthenticationType:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v7, v8, v9}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v6, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const-string v7, "authChallenge.trigger"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "type"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget v10, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mAuthenticationType:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    const v6, 0x7f080042

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 106
    .local v2, descriptionView:Landroid/widget/TextView;
    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    iget-object v6, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mChallenge:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;

    invoke-virtual {v6}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;->getGaiaDescriptionTextHtml()Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, descriptionHtml:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 109
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 114
    :cond_0
    const v6, 0x7f080045

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mInput:Landroid/widget/EditText;

    .line 115
    iget-object v6, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mInput:Landroid/widget/EditText;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setVisibility(I)V

    .line 117
    const v6, 0x7f080046

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 118
    .local v3, footer:Landroid/widget/TextView;
    iget-object v6, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mChallenge:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;

    invoke-virtual {v6}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;->hasGaiaFooterTextHtml()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 119
    iget-object v6, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mChallenge:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;

    invoke-virtual {v6}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AuthenticationChallenge;->getGaiaFooterTextHtml()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 121
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    :goto_0
    const v6, 0x7f080031

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 127
    .local v4, okButton:Landroid/widget/Button;
    const v6, 0x7f07019f

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setText(I)V

    .line 128
    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    const v6, 0x7f080032

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 130
    .local v0, cancelButton:Landroid/widget/Button;
    const v6, 0x7f070059

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(I)V

    .line 131
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    return-object v5

    .line 123
    .end local v0           #cancelButton:Landroid/widget/Button;
    .end local v4           #okButton:Landroid/widget/Button;
    :cond_1
    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mAuthRequest:Lcom/android/volley/Request;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mAuthRequest:Lcom/android/volley/Request;

    invoke-virtual {v0}, Lcom/android/volley/Request;->cancel()V

    .line 228
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 229
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 91
    const-string v0, "retry_count"

    iget v1, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mRetryCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 92
    return-void
.end method

.method public setListener(Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment;->mListener:Lcom/google/android/finsky/billing/challenge/AuthenticationChallengeFragment$Listener;

    .line 151
    return-void
.end method
