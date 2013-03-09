.class public Lcom/htc/android/worldclock/TimerAlert;
.super Landroid/app/Activity;
.source "TimerAlert.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/worldclock/TimerAlert$IntentReceiver;
    }
.end annotation


# static fields
.field private static final REQUEST_ALERT:I = 0x0

.field public static final TIMERTYPE:Ljava/lang/String; = "timer_type"

.field public static final TIMER_NORMAL:I = 0x20

.field private static final TIMER_NOTIFICATION_ID:I = 0x6

.field public static final TIMER_SILENT:I = 0x21


# instance fields
.field private mDismissButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field private mHtcAlartDialog:Lcom/htc/widget/HtcAlertDialog;

.field protected mIntentReceiver:Lcom/htc/android/worldclock/TimerAlert$IntentReceiver;

.field private mIsActive:Z

.field private mIsDismissed:Z

.field private mIsKilled:Z

.field private mIsLockScreenExist:Z

.field private mKillerCalback:Lcom/htc/android/worldclock/TimerKlaxon$KillerCallback;

.field private mKlaxon:Lcom/htc/android/worldclock/TimerKlaxon;

.field private mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field final mOpenDrawer:Ljava/lang/Runnable;

.field private mTimerType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/worldclock/TimerAlert;->mIsActive:Z

    .line 36
    const/16 v0, 0x20

    iput v0, p0, Lcom/htc/android/worldclock/TimerAlert;->mTimerType:I

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/worldclock/TimerAlert;->mIntentReceiver:Lcom/htc/android/worldclock/TimerAlert$IntentReceiver;

    .line 41
    new-instance v0, Lcom/htc/android/worldclock/TimerAlert$1;

    invoke-direct {v0, p0}, Lcom/htc/android/worldclock/TimerAlert$1;-><init>(Lcom/htc/android/worldclock/TimerAlert;)V

    iput-object v0, p0, Lcom/htc/android/worldclock/TimerAlert;->mOpenDrawer:Ljava/lang/Runnable;

    .line 74
    new-instance v0, Lcom/htc/android/worldclock/TimerAlert$2;

    invoke-direct {v0, p0}, Lcom/htc/android/worldclock/TimerAlert$2;-><init>(Lcom/htc/android/worldclock/TimerAlert;)V

    iput-object v0, p0, Lcom/htc/android/worldclock/TimerAlert;->mKillerCalback:Lcom/htc/android/worldclock/TimerKlaxon$KillerCallback;

    .line 242
    new-instance v0, Lcom/htc/android/worldclock/TimerAlert$4;

    invoke-direct {v0, p0}, Lcom/htc/android/worldclock/TimerAlert$4;-><init>(Lcom/htc/android/worldclock/TimerAlert;)V

    iput-object v0, p0, Lcom/htc/android/worldclock/TimerAlert;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 273
    new-instance v0, Lcom/htc/android/worldclock/TimerAlert$5;

    invoke-direct {v0, p0}, Lcom/htc/android/worldclock/TimerAlert$5;-><init>(Lcom/htc/android/worldclock/TimerAlert;)V

    iput-object v0, p0, Lcom/htc/android/worldclock/TimerAlert;->mDismissButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 312
    return-void
.end method

