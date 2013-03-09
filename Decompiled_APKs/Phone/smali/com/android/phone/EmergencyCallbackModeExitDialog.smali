.class public Lcom/android/phone/EmergencyCallbackModeExitDialog;
.super Landroid/app/Activity;
.source "EmergencyCallbackModeExitDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field static final ACTION_SHOW_ECM_EXIT_DIALOG:Ljava/lang/String; = "com.android.phone.action.ACTION_SHOW_ECM_EXIT_DIALOG"

.field private static final ECM_TIMER_RESET:I = 0x1

.field public static final EXIT_ECM_BLOCK_OTHERS:I = 0x1

.field public static final EXIT_ECM_DIALOG:I = 0x2

.field public static final EXIT_ECM_IN_EMERGENCY_CALL_DIALOG:I = 0x4

.field public static final EXIT_ECM_PROGRESS_DIALOG:I = 0x3

.field public static final EXTRA_EXIT_ECM_RESULT:Ljava/lang/String; = "exit_ecm_result"

.field private static TAG:Ljava/lang/String;


# instance fields
.field mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mConnection:Landroid/content/ServiceConnection;

.field mDialogType:I

.field private mEcmExitReceiver:Landroid/content/BroadcastReceiver;

.field mEcmTimeout:J

.field mHandler:Landroid/os/Handler;

.field mHtcService:Lcom/android/phone/HtcEmergencyCallbackModeService;

.field private mInEmergencyCall:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field mProgressDialog:Lcom/htc/app/HtcProgressDialog;

.field mService:Lcom/android/phone/EmergencyCallbackModeService;

.field private mTask:Ljava/lang/Runnable;

.field mTimer:Landroid/os/CountDownTimer;

