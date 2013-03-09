.class public Lcom/google/android/gsf/login/LoginActivityTask;
.super Lcom/google/android/gsf/login/BackgroundTask;
.source "LoginActivityTask.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/android/gsf/login/BackgroundTask;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gsf/login/LoginActivityTask;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mConfirmCredentials:Z

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/gsf/login/LoginActivityTask;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mAddAccount:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/google/android/gsf/login/LoginActivityTask;)Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/gsf/login/LoginActivityTask;)Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/gsf/login/LoginActivityTask;)Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/android/gsf/login/LoginActivityTask;)Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/gsf/login/LoginActivityTask;)Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/gsf/login/LoginActivityTask;Landroid/os/Message;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/google/android/gsf/login/LoginActivityTask;->updateAccount(Landroid/os/Message;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/gsf/login/LoginActivityTask;)Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/android/gsf/login/LoginActivityTask;Lcom/google/android/gsf/loginservice/GLSUser;)Lcom/google/android/gsf/loginservice/GLSUser;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mGlsUser:Lcom/google/android/gsf/loginservice/GLSUser;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/android/gsf/login/LoginActivityTask;)Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/gsf/login/LoginActivityTask;)Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/gsf/login/LoginActivityTask;)Lcom/google/android/gsf/loginservice/GLSUser;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mGlsUser:Lcom/google/android/gsf/loginservice/GLSUser;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/gsf/login/LoginActivityTask;)Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/gsf/login/LoginActivityTask;)Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    return-object v0
.end method

