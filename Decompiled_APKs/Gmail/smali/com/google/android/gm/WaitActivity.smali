.class public Lcom/google/android/gm/WaitActivity;
.super Lcom/google/android/gm/GmailBaseActivity;
.source "WaitActivity.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/gm/BaseGmailActionBar$Callback;
.implements Lcom/google/android/gm/MenuHandler$HelpCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/WaitActivity$AccountValidityCallback;,
        Lcom/google/android/gm/WaitActivity$WaitMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gm/GmailBaseActivity;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/google/android/gm/BaseGmailActionBar$Callback;",
        "Lcom/google/android/gm/MenuHandler$HelpCallback;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static sCurrentAccount:Landroid/accounts/Account;

.field private static sNewAccount:Ljava/lang/String;

.field private static sShowWaitActivityMessageDelay:I


# instance fields
.field private mActionBarView:Lcom/google/android/gm/ActionBarView;

.field private mCalledFromSettings:Z

.field private mScheduledRunnable:Z

.field private final mShowWaitingToSyncRunnable:Ljava/lang/Runnable;

.field private mWaitMode:Lcom/google/android/gm/WaitActivity$WaitMode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, -0x1

    sput v0, Lcom/google/android/gm/WaitActivity;->sShowWaitActivityMessageDelay:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Lcom/google/android/gm/GmailBaseActivity;-><init>()V

    .line 55
    iput-boolean v1, p0, Lcom/google/android/gm/WaitActivity;->mCalledFromSettings:Z

    .line 56
    sget-object v0, Lcom/google/android/gm/WaitActivity$WaitMode;->UNKNOWN:Lcom/google/android/gm/WaitActivity$WaitMode;

    iput-object v0, p0, Lcom/google/android/gm/WaitActivity;->mWaitMode:Lcom/google/android/gm/WaitActivity$WaitMode;

    .line 72
    new-instance v0, Lcom/google/android/gm/WaitActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/gm/WaitActivity$1;-><init>(Lcom/google/android/gm/WaitActivity;)V

    iput-object v0, p0, Lcom/google/android/gm/WaitActivity;->mShowWaitingToSyncRunnable:Ljava/lang/Runnable;

    .line 78
    iput-boolean v1, p0, Lcom/google/android/gm/WaitActivity;->mScheduledRunnable:Z

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gm/WaitActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/android/gm/WaitActivity;->showWaitingToSyncMessage()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/gm/WaitActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/google/android/gm/WaitActivity;->waitForLabels(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/gm/WaitActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/android/gm/WaitActivity;->waitForGmailAccount()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/gm/WaitActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/google/android/gm/WaitActivity;->onAccountsLoaded(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400()Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/google/android/gm/WaitActivity;->sCurrentAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/gm/WaitActivity;)Lcom/google/android/gm/ActionBarView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/gm/WaitActivity;->mActionBarView:Lcom/google/android/gm/ActionBarView;

    return-object v0
.end method

.method private static areLabelsSynced(Landroid/database/Cursor;)Z
    .locals 3
    .parameter "statusCursor"

    .prologue
    .line 395
    const-string v1, "status"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 397
    .local v0, status:I
    const/16 v1, 0x10

    and-int/lit8 v2, v0, 0x10

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isAccountOk(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter "context"
    .parameter "account"

    .prologue
    .line 226
    if-eqz p1, :cond_0

    invoke-static {p0, p1}, Lcom/google/android/gm/Utils;->isValidGoogleAccount(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isLabelStatusInitialized(Landroid/database/Cursor;)Z
    .locals 3
    .parameter "statusCursor"

    .prologue
    .line 388
    const-string v1, "status"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 390
    .local v0, status:I
    const/16 v1, 0x20

    and-int/lit8 v2, v0, 0x20

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onAccountsLoaded(Ljava/lang/String;)V
    .locals 1
    .parameter "account"

    .prologue
    .line 383
    invoke-static {}, Lcom/google/android/gm/persistence/Persistence;->getInstance()Lcom/google/android/gm/persistence/Persistence;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gm/persistence/Persistence;->setActiveAccount(Landroid/content/Context;Ljava/lang/String;)V

    .line 384
    invoke-direct {p0, p1}, Lcom/google/android/gm/WaitActivity;->waitForLabels(Ljava/lang/String;)V

    .line 385
    return-void
.end method

.method private restartStatusLoader()V
    .locals 3

    .prologue
    .line 475
    sget-object v1, Lcom/google/android/gm/WaitActivity;->sCurrentAccount:Landroid/accounts/Account;

    if-eqz v1, :cond_0

    .line 476
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 477
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "account"

    sget-object v2, Lcom/google/android/gm/WaitActivity;->sCurrentAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/google/android/gm/WaitActivity;->startStatusCursorLoader(ILandroid/os/Bundle;)V

    .line 480
    .end local v0           #args:Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method private showWaitingToSyncMessage()V
    .locals 2

    .prologue
    .line 371
    const v1, 0x7f0f00cd

    invoke-virtual {p0, v1}, Lcom/google/android/gm/WaitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 372
    .local v0, waitForSyncView:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 373
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 375
    :cond_0
    return-void
.end method

.method private startOriginalActivityAndFinish()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 491
    invoke-virtual {p0}, Lcom/google/android/gm/WaitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gm/WaitActivity;->unwrapIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 494
    .local v0, original:Landroid/content/Intent;
    const/high16 v1, 0x601

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 496
    invoke-virtual {p0, v0}, Lcom/google/android/gm/WaitActivity;->startActivity(Landroid/content/Intent;)V

    .line 497
    invoke-virtual {p0}, Lcom/google/android/gm/WaitActivity;->finish()V

    .line 499
    invoke-virtual {p0, v2, v2}, Lcom/google/android/gm/WaitActivity;->overridePendingTransition(II)V

    .line 500
    return-void
.end method

.method private startOriginalActivityWithSelectedAccount(Ljava/lang/String;)V
    .locals 3
    .parameter "account"

    .prologue
    const/4 v2, 0x0

    .line 503
    invoke-virtual {p0}, Lcom/google/android/gm/WaitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gm/WaitActivity;->unwrapIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 506
    .local v0, original:Landroid/content/Intent;
    const/high16 v1, 0x601

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 508
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 509
    invoke-virtual {p0, v0}, Lcom/google/android/gm/WaitActivity;->startActivity(Landroid/content/Intent;)V

    .line 510
    invoke-virtual {p0}, Lcom/google/android/gm/WaitActivity;->finish()V

    .line 512
    invoke-virtual {p0, v2, v2}, Lcom/google/android/gm/WaitActivity;->overridePendingTransition(II)V

    .line 513
    return-void
.end method

.method private startStatusCursorLoader(ILandroid/os/Bundle;)V
    .locals 1
    .parameter "loaderId"
    .parameter "args"

    .prologue
    .line 483
    invoke-virtual {p0}, Lcom/google/android/gm/WaitActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 484
    return-void
.end method

.method private static startWaitActivity(Lcom/google/android/gm/RestrictedActivity;Ljava/lang/String;Z)V
    .locals 2
    .parameter "activity"
    .parameter "account"
    .parameter "fromSettings"

    .prologue
    .line 174
    invoke-interface {p0}, Lcom/google/android/gm/RestrictedActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 175
    .local v0, context:Landroid/content/Context;
    invoke-interface {p0}, Lcom/google/android/gm/RestrictedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 176
    .local v1, originalIntent:Landroid/content/Intent;
    invoke-static {v0, p1, p2, v1}, Lcom/google/android/gm/WaitActivity;->startWaitActivityForAccount(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/Intent;)V

    .line 177
    invoke-interface {p0}, Lcom/google/android/gm/RestrictedActivity;->finish()V

    .line 178
    return-void
.end method

.method private static startWaitActivityForAccount(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 182
    const-class v0, Lcom/google/android/gm/WaitActivity;

    invoke-static {p3, p0, v0, p1}, Lcom/google/android/gm/WaitActivity;->wrapIntentForClass(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 184
    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 185
    const-string v1, "awaitingSettings"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 186
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 187
    return-void
.end method

.method private startWaitActivityWithNewAccount(Ljava/lang/String;)V
    .locals 2
    .parameter "account"

    .prologue
    .line 516
    invoke-virtual {p0}, Lcom/google/android/gm/WaitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gm/WaitActivity;->unwrapIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 517
    .local v0, originalIntent:Landroid/content/Intent;
    iget-boolean v1, p0, Lcom/google/android/gm/WaitActivity;->mCalledFromSettings:Z

    invoke-static {p0, p1, v1, v0}, Lcom/google/android/gm/WaitActivity;->startWaitActivityForAccount(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/Intent;)V

    .line 518
    invoke-virtual {p0}, Lcom/google/android/gm/WaitActivity;->finish()V

    .line 519
    return-void
.end method

.method private stopStatusCursorLoader(I)V
    .locals 1
    .parameter "loaderId"

    .prologue
    .line 487
    invoke-virtual {p0}, Lcom/google/android/gm/WaitActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 488
    return-void
.end method

.method private static unwrapIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1
    .parameter "intent"

    .prologue
    .line 549
    const-string v0, "wrappedIntent"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method

.method private static verifyAccountValidity(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/WaitActivity$AccountValidityCallback;)V
    .locals 2
    .parameter "context"
    .parameter "accountName"
    .parameter "callback"

    .prologue
    .line 236
    invoke-static {p0, p1}, Lcom/google/android/gm/WaitActivity;->isAccountOk(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 237
    if-eqz p2, :cond_0

    .line 238
    const/4 v1, 0x0

    invoke-interface {p2, p1, v1}, Lcom/google/android/gm/WaitActivity$AccountValidityCallback;->onResult(Ljava/lang/String;Z)V

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    new-instance v0, Landroid/accounts/Account;

    const-string v1, "com.google"

    invoke-direct {v0, p1, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    .local v0, checkAccount:Landroid/accounts/Account;
    new-instance v1, Lcom/google/android/gm/WaitActivity$2;

    invoke-direct {v1, p2, p1}, Lcom/google/android/gm/WaitActivity$2;-><init>(Lcom/google/android/gm/WaitActivity$AccountValidityCallback;Ljava/lang/String;)V

    invoke-static {p0, v0, v1}, Lcom/google/android/gm/AccountHelper;->verifyAccountGmailFeatures(Landroid/content/Context;Landroid/accounts/Account;Lcom/google/android/gm/AccountHelper$GmailAccountValidityResultsCallback;)V

    goto :goto_0
.end method

.method public static waitForAccountIfNeeded(Lcom/google/android/gm/RestrictedActivity;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .parameter "activity"
    .parameter "account"
    .parameter "fromSettings"

    .prologue
    const/4 v1, 0x0

    .line 158
    invoke-interface {p0}, Lcom/google/android/gm/RestrictedActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 160
    .local v0, context:Landroid/content/Context;
    invoke-static {v0, p1}, Lcom/google/android/gm/WaitActivity;->isAccountOk(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 161
    invoke-static {p0, p1, p2}, Lcom/google/android/gm/WaitActivity;->startWaitActivity(Lcom/google/android/gm/RestrictedActivity;Ljava/lang/String;Z)V

    move-object p1, v1

    .line 169
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 165
    .restart local p1
    :cond_1
    invoke-static {v0, p1}, Lcom/google/android/gm/provider/LabelManager;->areLabelsSynchronized(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 166
    invoke-static {p0, p1, p2}, Lcom/google/android/gm/WaitActivity;->startWaitActivity(Lcom/google/android/gm/RestrictedActivity;Ljava/lang/String;Z)V

    move-object p1, v1

    .line 167
    goto :goto_0
.end method

.method private waitForAccounts(Ljava/lang/String;Z)V
    .locals 1
    .parameter "account"
    .parameter "firstLaunch"

    .prologue
    .line 263
    new-instance v0, Lcom/google/android/gm/WaitActivity$3;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gm/WaitActivity$3;-><init>(Lcom/google/android/gm/WaitActivity;Z)V

    invoke-static {p0, p1, v0}, Lcom/google/android/gm/WaitActivity;->verifyAccountValidity(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/WaitActivity$AccountValidityCallback;)V

    .line 276
    return-void
.end method

.method private waitForGmailAccount()V
    .locals 3

    .prologue
    .line 286
    move-object v1, p0

    .line 287
    .local v1, activity:Landroid/app/Activity;
    new-instance v0, Lcom/google/android/gm/AccountHelper;

    invoke-direct {v0, p0}, Lcom/google/android/gm/AccountHelper;-><init>(Lcom/google/android/gm/RestrictedActivity;)V

    .line 288
    .local v0, accountHelper:Lcom/google/android/gm/AccountHelper;
    new-instance v2, Lcom/google/android/gm/WaitActivity$4;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gm/WaitActivity$4;-><init>(Lcom/google/android/gm/WaitActivity;Landroid/app/Activity;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gm/AccountHelper;->asyncGetAccountsInfo(Lcom/google/android/gm/AccountHelper$AccountResultsCallback;)V

    .line 313
    return-void
.end method

.method private waitForLabels(Ljava/lang/String;)V
    .locals 6
    .parameter "accountName"

    .prologue
    const/4 v5, -0x1

    .line 407
    new-instance v2, Landroid/accounts/Account;

    const-string v3, "com.google"

    invoke-direct {v2, p1, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/google/android/gm/WaitActivity;->sCurrentAccount:Landroid/accounts/Account;

    .line 409
    invoke-direct {p0}, Lcom/google/android/gm/WaitActivity;->restartStatusLoader()V

    .line 411
    sget-object v2, Lcom/google/android/gm/WaitActivity;->sCurrentAccount:Landroid/accounts/Account;

    const-string v3, "gmail-ls"

    invoke-static {v2, v3}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 412
    iget-boolean v2, p0, Lcom/google/android/gm/WaitActivity;->mCalledFromSettings:Z

    if-eqz v2, :cond_1

    .line 413
    const v2, 0x7f040056

    invoke-virtual {p0, v2}, Lcom/google/android/gm/WaitActivity;->setContentView(I)V

    .line 414
    sget-object v2, Lcom/google/android/gm/WaitActivity$WaitMode;->WAIT_FOR_SETTINGS:Lcom/google/android/gm/WaitActivity$WaitMode;

    iput-object v2, p0, Lcom/google/android/gm/WaitActivity;->mWaitMode:Lcom/google/android/gm/WaitActivity$WaitMode;

    .line 426
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gm/WaitActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 427
    .local v1, actionBar:Landroid/app/ActionBar;
    if-eqz v1, :cond_0

    .line 428
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040032

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/gm/ActionBarView;

    iput-object v2, p0, Lcom/google/android/gm/WaitActivity;->mActionBarView:Lcom/google/android/gm/ActionBarView;

    .line 430
    iget-object v2, p0, Lcom/google/android/gm/WaitActivity;->mActionBarView:Lcom/google/android/gm/ActionBarView;

    new-instance v3, Lcom/google/android/gm/ViewMode;

    invoke-direct {v3, p0}, Lcom/google/android/gm/ViewMode;-><init>(Landroid/content/Context;)V

    invoke-interface {v2, p0, p0, v3, v1}, Lcom/google/android/gm/ActionBarView;->initialize(Lcom/google/android/gm/RestrictedActivity;Lcom/google/android/gm/BaseGmailActionBar$Callback;Lcom/google/android/gm/ViewMode;Landroid/app/ActionBar;)V

    .line 432
    iget-object v2, p0, Lcom/google/android/gm/WaitActivity;->mActionBarView:Lcom/google/android/gm/ActionBarView;

    check-cast v2, Landroid/widget/LinearLayout;

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 434
    const/16 v2, 0x10

    const/16 v3, 0x18

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 436
    iget-object v2, p0, Lcom/google/android/gm/WaitActivity;->mActionBarView:Lcom/google/android/gm/ActionBarView;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/google/android/gm/ActionBarView;->setMode(I)Z

    .line 437
    iget-object v2, p0, Lcom/google/android/gm/WaitActivity;->mActionBarView:Lcom/google/android/gm/ActionBarView;

    invoke-interface {v2}, Lcom/google/android/gm/ActionBarView;->prepareOptionsMenu()V

    .line 438
    iget-object v2, p0, Lcom/google/android/gm/WaitActivity;->mActionBarView:Lcom/google/android/gm/ActionBarView;

    invoke-interface {v2}, Lcom/google/android/gm/ActionBarView;->setActionBarIconNormal()V

    .line 441
    new-instance v0, Lcom/google/android/gm/AccountHelper;

    invoke-direct {v0, p0}, Lcom/google/android/gm/AccountHelper;-><init>(Lcom/google/android/gm/RestrictedActivity;)V

    .line 442
    .local v0, accountHelper:Lcom/google/android/gm/AccountHelper;
    new-instance v2, Lcom/google/android/gm/WaitActivity$5;

    invoke-direct {v2, p0}, Lcom/google/android/gm/WaitActivity$5;-><init>(Lcom/google/android/gm/WaitActivity;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gm/AccountHelper;->asyncGetAccountsInfo(Lcom/google/android/gm/AccountHelper$AccountResultsCallback;)V

    .line 471
    .end local v0           #accountHelper:Lcom/google/android/gm/AccountHelper;
    :cond_0
    invoke-static {p1}, Lcom/google/android/gm/Utils;->startSync(Ljava/lang/String;)V

    .line 472
    return-void

    .line 416
    .end local v1           #actionBar:Landroid/app/ActionBar;
    :cond_1
    const v2, 0x7f040057

    invoke-virtual {p0, v2}, Lcom/google/android/gm/WaitActivity;->setContentView(I)V

    .line 417
    sget-object v2, Lcom/google/android/gm/WaitActivity$WaitMode;->WAIT_FOR_SYNC:Lcom/google/android/gm/WaitActivity$WaitMode;

    iput-object v2, p0, Lcom/google/android/gm/WaitActivity;->mWaitMode:Lcom/google/android/gm/WaitActivity$WaitMode;

    goto :goto_0

    .line 420
    :cond_2
    const v2, 0x7f040055

    invoke-virtual {p0, v2}, Lcom/google/android/gm/WaitActivity;->setContentView(I)V

    .line 421
    sget-object v2, Lcom/google/android/gm/WaitActivity$WaitMode;->WAIT_FOR_MANUAL_SYNC:Lcom/google/android/gm/WaitActivity$WaitMode;

    iput-object v2, p0, Lcom/google/android/gm/WaitActivity;->mWaitMode:Lcom/google/android/gm/WaitActivity$WaitMode;

    .line 422
    const v2, 0x7f0f00cc

    invoke-virtual {p0, v2}, Lcom/google/android/gm/WaitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 423
    const v2, 0x7f0f00cb

    invoke-virtual {p0, v2}, Lcom/google/android/gm/WaitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public static waitIfNeededAndGetAccount(Lcom/google/android/gm/RestrictedActivity;)Ljava/lang/String;
    .locals 8
    .parameter "activity"

    .prologue
    const/4 v5, 0x0

    .line 107
    invoke-interface {p0}, Lcom/google/android/gm/RestrictedActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 109
    .local v1, context:Landroid/content/Context;
    const/4 v0, 0x0

    .line 110
    .local v0, account:Ljava/lang/String;
    const-string v6, "WA.waitIfNeeded"

    invoke-static {v6}, Lcom/google/android/gm/perf/Timer;->startTiming(Ljava/lang/String;)V

    .line 112
    sget-object v6, Lcom/google/android/gm/WaitActivity;->sNewAccount:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 113
    sget-object v4, Lcom/google/android/gm/WaitActivity;->sNewAccount:Ljava/lang/String;

    .line 116
    .local v4, result:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/gm/persistence/Persistence;->getInstance()Lcom/google/android/gm/persistence/Persistence;

    move-result-object v6

    invoke-virtual {v6, v1, v4}, Lcom/google/android/gm/persistence/Persistence;->setActiveAccount(Landroid/content/Context;Ljava/lang/String;)V

    .line 117
    sput-object v5, Lcom/google/android/gm/WaitActivity;->sNewAccount:Ljava/lang/String;

    .line 118
    move-object v0, v4

    .line 121
    .end local v4           #result:Ljava/lang/String;
    :cond_0
    invoke-static {v1, v0}, Lcom/google/android/gm/WaitActivity;->isAccountOk(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 124
    const-string v6, "android.intent.action.SEND"

    invoke-interface {p0}, Lcom/google/android/gm/RestrictedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 125
    invoke-interface {p0}, Lcom/google/android/gm/RestrictedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 126
    .local v2, data:Landroid/net/Uri;
    if-eqz v2, :cond_1

    .line 127
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 131
    .end local v2           #data:Landroid/net/Uri;
    :cond_1
    invoke-static {v1, v0}, Lcom/google/android/gm/WaitActivity;->isAccountOk(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 132
    invoke-interface {p0}, Lcom/google/android/gm/RestrictedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 133
    .local v3, extras:Landroid/os/Bundle;
    if-eqz v3, :cond_4

    const-string v5, "account"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    .end local v3           #extras:Landroid/os/Bundle;
    :cond_2
    :goto_0
    invoke-static {v1, v0}, Lcom/google/android/gm/WaitActivity;->isAccountOk(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 137
    invoke-static {}, Lcom/google/android/gm/persistence/Persistence;->getInstance()Lcom/google/android/gm/persistence/Persistence;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/google/android/gm/persistence/Persistence;->getActiveAccount(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 140
    :cond_3
    const/4 v5, 0x0

    invoke-static {p0, v0, v5}, Lcom/google/android/gm/WaitActivity;->waitForAccountIfNeeded(Lcom/google/android/gm/RestrictedActivity;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 141
    const-string v5, "WA.waitIfNeeded"

    invoke-static {v5}, Lcom/google/android/gm/perf/Timer;->stopTiming(Ljava/lang/String;)V

    .line 142
    return-object v0

    .restart local v3       #extras:Landroid/os/Bundle;
    :cond_4
    move-object v0, v5

    .line 133
    goto :goto_0
.end method

.method private static wrapIntentForClass(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter "intent"
    .parameter "context"
    .parameter
    .parameter "account"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 534
    .local p2, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 535
    .local v0, activityIntent:Landroid/content/Intent;
    const-string v2, "account"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 538
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 539
    .local v1, waitIntent:Landroid/content/Intent;
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 540
    const-string v2, "wrappedIntent"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 541
    const-string v2, "account"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 542
    return-object v1
.end method


# virtual methods
.method public exitSearchMode()V
    .locals 0

    .prologue
    .line 608
    return-void
.end method

.method public getCurrentAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 618
    sget-object v0, Lcom/google/android/gm/WaitActivity;->sCurrentAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentListContext()Lcom/google/android/gm/ConversationListContext;
    .locals 1

    .prologue
    .line 623
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHelpContext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 598
    const-string v0, "gm_wait"

    return-object v0
.end method

.method public navigateToAccount(Ljava/lang/String;)Z
    .locals 1
    .parameter "account"

    .prologue
    .line 629
    sget-object v0, Lcom/google/android/gm/WaitActivity;->sCurrentAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 630
    invoke-static {}, Lcom/google/android/gm/persistence/Persistence;->getInstance()Lcom/google/android/gm/persistence/Persistence;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gm/persistence/Persistence;->setActiveAccount(Landroid/content/Context;Ljava/lang/String;)V

    .line 631
    invoke-direct {p0, p1}, Lcom/google/android/gm/WaitActivity;->startWaitActivityWithNewAccount(Ljava/lang/String;)V

    .line 632
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gm/WaitActivity;->sCurrentAccount:Landroid/accounts/Account;

    .line 633
    const/4 v0, 0x1

    .line 635
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public navigateToLabel(Ljava/lang/String;)V
    .locals 0
    .parameter "labelCanonicalName"

    .prologue
    .line 641
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 578
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 591
    :cond_0
    :goto_0
    return-void

    .line 580
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SYNC_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 581
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 582
    invoke-virtual {p0, v0}, Lcom/google/android/gm/WaitActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 585
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_1
    sget-object v1, Lcom/google/android/gm/WaitActivity;->sCurrentAccount:Landroid/accounts/Account;

    if-eqz v1, :cond_0

    .line 586
    sget-object v1, Lcom/google/android/gm/WaitActivity;->sCurrentAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gm/Utils;->startSync(Ljava/lang/String;)V

    .line 587
    const v1, 0x7f040057

    invoke-virtual {p0, v1}, Lcom/google/android/gm/WaitActivity;->setContentView(I)V

    goto :goto_0

    .line 578
    :pswitch_data_0
    .packed-switch 0x7f0f00cb
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 191
    invoke-super {p0, p1}, Lcom/google/android/gm/GmailBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 192
    invoke-virtual {p0}, Lcom/google/android/gm/WaitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 193
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "account"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, account:Ljava/lang/String;
    const-string v3, "awaitingSettings"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/gm/WaitActivity;->mCalledFromSettings:Z

    .line 198
    const v3, 0x7f04002b

    invoke-virtual {p0, v3}, Lcom/google/android/gm/WaitActivity;->setContentView(I)V

    .line 199
    if-nez p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-direct {p0, v0, v2}, Lcom/google/android/gm/WaitActivity;->waitForAccounts(Ljava/lang/String;Z)V

    .line 201
    sget v2, Lcom/google/android/gm/WaitActivity;->sShowWaitActivityMessageDelay:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 202
    invoke-virtual {p0}, Lcom/google/android/gm/WaitActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090021

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/google/android/gm/WaitActivity;->sShowWaitActivityMessageDelay:I

    .line 205
    :cond_1
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 8
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 317
    const-string v0, "account"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 318
    .local v7, account:Ljava/lang/String;
    new-instance v0, Landroid/content/CursorLoader;

    invoke-static {v7}, Lcom/google/android/gm/provider/Gmail;->getStatusUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object v1, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 6
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/4 v4, 0x0

    .line 323
    if-nez p2, :cond_1

    .line 324
    const-string v2, "Gmail"

    const-string v3, "statusCursor is null"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 328
    :cond_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 329
    const-string v2, "account"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, account:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v2

    if-nez v2, :cond_7

    .line 332
    sget-object v2, Lcom/google/android/gm/WaitActivity;->sCurrentAccount:Landroid/accounts/Account;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/google/android/gm/WaitActivity;->sCurrentAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 334
    :cond_2
    invoke-direct {p0, v4}, Lcom/google/android/gm/WaitActivity;->stopStatusCursorLoader(I)V

    goto :goto_0

    .line 336
    :cond_3
    invoke-static {p2}, Lcom/google/android/gm/WaitActivity;->areLabelsSynced(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 337
    sget-object v2, Lcom/google/android/gm/WaitActivity;->sCurrentAccount:Landroid/accounts/Account;

    if-eqz v2, :cond_4

    .line 338
    invoke-direct {p0, v0}, Lcom/google/android/gm/WaitActivity;->startOriginalActivityWithSelectedAccount(Ljava/lang/String;)V

    .line 339
    const/4 v2, 0x0

    sput-object v2, Lcom/google/android/gm/WaitActivity;->sCurrentAccount:Landroid/accounts/Account;

    .line 343
    :goto_1
    invoke-direct {p0, v4}, Lcom/google/android/gm/WaitActivity;->stopStatusCursorLoader(I)V

    goto :goto_0

    .line 341
    :cond_4
    invoke-direct {p0}, Lcom/google/android/gm/WaitActivity;->startOriginalActivityAndFinish()V

    goto :goto_1

    .line 344
    :cond_5
    iget-object v2, p0, Lcom/google/android/gm/WaitActivity;->mWaitMode:Lcom/google/android/gm/WaitActivity$WaitMode;

    sget-object v3, Lcom/google/android/gm/WaitActivity$WaitMode;->WAIT_FOR_SYNC:Lcom/google/android/gm/WaitActivity$WaitMode;

    if-ne v2, v3, :cond_0

    .line 345
    invoke-static {p2}, Lcom/google/android/gm/WaitActivity;->isLabelStatusInitialized(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 348
    invoke-direct {p0}, Lcom/google/android/gm/WaitActivity;->showWaitingToSyncMessage()V

    goto :goto_0

    .line 349
    :cond_6
    iget-boolean v2, p0, Lcom/google/android/gm/WaitActivity;->mScheduledRunnable:Z

    if-nez v2, :cond_0

    .line 354
    invoke-virtual {p0}, Lcom/google/android/gm/WaitActivity;->getUiHandler()Lcom/google/android/gm/UiHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gm/WaitActivity;->mShowWaitingToSyncRunnable:Ljava/lang/Runnable;

    sget v4, Lcom/google/android/gm/WaitActivity;->sShowWaitActivityMessageDelay:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gm/UiHandler;->postDelayed(Ljava/lang/Runnable;J)V

    .line 356
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gm/WaitActivity;->mScheduledRunnable:Z

    goto :goto_0

    .line 362
    :cond_7
    const-string v2, "status"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 364
    .local v1, status:I
    if-eqz v0, :cond_0

    .line 365
    iget-object v2, p0, Lcom/google/android/gm/WaitActivity;->mActionBarView:Lcom/google/android/gm/ActionBarView;

    invoke-interface {v2, v0, v1}, Lcom/google/android/gm/ActionBarView;->onStatusResult(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gm/WaitActivity;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 380
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 561
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 571
    invoke-static {p1, p0, p0}, Lcom/google/android/gm/ApplicationMenuHandler;->handleApplicationMenu(Landroid/view/MenuItem;Landroid/content/Context;Lcom/google/android/gm/MenuHandler$HelpCallback;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-super {p0, p1}, Lcom/google/android/gm/GmailBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    .line 563
    :sswitch_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/gm/MailboxSelectionActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gm/WaitActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 566
    :sswitch_1
    sget-object v1, Lcom/google/android/gm/WaitActivity;->sCurrentAccount:Landroid/accounts/Account;

    if-eqz v1, :cond_0

    .line 567
    sget-object v1, Lcom/google/android/gm/WaitActivity;->sCurrentAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gm/Utils;->startSync(Ljava/lang/String;)V

    goto :goto_0

    .line 571
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 561
    :sswitch_data_0
    .sparse-switch
        0x7f0f00f5 -> :sswitch_1
        0x7f0f00fa -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 218
    invoke-super {p0}, Lcom/google/android/gm/GmailBaseActivity;->onPause()V

    .line 219
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gm/WaitActivity;->stopStatusCursorLoader(I)V

    .line 220
    iget-object v0, p0, Lcom/google/android/gm/WaitActivity;->mActionBarView:Lcom/google/android/gm/ActionBarView;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/google/android/gm/WaitActivity;->mActionBarView:Lcom/google/android/gm/ActionBarView;

    invoke-interface {v0}, Lcom/google/android/gm/ActionBarView;->onPause()V

    .line 223
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 554
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 555
    invoke-virtual {p0}, Lcom/google/android/gm/WaitActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f12000a

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 556
    invoke-super {p0, p1}, Lcom/google/android/gm/GmailBaseActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 209
    invoke-super {p0}, Lcom/google/android/gm/GmailBaseActivity;->onResume()V

    .line 210
    invoke-direct {p0}, Lcom/google/android/gm/WaitActivity;->restartStatusLoader()V

    .line 211
    iget-object v0, p0, Lcom/google/android/gm/WaitActivity;->mActionBarView:Lcom/google/android/gm/ActionBarView;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/google/android/gm/WaitActivity;->mActionBarView:Lcom/google/android/gm/ActionBarView;

    invoke-interface {v0}, Lcom/google/android/gm/ActionBarView;->onResume()V

    .line 214
    :cond_0
    return-void
.end method

.method public reloadSearch(Ljava/lang/String;)V
    .locals 0
    .parameter "query"

    .prologue
    .line 614
    return-void
.end method

.method public showLabelList()V
    .locals 0

    .prologue
    .line 646
    return-void
.end method

.method public startActionBarStatusCursorLoader(Ljava/lang/String;)V
    .locals 3
    .parameter "account"

    .prologue
    .line 650
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 651
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "account"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/lit8 v1, v2, 0x1

    .line 653
    .local v1, loaderId:I
    invoke-direct {p0, v1, v0}, Lcom/google/android/gm/WaitActivity;->startStatusCursorLoader(ILandroid/os/Bundle;)V

    .line 654
    return-void
.end method

.method public stopActionBarStatusCursorLoader(Ljava/lang/String;)V
    .locals 2
    .parameter "account"

    .prologue
    .line 658
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/lit8 v0, v1, 0x1

    .line 659
    .local v0, loaderId:I
    invoke-direct {p0, v0}, Lcom/google/android/gm/WaitActivity;->stopStatusCursorLoader(I)V

    .line 660
    return-void
.end method
