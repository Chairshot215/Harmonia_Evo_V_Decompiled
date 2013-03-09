.class public Lcom/google/android/gsf/update/SystemUpdateInstallDialog;
.super Landroid/app/Activity;
.source "SystemUpdateInstallDialog.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field static volatile sIsDialogUp:Z


# instance fields
.field private mButtonClicked:Z

.field private mCountdownEnd:J

.field private mCountdownStopTime:J

.field private mCountdownUrl:Ljava/lang/String;

.field private mDefaultListener:Landroid/view/View$OnClickListener;

.field private mDialogTimeoutAction:Ljava/lang/Runnable;

.field private mDialogTimeoutPending:Z

.field private mHandler:Landroid/os/Handler;

.field private mLastBatteryState:I

.field private mMessage:Landroid/widget/TextView;

.field private mScreenReceiver:Landroid/content/BroadcastReceiver;

.field private mSharedPrefs:Landroid/content/SharedPreferences;

.field private mWatcher:Lcom/google/android/gsf/update/StateWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->sIsDialogUp:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 50
    iput-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 53
    iput-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mWatcher:Lcom/google/android/gsf/update/StateWatcher;

    .line 75
    iput-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mCountdownUrl:Ljava/lang/String;

    .line 79
    new-instance v0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog$1;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog$1;-><init>(Lcom/google/android/gsf/update/SystemUpdateInstallDialog;)V

    iput-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    .line 92
    new-instance v0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog$2;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog$2;-><init>(Lcom/google/android/gsf/update/SystemUpdateInstallDialog;)V

    iput-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mDefaultListener:Landroid/view/View$OnClickListener;

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mDialogTimeoutPending:Z

    .line 101
    new-instance v0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog$3;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog$3;-><init>(Lcom/google/android/gsf/update/SystemUpdateInstallDialog;)V

    iput-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mDialogTimeoutAction:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gsf/update/SystemUpdateInstallDialog;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mCountdownEnd:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/google/android/gsf/update/SystemUpdateInstallDialog;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mCountdownStopTime:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/google/android/gsf/update/SystemUpdateInstallDialog;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->updateCountdownMessage(J)V

    return-void
.end method