.method private updateAccount(Landroid/os/Message;Ljava/lang/String;)V
    .locals 8
    .parameter "resultMessage"
    .parameter "password"

    .prologue
    .line 183
    iget-object v4, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v4, v4, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mAccessToken:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 184
    iget-object v4, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mGlsUser:Lcom/google/android/gsf/loginservice/GLSUser;

    iget-object v5, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v6, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v6, v6, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mAccessToken:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v7, v7, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUsername:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/android/gsf/loginservice/GLSUser;->updateWithRequestToken(Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 200
    .local v2, res:Landroid/content/Intent;
    :goto_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "intent"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 202
    invoke-static {p0, v2}, Lcom/google/android/gsf/loginservice/GLSUser$Status;->fromIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/google/android/gsf/loginservice/GLSUser$Status;

    move-result-object v3

    .line 203
    .local v3, status:Lcom/google/android/gsf/loginservice/GLSUser$Status;
    invoke-virtual {v3, p1}, Lcom/google/android/gsf/loginservice/GLSUser$Status;->toMessage(Landroid/os/Message;)V

    .line 204
    return-void

    .line 187
    .end local v2           #res:Landroid/content/Intent;
    .end local v3           #status:Lcom/google/android/gsf/loginservice/GLSUser$Status;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/login/LoginActivityTask;->getUserData()Ljava/util/HashMap;

    move-result-object v4

    sget-object v5, Lcom/google/android/gsf/login/BackendStub$Key;->CAPTCHA_TOKEN:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v5}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 188
    .local v1, captchaToken:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/gsf/login/LoginActivityTask;->getUserData()Ljava/util/HashMap;

    move-result-object v4

    sget-object v5, Lcom/google/android/gsf/login/BackendStub$Key;->CAPTCHA_ANSWER:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v5}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 189
    .local v0, captchaAnswer:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 190
    iget-object v4, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mGlsUser:Lcom/google/android/gsf/loginservice/GLSUser;

    invoke-virtual {v4, v1, v0}, Lcom/google/android/gsf/loginservice/GLSUser;->setCaptcha(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :cond_1
    if-eqz p2, :cond_2

    .line 193
    iget-object v4, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mGlsUser:Lcom/google/android/gsf/loginservice/GLSUser;

    invoke-virtual {v4, p2}, Lcom/google/android/gsf/loginservice/GLSUser;->setPassword(Ljava/lang/String;)V

    .line 196
    :cond_2
    iget-object v4, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mGlsUser:Lcom/google/android/gsf/loginservice/GLSUser;

    iget-object v5, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mService:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget v6, v6, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mCallingUID:I

    iget-object v7, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/android/gsf/loginservice/GLSUser;->getAuthtoken(Ljava/lang/String;ILcom/google/android/gsf/loginservice/GLSUser$GLSSession;)Landroid/content/Intent;

    move-result-object v2

    .restart local v2       #res:Landroid/content/Intent;
    goto :goto_0
.end method


# virtual methods
.method public confirmCredentials(Landroid/os/Message;Ljava/lang/String;)V
    .locals 6
    .parameter "resultMessage"
    .parameter "password"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 213
    iget-object v2, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v2, v2, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUsername:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    invoke-static {p0, v2, p2, v5}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->onlineConfirmPassword(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;)Lcom/google/android/gsf/loginservice/GLSUser$Status;

    move-result-object v0

    .line 216
    .local v0, ok:Lcom/google/android/gsf/loginservice/GLSUser$Status;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 217
    .local v1, res:Landroid/content/Intent;
    const-string v2, "authAccount"

    iget-object v5, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v5, v5, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUsername:Ljava/lang/String;

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    const-string v2, "accountType"

    const-string v5, "com.google"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    const-string v5, "booleanResult"

    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$Status;->SUCCESS:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    if-ne v0, v2, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 222
    const-string v2, "confirmResult"

    sget-object v5, Lcom/google/android/gsf/loginservice/GLSUser$Status;->SUCCESS:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    if-ne v0, v5, :cond_1

    :goto_1
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 223
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "intent"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 225
    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$Status;->SUCCESS:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    if-ne v0, v2, :cond_2

    .line 226
    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$Status;->SUCCESS:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    invoke-virtual {v2, p1}, Lcom/google/android/gsf/loginservice/GLSUser$Status;->toMessage(Landroid/os/Message;)V

    .line 230
    :goto_2
    return-void

    :cond_0
    move v2, v4

    .line 220
    goto :goto_0

    :cond_1
    move v3, v4

    .line 222
    goto :goto_1

    .line 228
    :cond_2
    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$Status;->BAD_AUTHENTICATION:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    invoke-virtual {v2, p1}, Lcom/google/android/gsf/loginservice/GLSUser$Status;->toMessage(Landroid/os/Message;)V

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BackgroundTask;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v0, 0x7f080049

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/LoginActivityTask;->setMessage(I)V

    .line 49
    const v0, 0x7f080142

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/LoginActivityTask;->setTitle(I)V

    .line 50
    return-void
.end method

.method protected onError(Lcom/google/android/gsf/loginservice/GLSUser$Status;Landroid/content/Intent;)V
    .locals 1
    .parameter "status"
    .parameter "res"

    .prologue
    .line 233
    sget-object v0, Lcom/google/android/gsf/loginservice/GLSUser$Status;->BAD_AUTHENTICATION:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    if-ne p1, v0, :cond_0

    .line 234
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gsf/login/LoginActivityTask;->setResult(ILandroid/content/Intent;)V

    .line 235
    invoke-virtual {p0}, Lcom/google/android/gsf/login/LoginActivityTask;->finish()V

    .line 239
    :goto_0
    return-void

    .line 237
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/android/gsf/login/BackgroundTask;->onError(Lcom/google/android/gsf/loginservice/GLSUser$Status;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public start()V
    .locals 9

    .prologue
    .line 54
    invoke-super {p0}, Lcom/google/android/gsf/login/BackgroundTask;->start()V

    .line 56
    iget-object v7, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v7, v7, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mAccessToken:Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v7, v7, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUsername:Ljava/lang/String;

    if-nez v7, :cond_1

    :cond_0
    iget-boolean v7, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mAddAccount:Z

    if-nez v7, :cond_2

    .line 83
    :cond_1
    iget-object v7, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 85
    .local v5, resultMessage:Landroid/os/Message;
    new-instance v7, Lcom/google/android/gsf/login/LoginActivityTask$1;

    invoke-direct {v7, p0, v5, v5}, Lcom/google/android/gsf/login/LoginActivityTask$1;-><init>(Lcom/google/android/gsf/login/LoginActivityTask;Landroid/os/Message;Landroid/os/Message;)V

    iput-object v7, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mTaskThread:Lcom/google/android/gsf/login/CancelableCallbackThread;

    .line 177
    iget-object v7, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mTaskThread:Lcom/google/android/gsf/login/CancelableCallbackThread;

    invoke-virtual {v7}, Lcom/google/android/gsf/login/CancelableCallbackThread;->start()V

    .line 178
    .end local v5           #resultMessage:Landroid/os/Message;
    :goto_0
    return-void

    .line 60
    :cond_2
    iget-object v7, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v6, v7, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUsername:Ljava/lang/String;

    .line 61
    .local v6, username:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 62
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v7

    const-string v8, "com.google"

    invoke-virtual {v7, v8}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 64
    .local v1, accounts:[Landroid/accounts/Account;
    move-object v2, v1

    .local v2, arr$:[Landroid/accounts/Account;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v0, v2, v3

    .line 65
    .local v0, account:Landroid/accounts/Account;
    iget-object v7, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 69
    invoke-virtual {p0}, Lcom/google/android/gsf/login/LoginActivityTask;->isSetupWizard()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 70
    const/4 v7, -0x1

    invoke-virtual {p0, v7}, Lcom/google/android/gsf/login/LoginActivityTask;->setResult(I)V

    .line 71
    invoke-virtual {p0}, Lcom/google/android/gsf/login/LoginActivityTask;->finish()V

    goto :goto_0

    .line 73
    :cond_3
    const/4 v7, 0x4

    sget-object v8, Lcom/google/android/gsf/loginservice/GLSUser$Status;->EXISTING_USERNAME:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    invoke-virtual {p0, v8}, Lcom/google/android/gsf/login/LoginActivityTask;->createErrorIntent(Lcom/google/android/gsf/loginservice/GLSUser$Status;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/google/android/gsf/login/LoginActivityTask;->setResult(ILandroid/content/Intent;)V

    .line 75
    invoke-virtual {p0}, Lcom/google/android/gsf/login/LoginActivityTask;->finish()V

    goto :goto_0

    .line 64
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method
