.class public Lcom/google/android/gsf/login/BaseActivity;
.super Lcom/google/android/gsf/loginservice/BaseActivity;
.source "BaseActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# static fields
.field private static final sWirelessSettingsIntent:Landroid/content/Intent;


# instance fields
.field protected LOCAL_LOGV:Z

.field mAgreementView:Landroid/app/AlertDialog;

.field protected mAllowBackHardKey:Z

.field protected mBackButtonClickListener:Landroid/view/View$OnClickListener;

.field protected mBackendStub:Lcom/google/android/gsf/login/BackendStub;

.field protected mFrameLayout:Landroid/widget/FrameLayout;

.field private mHandler:Landroid/os/Handler;

.field protected mLastResult:I

.field private mMarket:Lcom/google/android/gsf/login/MarketHelper;

.field protected mNextRequest:I

.field private mOnDefaultButtonClicked:Landroid/view/View$OnClickListener;

.field protected mPrimaryButton:Landroid/view/View;

.field private mStartOnEnterActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field protected mTitle:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 80
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.Settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/login/BaseActivity;->sWirelessSettingsIntent:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/google/android/gsf/loginservice/BaseActivity;-><init>()V

    .line 239
    const-string v0, "GLSActivity"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gsf/login/BaseActivity;->LOCAL_LOGV:Z

    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/login/BaseActivity;->mAllowBackHardKey:Z

    .line 248
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/login/BaseActivity;->mHandler:Landroid/os/Handler;

    .line 265
    const/16 v0, -0x65

    iput v0, p0, Lcom/google/android/gsf/login/BaseActivity;->mLastResult:I

    .line 308
    new-instance v0, Lcom/google/android/gsf/login/BaseActivity$3;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/login/BaseActivity$3;-><init>(Lcom/google/android/gsf/login/BaseActivity;)V

    iput-object v0, p0, Lcom/google/android/gsf/login/BaseActivity;->mBackButtonClickListener:Landroid/view/View$OnClickListener;

    .line 341
    new-instance v0, Lcom/google/android/gsf/login/BaseActivity$4;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/login/BaseActivity$4;-><init>(Lcom/google/android/gsf/login/BaseActivity;)V

    iput-object v0, p0, Lcom/google/android/gsf/login/BaseActivity;->mOnDefaultButtonClicked:Landroid/view/View$OnClickListener;

    .line 359
    new-instance v0, Lcom/google/android/gsf/login/BaseActivity$5;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/login/BaseActivity$5;-><init>(Lcom/google/android/gsf/login/BaseActivity;)V

    iput-object v0, p0, Lcom/google/android/gsf/login/BaseActivity;->mStartOnEnterActionListener:Landroid/widget/TextView$OnEditorActionListener;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gsf/login/BaseActivity;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/gsf/login/BaseActivity;->mOnDefaultButtonClicked:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method protected static isFirstGoogleAccount(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "ctx"
    .parameter "username"

    .prologue
    const/4 v1, 0x1

    .line 766
    sget-object v2, Lcom/google/android/gsf/login/BaseActivity;->sTestHooks:Lcom/google/android/gsf/loginservice/BaseActivity$TestHooks;

    iget-boolean v2, v2, Lcom/google/android/gsf/loginservice/BaseActivity$TestHooks;->mSkipExistingAccountCheck:Z

    if-eqz v2, :cond_1

    .line 771
    :cond_0
    :goto_0
    return v1

    .line 769
    :cond_1
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    const-string v3, "com.google"

    invoke-virtual {v2, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 771
    .local v0, accounts:[Landroid/accounts/Account;
    array-length v2, v0

    if-eq v2, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isUsernameValid(Ljava/lang/String;)Z
    .locals 3
    .parameter "username"

    .prologue
    .line 666
    sget-object v1, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 667
    .local v0, match:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 614
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BaseActivity;->updateWidgetState()V

    .line 615
    return-void
.end method

.method public appendGmailHost(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "res"
    .parameter "loginName"

    .prologue
    .line 656
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p2, 0x0

    .end local p2
    :cond_0
    :goto_0
    return-object p2

    .restart local p2
    :cond_1
    const-string v0, "@"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gsf/login/BaseActivity;->getGmailHost(Landroid/content/res/Resources;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 605
    return-void
.end method

.method public createErrorIntent(Lcom/google/android/gsf/loginservice/GLSUser$Status;)Landroid/content/Intent;
    .locals 2
    .parameter

    .prologue
    .line 472
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 473
    const-class v1, Lcom/google/android/gsf/login/ShowErrorActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 474
    iget-object v1, p0, Lcom/google/android/gsf/login/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    invoke-virtual {v1, v0}, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->addSession(Landroid/content/Intent;)V

    .line 475
    invoke-virtual {p1, p0, v0}, Lcom/google/android/gsf/loginservice/GLSUser$Status;->toIntent(Landroid/content/Context;Landroid/content/Intent;)V

    .line 476
    return-object v0
.end method

.method protected disableBackKey()Z
    .locals 1

    .prologue
    .line 578
    const/4 v0, 0x1

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7
    .parameter "ev"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 402
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    move v0, v3

    .line 403
    .local v0, isBackKey:Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    const/16 v6, 0x52

    if-ne v5, v6, :cond_2

    move v2, v3

    .line 404
    .local v2, isMenuKey:Z
    :goto_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_3

    move v1, v3

    .line 406
    .local v1, isCallKey:Z
    :goto_2
    if-eqz v0, :cond_4

    .line 408
    iget-boolean v4, p0, Lcom/google/android/gsf/login/BaseActivity;->mAllowBackHardKey:Z

    if-eqz v4, :cond_0

    .line 409
    invoke-super {p0, p1}, Lcom/google/android/gsf/loginservice/BaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    .line 416
    :cond_0
    :goto_3
    return v3

    .end local v0           #isBackKey:Z
    .end local v1           #isCallKey:Z
    .end local v2           #isMenuKey:Z
    :cond_1
    move v0, v4

    .line 402
    goto :goto_0

    .restart local v0       #isBackKey:Z
    :cond_2
    move v2, v4

    .line 403
    goto :goto_1

    .restart local v2       #isMenuKey:Z
    :cond_3
    move v1, v4

    .line 404
    goto :goto_2

    .line 411
    .restart local v1       #isCallKey:Z
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BaseActivity;->isSetupWizard()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v4

    if-eqz v4, :cond_5

    if-nez v2, :cond_5

    if-eqz v1, :cond_0

    .line 412
    :cond_5
    invoke-super {p0, p1}, Lcom/google/android/gsf/loginservice/BaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_3
.end method

.method protected getActivityContentView()Landroid/view/View;
    .locals 2

    .prologue
    .line 599
    iget-object v0, p0, Lcom/google/android/gsf/login/BaseActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gsf/login/BaseActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getGmailHost(Landroid/content/res/Resources;Z)Ljava/lang/String;
    .locals 4
    .parameter "res"
    .parameter "nameOnly"

    .prologue
    .line 631
    if-eqz p2, :cond_1

    const v2, 0x7f080121

    :goto_0
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 633
    .local v1, host:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/gsf/login/Compat;->isWifiOnlyBuild()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 635
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BaseActivity;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 636
    .local v0, countryCode:Ljava/lang/String;
    const-string v2, "de"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 637
    if-eqz p2, :cond_2

    const v2, 0x7f080122

    :goto_1
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 641
    .end local v0           #countryCode:Ljava/lang/String;
    :cond_0
    if-nez v1, :cond_3

    .line 643
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Couldn\'t find gmail_host_name"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 631
    .end local v1           #host:Ljava/lang/String;
    :cond_1
    const v2, 0x7f080016

    goto :goto_0

    .line 637
    .restart local v0       #countryCode:Ljava/lang/String;
    .restart local v1       #host:Ljava/lang/String;
    :cond_2
    const v2, 0x7f080017

    goto :goto_1

    .line 645
    .end local v0           #countryCode:Ljava/lang/String;
    :cond_3
    return-object v1
.end method

.method public getMarket()Lcom/google/android/gsf/login/MarketHelper;
    .locals 1

    .prologue
    .line 810
    iget-object v0, p0, Lcom/google/android/gsf/login/BaseActivity;->mMarket:Lcom/google/android/gsf/login/MarketHelper;

    if-nez v0, :cond_0

    .line 811
    new-instance v0, Lcom/google/android/gsf/login/MarketHelper;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/login/MarketHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gsf/login/BaseActivity;->mMarket:Lcom/google/android/gsf/login/MarketHelper;

    .line 813
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/login/BaseActivity;->mMarket:Lcom/google/android/gsf/login/MarketHelper;

    return-object v0
.end method

.method public getTitleId()I
    .locals 1

    .prologue
    .line 552
    const/4 v0, 0x0

    return v0
.end method

.method public getUserData()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 806
    iget-object v0, p0, Lcom/google/android/gsf/login/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v0, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUserData:Ljava/util/HashMap;

    return-object v0
.end method

.method protected hasMenu()Z
    .locals 1

    .prologue
    .line 538
    const/4 v0, 0x0

    return v0
.end method

.method protected isSetupWizard()Z
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lcom/google/android/gsf/login/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-boolean v0, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mSetupWizard:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    const/4 v2, 0x0

    .line 490
    invoke-super {p0, p1}, Lcom/google/android/gsf/loginservice/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 491
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BaseActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 535
    :goto_0
    return-void

    .line 495
    :cond_0
    new-instance v0, Lcom/google/android/gsf/login/BackendStub;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/login/BackendStub;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gsf/login/BaseActivity;->mBackendStub:Lcom/google/android/gsf/login/BackendStub;

    .line 499
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BaseActivity;->useActionBars()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gsf/login/BaseActivity;->hasMenu()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 500
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/BaseActivity;->requestWindowFeature(I)Z

    .line 501
    invoke-static {p0, v2}, Lcom/google/android/gsf/login/Compat;->actionBarSetDisplayShowHomeEnabled(Landroid/app/Activity;Z)V

    .line 502
    invoke-static {p0, v2}, Lcom/google/android/gsf/login/Compat;->actionBarSetDisplayShowTitleEnabled(Landroid/app/Activity;Z)V

    .line 511
    :goto_1
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gsf/login/BaseActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    .line 514
    iget-object v0, p0, Lcom/google/android/gsf/login/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-boolean v0, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mSetupWizard:Z

    if-eqz v0, :cond_1

    .line 518
    iget-object v0, p0, Lcom/google/android/gsf/login/BaseActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    const/high16 v1, 0x177

    invoke-static {v0, v1}, Lcom/google/android/gsf/login/Compat;->viewSetSystemUiVisibility(Landroid/widget/FrameLayout;I)V

    .line 525
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BaseActivity;->disableBackKey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 528
    iput-boolean v2, p0, Lcom/google/android/gsf/login/BaseActivity;->mAllowBackHardKey:Z

    .line 531
    :cond_1
    if-eqz p1, :cond_2

    .line 532
    const-string v0, "nextRequest"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gsf/login/BaseActivity;->mNextRequest:I

    .line 534
    :cond_2
    iget-object v0, p0, Lcom/google/android/gsf/login/BaseActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-super {p0, v0}, Lcom/google/android/gsf/loginservice/BaseActivity;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 506
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/BaseActivity;->requestWindowFeature(I)Z

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 818
    invoke-super {p0}, Lcom/google/android/gsf/loginservice/BaseActivity;->onDestroy()V

    .line 819
    iget-object v0, p0, Lcom/google/android/gsf/login/BaseActivity;->mMarket:Lcom/google/android/gsf/login/MarketHelper;

    if-eqz v0, :cond_0

    .line 820
    iget-object v0, p0, Lcom/google/android/gsf/login/BaseActivity;->mMarket:Lcom/google/android/gsf/login/MarketHelper;

    invoke-virtual {v0}, Lcom/google/android/gsf/login/MarketHelper;->onDestroy()V

    .line 822
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, -0x1

    .line 421
    invoke-super {p0, p1}, Lcom/google/android/gsf/loginservice/BaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 422
    const-string v2, "currentFocus"

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 423
    .local v0, currentId:I
    if-eq v0, v3, :cond_0

    .line 424
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 425
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 427
    .end local v1           #v:Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 431
    invoke-super {p0, p1}, Lcom/google/android/gsf/loginservice/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 432
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BaseActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 433
    .local v0, current:Landroid/view/View;
    const-string v2, "currentFocus"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    :goto_0
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 434
    const-string v1, "nextRequest"

    iget v2, p0, Lcom/google/android/gsf/login/BaseActivity;->mNextRequest:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 435
    return-void

    .line 433
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method protected onSetupComplete(Z)V
    .locals 3
    .parameter "completed"

    .prologue
    .line 755
    const v2, 0x320cf

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 759
    sget-object v1, Lcom/google/android/gsf/login/BackendStub$Key;->SHARED_PREFS:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v1}, Lcom/google/android/gsf/login/BackendStub$Key;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gsf/login/BaseActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 761
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 762
    invoke-static {v0}, Lcom/google/android/gsf/login/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 763
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 610
    return-void
.end method

.method protected overrideAllowBackHardkey()V
    .locals 1

    .prologue
    .line 321
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/login/BaseActivity;->mAllowBackHardKey:Z

    .line 322
    return-void
.end method

.method public returnResult(I)V
    .locals 1
    .parameter "resultCode"

    .prologue
    .line 789
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gsf/login/BaseActivity;->returnResult(ILandroid/content/Intent;)V

    .line 790
    return-void
.end method

.method public returnResult(ILandroid/content/Intent;)V
    .locals 0
    .parameter "resultCode"
    .parameter "resultData"

    .prologue
    .line 796
    iput p1, p0, Lcom/google/android/gsf/login/BaseActivity;->mLastResult:I

    .line 797
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gsf/login/BaseActivity;->setResult(ILandroid/content/Intent;)V

    .line 798
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BaseActivity;->finish()V

    .line 799
    return-void
.end method

.method protected setBackButton(Landroid/view/View;)V
    .locals 1
    .parameter "backButton"

    .prologue
    .line 325
    if-eqz p1, :cond_0

    .line 326
    iget-object v0, p0, Lcom/google/android/gsf/login/BaseActivity;->mBackButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/login/BaseActivity;->mAllowBackHardKey:Z

    .line 331
    :cond_0
    return-void
.end method

.method public setContentView(I)V
    .locals 3
    .parameter "resid"

    .prologue
    .line 587
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BaseActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 588
    .local v0, inflate:Landroid/view/LayoutInflater;
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 589
    .local v1, view:Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/BaseActivity;->setContentView(Landroid/view/View;)V

    .line 590
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 594
    iget-object v0, p0, Lcom/google/android/gsf/login/BaseActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 595
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BaseActivity;->updateTitle()V

    .line 596
    return-void
.end method

.method protected setDefaultButton(Landroid/view/View;Z)V
    .locals 1
    .parameter "view"
    .parameter "primary"

    .prologue
    .line 386
    if-eqz p2, :cond_0

    iput-object p1, p0, Lcom/google/android/gsf/login/BaseActivity;->mPrimaryButton:Landroid/view/View;

    .line 387
    :cond_0
    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 388
    check-cast p1, Landroid/widget/EditText;

    .end local p1
    iget-object v0, p0, Lcom/google/android/gsf/login/BaseActivity;->mStartOnEnterActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 392
    :goto_0
    return-void

    .line 390
    .restart local p1
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/login/BaseActivity;->mOnDefaultButtonClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setTitle(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 560
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/BaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 561
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 565
    const v0, 0x7f0c0002

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/gsf/login/BaseActivity;->mTitle:Landroid/widget/TextView;

    .line 566
    iget-object v0, p0, Lcom/google/android/gsf/login/BaseActivity;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/google/android/gsf/login/BaseActivity;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 571
    :goto_0
    return-void

    .line 570
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/gsf/loginservice/BaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected showAgreement(Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;)V
    .locals 1
    .parameter "policy"

    .prologue
    .line 733
    new-instance v0, Lcom/google/android/gsf/login/LinkSpan$WebViewDialog;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gsf/login/LinkSpan$WebViewDialog;-><init>(Lcom/google/android/gsf/login/BaseActivity;Lcom/google/android/gsf/login/LinkSpan$AndroidPolicy;)V

    iput-object v0, p0, Lcom/google/android/gsf/login/BaseActivity;->mAgreementView:Landroid/app/AlertDialog;

    .line 734
    iget-object v0, p0, Lcom/google/android/gsf/login/BaseActivity;->mAgreementView:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 735
    return-void
.end method

.method protected start()V
    .locals 0

    .prologue
    .line 339
    return-void
.end method

.method protected updateTitle()V
    .locals 1

    .prologue
    .line 438
    const v0, 0x7f0c0002

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/gsf/login/BaseActivity;->mTitle:Landroid/widget/TextView;

    .line 441
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BaseActivity;->useActionBars()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gsf/login/BaseActivity;->hasMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/android/gsf/login/Compat;->getActionBar(Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 466
    :cond_0
    return-void
.end method

.method public updateWidgetState()V
    .locals 0

    .prologue
    .line 623
    return-void
.end method

.method protected useActionBars()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 779
    invoke-static {}, Lcom/google/android/gsf/login/Compat;->hasActionBar()Z

    move-result v1

    if-nez v1, :cond_1

    .line 782
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gsf/login/Compat;->hasPermanentMenuKey(Landroid/view/ViewConfiguration;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected validateUsername(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "username"

    .prologue
    .line 687
    invoke-static {p1}, Lcom/google/android/gsf/login/BaseActivity;->isUsernameValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 689
    .end local p1
    :goto_0
    return-object p1

    .line 688
    .restart local p1
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/google/android/gsf/login/BaseActivity;->appendGmailHost(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 689
    .local v0, newUsername:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/gsf/login/BaseActivity;->isUsernameValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .end local v0           #newUsername:Ljava/lang/String;
    :goto_1
    move-object p1, v0

    goto :goto_0

    .restart local v0       #newUsername:Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