.method private StopTimer()V
    .locals 2

    .prologue
    .line 172
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 174
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/android/worldclock/TimerAlert$3;

    invoke-direct {v1, p0}, Lcom/htc/android/worldclock/TimerAlert$3;-><init>(Lcom/htc/android/worldclock/TimerAlert;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 188
    return-void
.end method

.method static synthetic access$002(Lcom/htc/android/worldclock/TimerAlert;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/htc/android/worldclock/TimerAlert;->mIsDismissed:Z

    return p1
.end method

.method static synthetic access$100(Lcom/htc/android/worldclock/TimerAlert;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/htc/android/worldclock/TimerAlert;->StopTimer()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/android/worldclock/TimerAlert;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/htc/android/worldclock/TimerAlert;->releaseLocks()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/android/worldclock/TimerAlert;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/htc/android/worldclock/TimerAlert;->mIsKilled:Z

    return v0
.end method

.method static synthetic access$302(Lcom/htc/android/worldclock/TimerAlert;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/htc/android/worldclock/TimerAlert;->mIsKilled:Z

    return p1
.end method

.method static synthetic access$400(Lcom/htc/android/worldclock/TimerAlert;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Lcom/htc/android/worldclock/TimerAlert;->mTimerType:I

    return v0
.end method

.method static synthetic access$402(Lcom/htc/android/worldclock/TimerAlert;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput p1, p0, Lcom/htc/android/worldclock/TimerAlert;->mTimerType:I

    return p1
.end method

.method static synthetic access$500(Lcom/htc/android/worldclock/TimerAlert;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/htc/android/worldclock/TimerAlert;->mIsLockScreenExist:Z

    return v0
.end method

.method static synthetic access$600(Lcom/htc/android/worldclock/TimerAlert;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/htc/android/worldclock/TimerAlert;->mIsActive:Z

    return v0
.end method

.method static synthetic access$700(Lcom/htc/android/worldclock/TimerAlert;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/htc/android/worldclock/TimerAlert;->showDialogView(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/android/worldclock/TimerAlert;)Lcom/htc/android/worldclock/TimerKlaxon;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/htc/android/worldclock/TimerAlert;->mKlaxon:Lcom/htc/android/worldclock/TimerKlaxon;

    return-object v0
.end method

.method static synthetic access$802(Lcom/htc/android/worldclock/TimerAlert;Lcom/htc/android/worldclock/TimerKlaxon;)Lcom/htc/android/worldclock/TimerKlaxon;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/htc/android/worldclock/TimerAlert;->mKlaxon:Lcom/htc/android/worldclock/TimerKlaxon;

    return-object p1
.end method

.method private declared-synchronized disableKeyguard()V
    .locals 1

    .prologue
    .line 198
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 199
    iget-boolean v0, p0, Lcom/htc/android/worldclock/TimerAlert;->mIsLockScreenExist:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 202
    :cond_0
    monitor-exit p0

    return-void

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private dismissHtcAlartDialog()V
    .locals 1

    .prologue
    .line 214
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 215
    iget-object v0, p0, Lcom/htc/android/worldclock/TimerAlert;->mHtcAlartDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/htc/android/worldclock/TimerAlert;->mHtcAlartDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 217
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/worldclock/TimerAlert;->mHtcAlartDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 219
    :cond_0
    return-void
.end method

.method private declared-synchronized enableKeyguard()V
    .locals 1

    .prologue
    .line 191
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 192
    iget-boolean v0, p0, Lcom/htc/android/worldclock/TimerAlert;->mIsLockScreenExist:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 195
    :cond_0
    monitor-exit p0

    return-void

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized releaseLocks()V
    .locals 1

    .prologue
    .line 208
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 209
    invoke-static {}, Lcom/htc/android/worldclock/TimerAlertWakeLock;->release()V

    .line 210
    invoke-direct {p0}, Lcom/htc/android/worldclock/TimerAlert;->enableKeyguard()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    monitor-exit p0

    return-void

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private showDialogView(I)V
    .locals 3
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 222
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 223
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 224
    .local v0, alertDialogView:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 225
    const v1, 0x7f080060

    invoke-virtual {p0, v1}, Lcom/htc/android/worldclock/TimerAlert;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 226
    const v1, 0x7f080062

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 227
    iget-object v1, p0, Lcom/htc/android/worldclock/TimerAlert;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 228
    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 230
    packed-switch p1, :pswitch_data_0

    .line 237
    :goto_0
    invoke-direct {p0}, Lcom/htc/android/worldclock/TimerAlert;->dismissHtcAlartDialog()V

    .line 238
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/worldclock/TimerAlert;->mHtcAlartDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 239
    iget-object v1, p0, Lcom/htc/android/worldclock/TimerAlert;->mHtcAlartDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 240
    return-void

    .line 232
    :pswitch_0
    const v1, 0x7f08001a

    iget-object v2, p0, Lcom/htc/android/worldclock/TimerAlert;->mDismissButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    goto :goto_0

    .line 230
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private unInitRegister()V
    .locals 2

    .prologue
    .line 151
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 153
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/worldclock/TimerAlert;->mIntentReceiver:Lcom/htc/android/worldclock/TimerAlert$IntentReceiver;

    if-eqz v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/htc/android/worldclock/TimerAlert;->mIntentReceiver:Lcom/htc/android/worldclock/TimerAlert$IntentReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/android/worldclock/TimerAlert;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 155
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/android/worldclock/TimerAlert;->mIntentReceiver:Lcom/htc/android/worldclock/TimerAlert$IntentReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "TimerAlert not register power off"

    invoke-static {v1}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 286
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 287
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v1, :cond_1

    move v0, v1

    .line 288
    .local v0, up:Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 301
    iget-boolean v3, p0, Lcom/htc/android/worldclock/TimerAlert;->mIsKilled:Z

    if-nez v3, :cond_0

    if-eqz v0, :cond_0

    iget v3, p0, Lcom/htc/android/worldclock/TimerAlert;->mTimerType:I

    const/16 v4, 0x20

    if-ne v3, v4, :cond_0

    .line 302
    iput-boolean v2, p0, Lcom/htc/android/worldclock/TimerAlert;->mIsDismissed:Z

    .line 303
    invoke-direct {p0}, Lcom/htc/android/worldclock/TimerAlert;->StopTimer()V

    .line 304
    invoke-direct {p0}, Lcom/htc/android/worldclock/TimerAlert;->releaseLocks()V

    .line 305
    invoke-virtual {p0}, Lcom/htc/android/worldclock/TimerAlert;->finish()V

    .line 309
    :cond_0
    :goto_1
    return v1

    .end local v0           #up:Z
    :cond_1
    move v0, v2

    .line 287
    goto :goto_0

    .line 309
    .restart local v0       #up:Z
    :sswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1

    .line 288
    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 343
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 344
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 345
    iget-boolean v0, p0, Lcom/htc/android/worldclock/TimerAlert;->mIsLockScreenExist:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/android/worldclock/TimerAlert;->mIsKilled:Z

    if-nez v0, :cond_0

    .line 346
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/htc/android/worldclock/TimerAlert;->setContentView(I)V

    .line 348
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    const/4 v3, 0x0

    .line 53
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-static {}, Lcom/htc/android/worldclock/TimerKlaxon;->getInstance()Lcom/htc/android/worldclock/TimerKlaxon;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/worldclock/TimerAlert;->mKlaxon:Lcom/htc/android/worldclock/TimerKlaxon;

    .line 58
    invoke-virtual {p0}, Lcom/htc/android/worldclock/TimerAlert;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 59
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "lock_screen"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/android/worldclock/TimerAlert;->mIsLockScreenExist:Z

    .line 60
    const-string v1, "timer_type"

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/android/worldclock/TimerAlert;->mTimerType:I

    .line 62
    iget-boolean v1, p0, Lcom/htc/android/worldclock/TimerAlert;->mIsLockScreenExist:Z

    if-eqz v1, :cond_0

    .line 63
    const v1, 0x7f030001

    invoke-virtual {p0, v1}, Lcom/htc/android/worldclock/TimerAlert;->setContentView(I)V

    .line 68
    :goto_0
    iget-object v1, p0, Lcom/htc/android/worldclock/TimerAlert;->mKlaxon:Lcom/htc/android/worldclock/TimerKlaxon;

    iget-object v2, p0, Lcom/htc/android/worldclock/TimerAlert;->mKillerCalback:Lcom/htc/android/worldclock/TimerKlaxon$KillerCallback;

    invoke-virtual {v1, v2}, Lcom/htc/android/worldclock/TimerKlaxon;->setKillerCallback(Lcom/htc/android/worldclock/TimerKlaxon$KillerCallback;)V

    .line 70
    iput-boolean v3, p0, Lcom/htc/android/worldclock/TimerAlert;->mIsDismissed:Z

    .line 71
    iput-boolean v3, p0, Lcom/htc/android/worldclock/TimerAlert;->mIsKilled:Z

    .line 72
    return-void

    .line 65
    :cond_0
    invoke-direct {p0, v3}, Lcom/htc/android/worldclock/TimerAlert;->showDialogView(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 164
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 165
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 166
    const-string v0, "TimerAlert.onDestroy()"

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 168
    invoke-direct {p0}, Lcom/htc/android/worldclock/TimerAlert;->unInitRegister()V

    .line 169
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 130
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 131
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 132
    const-string v0, "TimerAlert.onPause()"

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/worldclock/TimerAlert;->mIsActive:Z

    .line 134
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 121
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 122
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 123
    const-string v0, "TimerAlert.onResume()"

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 124
    invoke-direct {p0}, Lcom/htc/android/worldclock/TimerAlert;->disableKeyguard()V

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/worldclock/TimerAlert;->mIsActive:Z

    .line 126
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 107
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 108
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 109
    const-string v1, "TimerAlert.onStart()"

    invoke-static {v1}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 110
    iget-object v1, p0, Lcom/htc/android/worldclock/TimerAlert;->mIntentReceiver:Lcom/htc/android/worldclock/TimerAlert$IntentReceiver;

    if-nez v1, :cond_0

    .line 111
    new-instance v1, Lcom/htc/android/worldclock/TimerAlert$IntentReceiver;

    invoke-direct {v1, p0}, Lcom/htc/android/worldclock/TimerAlert$IntentReceiver;-><init>(Lcom/htc/android/worldclock/TimerAlert;)V

    iput-object v1, p0, Lcom/htc/android/worldclock/TimerAlert;->mIntentReceiver:Lcom/htc/android/worldclock/TimerAlert$IntentReceiver;

    .line 112
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 113
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    const-string v1, "cancel_alert"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lcom/htc/android/worldclock/TimerAlert;->mIntentReceiver:Lcom/htc/android/worldclock/TimerAlert$IntentReceiver;

    invoke-virtual {p0, v1, v0, v2, v2}, Lcom/htc/android/worldclock/TimerAlert;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 117
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 138
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 139
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 140
    const-string v0, "TimerAlert.onStop()"

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 141
    invoke-direct {p0}, Lcom/htc/android/worldclock/TimerAlert;->StopTimer()V

    .line 142
    invoke-direct {p0}, Lcom/htc/android/worldclock/TimerAlert;->unInitRegister()V

    .line 143
    invoke-direct {p0}, Lcom/htc/android/worldclock/TimerAlert;->releaseLocks()V

    .line 145
    invoke-virtual {p0}, Lcom/htc/android/worldclock/TimerAlert;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/htc/android/worldclock/TimerAlert;->finish()V

    .line 148
    :cond_0
    return-void
.end method
