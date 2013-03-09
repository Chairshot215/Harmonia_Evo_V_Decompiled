.class Lcom/android/phone/WorldPhoneModeSelection;
.super Landroid/os/Handler;
.source "WorldPhoneModeSelection.java"


# static fields
.field private static final DBG:Z = false

.field private static final EV_GET_HTC_SIM_TYPES:I = 0x518

.field private static final EV_GET_SIM_TYPES:I = 0x517

.field private static final EV_NETWORK_STATE_CHANGED:I = 0x516

.field private static final EV_PHONE_DISCONNECT:I = 0x519

.field private static final EV_PHONE_MODE_CHANGED:I = 0x515

.field private static final PREFS_MODE:Ljava/lang/String; = "telephony.WorldPhoneController.mode"

.field private static final PREFS_NOT_TO_ASK_AGAIN:Ljava/lang/String; = "WorldPhoneModeSelection_not_to_ask_again"

.field private static final PREFS_SIM:Ljava/lang/String; = "telephony.WorldPhoneController.sim"

.field private static final SCAN_NETWORK:Ljava/lang/String; = "persist.ril.scan.network_type"

.field private static final STATE_NEVER_CHECK_DISABLED:I = 0x0

.field private static final STATE_NEVER_CHECK_ENABLED:I = 0x1

.field private static final STATE_NEVER_CHECK_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "WorldPhoneModeSelection"

.field private static final WM_SET_PREFERRED_NETWORK_TYPE:I = 0x51a

.field private static mHtcSimType:I

.field private static mSimType:I

.field private static mbSimActive:Z

.field private static sMe:Lcom/android/phone/WorldPhoneModeSelection;

.field static timer:Ljava/util/Timer;


# instance fields
.field private INTENT_OF_UPDATE_PREFERRED_NETWORK_TYPE:Ljava/lang/String;

.field private mIccState:Lcom/android/internal/telephony/IccCard$State;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsNeverCheck:I

.field private mNeedtoCheck:Z

.field private mNeedtoCheckLocked:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mbForbidModeSelection:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 59
    sput-object v2, Lcom/android/phone/WorldPhoneModeSelection;->sMe:Lcom/android/phone/WorldPhoneModeSelection;

    .line 65
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/WorldPhoneModeSelection;->mbSimActive:Z

    .line 66
    sput v1, Lcom/android/phone/WorldPhoneModeSelection;->mSimType:I

    .line 67
    sput v1, Lcom/android/phone/WorldPhoneModeSelection;->mHtcSimType:I

    .line 407
    sput-object v2, Lcom/android/phone/WorldPhoneModeSelection;->timer:Ljava/util/Timer;

    return-void
.end method

.method private constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 5
    .parameter "phone"

    .prologue
    const/4 v4, 0x1

    .line 153
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 61
    iput-boolean v4, p0, Lcom/android/phone/WorldPhoneModeSelection;->mNeedtoCheck:Z

    .line 62
    iput-boolean v4, p0, Lcom/android/phone/WorldPhoneModeSelection;->mNeedtoCheckLocked:Z

    .line 63
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/phone/WorldPhoneModeSelection;->mIsNeverCheck:I

    .line 68
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/WorldPhoneModeSelection;->mbForbidModeSelection:Z

    .line 71
    new-instance v1, Lcom/android/phone/WorldPhoneModeSelection$1;

    invoke-direct {v1, p0}, Lcom/android/phone/WorldPhoneModeSelection$1;-><init>(Lcom/android/phone/WorldPhoneModeSelection;)V

    iput-object v1, p0, Lcom/android/phone/WorldPhoneModeSelection;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 331
    const-string v1, "htc.android.action.UPDATE_PREFERRED_NETWORK_TYPE"

    iput-object v1, p0, Lcom/android/phone/WorldPhoneModeSelection;->INTENT_OF_UPDATE_PREFERRED_NETWORK_TYPE:Ljava/lang/String;

    .line 154
    const-string v1, "WorldPhoneModeSelection"

    const-string v2, "WorldPhoneModeSelection"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iput-object p1, p0, Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 157
    iget-object v1, p0, Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v2, 0x515

    const/4 v3, 0x0

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForPhoneModeChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 159
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 160
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    const-string v1, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    const-string v1, "com.android.internal.policy.CANCEL_UNLOCK_PIN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    const-string v1, "com.android.phone.emergencycall"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    iget-object v1, p0, Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/WorldPhoneModeSelection;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 166
    iput-boolean v4, p0, Lcom/android/phone/WorldPhoneModeSelection;->mNeedtoCheckLocked:Z

    .line 167
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/WorldPhoneModeSelection;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/android/phone/WorldPhoneModeSelection;->mbForbidModeSelection:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/phone/WorldPhoneModeSelection;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/android/phone/WorldPhoneModeSelection;->mbForbidModeSelection:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/phone/WorldPhoneModeSelection;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/android/phone/WorldPhoneModeSelection;->mNeedtoCheckLocked:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/phone/WorldPhoneModeSelection;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    sput-boolean p0, Lcom/android/phone/WorldPhoneModeSelection;->mbSimActive:Z

    return p0