.field private mTimerResetHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    const-string v0, "ECMDialog"

    sput-object v0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 74
    iput-object v2, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 76
    iput-object v2, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 77
    iput-object v2, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mTimer:Landroid/os/CountDownTimer;

    .line 78
    iput-object v2, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mService:Lcom/android/phone/EmergencyCallbackModeService;

    .line 79
    iput-object v2, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mHandler:Landroid/os/Handler;

    .line 80
    iput v3, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mDialogType:I

    .line 81
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mEcmTimeout:J

    .line 82
    iput-boolean v3, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mInEmergencyCall:Z

    .line 84
    iput-object v2, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 162
    new-instance v0, Lcom/android/phone/EmergencyCallbackModeExitDialog$2;

    invoke-direct {v0, p0}, Lcom/android/phone/EmergencyCallbackModeExitDialog$2;-><init>(Lcom/android/phone/EmergencyCallbackModeExitDialog;)V

    iput-object v0, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mTask:Ljava/lang/Runnable;

    .line 351
    new-instance v0, Lcom/android/phone/EmergencyCallbackModeExitDialog$7;

    invoke-direct {v0, p0}, Lcom/android/phone/EmergencyCallbackModeExitDialog$7;-><init>(Lcom/android/phone/EmergencyCallbackModeExitDialog;)V

    iput-object v0, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mEcmExitReceiver:Landroid/content/BroadcastReceiver;

    .line 375
    new-instance v0, Lcom/android/phone/EmergencyCallbackModeExitDialog$8;

    invoke-direct {v0, p0}, Lcom/android/phone/EmergencyCallbackModeExitDialog$8;-><init>(Lcom/android/phone/EmergencyCallbackModeExitDialog;)V

    iput-object v0, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mConnection:Landroid/content/ServiceConnection;

    .line 392
    new-instance v0, Lcom/android/phone/EmergencyCallbackModeExitDialog$9;

    invoke-direct {v0, p0}, Lcom/android/phone/EmergencyCallbackModeExitDialog$9;-><init>(Lcom/android/phone/EmergencyCallbackModeExitDialog;)V

    iput-object v0, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mTimerResetHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/EmergencyCallbackModeExitDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->showEmergencyCallbackModeExitDialog()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/EmergencyCallbackModeExitDialog;)Landroid/content/ServiceConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/phone/EmergencyCallbackModeExitDialog;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mInEmergencyCall:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/phone/EmergencyCallbackModeExitDialog;J)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->getDialogText(J)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/EmergencyCallbackModeExitDialog;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method private getDialogText(J)Ljava/lang/CharSequence;
    .locals 10
    .parameter "millisUntilFinished"

    .prologue
    const-wide/32 v5, 0xea60

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 323
    div-long v2, p1, v5

    long-to-int v0, v2

    .line 324
    .local v0, minutes:I
    const-string v2, "%d:%02d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    rem-long v4, p1, v5

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 327
    .local v1, time:Ljava/lang/String;
    iget v2, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mDialogType:I

    packed-switch v2, :pswitch_data_0

    .line 335
    const/4 v2, 0x0

    :goto_0
    return-object v2

    .line 329
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0002

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v1, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 332
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0001

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v1, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 327
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showEmergencyCallbackModeExitDialog()V
    .locals 6

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 206
    sget-object v0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->TAG:Ljava/lang/String;

    const-string v1, "showEmergencyCallbackModeExitDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mHtcService:Lcom/android/phone/HtcEmergencyCallbackModeService;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mHtcService:Lcom/android/phone/HtcEmergencyCallbackModeService;

    invoke-virtual {v0}, Lcom/android/phone/HtcEmergencyCallbackModeService;->getEmergencyCallbackModeTimeout()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mEcmTimeout:J

    .line 210
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mHtcService:Lcom/android/phone/HtcEmergencyCallbackModeService;

    invoke-virtual {v0}, Lcom/android/phone/HtcEmergencyCallbackModeService;->getEmergencyCallbackModeCallState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mInEmergencyCall:Z

    .line 214
    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mInEmergencyCall:Z

    if-eqz v0, :cond_1

    .line 215
    iput v4, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mDialogType:I

    .line 216
    invoke-virtual {p0, v4}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->showDialog(I)V

    .line 217
    sget-object v0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->TAG:Ljava/lang/String;

    const-string v1, "showDialog, EXIT_ECM_IN_EMERGENCY_CALL_DIALOG"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :goto_0
    return-void

    .line 219
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 221
    iput v2, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mDialogType:I

    .line 222
    invoke-virtual {p0, v2}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->showDialog(I)V

    .line 223
    sget-object v0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->TAG:Ljava/lang/String;

    const-string v1, "showDialog, EXIT_ECM_BLOCK_OTHERS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_2
    :goto_1
    new-instance v0, Lcom/android/phone/EmergencyCallbackModeExitDialog$3;

    iget-wide v2, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mEcmTimeout:J

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/EmergencyCallbackModeExitDialog$3;-><init>(Lcom/android/phone/EmergencyCallbackModeExitDialog;JJ)V

    invoke-virtual {v0}, Lcom/android/phone/EmergencyCallbackModeExitDialog$3;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mTimer:Landroid/os/CountDownTimer;

    goto :goto_0

    .line 224
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.phone.action.ACTION_SHOW_ECM_EXIT_DIALOG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 225
    iput v3, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mDialogType:I

    .line 226
    invoke-virtual {p0, v3}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->showDialog(I)V

    .line 227
    sget-object v0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->TAG:Ljava/lang/String;

    const-string v1, "showDialog, EXIT_ECM_DIALOG"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    sget-object v1, Lcom/android/phone/EmergencyCallbackModeExitDialog;->TAG:Ljava/lang/String;

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const-string v1, "ril.cdma.inecmmode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 99
    sget-object v1, Lcom/android/phone/EmergencyCallbackModeExitDialog;->TAG:Ljava/lang/String;

    const-string v2, "PROPERTY_INECM_MODE false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->finish()V

    .line 103
    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mHandler:Landroid/os/Handler;

    .line 109
    invoke-static {}, Lcom/android/phone/HtcCdmaPhoneApp;->getEmergencyCallbackService()Lcom/android/phone/HtcEmergencyCallbackModeService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mHtcService:Lcom/android/phone/HtcEmergencyCallbackModeService;

    .line 118
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 119
    iget-object v1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mTimerResetHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 122
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 123
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    iget-object v1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mEcmExitReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 129
    iget-object v1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/phone/EmergencyCallbackModeExitDialog$1;

    invoke-direct {v2, p0}, Lcom/android/phone/EmergencyCallbackModeExitDialog$1;-><init>(Lcom/android/phone/EmergencyCallbackModeExitDialog;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 137
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .parameter "id"

    .prologue
    const v5, 0x7f0e03fc

    const v4, 0x7f0200ae

    const/4 v3, 0x0

    .line 250
    packed-switch p1, :pswitch_data_0

    .line 314
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 253
    :pswitch_0
    iget-wide v1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mEcmTimeout:J

    invoke-direct {p0, v1, v2}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->getDialogText(J)Ljava/lang/CharSequence;

    move-result-object v0

    .line 256
    .local v0, text:Ljava/lang/CharSequence;
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e0400

    new-instance v3, Lcom/android/phone/EmergencyCallbackModeExitDialog$5;

    invoke-direct {v3, p0}, Lcom/android/phone/EmergencyCallbackModeExitDialog$5;-><init>(Lcom/android/phone/EmergencyCallbackModeExitDialog;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e0401

    new-instance v3, Lcom/android/phone/EmergencyCallbackModeExitDialog$4;

    invoke-direct {v3, p0}, Lcom/android/phone/EmergencyCallbackModeExitDialog$4;-><init>(Lcom/android/phone/EmergencyCallbackModeExitDialog;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 283
    iget-object v1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1, p0}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 284
    iget-object v1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0

    .line 289
    .end local v0           #text:Ljava/lang/CharSequence;
    :pswitch_1
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e03fe

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e0402

    new-instance v3, Lcom/android/phone/EmergencyCallbackModeExitDialog$6;

    invoke-direct {v3, p0}, Lcom/android/phone/EmergencyCallbackModeExitDialog$6;-><init>(Lcom/android/phone/EmergencyCallbackModeExitDialog;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 303
    iget-object v1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1, p0}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 304
    iget-object v1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0

    .line 307
    :pswitch_2
    new-instance v1, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v1, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 308
    iget-object v1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const v2, 0x7f0e03ff

    invoke-virtual {p0, v2}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 309
    iget-object v1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 310
    iget-object v1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v1, v3}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 311
    iget-object v1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    goto/16 :goto_0

    .line 250
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 141
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 142
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mEcmExitReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 144
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForEcmTimerReset(Landroid/os/Handler;)V

    .line 145
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .parameter "dialog"

    .prologue
    .line 342
    sget-object v0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->TAG:Ljava/lang/String;

    const-string v1, "onDismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const/4 v0, -0x1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "exit_ecm_result"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->setResult(ILandroid/content/Intent;)V

    .line 345
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->finish()V

    .line 346
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 149
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 150
    const-string v0, "DIALOG_TYPE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mDialogType:I

    .line 151
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 155
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 156
    const-string v0, "DIALOG_TYPE"

    iget v1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mDialogType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 157
    return-void
.end method
