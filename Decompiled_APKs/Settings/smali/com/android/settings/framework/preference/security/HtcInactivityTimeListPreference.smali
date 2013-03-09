.class public final Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;
.super Lcom/htc/preference/HtcListPreference;
.source "HtcInactivityTimeListPreference.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnResumeListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnPauseListener;


# static fields
.field private static final DEFAULT_INACTIVITY_TIME_VALUE:I = 0x12c

.field public static final KEY:Ljava/lang/String; = "INACTIVITY_TIME"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private DISPATCH_VALUE_ACTION:Ljava/lang/String;

.field private KEY_SELECTED_VALUE:Ljava/lang/String;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mInitialized:Z

.field private mPolicyManager:Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;

.field private mRegistered:Z

.field private mTimeValueList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcListPreference;-><init>(Landroid/content/Context;)V

    .line 59
    iput-boolean v0, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->mInitialized:Z

    .line 498
    iput-boolean v0, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->mRegistered:Z

    .line 499
    const-string v0, "com.android.settings.framework.preference.action.DISPATCH_VALUE_ACTION"

    iput-object v0, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->DISPATCH_VALUE_ACTION:Ljava/lang/String;

    .line 501
    const-string v0, "selected_value"

    iput-object v0, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->KEY_SELECTED_VALUE:Ljava/lang/String;

    .line 526
    new-instance v0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference$1;-><init>(Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 76
    invoke-direct {p0}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->preIntialize()V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    iput-boolean v0, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->mInitialized:Z

    .line 498
    iput-boolean v0, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->mRegistered:Z

    .line 499
    const-string v0, "com.android.settings.framework.preference.action.DISPATCH_VALUE_ACTION"

    iput-object v0, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->DISPATCH_VALUE_ACTION:Ljava/lang/String;

    .line 501
    const-string v0, "selected_value"

    iput-object v0, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->KEY_SELECTED_VALUE:Ljava/lang/String;

    .line 526
    new-instance v0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference$1;-><init>(Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 85
    invoke-direct {p0}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->preIntialize()V

    .line 86
    return-void
.end method

.method private Log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 489
    sget-object v0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->KEY_SELECTED_VALUE:Ljava/lang/String;

    return-object v0
.end method

.method private preIntialize()V
    .locals 1

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 114
    const-string v0, "INACTIVITY_TIME"

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->setKey(Ljava/lang/String;)V

    .line 119
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->registerReceiver()V

    .line 120
    return-void
.end method

.method private registerReceiver()V
    .locals 4

    .prologue
    .line 504
    iget-boolean v0, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 513
    :goto_0
    return-void

    .line 507
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->mRegistered:Z

    .line 511
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    iget-object v3, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->DISPATCH_VALUE_ACTION:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private unregisterReceiver()V
    .locals 2

    .prologue
    .line 516
    iget-boolean v0, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->mRegistered:Z

    if-nez v0, :cond_0

    .line 524
    :goto_0
    return-void

    .line 519
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->mRegistered:Z

    .line 523
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->unregisterReceiver()V

    .line 90
    return-void
.end method

.method protected getEntryText(I)Ljava/lang/String;
    .locals 7
    .parameter "milliseconds"

    .prologue
    .line 447
    packed-switch p1, :pswitch_data_0

    .line 458
    div-int/lit16 v1, p1, 0x3e8

    .line 460
    .local v1, seconds:I
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/settings/framework/util/HtcFormatter;->formatTime(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 461
    .local v2, time:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c00c8

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 464
    .end local v1           #seconds:I
    .end local v2           #time:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 450
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c00c7

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 454
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c00c9

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 447
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getSummaryText(I)Ljava/lang/CharSequence;
    .locals 7
    .parameter "milliseconds"

    .prologue
    .line 473
    div-int/lit16 v0, p1, 0x3e8

    .line 477
    .local v0, seconds:I
    if-gtz v0, :cond_0

    .line 478
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    .line 485
    :goto_0
    return-object v1

    .line 481
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/android/settings/framework/util/HtcFormatter;->formatTime(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 482
    .local v2, time:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c00c6

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 485
    .local v1, summary:Ljava/lang/String;
    goto :goto_0
.end method

.method protected initialize()V
    .locals 1

    .prologue
    const v0, 0x7f0c00c5

    .line 125
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->setTitle(I)V

    .line 126
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->setDialogTitle(I)V

    .line 131
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->setPersistent(Z)V

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->step1_loadTimeValueList()V

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->step2_applyExchangePolicy()V

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->step3_bindData()V

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->step4_bindDefaultOption()V

    .line 137
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->mInitialized:Z

    if-nez v0, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->initialize()V

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->mInitialized:Z

    .line 104
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/preference/HtcListPreference;->onBindView(Landroid/view/View;)V

    .line 105
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 550
    invoke-direct {p0}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->unregisterReceiver()V

    .line 551
    return-void
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 9
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v6, -0x1

    .line 364
    move-object v5, p2

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v4

    .line 367
    .local v4, which:I
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 370
    .local v2, selectedValue:I
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->setValue(Ljava/lang/String;)V

    .line 372
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->getSummaryText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 376
    .local v3, summary:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->mPolicyManager:Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;

    invoke-virtual {v5}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;->hasPolicy()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 377
    iget-object v5, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->mPolicyManager:Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;

    invoke-virtual {v5}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;->getIndexOfPolicyItem()I

    move-result v0

    .line 380
    .local v0, indexOfPolicyItem:I
    if-ne v4, v0, :cond_0

    .line 382
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->mPolicyManager:Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;

    invoke-virtual {v7}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;->getPolicyHintText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 385
    .end local v0           #indexOfPolicyItem:I
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 401
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "inactivity_time"

    if-ne v2, v6, :cond_3

    move v5, v6

    :goto_0
    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 406
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "lock_screen_lock_after_timeout"

    if-ne v2, v6, :cond_4

    move v5, v6

    :goto_1
    invoke-static {v7, v8, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 416
    iget-object v5, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->mPolicyManager:Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;

    invoke-virtual {v5}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;->getIndexOfPolicyItem()I

    move-result v5

    if-ne v4, v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->mPolicyManager:Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;

    invoke-virtual {v5}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;->isInsertionMode()Z

    move-result v5

    if-nez v5, :cond_2

    .line 419
    :cond_1
    const-string v5, "inactivity_time"

    if-ne v2, v6, :cond_5

    :goto_2
    invoke-static {p0, v5, v6}, Lcom/android/settings/framework/storage/HtcStorage$Local;->putInt(Lcom/htc/preference/HtcPreference;Ljava/lang/String;I)V

    .line 430
    :cond_2
    new-instance v1, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->DISPATCH_VALUE_ACTION:Ljava/lang/String;

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 431
    .local v1, resultIntent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->KEY_SELECTED_VALUE:Ljava/lang/String;

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 432
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 437
    const/4 v5, 0x1

    return v5

    .line 401
    .end local v1           #resultIntent:Landroid/content/Intent;
    :cond_3
    div-int/lit16 v5, v2, 0x3e8

    goto :goto_0

    :cond_4
    move v5, v2

    .line 406
    goto :goto_1

    .line 419
    :cond_5
    div-int/lit16 v6, v2, 0x3e8

    goto :goto_2
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 555
    invoke-direct {p0}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->registerReceiver()V

    .line 556
    return-void
.end method

.method protected step1_loadTimeValueList()V
    .locals 2

    .prologue
    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/framework/storage/customize/HtcCustomizedInactivityTime;->getEntries(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->mTimeValueList:Ljava/util/ArrayList;

    .line 161
    return-void
.end method

.method protected step2_applyExchangePolicy()V
    .locals 6

    .prologue
    .line 172
    new-instance v3, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;

    invoke-direct {v3}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;-><init>()V

    iput-object v3, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->mPolicyManager:Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;

    .line 174
    iget-object v3, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->mPolicyManager:Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->mTimeValueList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;->applyGooglePolicy(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 178
    iget-object v3, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->mPolicyManager:Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;

    invoke-virtual {v3}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;->hasPolicy()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 179
    iget-object v3, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->mPolicyManager:Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;

    invoke-virtual {v3}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;->getIndexOfPolicyItem()I

    move-result v1

    .line 181
    .local v1, indexOfPolicyItem:I
    new-instance v2, Ljava/util/ArrayList;

    add-int/lit8 v3, v1, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 184
    .local v2, newTimeValueList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-gt v0, v1, :cond_0

    .line 185
    iget-object v3, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->mTimeValueList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 187
    :cond_0
    iput-object v2, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->mTimeValueList:Ljava/util/ArrayList;

    .line 197
    .end local v0           #i:I
    .end local v1           #indexOfPolicyItem:I
    .end local v2           #newTimeValueList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    return-void
.end method

.method protected step3_bindData()V
    .locals 7

    .prologue
    .line 207
    iget-object v5, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->mTimeValueList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 210
    .local v3, size:I
    new-array v0, v3, [Ljava/lang/String;

    .line 211
    .local v0, entries:[Ljava/lang/String;
    new-array v4, v3, [Ljava/lang/String;

    .line 215
    .local v4, values:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 216
    iget-object v5, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->mTimeValueList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->getEntryText(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v1

    .line 217
    iget-object v5, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->mTimeValueList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 215
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 222
    :cond_0
    iget-object v5, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->mPolicyManager:Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;

    invoke-virtual {v5}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;->hasPolicy()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 223
    iget-object v5, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->mPolicyManager:Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;

    invoke-virtual {v5}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;->getIndexOfPolicyItem()I

    move-result v2

    .line 227
    .local v2, indexOfPolicyItem:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v0, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->mPolicyManager:Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;

    invoke-virtual {v6}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;->getPolicyHintText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v2

    .line 239
    .end local v2           #indexOfPolicyItem:I
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 240
    invoke-virtual {p0, v4}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 241
    invoke-virtual {p0, p0}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 249
    return-void
.end method

.method protected step4_bindDefaultOption()V
    .locals 7

    .prologue
    const/16 v6, 0x12c

    const/4 v3, -0x1

    .line 262
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "inactivity_time"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 267
    .local v0, defaultValue:I
    if-ne v0, v3, :cond_2

    move v0, v3

    .line 271
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 286
    .local v1, findIndex:I
    if-ne v1, v3, :cond_0

    .line 290
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "inactivity_time"

    invoke-static {v4, v5, v6}, Lcom/android/settings/framework/storage/HtcStorage$Local;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 295
    if-ne v0, v3, :cond_3

    move v0, v3

    .line 298
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "inactivity_time"

    if-ne v0, v3, :cond_4

    move v4, v3

    :goto_2
    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 304
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lock_screen_lock_after_timeout"

    if-ne v0, v3, :cond_5

    move v4, v3

    :goto_3
    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 319
    :cond_0
    iget-object v4, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->mPolicyManager:Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;

    invoke-virtual {v4}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;->hasPolicy()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 320
    iget-object v4, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->mPolicyManager:Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;

    invoke-virtual {v4}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutPolicyManager;->getIndexOfPolicyItem()I

    move-result v2

    .line 324
    .local v2, indexOfPolicyItem:I
    if-ne v0, v3, :cond_6

    .line 329
    iget-object v3, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->mTimeValueList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 349
    .end local v2           #indexOfPolicyItem:I
    :cond_1
    :goto_4
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->setValue(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->getSummaryText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 356
    return-void

    .line 267
    .end local v1           #findIndex:I
    :cond_2
    mul-int/lit16 v0, v0, 0x3e8

    goto :goto_0

    .line 295
    .restart local v1       #findIndex:I
    :cond_3
    mul-int/lit16 v0, v0, 0x3e8

    goto :goto_1

    .line 298
    :cond_4
    div-int/lit16 v4, v0, 0x3e8

    goto :goto_2

    :cond_5
    move v4, v0

    .line 304
    goto :goto_3

    .line 334
    .restart local v2       #indexOfPolicyItem:I
    :cond_6
    iget-object v3, p0, Lcom/android/settings/framework/preference/security/HtcInactivityTimeListPreference;->mTimeValueList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_4
.end method