.end method

.method static synthetic access$400(Lcom/android/phone/WorldPhoneModeSelection;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/phone/WorldPhoneModeSelection;->saveLastSimMode(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/WorldPhoneModeSelection;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/phone/WorldPhoneModeSelection;->checkNoService()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/WorldPhoneModeSelection;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/phone/WorldPhoneModeSelection;->getLastUserMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/phone/WorldPhoneModeSelection;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/android/phone/WorldPhoneModeSelection;->mNeedtoCheck:Z

    return v0
.end method

.method private checkNoService()V
    .locals 11

    .prologue
    const-wide/16 v2, 0x7530

    const/16 v10, 0xa

    const/4 v9, 0x7

    .line 410
    iget-object v0, p0, Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v7

    .line 411
    .local v7, sState:I
    const-string v0, "WorldPhoneModeSelection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkNoService, ServiceState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; mNeedtoCheck:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/phone/WorldPhoneModeSelection;->mNeedtoCheck:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    if-nez v7, :cond_0

    .line 414
    iget-object v0, p0, Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/WarningAlertActivity;->dismiss(Landroid/content/Context;)V

    .line 417
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/WorldPhoneModeSelection;->getLastUserMode()I

    move-result v6

    .line 418
    .local v6, lastUserMode:I
    if-eq v6, v9, :cond_1

    if-ne v6, v10, :cond_3

    :cond_1
    sget-object v0, Lcom/android/phone/WorldPhoneModeSelection;->timer:Ljava/util/Timer;

    if-nez v0, :cond_3

    .line 422
    const-string v0, "WorldPhoneModeSelection"

    const-string v2, "GLOBAL mode, don\'t need to check no service"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :cond_2
    :goto_0
    return-void

    .line 427
    :cond_3
    sget v0, Lcom/android/phone/WorldPhoneModeSelection;->mSimType:I

    const/4 v4, 0x3

    if-eq v0, v4, :cond_5

    sget-boolean v0, Lcom/android/phone/HtcFeatureList;->FEATURE_CT_CUSTOMIZATION:Z

    if-eqz v0, :cond_5

    .line 429
    const/4 v8, 0x0

    .line 443
    .local v8, takeNote:Z
    :goto_1
    if-eqz v8, :cond_7

    iget-boolean v0, p0, Lcom/android/phone/WorldPhoneModeSelection;->mNeedtoCheck:Z

    if-eqz v0, :cond_7

    if-eq v6, v9, :cond_7

    invoke-virtual {p0}, Lcom/android/phone/WorldPhoneModeSelection;->isSimActive()Z

    move-result v0

    if-eqz v0, :cond_7

    if-eq v6, v10, :cond_7

    .line 446
    const-string v0, "WorldPhoneModeSelection"

    const-string v4, "takeNote = true"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    sget-object v0, Lcom/android/phone/WorldPhoneModeSelection;->timer:Ljava/util/Timer;

    if-nez v0, :cond_4

    .line 450
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/android/phone/WorldPhoneModeSelection;->timer:Ljava/util/Timer;

    .line 453
    :cond_4
    new-instance v1, Lcom/android/phone/WorldPhoneModeSelection$2;

    invoke-direct {v1, p0}, Lcom/android/phone/WorldPhoneModeSelection$2;-><init>(Lcom/android/phone/WorldPhoneModeSelection;)V

    .line 477
    .local v1, task:Ljava/util/TimerTask;
    sget-object v0, Lcom/android/phone/WorldPhoneModeSelection;->timer:Ljava/util/Timer;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0

    .line 431
    .end local v1           #task:Ljava/util/TimerTask;
    .end local v8           #takeNote:Z
    :cond_5
    const/4 v0, 0x1

    if-ne v7, v0, :cond_6

    .line 433
    sget-object v0, Lcom/android/phone/WorldPhoneModeSelection;->timer:Ljava/util/Timer;

    if-nez v0, :cond_2

    .line 437
    const/4 v8, 0x1

    .restart local v8       #takeNote:Z
    goto :goto_1

    .line 441
    .end local v8           #takeNote:Z
    :cond_6
    const/4 v8, 0x0

    .restart local v8       #takeNote:Z
    goto :goto_1

    .line 481
    :cond_7
    sget-object v0, Lcom/android/phone/WorldPhoneModeSelection;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_2

    .line 483
    const-string v0, "WorldPhoneModeSelection"

    const-string v2, "timer.cancel"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    sget-object v0, Lcom/android/phone/WorldPhoneModeSelection;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 485
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/WorldPhoneModeSelection;->timer:Ljava/util/Timer;

    goto :goto_0
.end method

.method private doAction()V
    .locals 12

    .prologue
    const v11, 0x7f0e016d

    const v6, 0x7f0e0163

    const/4 v3, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 634
    invoke-direct {p0}, Lcom/android/phone/WorldPhoneModeSelection;->isLastSimActive()Z

    move-result v8

    .line 635
    .local v8, hasSIMLast:Z
    invoke-virtual {p0}, Lcom/android/phone/WorldPhoneModeSelection;->isSimActive()Z

    move-result v7

    .line 636
    .local v7, hasSIM:Z
    invoke-direct {p0, v7}, Lcom/android/phone/WorldPhoneModeSelection;->saveLastSimMode(Z)V

    .line 638
    invoke-direct {p0}, Lcom/android/phone/WorldPhoneModeSelection;->getLastUserMode()I

    move-result v9

    .line 639
    .local v9, lastUserMode:I
    const-string v0, "WorldPhoneModeSelection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LastUserMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    if-nez v7, :cond_2

    const/4 v0, 0x7

    if-eq v9, v0, :cond_0

    const/4 v0, 0x3

    if-eq v9, v0, :cond_0

    const/16 v0, 0xa

    if-ne v9, v0, :cond_2

    .line 644
    :cond_0
    const-string v0, "WorldPhoneModeSelection"

    const-string v1, "old mode:GLOBAL/UMTS, but SIM not available.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    invoke-virtual {p0, v5}, Lcom/android/phone/WorldPhoneModeSelection;->saveLastUserMode(I)V

    .line 647
    iget-object v0, p0, Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, v5, v4}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 648
    const-string v0, "factory2"

    const-string v1, "ro.bootmode"

    const-string v2, "normal"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 650
    iget-object v0, p0, Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    const v5, 0x7f0e0166

    invoke-virtual {v2, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v5, p0, Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lcom/android/phone/WarningAlertActivity;->showAlert(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 670
    :cond_1
    :goto_0
    return-void

    .line 654
    :cond_2
    if-eqz v7, :cond_1

    if-nez v8, :cond_1

    if-ne v9, v5, :cond_1

    .line 656
    const-string v0, "WorldPhoneModeSelection"

    const-string v1, "old mode:CDMA, now SIM insert.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    const/4 v10, 0x7

    .line 660
    .local v10, mode:I
    sget-boolean v0, Lcom/android/phone/HtcFeatureList;->FEATURE_PREFERRED_NETWORK_TYPE_4:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 661
    const/16 v10, 0xa

    .line 664
    :cond_3
    invoke-virtual {p0, v10}, Lcom/android/phone/WorldPhoneModeSelection;->saveLastUserMode(I)V

    .line 665
    iget-object v0, p0, Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, v10, v4}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 667
    iget-object v0, p0, Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    const v5, 0x7f0e0165

    invoke-virtual {v2, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v5, p0, Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lcom/android/phone/WarningAlertActivity;->showAlert(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private doActionEx()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    .line 516
    iget-boolean v5, p0, Lcom/android/phone/WorldPhoneModeSelection;->mbForbidModeSelection:Z

    if-eqz v5, :cond_1

    .line 586
    :cond_0
    :goto_0
    return-void

    .line 520
    :cond_1
    const/4 v4, -0x1

    .line 521
    .local v4, newMode:I
    invoke-direct {p0}, Lcom/android/phone/WorldPhoneModeSelection;->isLastSimActive()Z

    move-result v1

    .line 522
    .local v1, hasSIMLast:Z
    invoke-virtual {p0}, Lcom/android/phone/WorldPhoneModeSelection;->isSimActive()Z

    move-result v0

    .line 523
    .local v0, hasSIM:Z
    invoke-direct {p0, v0}, Lcom/android/phone/WorldPhoneModeSelection;->saveLastSimMode(Z)V

    .line 524
    invoke-direct {p0}, Lcom/android/phone/WorldPhoneModeSelection;->getLastUserMode()I

    move-result v3

    .line 525
    .local v3, lastUserMode:I
    const-string v5, "WorldPhoneModeSelection"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doActionEx, LastUserMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    sget v5, Lcom/android/phone/WorldPhoneModeSelection;->mSimType:I

    packed-switch v5, :pswitch_data_0

    .line 580
    :cond_2
    :goto_1
    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 583
    invoke-virtual {p0, v4}, Lcom/android/phone/WorldPhoneModeSelection;->saveLastUserMode(I)V

    .line 584
    iget-object v5, p0, Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v6, 0x0

    invoke-interface {v5, v4, v6}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0

    .line 529
    :pswitch_0
    if-eq v3, v9, :cond_2

    .line 531
    const/4 v4, 0x3

    goto :goto_1

    .line 536
    :pswitch_1
    const/4 v5, 0x4

    if-eq v3, v5, :cond_2

    .line 538
    const/4 v4, 0x4

    goto :goto_1

    .line 543
    :pswitch_2
    if-eqz v0, :cond_3

    if-nez v1, :cond_3

    .line 545
    const-string v5, "WorldPhoneModeSelection"

    const-string v6, "doActionEx, SIM card just insert .."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    const/4 v4, 0x7

    .line 549
    sget-boolean v5, Lcom/android/phone/HtcFeatureList;->FEATURE_PREFERRED_NETWORK_TYPE_4:Z

    if-ne v5, v8, :cond_2

    .line 550
    const/16 v4, 0xa

    goto :goto_1

    .line 554
    :cond_3
    const-string v5, "true"

    const-string v6, "gsm.sim.change"

    const-string v7, "empty"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 556
    const-string v5, "WorldPhoneModeSelection"

    const-string v6, "doActionEx, sim change to dual, set to GLOBAL"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    const/4 v4, 0x7

    .line 560
    sget-boolean v5, Lcom/android/phone/HtcFeatureList;->FEATURE_PREFERRED_NETWORK_TYPE_4:Z

    if-ne v5, v8, :cond_2

    .line 561
    const/16 v4, 0xa

    goto :goto_1

    .line 565
    :cond_4
    if-ne v3, v9, :cond_2

    .line 567
    const-string v5, "WorldPhoneModeSelection"

    const-string v6, "doActionEx, shortcut - preferrednetwork"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/android/phone/CallFeaturesSetting;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 569
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 570
    const/high16 v5, 0x1000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 571
    const-string v5, "shortcut"

    const-string v6, "preferrednetwork"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 572
    iget-object v5, p0, Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 527
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private doAction_Sprint()V
    .locals 12

    .prologue
    const/4 v6, 0x7

    const/4 v5, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x0

    .line 590
    invoke-direct {p0}, Lcom/android/phone/WorldPhoneModeSelection;->isLastSimActive()Z

    move-result v8

    .line 591
    .local v8, hasSIMLast:Z
    invoke-virtual {p0}, Lcom/android/phone/WorldPhoneModeSelection;->isSimActive()Z

    move-result v7

    .line 592
    .local v7, hasSIM:Z
    invoke-direct {p0, v7}, Lcom/android/phone/WorldPhoneModeSelection;->saveLastSimMode(Z)V

    .line 594
    invoke-direct {p0}, Lcom/android/phone/WorldPhoneModeSelection;->getLastUserMode()I

    move-result v9

    .line 595
    .local v9, lastUserMode:I
    const-string v0, "WorldPhoneModeSelection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LastUserMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    if-nez v7, :cond_2

    if-eq v9, v3, :cond_0

    if-eq v9, v6, :cond_0

    const/16 v0, 0xa

    if-ne v9, v0, :cond_2

    .line 601
    :cond_0
    const-string v0, "WorldPhoneModeSelection"

    const-string v1, "old mode:UMTS, but SIM not available.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    invoke-virtual {p0, v5}, Lcom/android/phone/WorldPhoneModeSelection;->saveLastUserMode(I)V

    .line 604
    iget-object v0, p0, Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, v5, v4}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 605
    const-string v0, "factory2"

    const-string v1, "ro.bootmode"

    const-string v2, "normal"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 608
    const v11, 0x7f0e0166

    .line 609
    .local v11, msgDialogId:I
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 610
    if-ne v9, v3, :cond_5

    .line 611
    const v11, 0x7f0e0168

    .line 617
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0163

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0e016d

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lcom/android/phone/WarningAlertActivity;->showAlert(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 621
    .end local v11           #msgDialogId:I
    :cond_2
    if-eqz v7, :cond_4

    const-string v0, "factory2"

    const-string v1, "ro.bootmode"

    const-string v2, "normal"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 623
    const/4 v10, 0x7

    .line 624
    .local v10, mode:I
    sget-boolean v0, Lcom/android/phone/HtcFeatureList;->FEATURE_PREFERRED_NETWORK_TYPE_4:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 625
    const/16 v10, 0xa

    .line 627
    :cond_3
    invoke-virtual {p0, v10}, Lcom/android/phone/WorldPhoneModeSelection;->saveLastUserMode(I)V

    .line 628
    iget-object v0, p0, Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, v10, v4}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 630
    .end local v10           #mode:I
    :cond_4
    return-void

    .line 612
    .restart local v11       #msgDialogId:I
    :cond_5
    if-ne v9, v6, :cond_1

    .line 613
    const v11, 0x7f0e0167

    goto :goto_0
.end method

.method static getInstance()Lcom/android/phone/WorldPhoneModeSelection;
    .locals 1

    .prologue
    .line 181
    sget-object v0, Lcom/android/phone/WorldPhoneModeSelection;->sMe:Lcom/android/phone/WorldPhoneModeSelection;

    return-object v0
.end method

.method static getInstance(Lcom/android/internal/telephony/Phone;)Lcom/android/phone/WorldPhoneModeSelection;
    .locals 1
    .parameter "phone"

    .prologue
    .line 172
    sget-object v0, Lcom/android/phone/WorldPhoneModeSelection;->sMe:Lcom/android/phone/WorldPhoneModeSelection;

    if-nez v0, :cond_0

    .line 174
    new-instance v0, Lcom/android/phone/WorldPhoneModeSelection;

    invoke-direct {v0, p0}, Lcom/android/phone/WorldPhoneModeSelection;-><init>(Lcom/android/internal/telephony/Phone;)V

    sput-object v0, Lcom/android/phone/WorldPhoneModeSelection;->sMe:Lcom/android/phone/WorldPhoneModeSelection;

    .line 176
    :cond_0
    sget-object v0, Lcom/android/phone/WorldPhoneModeSelection;->sMe:Lcom/android/phone/WorldPhoneModeSelection;

    return-object v0
.end method

.method private getLastUserMode()I
    .locals 3

    .prologue
    .line 375
    iget-object v1, p0, Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 376
    .local v0, pref:Landroid/content/SharedPreferences;
    sget-boolean v1, Lcom/android/phone/HtcFeatureList;->FEATURE_CT_CUSTOMIZATION:Z

    if-eqz v1, :cond_0

    .line 378
    const-string v1, "telephony.WorldPhoneController.mode"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 389
    :goto_0
    return v1

    .line 384
    :cond_0
    sget-boolean v1, Lcom/android/phone/HtcFeatureList;->FEATURE_PREFERRED_NETWORK_TYPE_4:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 385
    const-string v1, "telephony.WorldPhoneController.mode"

    const/16 v2, 0xa

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    .line 389
    :cond_1
    const-string v1, "telephony.WorldPhoneController.mode"

    const/4 v2, 0x7

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0
.end method

.method private getNeverCheckNoService()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 730
    iget v3, p0, Lcom/android/phone/WorldPhoneModeSelection;->mIsNeverCheck:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 731
    iget-object v3, p0, Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 732
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v3, "WorldPhoneModeSelection_not_to_ask_again"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/phone/WorldPhoneModeSelection;->mIsNeverCheck:I

    .line 736
    .end local v0           #pref:Landroid/content/SharedPreferences;
    :cond_0
    iget v3, p0, Lcom/android/phone/WorldPhoneModeSelection;->mIsNeverCheck:I

    if-ne v3, v1, :cond_1

    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 334
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 336
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 342
    :goto_0
    const-string v2, "WorldPhoneModeSelection"

    const-string v3, "OoO Notify UI to update the preferredNetworkType"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/phone/WorldPhoneModeSelection;->INTENT_OF_UPDATE_PREFERRED_NETWORK_TYPE:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 344
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 345
    return-void

    .line 339
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    const-string v2, "WorldPhoneModeSelection"

    const-string v3, "OoO exception in SetPreferredNetworkType "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isLastSimActive()Z
    .locals 3

    .prologue
    .line 403
    iget-object v1, p0, Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 404
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "telephony.WorldPhoneController.sim"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private saveLastSimMode(Z)V
    .locals 3
    .parameter "hasSIM"

    .prologue
    .line 395
    iget-object v2, p0, Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 396
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 397
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "telephony.WorldPhoneController.sim"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 398
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 399
    return-void
.end method

.method private setNeverCheckNoService()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 722
    iput v3, p0, Lcom/android/phone/WorldPhoneModeSelection;->mIsNeverCheck:I

    .line 723
    iget-object v2, p0, Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 724
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 725
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "WorldPhoneModeSelection_not_to_ask_again"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 726
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 727
    return-void
.end method


# virtual methods
.method public checkSimIssue()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 704
    const-string v0, "WorldPhoneModeSelection"

    const-string v1, "checkSimIssue"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    iget-object v0, p0, Lcom/android/phone/WorldPhoneModeSelection;->mIccState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/WorldPhoneModeSelection;->mIccState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/WorldPhoneModeSelection;->mIccState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/WorldPhoneModeSelection;->mIccState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ICC_FAIL:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_1

    .line 714
    :cond_0
    iget-object v0, p0, Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0164

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e016a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0e016d

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lcom/android/phone/WarningAlertActivity;->showAlert(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 717
    :cond_1
    return-void
.end method

.method public getHtcSimType()I
    .locals 1

    .prologue
    .line 674
    sget v0, Lcom/android/phone/WorldPhoneModeSelection;->mSimType:I

    return v0
.end method

.method public getRawSimType()I
    .locals 1

    .prologue
    .line 682
    sget v0, Lcom/android/phone/WorldPhoneModeSelection;->mHtcSimType:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 189
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 326
    :cond_0
    :goto_0
    return-void

    .line 191
    :sswitch_0
    const-string v4, "WorldPhoneModeSelection"

    const-string v5, "EV_PHONE_MODE_CHANGED"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 195
    :sswitch_1
    const-string v4, "WorldPhoneModeSelection"

    const-string v5, "EV_PHONE_DISCONNECT"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v4, p0, Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4, p0}, Lcom/android/internal/telephony/Phone;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 197
    iput-boolean v8, p0, Lcom/android/phone/WorldPhoneModeSelection;->mbForbidModeSelection:Z

    .line 198
    sget-boolean v4, Lcom/android/phone/HtcFeatureList;->FEATURE_CT_CUSTOMIZATION:Z

    if-eqz v4, :cond_1

    .line 200
    iget-object v4, p0, Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v5, 0x518

    invoke-virtual {p0, v5}, Lcom/android/phone/WorldPhoneModeSelection;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/Phone;->getHtcSimTypes(Landroid/os/Message;)V

    goto :goto_0

    .line 204
    :cond_1
    iget-object v4, p0, Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v5, 0x517

    invoke-virtual {p0, v5}, Lcom/android/phone/WorldPhoneModeSelection;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/Phone;->getSimTypes(Landroid/os/Message;)V

    goto :goto_0

    .line 209
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 210
    .local v0, ar:Landroid/os/AsyncResult;
    if-eqz v0, :cond_2

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_3

    .line 212
    :cond_2
    const-string v4, "WorldPhoneModeSelection"

    const-string v5, "EV_GET_HTC_SIM_TYPES, exception happen !!!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 215
    :cond_3
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    move-object v1, v4

    check-cast v1, [I

    .line 216
    .local v1, ints:[I
    const-string v4, "WorldPhoneModeSelection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EV_GET_HTC_SIM_TYPES:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v1, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v1, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    aget v4, v1, v8

    sput v4, Lcom/android/phone/WorldPhoneModeSelection;->mSimType:I

    .line 222
    array-length v4, v1

    if-le v4, v7, :cond_4

    .line 223
    aget v4, v1, v7

    sput v4, Lcom/android/phone/WorldPhoneModeSelection;->mHtcSimType:I

    .line 228
    :goto_1
    iget-object v4, p0, Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "gsm.htc.sim.types.group"

    sget v6, Lcom/android/phone/WorldPhoneModeSelection;->mSimType:I

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 229
    sget v4, Lcom/android/phone/WorldPhoneModeSelection;->mSimType:I

    if-nez v4, :cond_5

    .line 231
    sput-boolean v8, Lcom/android/phone/WorldPhoneModeSelection;->mbSimActive:Z

    .line 237
    :goto_2
    invoke-direct {p0}, Lcom/android/phone/WorldPhoneModeSelection;->doActionEx()V

    .line 238
    iput-boolean v7, p0, Lcom/android/phone/WorldPhoneModeSelection;->mbForbidModeSelection:Z

    goto/16 :goto_0

    .line 225
    :cond_4
    const-string v4, "WorldPhoneModeSelection"

    const-string v5, "get ruturning value 2 from WSD"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 235
    :cond_5
    sput-boolean v7, Lcom/android/phone/WorldPhoneModeSelection;->mbSimActive:Z

    goto :goto_2

    .line 242
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v1           #ints:[I
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 243
    .restart local v0       #ar:Landroid/os/AsyncResult;
    if-eqz v0, :cond_6

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_7

    .line 245
    :cond_6
    const-string v4, "WorldPhoneModeSelection"

    const-string v5, "EV_GET_SIM_TYPES, exception happen !!!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    sput-boolean v7, Lcom/android/phone/WorldPhoneModeSelection;->mbSimActive:Z

    goto/16 :goto_0

    .line 249
    :cond_7
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    .line 251
    .local v3, simTypes:Lcom/android/internal/telephony/CommandsInterface$SimTypes;
    const-string v4, "WorldPhoneModeSelection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EV_GET_SIM_TYPES, simTypes="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    if-eqz v3, :cond_0

    .line 255
    const-string v4, "gsm.sim.absent"

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    sget-object v4, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_NO_SIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 259
    sput-boolean v8, Lcom/android/phone/WorldPhoneModeSelection;->mbSimActive:Z

    .line 266
    :goto_3
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0xa8

    if-ne v4, v5, :cond_a

    .line 273
    sget-boolean v4, Lcom/android/phone/HtcFeatureList;->FEATURE_THIS_IS_WORLD_PHONE:Z

    if-ne v4, v7, :cond_8

    .line 275
    invoke-direct {p0}, Lcom/android/phone/WorldPhoneModeSelection;->doAction()V

    .line 285
    :cond_8
    :goto_4
    iput-boolean v7, p0, Lcom/android/phone/WorldPhoneModeSelection;->mbForbidModeSelection:Z

    goto/16 :goto_0

    .line 263
    :cond_9
    sput-boolean v7, Lcom/android/phone/WorldPhoneModeSelection;->mbSimActive:Z

    goto :goto_3

    .line 283
    :cond_a
    invoke-direct {p0}, Lcom/android/phone/WorldPhoneModeSelection;->doAction_Sprint()V

    goto :goto_4

    .line 290
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v3           #simTypes:Lcom/android/internal/telephony/CommandsInterface$SimTypes;
    :sswitch_4
    const-string v4, "WorldPhoneModeSelection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "msg.arg1="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v7, :cond_b

    .line 294
    iput-boolean v8, p0, Lcom/android/phone/WorldPhoneModeSelection;->mNeedtoCheck:Z

    .line 295
    invoke-direct {p0}, Lcom/android/phone/WorldPhoneModeSelection;->setNeverCheckNoService()V

    .line 298
    :cond_b
    iget v4, p1, Landroid/os/Message;->arg2:I

    if-ne v4, v7, :cond_0

    .line 300
    const-string v4, "WorldPhoneModeSelection"

    const-string v5, "switch to GLOBAL mode, due to no service"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const/4 v2, 0x7

    .line 304
    .local v2, mode:I
    sget-boolean v4, Lcom/android/phone/HtcFeatureList;->FEATURE_PREFERRED_NETWORK_TYPE_4:Z

    if-ne v4, v7, :cond_c

    .line 305
    const/16 v2, 0xa

    .line 307
    :cond_c
    invoke-virtual {p0, v2}, Lcom/android/phone/WorldPhoneModeSelection;->saveLastUserMode(I)V

    .line 308
    iget-object v4, p0, Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v5, 0x51a

    invoke-virtual {p0, v5}, Lcom/android/phone/WorldPhoneModeSelection;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 318
    .end local v2           #mode:I
    :sswitch_5
    invoke-direct {p0, p1}, Lcom/android/phone/WorldPhoneModeSelection;->handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 189
    nop

    :sswitch_data_0
    .sparse-switch
        0x515 -> :sswitch_0
        0x517 -> :sswitch_3
        0x518 -> :sswitch_2
        0x519 -> :sswitch_1
        0x51a -> :sswitch_5
        0x238d -> :sswitch_4
    .end sparse-switch
.end method

.method protected isSimActive()Z
    .locals 3

    .prologue
    .line 688
    iget-object v0, p0, Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getIccCardState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/WorldPhoneModeSelection;->mIccState:Lcom/android/internal/telephony/IccCard$State;

    .line 689
    const-string v0, "WorldPhoneModeSelection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSimActive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/phone/WorldPhoneModeSelection;->mbSimActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIccState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/WorldPhoneModeSelection;->mIccState:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    sget-boolean v0, Lcom/android/phone/HtcFeatureList;->FEATURE_CT_CUSTOMIZATION:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/WorldPhoneModeSelection;->mIccState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/WorldPhoneModeSelection;->mIccState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/WorldPhoneModeSelection;->mIccState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/WorldPhoneModeSelection;->mIccState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ICC_FAIL:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_1

    .line 697
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/WorldPhoneModeSelection;->mbSimActive:Z

    .line 699
    :cond_1
    sget-boolean v0, Lcom/android/phone/WorldPhoneModeSelection;->mbSimActive:Z

    return v0
.end method

.method public saveLastUserMode(I)V
    .locals 7
    .parameter "mode"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 352
    const-string v2, "WorldPhoneModeSelection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveLastUserMode, mode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    invoke-direct {p0}, Lcom/android/phone/WorldPhoneModeSelection;->getNeverCheckNoService()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 355
    iput-boolean v3, p0, Lcom/android/phone/WorldPhoneModeSelection;->mNeedtoCheck:Z

    .line 367
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/phone/WorldPhoneModeSelection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 368
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 369
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "telephony.WorldPhoneController.mode"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 370
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 371
    return-void

    .line 357
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #pref:Landroid/content/SharedPreferences;
    :cond_1
    const/4 v2, 0x7

    if-ne p1, v2, :cond_2

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/android/phone/WorldPhoneModeSelection;->mNeedtoCheck:Z

    .line 360
    sget-boolean v2, Lcom/android/phone/HtcFeatureList;->FEATURE_PREFERRED_NETWORK_TYPE_4:Z

    if-ne v2, v4, :cond_0

    .line 361
    const/16 v2, 0xa

    if-ne p1, v2, :cond_3

    :goto_2
    iput-boolean v3, p0, Lcom/android/phone/WorldPhoneModeSelection;->mNeedtoCheck:Z

    goto :goto_0

    :cond_2
    move v2, v4

    .line 357
    goto :goto_1

    :cond_3
    move v3, v4

    .line 361
    goto :goto_2
.end method