.method static synthetic access$102(Lcom/google/android/gsf/update/SystemUpdateInstallDialog;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-wide p1, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mCountdownStopTime:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/google/android/gsf/update/SystemUpdateInstallDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->startUpdate()V

    return-void
.end method

.method static synthetic access$302(Lcom/google/android/gsf/update/SystemUpdateInstallDialog;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mButtonClicked:Z

    return p1
.end method

.method static synthetic access$400(Lcom/google/android/gsf/update/SystemUpdateInstallDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->startCountdown()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/gsf/update/SystemUpdateInstallDialog;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mDialogTimeoutPending:Z

    return v0
.end method

.method static synthetic access$502(Lcom/google/android/gsf/update/SystemUpdateInstallDialog;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mDialogTimeoutPending:Z

    return p1
.end method

.method static synthetic access$600(Lcom/google/android/gsf/update/SystemUpdateInstallDialog;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->refreshStatus(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/gsf/update/SystemUpdateInstallDialog;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->reschedule(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/gsf/update/SystemUpdateInstallDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->stopCountdown()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/gsf/update/SystemUpdateInstallDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->startDialogTimeout()V

    return-void
.end method

.method private refreshStatus(Z)V
    .locals 10
    .parameter "forceRefresh"

    .prologue
    const-wide/16 v8, 0x0

    const v7, 0x7f0d0033

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 441
    iget-object v5, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mWatcher:Lcom/google/android/gsf/update/StateWatcher;

    invoke-virtual {v5}, Lcom/google/android/gsf/update/StateWatcher;->getBatteryState()I

    move-result v0

    .line 443
    .local v0, batteryState:I
    if-nez p1, :cond_1

    iget v5, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mLastBatteryState:I

    if-ne v0, v5, :cond_1

    .line 494
    :cond_0
    :goto_0
    return-void

    .line 446
    :cond_1
    iput v0, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mLastBatteryState:I

    .line 448
    iget-wide v5, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mCountdownEnd:J

    cmp-long v5, v5, v8

    if-gtz v5, :cond_0

    .line 457
    iget-object v5, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v6, "next_dialog"

    invoke-interface {v5, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v5, v5, v8

    if-nez v5, :cond_2

    move v1, v3

    .line 459
    .local v1, firstTime:Z
    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 484
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "update_dialog_message"

    invoke-static {v4, v5}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 486
    .local v2, message:Ljava/lang/CharSequence;
    if-nez v2, :cond_5

    .line 487
    invoke-direct {p0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->setDefaultMessage()V

    .line 491
    :goto_2
    invoke-virtual {p0, v7}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .end local v1           #firstTime:Z
    .end local v2           #message:Ljava/lang/CharSequence;
    :cond_2
    move v1, v4

    .line 457
    goto :goto_1

    .line 461
    .restart local v1       #firstTime:Z
    :pswitch_1
    if-nez v1, :cond_3

    .line 462
    const-string v4, "SystemUpdateInstallDialog"

    const-string v5, "battery too low; skipping"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    invoke-direct {p0, v3}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->reschedule(Z)V

    .line 464
    invoke-virtual {p0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->finish()V

    goto :goto_0

    .line 467
    :cond_3
    iget-object v3, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mMessage:Landroid/widget/TextView;

    const v5, 0x7f080027

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 469
    invoke-virtual {p0, v7}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 472
    :pswitch_2
    if-nez v1, :cond_4

    .line 473
    const-string v4, "SystemUpdateInstallDialog"

    const-string v5, "battery too low; skipping"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    invoke-direct {p0, v3}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->reschedule(Z)V

    .line 475
    invoke-virtual {p0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->finish()V

    goto :goto_0

    .line 478
    :cond_4
    iget-object v3, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mMessage:Landroid/widget/TextView;

    const v5, 0x7f080028

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 480
    invoke-virtual {p0, v7}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 489
    .restart local v2       #message:Ljava/lang/CharSequence;
    :cond_5
    iget-object v4, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 459
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private reschedule(Z)V
    .locals 7
    .parameter

    .prologue
    .line 286
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "next_dialog"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "status"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "update_install_reschedule_sec"

    const/16 v2, 0x708

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 297
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    int-to-long v5, v0

    mul-long/2addr v3, v5

    add-long v0, v1, v3

    .line 298
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "next_dialog"

    const-wide/16 v4, 0x7d0

    sub-long/2addr v0, v4

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 300
    if-eqz p1, :cond_0

    .line 303
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method private resumeCountdown()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 201
    const v1, 0x7f0d0033

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 202
    .local v0, b:Landroid/widget/Button;
    const v1, 0x7f080034

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 203
    new-instance v1, Lcom/google/android/gsf/update/SystemUpdateInstallDialog$7;

    invoke-direct {v1, p0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog$7;-><init>(Lcom/google/android/gsf/update/SystemUpdateInstallDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    const v1, 0x7f0d0031

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 218
    const v1, 0x7f0d0032

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 220
    iget-wide v1, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mCountdownEnd:J

    invoke-direct {p0, v1, v2}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->updateCountdownMessage(J)V

    .line 221
    return-void
.end method

.method private setDefaultMessage()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 497
    const/4 v3, 0x0

    .line 498
    .local v3, voiceCapable:Z
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 500
    .local v2, tm:Landroid/telephony/TelephonyManager;
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v6, "isVoiceCapable"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 501
    .local v0, m:Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 507
    .end local v0           #m:Ljava/lang/reflect/Method;
    :goto_0
    iget-object v5, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mMessage:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    const v4, 0x7f080026

    :goto_1
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(I)V

    .line 511
    return-void

    .line 502
    :catch_0
    move-exception v1

    .line 504
    .local v1, t:Ljava/lang/Throwable;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    :goto_2
    goto :goto_0

    :cond_0
    move v3, v5

    goto :goto_2

    .line 507
    .end local v1           #t:Ljava/lang/Throwable;
    :cond_1
    const v4, 0x7f080025

    goto :goto_1
.end method

.method private startCountdown()V
    .locals 4

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->stopDialogTimeout()V

    .line 188
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.server.checkin.CHECKIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->sendBroadcast(Landroid/content/Intent;)V

    .line 189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mCountdownEnd:J

    .line 190
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "url"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mCountdownUrl:Ljava/lang/String;

    .line 191
    invoke-direct {p0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->resumeCountdown()V

    .line 192
    return-void
.end method

.method private startDialogTimeout()V
    .locals 7

    .prologue
    .line 309
    iget-boolean v1, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mDialogTimeoutPending:Z

    if-eqz v1, :cond_1

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 312
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "update_install_dialog_timeout_sec"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 315
    .local v0, dialogTimeoutSec:I
    if-ltz v0, :cond_0

    .line 316
    const-string v1, "SystemUpdateInstallDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Install dialog will timeout in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " seconds."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mDialogTimeoutAction:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    int-to-long v5, v0

    mul-long/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 318
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mDialogTimeoutPending:Z

    goto :goto_0
.end method

.method private startUpdate()V
    .locals 3

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->finish()V

    .line 276
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "install_approved"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 279
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->sIsDialogUp:Z

    .line 280
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 281
    return-void
.end method

.method private stopCountdown()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 228
    iget-wide v1, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mCountdownEnd:J

    cmp-long v1, v1, v4

    if-eqz v1, :cond_0

    .line 229
    const v1, 0x3112a

    const-string v2, "install-countdown-cancel"

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 230
    iput-wide v4, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mCountdownEnd:J

    .line 231
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mCountdownStopTime:J

    .line 233
    :cond_0
    const v1, 0x7f0d0033

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 234
    .local v0, b:Landroid/widget/Button;
    const v1, 0x7f080029

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 235
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mDefaultListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    const v1, 0x7f0d0031

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 237
    const v1, 0x7f0d0032

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 238
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mCountdownUrl:Ljava/lang/String;

    .line 239
    return-void
.end method

.method private stopDialogTimeout()V
    .locals 2

    .prologue
    .line 323
    iget-boolean v0, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mDialogTimeoutPending:Z

    if-nez v0, :cond_0

    .line 328
    :goto_0
    return-void

    .line 326
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mDialogTimeoutPending:Z

    .line 327
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mDialogTimeoutAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private updateCountdownMessage(J)V
    .locals 11
    .parameter "endTime"

    .prologue
    const/4 v9, 0x1

    .line 247
    iget-wide v5, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mCountdownEnd:J

    cmp-long v5, p1, v5

    if-eqz v5, :cond_0

    .line 272
    :goto_0
    return-void

    .line 251
    :cond_0
    iget-object v5, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v6, "url"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 252
    .local v4, url:Ljava/lang/String;
    if-eqz v4, :cond_1

    iget-object v5, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mCountdownUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 253
    :cond_1
    const-string v5, "SystemUpdateInstallDialog"

    const-string v6, "URL changed during countdown; aborting"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-direct {p0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->stopCountdown()V

    .line 255
    invoke-direct {p0, v9}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->refreshStatus(Z)V

    goto :goto_0

    .line 259
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 260
    .local v1, now:J
    iget-wide v5, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mCountdownEnd:J

    cmp-long v5, v1, v5

    if-ltz v5, :cond_3

    .line 261
    invoke-direct {p0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->startUpdate()V

    goto :goto_0

    .line 263
    :cond_3
    iget-wide v5, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mCountdownEnd:J

    sub-long/2addr v5, v1

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    long-to-int v5, v5

    add-int/lit8 v3, v5, 0x1

    .line 264
    .local v3, secs:I
    iget-object v5, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mMessage:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/high16 v7, 0x7f0a

    new-array v8, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v3, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    iget-wide v5, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mCountdownEnd:J

    add-int/lit8 v7, v3, -0x1

    mul-int/lit16 v7, v7, 0x3e8

    int-to-long v7, v7

    sub-long/2addr v5, v7

    sub-long/2addr v5, v1

    long-to-int v0, v5

    .line 269
    .local v0, delay:I
    iget-object v5, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/google/android/gsf/update/SystemUpdateInstallDialog$8;

    invoke-direct {v6, p0, p1, p2}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog$8;-><init>(Lcom/google/android/gsf/update/SystemUpdateInstallDialog;J)V

    int-to-long v7, v0

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    .line 114
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 116
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mHandler:Landroid/os/Handler;

    .line 118
    const-string v1, "update"

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 121
    const v1, 0x7f03000d

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->setContentView(I)V

    .line 123
    const v1, 0x7f0d002c

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mMessage:Landroid/widget/TextView;

    .line 124
    invoke-direct {p0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->setDefaultMessage()V

    .line 126
    iput-boolean v2, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mButtonClicked:Z

    .line 128
    new-instance v1, Lcom/google/android/gsf/update/StateWatcher;

    new-instance v2, Lcom/google/android/gsf/update/SystemUpdateInstallDialog$4;

    invoke-direct {v2, p0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog$4;-><init>(Lcom/google/android/gsf/update/SystemUpdateInstallDialog;)V

    invoke-direct {v1, p0, v2}, Lcom/google/android/gsf/update/StateWatcher;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mWatcher:Lcom/google/android/gsf/update/StateWatcher;

    .line 134
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 135
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 138
    const v1, 0x7f0d0033

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mDefaultListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    const v1, 0x7f0d0031

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/google/android/gsf/update/SystemUpdateInstallDialog$5;

    invoke-direct {v2, p0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog$5;-><init>(Lcom/google/android/gsf/update/SystemUpdateInstallDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    const v1, 0x7f0d0032

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/google/android/gsf/update/SystemUpdateInstallDialog$6;

    invoke-direct {v2, p0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog$6;-><init>(Lcom/google/android/gsf/update/SystemUpdateInstallDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    if-eqz p1, :cond_0

    .line 166
    const-string v1, "countdown_end"

    invoke-virtual {p1, v1, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mCountdownEnd:J

    .line 167
    iput-wide v3, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mCountdownStopTime:J

    .line 168
    const-string v1, "countdown_url"

    invoke-virtual {p1, v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mCountdownUrl:Ljava/lang/String;

    .line 174
    :goto_0
    return-void

    .line 170
    :cond_0
    iput-wide v3, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mCountdownEnd:J

    .line 171
    iput-wide v3, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mCountdownStopTime:J

    .line 172
    iput-object v5, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mCountdownUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 178
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 179
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 180
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 412
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 413
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->setIntent(Landroid/content/Intent;)V

    .line 415
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "status"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 417
    invoke-virtual {p0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->finish()V

    .line 426
    :cond_0
    :goto_0
    return-void

    .line 421
    :cond_1
    sget-boolean v0, Lcom/google/android/gsf/update/SystemUpdateActivity;->sIsActivityUp:Z

    if-eqz v0, :cond_0

    .line 422
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->reschedule(Z)V

    .line 423
    invoke-virtual {p0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->finish()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 372
    invoke-direct {p0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->stopDialogTimeout()V

    .line 373
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 374
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 363
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 364
    invoke-virtual {p0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    :goto_0
    return-void

    .line 367
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->startDialogTimeout()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "out"

    .prologue
    .line 387
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 388
    const-string v0, "countdown_end"

    iget-wide v1, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mCountdownEnd:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 389
    const-string v0, "countdown_url"

    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mCountdownUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .parameter "sharedPrefs"
    .parameter "key"

    .prologue
    .line 429
    const-string v0, "status"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    new-instance v0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog$9;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog$9;-><init>(Lcom/google/android/gsf/update/SystemUpdateInstallDialog;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 436
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 7

    .prologue
    const v6, 0x3112a

    const/4 v5, 0x1

    .line 332
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 334
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mWatcher:Lcom/google/android/gsf/update/StateWatcher;

    invoke-virtual {v1}, Lcom/google/android/gsf/update/StateWatcher;->start()V

    .line 336
    invoke-virtual {p0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->onNewIntent(Landroid/content/Intent;)V

    .line 337
    invoke-virtual {p0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 342
    sput-boolean v5, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->sIsDialogUp:Z

    .line 343
    invoke-static {p0}, Lcom/google/android/gsf/update/SystemUpdateService;->cancelNotifications(Landroid/content/Context;)V

    .line 344
    invoke-direct {p0, v5}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->refreshStatus(Z)V

    .line 346
    iget-wide v1, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mCountdownEnd:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    .line 347
    const-string v1, "install-countdown-resume"

    invoke-static {v6, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 348
    invoke-direct {p0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->resumeCountdown()V

    .line 351
    :cond_2
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    .line 352
    .local v0, state:I
    if-eqz v0, :cond_0

    .line 353
    const-string v1, "SystemUpdateInstallDialog"

    const-string v2, "OTA update prompt postponed by phone call"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    const-string v1, "install-countdown-stop-phone"

    invoke-static {v6, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 355
    invoke-direct {p0, v5}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->reschedule(Z)V

    .line 356
    invoke-virtual {p0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->finish()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 394
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 396
    invoke-direct {p0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->stopCountdown()V

    .line 397
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mWatcher:Lcom/google/android/gsf/update/StateWatcher;

    invoke-virtual {v0}, Lcom/google/android/gsf/update/StateWatcher;->stop()V

    .line 398
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->sIsDialogUp:Z

    .line 399
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 401
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->reschedule(Z)V

    .line 402
    return-void
.end method

.method public onUserLeaveHint()V
    .locals 2

    .prologue
    .line 378
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 379
    iget-boolean v0, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mButtonClicked:Z

    if-nez v0, :cond_0

    .line 381
    const v0, 0x3112a

    const-string v1, "user-leave"

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 383
    :cond_0
    return-void
.end method
