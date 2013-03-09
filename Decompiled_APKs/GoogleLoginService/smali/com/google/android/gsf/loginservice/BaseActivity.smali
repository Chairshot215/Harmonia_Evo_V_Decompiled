.class public Lcom/google/android/gsf/loginservice/BaseActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/loginservice/BaseActivity$TestHooks;
    }
.end annotation


# static fields
.field protected static final LOCAL_LOGV:Z

.field protected static mTabletLayout:Z

.field public static sTestHooks:Lcom/google/android/gsf/loginservice/BaseActivity$TestHooks;

.field public static testCheckAuthenticatorResult:Ljava/lang/Object;


# instance fields
.field protected mAddAccount:Z

.field protected mCallAuthenticatorResponseOnFinish:Z

.field protected mCaptchaData:[B

.field protected mCaptchaToken:Ljava/lang/String;

.field protected mConfirmCredentials:Z

.field protected mGlsUser:Lcom/google/android/gsf/loginservice/GLSUser;

.field protected mService:Ljava/lang/String;

.field protected mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

.field protected mSessionId:Ljava/lang/String;

.field private mShowingProgressDialog:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    const-string v0, "GLSActivity"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/gsf/loginservice/BaseActivity;->LOCAL_LOGV:Z

    .line 183
    new-instance v0, Lcom/google/android/gsf/loginservice/BaseActivity$TestHooks;

    invoke-direct {v0}, Lcom/google/android/gsf/loginservice/BaseActivity$TestHooks;-><init>()V

    sput-object v0, Lcom/google/android/gsf/loginservice/BaseActivity;->sTestHooks:Lcom/google/android/gsf/loginservice/BaseActivity$TestHooks;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 186
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mGlsUser:Lcom/google/android/gsf/loginservice/GLSUser;

    .line 135
    iput-boolean v1, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mCallAuthenticatorResponseOnFinish:Z

    .line 141
    iput-boolean v1, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mConfirmCredentials:Z

    .line 143
    iput-boolean v1, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mAddAccount:Z

    .line 186
    return-void
.end method

.method private checkNotification(Landroid/content/Intent;)Z
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 200
    const-string v2, "notificationId"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, nid:Ljava/lang/String;
    if-nez v0, :cond_0

    move v2, v3

    .line 217
    :goto_0
    return v2

    .line 204
    :cond_0
    const-string v2, "session"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, sessionId:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 206
    invoke-static {p0}, Lcom/google/android/gsf/loginservice/GLSUser;->getGLSContext(Landroid/content/Context;)Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->getSessionOrNull(Ljava/lang/String;)Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    .line 207
    iget-object v2, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    if-eqz v2, :cond_1

    move v2, v3

    .line 208
    goto :goto_0

    .line 212
    :cond_1
    const-string v2, "GLSActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Notification without session "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/loginservice/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    const v4, 0x7f08010a

    invoke-virtual {v2, v0, v4}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 215
    invoke-virtual {p0, v3}, Lcom/google/android/gsf/loginservice/BaseActivity;->setResult(I)V

    .line 216
    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/BaseActivity;->finish()V

    .line 217
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private copyParams(Landroid/content/Intent;)V
    .locals 2
    .parameter "i"

    .prologue
    .line 351
    if-nez p1, :cond_0

    .line 365
    :goto_0
    return-void

    .line 354
    :cond_0
    const-string v0, "authAccount"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 355
    const-string v0, "authAccount"

    iget-object v1, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v1, v1, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUsername:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 357
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSessionId:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 358
    const-string v0, "GLSActivity"

    const-string v1, "Start intent without session"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_2
    const-string v0, "session"

    iget-object v1, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSessionId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 362
    const-string v0, "authTokenType"

    iget-object v1, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mService:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 363
    const-string v0, "confirmCredentials"

    iget-boolean v1, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mConfirmCredentials:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 364
    const-string v0, "addAccount"

    iget-boolean v1, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mAddAccount:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method

.method private copyParams(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 339
    const-string v0, "authAccount"

    iget-object v1, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v1, v1, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUsername:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSessionId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 341
    const-string v0, "GLSActivity"

    const-string v1, "Start intent without session"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_0
    const-string v0, "session"

    iget-object v1, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSessionId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const-string v0, "authTokenType"

    iget-object v1, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mService:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const-string v0, "confirmCredentials"

    iget-boolean v1, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mConfirmCredentials:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 347
    const-string v0, "addAccount"

    iget-boolean v1, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mAddAccount:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 348
    return-void
.end method

.method public static initScreen(Landroid/app/Activity;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 194
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v1, 0xf

    .line 196
    .local v0, screenSize:I
    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    sput-boolean v1, Lcom/google/android/gsf/loginservice/BaseActivity;->mTabletLayout:Z

    .line 197
    return-void

    .line 196
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isTabletLayout()Z
    .locals 1

    .prologue
    .line 511
    sget-boolean v0, Lcom/google/android/gsf/loginservice/BaseActivity;->mTabletLayout:Z

    return v0
.end method


# virtual methods
.method protected accountAuthenticatorResult(Landroid/os/Bundle;)V
    .locals 3
    .parameter "result"

    .prologue
    const/4 v2, 0x0

    .line 430
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSessionId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 431
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mGlsUser:Lcom/google/android/gsf/loginservice/GLSUser;

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mGlsUser:Lcom/google/android/gsf/loginservice/GLSUser;

    iget-object v1, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/loginservice/GLSUser;->removeSession(Ljava/lang/String;)V

    .line 434
    :cond_0
    iput-object v2, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSessionId:Ljava/lang/String;

    .line 437
    :cond_1
    if-nez p1, :cond_2

    .line 438
    const/4 v0, 0x4

    const-string v1, "canceled"

    invoke-virtual {p0, v2, v0, v1}, Lcom/google/android/gsf/loginservice/BaseActivity;->accountAuthenticatorResult(Landroid/os/Bundle;ILjava/lang/String;)V

    .line 443
    :goto_0
    return-void

    .line 441
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v2}, Lcom/google/android/gsf/loginservice/BaseActivity;->accountAuthenticatorResult(Landroid/os/Bundle;ILjava/lang/String;)V

    goto :goto_0
.end method

.method protected accountAuthenticatorResult(Landroid/os/Bundle;ILjava/lang/String;)V
    .locals 4
    .parameter "result"
    .parameter "errorCode"
    .parameter "message"

    .prologue
    const/4 v2, 0x3

    .line 457
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mCallAuthenticatorResponseOnFinish:Z

    .line 458
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v0, v1, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

    .line 459
    .local v0, res:Landroid/accounts/AccountAuthenticatorResponse;
    if-eqz v0, :cond_1

    .line 461
    if-eqz p1, :cond_2

    .line 462
    invoke-virtual {v0, p1}, Landroid/accounts/AccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V

    .line 463
    const-string v1, "GLSActivity"

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 464
    const-string v1, "GLSActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AccountAuthenticatorResult: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :cond_0
    sput-object p1, Lcom/google/android/gsf/loginservice/BaseActivity;->testCheckAuthenticatorResult:Ljava/lang/Object;

    .line 474
    :goto_0
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

    .line 476
    :cond_1
    return-void

    .line 468
    :cond_2
    invoke-virtual {v0, p2, p3}, Landroid/accounts/AccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    .line 469
    const-string v1, "GLSActivity"

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 470
    const-string v1, "GLSActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AccountAuthenticatorResult: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :cond_3
    sput-object p3, Lcom/google/android/gsf/loginservice/BaseActivity;->testCheckAuthenticatorResult:Ljava/lang/Object;

    goto :goto_0
.end method

.method protected accountAuthenticatorResultForAdd(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 494
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 495
    .local v0, result:Landroid/os/Bundle;
    const-string v1, "authAccount"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    const-string v1, "accountType"

    const-string v2, "com.google"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/loginservice/BaseActivity;->accountAuthenticatorResult(Landroid/os/Bundle;)V

    .line 499
    return-void
.end method

.method protected accountAuthenticatorResultForSkip()V
    .locals 3

    .prologue
    .line 505
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 506
    .local v0, result:Landroid/os/Bundle;
    const-string v1, "setupSkipped"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 507
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/loginservice/BaseActivity;->accountAuthenticatorResult(Landroid/os/Bundle;)V

    .line 508
    return-void
.end method

.method protected accountAuthenticatorRetryResult()V
    .locals 3

    .prologue
    .line 484
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 485
    .local v0, result:Landroid/content/Intent;
    const-string v1, "retry"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 486
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gsf/loginservice/BaseActivity;->setResult(ILandroid/content/Intent;)V

    .line 487
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/loginservice/BaseActivity;->accountAuthenticatorResult(Landroid/os/Bundle;)V

    .line 488
    return-void
.end method

.method public finish()V
    .locals 3

    .prologue
    .line 530
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 532
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v0, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mActivities:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 537
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mCallAuthenticatorResponseOnFinish:Z

    if-eqz v0, :cond_2

    .line 540
    const-string v0, "GLSActivity"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 541
    const-string v0, "GLSActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AccountAuthenticatorResult: finish on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/loginservice/BaseActivity;->accountAuthenticatorResult(Landroid/os/Bundle;)V

    .line 545
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v0, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mActivities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 546
    const-string v0, "GLSActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remaining GLS activities after end: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v2, v2, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mActivities:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    :cond_2
    return-void
.end method

.method public getCountry()Ljava/lang/String;
    .locals 3

    .prologue
    .line 565
    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/BaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_country"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasNetworkConnection()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 395
    sget-object v1, Lcom/google/android/gsf/loginservice/BaseActivity;->sTestHooks:Lcom/google/android/gsf/loginservice/BaseActivity$TestHooks;

    iget-boolean v1, v1, Lcom/google/android/gsf/loginservice/BaseActivity$TestHooks;->mForceNoNetwork:Z

    if-eqz v1, :cond_0

    .line 400
    :goto_0
    return v2

    .line 398
    :cond_0
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/loginservice/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 400
    .local v0, ni:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public isESEnabled()Z
    .locals 4

    .prologue
    .line 557
    sget-object v0, Lcom/google/android/gsf/loginservice/BaseActivity;->sTestHooks:Lcom/google/android/gsf/loginservice/BaseActivity$TestHooks;

    iget-object v0, v0, Lcom/google/android/gsf/loginservice/BaseActivity$TestHooks;->mGPlus:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 558
    const-string v0, "1"

    sget-object v1, Lcom/google/android/gsf/loginservice/BaseActivity;->sTestHooks:Lcom/google/android/gsf/loginservice/BaseActivity$TestHooks;

    iget-object v1, v1, Lcom/google/android/gsf/loginservice/BaseActivity$TestHooks;->mGPlus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 560
    :goto_0
    return v0

    :cond_0
    const-string v0, "1"

    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/BaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "google_login_gplus"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public isXLargeScreen()Z
    .locals 1

    .prologue
    .line 518
    sget-boolean v0, Lcom/google/android/gsf/loginservice/BaseActivity;->mTabletLayout:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v5, 0x0

    .line 222
    sget-boolean v2, Lcom/google/android/gsf/loginservice/BaseActivity;->LOCAL_LOGV:Z

    if-eqz v2, :cond_0

    const-string v2, "GLSActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 225
    invoke-static {p0}, Lcom/google/android/gsf/loginservice/BaseActivity;->initScreen(Landroid/app/Activity;)V

    .line 228
    if-eqz p1, :cond_9

    .line 233
    const-string v2, "session"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, sessionId:Ljava/lang/String;
    if-eqz v1, :cond_8

    .line 242
    invoke-static {p0}, Lcom/google/android/gsf/loginservice/GLSUser;->getGLSContext(Landroid/content/Context;)Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->getSessionOrNull(Ljava/lang/String;)Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    .line 243
    iget-object v2, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    if-nez v2, :cond_1

    .line 244
    invoke-static {p0, v1, p1}, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->fromBundle(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    .line 265
    .end local v1           #sessionId:Ljava/lang/String;
    :cond_1
    :goto_0
    const-string v2, "isTop"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mCallAuthenticatorResponseOnFinish:Z

    .line 268
    iget-object v2, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v2, v2, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mKey:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSessionId:Ljava/lang/String;

    .line 271
    iget-object v2, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v2, v2, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mActivities:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    iget-object v2, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v2, v2, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUsername:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 276
    iget-object v2, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    const-string v3, "authAccount"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUsername:Ljava/lang/String;

    .line 279
    :cond_2
    iget-object v2, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v2, v2, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUsername:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 280
    iget-object v2, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v2, v2, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUsername:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/google/android/gsf/loginservice/GLSUser;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gsf/loginservice/GLSUser;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mGlsUser:Lcom/google/android/gsf/loginservice/GLSUser;

    .line 283
    :cond_3
    const-string v2, "authTokenType"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mService:Ljava/lang/String;

    .line 285
    const-string v2, "confirmCredentials"

    invoke-virtual {p1, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mConfirmCredentials:Z

    .line 286
    const-string v2, "addAccount"

    invoke-virtual {p1, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mAddAccount:Z

    .line 287
    iget-object v2, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v2, v2, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

    if-eqz v2, :cond_4

    .line 288
    iget-object v2, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v2, v2, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

    invoke-virtual {v2}, Landroid/accounts/AccountAuthenticatorResponse;->onRequestContinued()V

    .line 290
    :cond_4
    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->CAPTCHA_DATA:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    invoke-virtual {v2}, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->getWire()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mCaptchaData:[B

    .line 291
    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->CAPTCHA_TOKEN_RES:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    invoke-virtual {v2}, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->getWire()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mCaptchaToken:Ljava/lang/String;

    .line 292
    const-string v2, "showingProgressDialog"

    invoke-virtual {p1, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mShowingProgressDialog:Z

    .line 295
    iget-object v2, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v2, v2, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mAccountManagerOptions:Landroid/os/Bundle;

    const-string v3, "allowSkip"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "allowSkip"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 298
    const-string v2, "GLSActivity"

    const-string v3, "Accepting legacy allowSkip from intent"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v2, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v2, v2, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mAccountManagerOptions:Landroid/os/Bundle;

    const-string v3, "allowSkip"

    const-string v4, "allowSkip"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 303
    :cond_5
    const-string v2, "firstRun"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 304
    iget-object v2, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    const-string v3, "firstRun"

    invoke-virtual {p1, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mSetupWizard:Z

    .line 305
    iget-object v2, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-boolean v2, v2, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mSetupWizard:Z

    if-eqz v2, :cond_6

    .line 306
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mAddAccount:Z

    .line 312
    :cond_6
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 313
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "callerExtras"

    iget-object v3, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v3, v3, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mAccountManagerOptions:Landroid/os/Bundle;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 315
    invoke-virtual {p0, v5, v0}, Lcom/google/android/gsf/loginservice/BaseActivity;->setResult(ILandroid/content/Intent;)V

    .line 316
    :cond_7
    return-void

    .line 247
    .end local v0           #intent:Landroid/content/Intent;
    .restart local v1       #sessionId:Ljava/lang/String;
    :cond_8
    invoke-static {p0, p1}, Lcom/google/android/gsf/loginservice/GLSUser;->getOrCreateSession(Landroid/content/Context;Landroid/os/Bundle;)Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    goto/16 :goto_0

    .line 252
    .end local v1           #sessionId:Ljava/lang/String;
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 253
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 254
    if-nez p1, :cond_a

    .line 255
    new-instance p1, Landroid/os/Bundle;

    .end local p1
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 257
    .restart local p1
    :cond_a
    invoke-direct {p0, v0}, Lcom/google/android/gsf/loginservice/BaseActivity;->checkNotification(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 261
    invoke-static {p0, p1}, Lcom/google/android/gsf/loginservice/GLSUser;->getOrCreateSession(Landroid/content/Context;Landroid/os/Bundle;)Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    goto/16 :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 320
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 322
    sget-object v0, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->CAPTCHA_DATA:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    invoke-virtual {v0}, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->getWire()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mCaptchaData:[B

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 323
    sget-object v0, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->CAPTCHA_TOKEN_RES:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    invoke-virtual {v0}, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->getWire()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mCaptchaToken:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-string v0, "showingProgressDialog"

    iget-boolean v1, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mShowingProgressDialog:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 325
    const-string v0, "isTop"

    iget-boolean v1, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mCallAuthenticatorResponseOnFinish:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 327
    invoke-direct {p0, p1}, Lcom/google/android/gsf/loginservice/BaseActivity;->copyParams(Landroid/os/Bundle;)V

    .line 330
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    invoke-virtual {v0, p1}, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->toBundle(Landroid/os/Bundle;)V

    .line 331
    return-void
.end method

.method public shouldDisplayLastNameFirst()Z
    .locals 3

    .prologue
    .line 575
    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/BaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "google_setup:lastnamefirst_countries"

    invoke-static {v1, v2}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 577
    .local v0, lastFirstCountries:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 578
    const-string v0, "*ja*ko*hu*"

    .line 580
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 370
    invoke-direct {p0, p1}, Lcom/google/android/gsf/loginservice/BaseActivity;->copyParams(Landroid/content/Intent;)V

    .line 371
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 372
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 0
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 385
    if-nez p1, :cond_0

    .line 390
    :goto_0
    return-void

    .line 388
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gsf/loginservice/BaseActivity;->copyParams(Landroid/content/Intent;)V

    .line 389
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
