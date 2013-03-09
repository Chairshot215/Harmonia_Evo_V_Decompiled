.class public Lcom/android/phone/HtcIncallControlPanel;
.super Ljava/lang/Object;
.source "HtcIncallControlPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/phone/NotificationMgr$StateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/HtcIncallControlPanel$EventHandler;
    }
.end annotation


# static fields
.field private static CUSTOMIZED_NAME:Ljava/lang/String; = null

.field private static final DEBUG:Z = false

.field private static DEVICE_NAME:Ljava/lang/String; = null

.field static final DIALOG_SRC_SELECTION:I = 0x1

.field private static final MODEL_NAME:Ljava/lang/String; = null

.field private static final MSG_MUTE_STATE_CHANGE:I = 0x2

.field private static final MSG_SPEAKER_STATE_CHANGE:I = 0x1

.field private static final NAME_EMPTY:Ljava/lang/String; = ""

.field private static final SRC_BT:I = 0x4

.field private static final SRC_DEVICE:I = 0x0

.field private static final SRC_HEADSET:I = 0x2

.field private static final SRC_SPEAKER:I = 0x1

.field private static final SRC_UNDEFINED:I = -0x1

.field private static final TAG:Ljava/lang/String; = "HtcIncallControlPanel"


# instance fields
.field private mAddCallText:Landroid/widget/TextView;

.field private mAudioSrcDialog:Landroid/app/Dialog;

.field private mControlAddCall:Landroid/view/View;

.field private mControlEndHeldCall:Landroid/view/View;

.field private mControlHold:Lcom/android/phone/widget/ControlButton;

.field private mControlLayout:Landroid/view/View;

.field private mControlMergeCall:Landroid/view/View;

.field private mControlMute:Lcom/android/phone/widget/ControlButton;

.field private mControlSpeaker:Lcom/android/phone/widget/ControlButton;

.field private mEndHeldCallText:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mHoldState:Z

.field private mHoldText:Landroid/widget/TextView;

.field private mIncallScreen:Lcom/android/phone/InCallScreen;

.field private mLastSrc:I

.field private mMergeCallText:Landroid/widget/TextView;

.field private mMuteState:Z

.field private mMuteText:Landroid/widget/TextView;

.field private mPendingSpeakerOn:Z

.field private mSpeakerState:Z

.field private mSpeakerText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    invoke-static {}, Lcom/android/phone/HtcIncallControlPanel;->getModleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/HtcIncallControlPanel;->MODEL_NAME:Ljava/lang/String;

    .line 73
    const-string v0, ""

    sput-object v0, Lcom/android/phone/HtcIncallControlPanel;->CUSTOMIZED_NAME:Ljava/lang/String;

    .line 74
    const-string v0, ""

    sput-object v0, Lcom/android/phone/HtcIncallControlPanel;->DEVICE_NAME:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/phone/InCallScreen;)V
    .locals 3
    .parameter "incallScreen"

    .prologue
    .line 116
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/phone/HtcIncallControlPanel;->mLastSrc:I

    .line 120
    iput-object p1, p0, Lcom/android/phone/HtcIncallControlPanel;->mIncallScreen:Lcom/android/phone/InCallScreen;

    .line 121
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/phone/NotificationMgr;->addStateListener(Lcom/android/phone/NotificationMgr$StateListener;)V

    .line 122
    new-instance v1, Lcom/android/phone/HtcIncallControlPanel$EventHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/phone/HtcIncallControlPanel$EventHandler;-><init>(Lcom/android/phone/HtcIncallControlPanel;Lcom/android/phone/HtcIncallControlPanel$1;)V

    iput-object v1, p0, Lcom/android/phone/HtcIncallControlPanel;->mHandler:Landroid/os/Handler;

    .line 124
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 125
    .local v0, app:Lcom/android/phone/PhoneApp;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/HtcIncallControlPanel;->mMuteState:Z

    .line 126
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/HtcIncallControlPanel;->mSpeakerState:Z

    .line 127
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/HtcIncallControlPanel;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/phone/HtcIncallControlPanel;->requestSpeakerStateChange(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/HtcIncallControlPanel;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/phone/HtcIncallControlPanel;->requestMuteStateChange(Z)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/phone/HtcIncallControlPanel;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/phone/HtcIncallControlPanel;->mAudioSrcDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method private getAudioSrcDialog(Landroid/app/Activity;)Landroid/app/Dialog;
    .locals 6
    .parameter "screen"

    .prologue
    const/4 v5, 0x1

    .line 905
    iget-object v2, p0, Lcom/android/phone/HtcIncallControlPanel;->mAudioSrcDialog:Landroid/app/Dialog;

    if-nez v2, :cond_0

    .line 906
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 908
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03001c

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 911
    .local v1, srcView:Landroid/view/View;
    invoke-direct {p0, v1}, Lcom/android/phone/HtcIncallControlPanel;->updateDialogButtons(Landroid/view/View;)V

    .line 913
    const v2, 0x7f0e00ae

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 914
    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 915
    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 916
    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setInverseBackgroundForced(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 917
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitleDividerVisible(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 918
    new-instance v2, Lcom/android/phone/HtcIncallControlPanel$1;

    invoke-direct {v2, p0}, Lcom/android/phone/HtcIncallControlPanel$1;-><init>(Lcom/android/phone/HtcIncallControlPanel;)V

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 923
    new-instance v2, Lcom/android/phone/HtcIncallControlPanel$2;

    invoke-direct {v2, p0}, Lcom/android/phone/HtcIncallControlPanel$2;-><init>(Lcom/android/phone/HtcIncallControlPanel;)V

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 936
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/HtcIncallControlPanel;->mAudioSrcDialog:Landroid/app/Dialog;

    .line 937
    iget-object v2, p0, Lcom/android/phone/HtcIncallControlPanel;->mAudioSrcDialog:Landroid/app/Dialog;

    new-instance v3, Lcom/android/phone/HtcIncallControlPanel$3;

    invoke-direct {v3, p0}, Lcom/android/phone/HtcIncallControlPanel$3;-><init>(Lcom/android/phone/HtcIncallControlPanel;)V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 948
    .end local v0           #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    .end local v1           #srcView:Landroid/view/View;
    :goto_0
    iget-object v2, p0, Lcom/android/phone/HtcIncallControlPanel;->mAudioSrcDialog:Landroid/app/Dialog;

    return-object v2

    .line 946
    :cond_0
    iget-object v2, p0, Lcom/android/phone/HtcIncallControlPanel;->mAudioSrcDialog:Landroid/app/Dialog;

    const v3, 0x7f0800ae

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/HtcIncallControlPanel;->updateDialogButtons(Landroid/view/View;)V

    goto :goto_0
.end method

.method private static final getCustomizedName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1045
    const-string v0, ""

    sget-object v1, Lcom/android/phone/HtcIncallControlPanel;->CUSTOMIZED_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1046
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/htc/HtcCustomizedData;->getCustomizedDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/HtcIncallControlPanel;->CUSTOMIZED_NAME:Ljava/lang/String;

    .line 1052
    :cond_0
    sget-object v0, Lcom/android/phone/HtcIncallControlPanel;->CUSTOMIZED_NAME:Ljava/lang/String;

    return-object v0
.end method

.method private static final getDeviceName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1056
    const-string v0, ""

    sget-object v1, Lcom/android/phone/HtcIncallControlPanel;->DEVICE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1057
    const-string v0, ""

    sget-object v1, Lcom/android/phone/HtcIncallControlPanel;->CUSTOMIZED_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1058
    invoke-static {}, Lcom/android/phone/HtcIncallControlPanel;->getCustomizedName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/HtcIncallControlPanel;->CUSTOMIZED_NAME:Ljava/lang/String;

    .line 1061
    :cond_0
    sget-object v0, Lcom/android/phone/HtcIncallControlPanel;->CUSTOMIZED_NAME:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1063
    sget-object v0, Lcom/android/phone/HtcIncallControlPanel;->MODEL_NAME:Ljava/lang/String;

    sput-object v0, Lcom/android/phone/HtcIncallControlPanel;->DEVICE_NAME:Ljava/lang/String;

    .line 1070
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/phone/HtcIncallControlPanel;->DEVICE_NAME:Ljava/lang/String;

    return-object v0

    .line 1066
    :cond_2
    sget-object v0, Lcom/android/phone/HtcIncallControlPanel;->CUSTOMIZED_NAME:Ljava/lang/String;

    sput-object v0, Lcom/android/phone/HtcIncallControlPanel;->DEVICE_NAME:Ljava/lang/String;

    goto :goto_0
.end method

.method private static final getModleName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1037
    const-string v1, "ro.product.model"

    const-string v2, "HTC"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1038
    .local v0, model:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1039
    const-string v0, "HTC"

    .line 1041
    :cond_0
    return-object v0
.end method

.method private initControlButton(I)Landroid/view/View;
    .locals 2
    .parameter "resId"

    .prologue
    .line 181
    iget-object v1, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlLayout:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 182
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    :cond_0
    return-object v0
.end method

.method private static final isIdle()Z
    .locals 2

    .prologue
    .line 803
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeToast(I)V
    .locals 2
    .parameter "stringRes"

    .prologue
    .line 797
    invoke-static {}, Lcom/android/phone/HtcIncallControlPanel;->isIdle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 798
    iget-object v0, p0, Lcom/android/phone/HtcIncallControlPanel;->mIncallScreen:Lcom/android/phone/InCallScreen;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/phone/InCallScreen;->makeToast(IZ)V

    .line 800
    :cond_0
    return-void
.end method

.method private requestMuteStateChange(Z)V
    .locals 4
    .parameter "on"

    .prologue
    .line 776
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    if-nez v3, :cond_1

    .line 794
    :cond_0
    :goto_0
    return-void

    .line 779
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 780
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v1

    .line 782
    .local v1, isMuted:Z
    iget-boolean v3, p0, Lcom/android/phone/HtcIncallControlPanel;->mMuteState:Z

    if-eq v3, v1, :cond_0

    .line 783
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 784
    .local v0, fgCallState:Lcom/android/internal/telephony/Call$State;
    invoke-direct {p0, v2, v0}, Lcom/android/phone/HtcIncallControlPanel;->updateMuteButton(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call$State;)V

    .line 790
    iput-boolean v1, p0, Lcom/android/phone/HtcIncallControlPanel;->mMuteState:Z

    goto :goto_0
.end method

.method private requestSpeakerStateChange(Z)V
    .locals 0
    .parameter "on"

    .prologue
    .line 761
    invoke-virtual {p0}, Lcom/android/phone/HtcIncallControlPanel;->updateSpeakerButton()V

    .line 763
    invoke-direct {p0}, Lcom/android/phone/HtcIncallControlPanel;->updateAudioSrcDialog()V

    .line 764
    return-void
.end method

.method private reset(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    const/4 v0, 0x0

    .line 1166
    if-eqz p1, :cond_0

    .line 1167
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1168
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1170
    :cond_0
    return-void
.end method

.method private resetSpeakerButtonOnClickListener()V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlSpeaker:Lcom/android/phone/widget/ControlButton;

    if-eqz v0, :cond_0

    .line 190
    sget-boolean v0, Lcom/android/phone/util/Constants;->SUPPORT_AUDIO_SRC_SELECTION:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/HtcIncallControlPanel;->mIncallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlSpeaker:Lcom/android/phone/widget/ControlButton;

    iget-object v1, p0, Lcom/android/phone/HtcIncallControlPanel;->mIncallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v1}, Lcom/android/phone/widget/ControlButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlSpeaker:Lcom/android/phone/widget/ControlButton;

    invoke-virtual {v0, p0}, Lcom/android/phone/widget/ControlButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private setAudioIndicator(Landroid/widget/TextView;Z)V
    .locals 4
    .parameter "view"
    .parameter "on"

    .prologue
    .line 1025
    if-eqz p1, :cond_0

    .line 1026
    if-eqz p2, :cond_1

    const v2, 0x7f020005

    .line 1029
    .local v2, resId:I
    :goto_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1030
    .local v1, parent:Landroid/view/ViewGroup;
    const v3, 0x7f0800b1

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1031
    .local v0, icon:Landroid/widget/ImageView;
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1034
    .end local v0           #icon:Landroid/widget/ImageView;
    .end local v1           #parent:Landroid/view/ViewGroup;
    .end local v2           #resId:I
    :cond_0
    return-void

    .line 1026
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private switchState(Landroid/view/View;Z)V
    .locals 6
    .parameter "view"
    .parameter "on"

    .prologue
    const/16 v1, 0x8

    const/4 v4, 0x0

    .line 826
    if-nez p1, :cond_1

    .line 839
    :cond_0
    :goto_0
    return-void

    .line 829
    :cond_1
    const v5, 0x7f080019

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 830
    .local v2, onView:Landroid/view/View;
    const v5, 0x7f08001a

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 832
    .local v0, offView:Landroid/view/View;
    if-eqz p2, :cond_2

    move v3, v4

    .line 833
    .local v3, onViewVisibility:I
    :goto_1
    if-eqz p2, :cond_3

    .line 835
    .local v1, offViewVisibility:I
    :goto_2
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 836
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 837
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .end local v1           #offViewVisibility:I
    .end local v3           #onViewVisibility:I
    :cond_2
    move v3, v1

    .line 832
    goto :goto_1

    .restart local v3       #onViewVisibility:I
    :cond_3
    move v1, v4

    .line 833
    goto :goto_2
.end method

.method private turnBT(Z)V
    .locals 3
    .parameter "on"

    .prologue
    .line 1074
    iget-object v1, p0, Lcom/android/phone/HtcIncallControlPanel;->mIncallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnectedOrPending()Z

    move-result v0

    .line 1076
    .local v0, audioConnectedOrPending:Z
    if-eq p1, v0, :cond_0

    .line 1077
    iget-object v1, p0, Lcom/android/phone/HtcIncallControlPanel;->mIncallScreen:Lcom/android/phone/InCallScreen;

    iget-object v2, p0, Lcom/android/phone/HtcIncallControlPanel;->mIncallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->onBluetoothClick(Landroid/content/Context;)V

    .line 1080
    :cond_0
    return-void
.end method

.method private turnOnSpeakerWithBT()V
    .locals 1

    .prologue
    .line 1143
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/HtcIncallControlPanel;->turnBT(Z)V

    .line 1144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/HtcIncallControlPanel;->mPendingSpeakerOn:Z

    .line 1145
    return-void
.end method

.method private turnSpeaker(Z)V
    .locals 3
    .parameter "on"

    .prologue
    .line 1083
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/phone/HtcIncallControlPanel;->mIncallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnectedOrPending()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1084
    invoke-direct {p0}, Lcom/android/phone/HtcIncallControlPanel;->turnOnSpeakerWithBT()V

    .line 1092
    :cond_0
    :goto_0
    return-void

    .line 1086
    :cond_1
    iget-object v1, p0, Lcom/android/phone/HtcIncallControlPanel;->mIncallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    .line 1088
    .local v0, isOn:Z
    if-eq p1, v0, :cond_0

    .line 1089
    iget-object v1, p0, Lcom/android/phone/HtcIncallControlPanel;->mIncallScreen:Lcom/android/phone/InCallScreen;

    iget-object v2, p0, Lcom/android/phone/HtcIncallControlPanel;->mIncallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->switchSpeakerOnOff(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private updateAddCallButton()V
    .locals 3

    .prologue
    .line 654
    iget-object v1, p0, Lcom/android/phone/HtcIncallControlPanel;->mIncallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getMode()Lcom/android/phone/InCallScreen$InCallScreenMode;

    move-result-object v0

    .line 656
    .local v0, mode:Lcom/android/phone/InCallScreen$InCallScreenMode;
    invoke-virtual {v0}, Lcom/android/phone/InCallScreen$InCallScreenMode;->isSingleAlive()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen$InCallScreenMode;->isConference()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 657
    :cond_0
    iget-object v1, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlAddCall:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 661
    :goto_0
    return-void

    .line 659
    :cond_1
    iget-object v1, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlAddCall:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateAudioSrcButton(ZZ)V
    .locals 11
    .parameter "isIdle"
    .parameter "isRinging"

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 536
    if-nez p1, :cond_0

    if-eqz p2, :cond_4

    .line 537
    :cond_0
    iget-object v8, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlSpeaker:Lcom/android/phone/widget/ControlButton;

    invoke-virtual {v8}, Lcom/android/phone/widget/ControlButton;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 538
    iget-object v8, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlSpeaker:Lcom/android/phone/widget/ControlButton;

    invoke-virtual {v8, v7}, Lcom/android/phone/widget/ControlButton;->setEnabled(Z)V

    .line 546
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 547
    .local v1, currentSrc:I
    iget-object v8, p0, Lcom/android/phone/HtcIncallControlPanel;->mIncallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v8}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnectedOrPending()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 548
    const/4 v1, 0x4

    .line 558
    :goto_1
    iget v8, p0, Lcom/android/phone/HtcIncallControlPanel;->mLastSrc:I

    if-eq v8, v1, :cond_2

    .line 559
    iput v1, p0, Lcom/android/phone/HtcIncallControlPanel;->mLastSrc:I

    .line 560
    const v6, 0x7f0e00c5

    .line 561
    .local v6, toastRes:I
    const v4, 0x7f020092

    .line 562
    .local v4, resId:I
    const v2, 0x2080a46

    .line 564
    .local v2, menuIconId:I
    packed-switch v1, :pswitch_data_0

    .line 593
    :goto_2
    invoke-direct {p0, v6}, Lcom/android/phone/HtcIncallControlPanel;->makeToast(I)V

    .line 597
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isTmousCustomization()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 598
    iget-object v8, p0, Lcom/android/phone/HtcIncallControlPanel;->mIncallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v8}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 599
    .local v3, res:Landroid/content/res/Resources;
    const-string v8, "phone_icon_audio_source"

    const-string v9, "drawable"

    const-string v10, "com.android.phone"

    invoke-virtual {v3, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 600
    iget-object v8, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlSpeaker:Lcom/android/phone/widget/ControlButton;

    const v9, 0x7f0e00af

    invoke-virtual {v8, v9}, Lcom/android/phone/widget/ControlButton;->setText(I)V

    .line 607
    .end local v3           #res:Landroid/content/res/Resources;
    :goto_3
    iget-object v8, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlSpeaker:Lcom/android/phone/widget/ControlButton;

    invoke-virtual {v8, v4}, Lcom/android/phone/widget/ControlButton;->setButtonDrawable(I)V

    .line 610
    iget-object v8, p0, Lcom/android/phone/HtcIncallControlPanel;->mIncallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v8, v2}, Lcom/android/phone/InCallScreen;->setAudioSrcMenuItemIcon(I)V

    .line 613
    .end local v2           #menuIconId:I
    .end local v4           #resId:I
    .end local v6           #toastRes:I
    :cond_2
    if-ne v1, v5, :cond_9

    .line 614
    .local v5, speakerOn:Z
    :goto_4
    iget-object v7, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlSpeaker:Lcom/android/phone/widget/ControlButton;

    invoke-virtual {v7, v5}, Lcom/android/phone/widget/ControlButton;->setChecked(Z)V

    .line 615
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isLandscapeProject()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 616
    iget-object v7, p0, Lcom/android/phone/HtcIncallControlPanel;->mIncallScreen:Lcom/android/phone/InCallScreen;

    const v8, 0x2020003

    invoke-virtual {v7, v8, v5}, Lcom/android/phone/InCallScreen;->setButtonChecked(IZ)V

    .line 618
    :cond_3
    return-void

    .line 541
    .end local v1           #currentSrc:I
    .end local v5           #speakerOn:Z
    :cond_4
    iget-object v8, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlSpeaker:Lcom/android/phone/widget/ControlButton;

    invoke-virtual {v8}, Lcom/android/phone/widget/ControlButton;->isEnabled()Z

    move-result v8

    if-nez v8, :cond_1

    .line 542
    iget-object v8, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlSpeaker:Lcom/android/phone/widget/ControlButton;

    invoke-virtual {v8, v5}, Lcom/android/phone/widget/ControlButton;->setEnabled(Z)V

    goto :goto_0

    .line 549
    .restart local v1       #currentSrc:I
    :cond_5
    iget-object v8, p0, Lcom/android/phone/HtcIncallControlPanel;->mIncallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v8}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 551
    const/4 v1, 0x1

    goto :goto_1

    .line 552
    :cond_6
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/PhoneApp;->isHandsFreePlugged()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 553
    const/4 v1, 0x2

    goto :goto_1

    .line 555
    :cond_7
    const/4 v1, 0x0

    goto :goto_1

    .line 567
    .restart local v2       #menuIconId:I
    .restart local v4       #resId:I
    .restart local v6       #toastRes:I
    :pswitch_0
    const v6, 0x7f0e006a

    .line 568
    const v4, 0x7f0200a1

    .line 569
    const v2, 0x2080a83

    .line 570
    goto :goto_2

    .line 574
    :pswitch_1
    const v6, 0x7f0e00c7

    .line 575
    const v4, 0x7f020099

    .line 576
    const v2, 0x2080a15

    .line 577
    goto :goto_2

    .line 581
    :pswitch_2
    const v6, 0x7f0e00c6

    .line 582
    const v4, 0x7f0200a1

    .line 583
    const v2, 0x2080a82

    .line 584
    goto/16 :goto_2

    .line 603
    :cond_8
    const v0, 0x7f020077

    .line 604
    .local v0, bkResId:I
    iget-object v8, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlSpeaker:Lcom/android/phone/widget/ControlButton;

    invoke-virtual {v8, v0}, Lcom/android/phone/widget/ControlButton;->setBackgroundResource(I)V

    goto :goto_3

    .end local v0           #bkResId:I
    .end local v2           #menuIconId:I
    .end local v4           #resId:I
    .end local v6           #toastRes:I
    :cond_9
    move v5, v7

    .line 613
    goto :goto_4

    .line 564
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateAudioSrcDialog()V
    .locals 2

    .prologue
    .line 1095
    iget-object v0, p0, Lcom/android/phone/HtcIncallControlPanel;->mAudioSrcDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/HtcIncallControlPanel;->mAudioSrcDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1096
    iget-object v0, p0, Lcom/android/phone/HtcIncallControlPanel;->mAudioSrcDialog:Landroid/app/Dialog;

    const v1, 0x7f0800ae

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/HtcIncallControlPanel;->updateDialogButtons(Landroid/view/View;)V

    .line 1098
    :cond_0
    return-void
.end method

.method private updateBTDialogButton(Landroid/view/View;)V
    .locals 7
    .parameter "rootView"

    .prologue
    .line 960
    const v6, 0x7f0800af

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 961
    .local v3, group:Landroid/view/View;
    if-eqz v3, :cond_1

    .line 962
    iget-object v6, p0, Lcom/android/phone/HtcIncallControlPanel;->mIncallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v6}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v5

    .line 963
    .local v5, visible:Z
    if-eqz v5, :cond_2

    const/4 v4, 0x0

    .line 964
    .local v4, visibility:I
    :goto_0
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eq v6, v4, :cond_0

    .line 965
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 968
    :cond_0
    if-eqz v5, :cond_1

    .line 969
    const v6, 0x7f0800b0

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 971
    .local v1, btView:Landroid/widget/TextView;
    if-eqz v1, :cond_1

    .line 973
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v0

    .line 975
    .local v0, bhf:Lcom/android/phone/BluetoothHandsfree;
    if-eqz v0, :cond_3

    .line 976
    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->getHeadsetName()Ljava/lang/String;

    move-result-object v2

    .line 977
    .local v2, deviceName:Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 982
    .end local v2           #deviceName:Ljava/lang/String;
    :goto_1
    iget-object v6, p0, Lcom/android/phone/HtcIncallControlPanel;->mIncallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v6}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnectedOrPending()Z

    move-result v6

    invoke-direct {p0, v1, v6}, Lcom/android/phone/HtcIncallControlPanel;->setAudioIndicator(Landroid/widget/TextView;Z)V

    .line 985
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 989
    .end local v0           #bhf:Lcom/android/phone/BluetoothHandsfree;
    .end local v1           #btView:Landroid/widget/TextView;
    .end local v4           #visibility:I
    .end local v5           #visible:Z
    :cond_1
    return-void

    .line 963
    .restart local v5       #visible:Z
    :cond_2
    const/16 v4, 0x8

    goto :goto_0

    .line 979
    .restart local v0       #bhf:Lcom/android/phone/BluetoothHandsfree;
    .restart local v1       #btView:Landroid/widget/TextView;
    .restart local v4       #visibility:I
    :cond_3
    const v6, 0x7f0e03d3

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method private updateControlLayout(Lcom/android/internal/telephony/Phone;Lcom/android/phone/InCallScreen$InCallScreenMode;)Z
    .locals 6
    .parameter "phone"
    .parameter "mode"

    .prologue
    .line 340
    const/4 v3, 0x0

    .line 342
    .local v3, isVisible:Z
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 343
    .local v1, fgCall:Lcom/android/internal/telephony/Call;
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 344
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    const/4 v2, 0x1

    .line 348
    .local v2, hasAliveCall:Z
    :goto_0
    if-nez v2, :cond_3

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v4}, Lcom/android/phone/CallNotifier;->isNewRingingConnectionInKeyguardRestrictedInputMode()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 351
    iget-object v4, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlLayout:Landroid/view/View;

    if-nez v4, :cond_1

    .line 352
    const-string v4, "HtcIncallControlPanel"

    const-string v5, "control layout does not exist"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_1
    :goto_1
    return v3

    .line 344
    .end local v2           #hasAliveCall:Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 357
    .restart local v2       #hasAliveCall:Z
    :cond_3
    iget-object v4, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlMute:Lcom/android/phone/widget/ControlButton;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlSpeaker:Lcom/android/phone/widget/ControlButton;

    if-nez v4, :cond_5

    .line 358
    :cond_4
    const-string v4, "HtcIncallControlPanel"

    const-string v5, "no control(s) exist"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 359
    :cond_5
    invoke-virtual {p2}, Lcom/android/phone/InCallScreen$InCallScreenMode;->isRinging()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 361
    iget-object v4, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlLayout:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 362
    const/4 v3, 0x1

    goto :goto_1

    .line 363
    :cond_6
    if-nez v2, :cond_7

    .line 365
    const/4 v3, 0x1

    goto :goto_1

    .line 367
    :cond_7
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private updateDeviceDialogButton(Landroid/view/View;)V
    .locals 3
    .parameter "rootView"

    .prologue
    .line 992
    const v2, 0x7f0800b2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 994
    .local v0, deviceView:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 996
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 997
    const v2, 0x7f0e00b0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1003
    :goto_0
    iget-object v2, p0, Lcom/android/phone/HtcIncallControlPanel;->mIncallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnectedOrPending()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/HtcIncallControlPanel;->mIncallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v1, 0x1

    .line 1006
    .local v1, useDevice:Z
    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/android/phone/HtcIncallControlPanel;->setAudioIndicator(Landroid/widget/TextView;Z)V

    .line 1008
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1010
    .end local v1           #useDevice:Z
    :cond_0
    return-void

    .line 999
    :cond_1
    invoke-static {}, Lcom/android/phone/HtcIncallControlPanel;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1003
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private updateDialogButtons(Landroid/view/View;)V
    .locals 0
    .parameter "rootView"

    .prologue
    .line 952
    if-eqz p1, :cond_0

    .line 953
    invoke-direct {p0, p1}, Lcom/android/phone/HtcIncallControlPanel;->updateBTDialogButton(Landroid/view/View;)V

    .line 954
    invoke-direct {p0, p1}, Lcom/android/phone/HtcIncallControlPanel;->updateDeviceDialogButton(Landroid/view/View;)V

    .line 955
    invoke-direct {p0, p1}, Lcom/android/phone/HtcIncallControlPanel;->updateSpeakerDialogButton(Landroid/view/View;)V

    .line 957
    :cond_0
    return-void
.end method

.method private updateHoldButton(Lcom/android/internal/telephony/Phone;)V
    .locals 8
    .parameter "phone"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 622
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v7

    if-nez v7, :cond_3

    move v2, v5

    .line 623
    .local v2, hasActiveCall:Z
    :goto_0
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 624
    .local v1, fgCallState:Lcom/android/internal/telephony/Call$State;
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v7

    if-nez v7, :cond_4

    move v3, v5

    .line 625
    .local v3, hasHoldingCall:Z
    :goto_1
    if-eqz v3, :cond_5

    if-nez v2, :cond_5

    move v4, v5

    .line 626
    .local v4, onHold:Z
    :goto_2
    if-eqz v2, :cond_0

    if-nez v3, :cond_6

    :cond_0
    if-eqz v2, :cond_1

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v7, :cond_6

    :cond_1
    move v0, v5

    .line 627
    .local v0, canHold:Z
    :goto_3
    if-nez v0, :cond_7

    .line 631
    iget-object v5, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlHold:Lcom/android/phone/widget/ControlButton;

    invoke-virtual {v5}, Lcom/android/phone/widget/ControlButton;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 632
    iget-object v5, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlHold:Lcom/android/phone/widget/ControlButton;

    invoke-virtual {v5, v6}, Lcom/android/phone/widget/ControlButton;->setEnabled(Z)V

    .line 650
    :cond_2
    :goto_4
    return-void

    .end local v0           #canHold:Z
    .end local v1           #fgCallState:Lcom/android/internal/telephony/Call$State;
    .end local v2           #hasActiveCall:Z
    .end local v3           #hasHoldingCall:Z
    .end local v4           #onHold:Z
    :cond_3
    move v2, v6

    .line 622
    goto :goto_0

    .restart local v1       #fgCallState:Lcom/android/internal/telephony/Call$State;
    .restart local v2       #hasActiveCall:Z
    :cond_4
    move v3, v6

    .line 624
    goto :goto_1

    .restart local v3       #hasHoldingCall:Z
    :cond_5
    move v4, v6

    .line 625
    goto :goto_2

    .restart local v4       #onHold:Z
    :cond_6
    move v0, v6

    .line 626
    goto :goto_3

    .line 638
    .restart local v0       #canHold:Z
    :cond_7
    iget-object v6, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlHold:Lcom/android/phone/widget/ControlButton;

    invoke-virtual {v6}, Lcom/android/phone/widget/ControlButton;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_8

    .line 639
    iget-object v6, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlHold:Lcom/android/phone/widget/ControlButton;

    invoke-virtual {v6, v5}, Lcom/android/phone/widget/ControlButton;->setEnabled(Z)V

    .line 641
    :cond_8
    iget-boolean v5, p0, Lcom/android/phone/HtcIncallControlPanel;->mHoldState:Z

    if-eq v5, v4, :cond_9

    .line 642
    iput-boolean v4, p0, Lcom/android/phone/HtcIncallControlPanel;->mHoldState:Z

    .line 645
    :cond_9
    iget-object v5, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlHold:Lcom/android/phone/widget/ControlButton;

    invoke-virtual {v5, v4}, Lcom/android/phone/widget/ControlButton;->setChecked(Z)V

    .line 646
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isLandscapeProject()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 647
    iget-object v5, p0, Lcom/android/phone/HtcIncallControlPanel;->mIncallScreen:Lcom/android/phone/InCallScreen;

    const v6, 0x2020004

    invoke-virtual {v5, v6, v4}, Lcom/android/phone/InCallScreen;->setButtonChecked(IZ)V

    goto :goto_4
.end method

.method private updateMuteButton(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call$State;)V
    .locals 6
    .parameter "phone"
    .parameter "fgCallState"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 377
    iget-object v5, p0, Lcom/android/phone/HtcIncallControlPanel;->mIncallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/phone/HtcIncallControlPanel;->mIncallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v5}, Lcom/android/phone/InCallScreen;->isEmergency()Z

    move-result v1

    .line 379
    .local v1, emergencyMode:Z
    :goto_0
    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v5, p2, :cond_2

    move v0, v4

    .line 381
    .local v0, canMute:Z
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/phone/HtcIncallControlPanel;->updateMuteState(Lcom/android/internal/telephony/Phone;)V

    .line 383
    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    move v2, v4

    .line 384
    .local v2, enabled:Z
    :goto_2
    iget-object v3, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlMute:Lcom/android/phone/widget/ControlButton;

    invoke-virtual {v3}, Lcom/android/phone/widget/ControlButton;->isEnabled()Z

    move-result v3

    if-eq v3, v2, :cond_0

    .line 385
    iget-object v3, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlMute:Lcom/android/phone/widget/ControlButton;

    invoke-virtual {v3, v2}, Lcom/android/phone/widget/ControlButton;->setEnabled(Z)V

    .line 387
    :cond_0
    return-void

    .end local v0           #canMute:Z
    .end local v1           #emergencyMode:Z
    .end local v2           #enabled:Z
    :cond_1
    move v1, v3

    .line 377
    goto :goto_0

    .restart local v1       #emergencyMode:Z
    :cond_2
    move v0, v3

    .line 379
    goto :goto_1

    .restart local v0       #canMute:Z
    :cond_3
    move v2, v3

    .line 383
    goto :goto_2
.end method

.method private updateMuteState(Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .parameter "phone"

    .prologue
    .line 390
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v0

    .line 396
    .local v0, muteOn:Z
    iget-boolean v2, p0, Lcom/android/phone/HtcIncallControlPanel;->mMuteState:Z

    if-eq v2, v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-eq v2, v3, :cond_0

    .line 398
    iput-boolean v0, p0, Lcom/android/phone/HtcIncallControlPanel;->mMuteState:Z

    .line 401
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 403
    if-eqz v0, :cond_2

    const v1, 0x7f0e008e

    .line 405
    .local v1, stringRes:I
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/phone/HtcIncallControlPanel;->makeToast(I)V

    .line 410
    .end local v1           #stringRes:I
    :cond_0
    iget-object v2, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlMute:Lcom/android/phone/widget/ControlButton;

    invoke-virtual {v2, v0}, Lcom/android/phone/widget/ControlButton;->setChecked(Z)V

    .line 411
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isLandscapeProject()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/HtcIncallControlPanel;->mIncallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v2, :cond_1

    .line 412
    iget-object v2, p0, Lcom/android/phone/HtcIncallControlPanel;->mIncallScreen:Lcom/android/phone/InCallScreen;

    const v3, 0x2020001

    invoke-virtual {v2, v3, v0}, Lcom/android/phone/InCallScreen;->setButtonChecked(IZ)V

    .line 414
    :cond_1
    return-void

    .line 403
    :cond_2
    const v1, 0x7f0e008f

    goto :goto_0
.end method

.method private updateSpeakerButton(Lcom/android/phone/PhoneApp;ZZ)V
    .locals 9
    .parameter "phoneApp"
    .parameter "isIdle"
    .parameter "isRinging"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 439
    if-nez p2, :cond_0

    if-eqz p3, :cond_3

    .line 443
    :cond_0
    iget-object v4, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlSpeaker:Lcom/android/phone/widget/ControlButton;

    invoke-virtual {v4}, Lcom/android/phone/widget/ControlButton;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 444
    iget-object v4, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlSpeaker:Lcom/android/phone/widget/ControlButton;

    invoke-virtual {v4, v8}, Lcom/android/phone/widget/ControlButton;->setEnabled(Z)V

    .line 497
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlSpeaker:Lcom/android/phone/widget/ControlButton;

    const v5, 0x7f0200a1

    invoke-virtual {v4, v5}, Lcom/android/phone/widget/ControlButton;->setButtonDrawable(I)V

    .line 500
    const/4 v2, -0x1

    .line 501
    .local v2, resId:I
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isTmousCustomization()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 502
    iget-object v4, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlSpeaker:Lcom/android/phone/widget/ControlButton;

    const v5, 0x7f0e0257

    invoke-virtual {v4, v5}, Lcom/android/phone/widget/ControlButton;->setText(I)V

    .line 503
    const-string v4, "phone_btn_right_speaker"

    const-string v5, "drawable"

    const-string v6, "phone_btn_contorl_right"

    const-string v7, "drawable"

    invoke-static {v6, v7, v8}, Lcom/android/phone/theme/ThemeAdapter;->getIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/android/phone/theme/ThemeAdapter;->getIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 507
    :goto_1
    if-eqz v2, :cond_2

    .line 508
    iget-object v4, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlSpeaker:Lcom/android/phone/widget/ControlButton;

    invoke-virtual {v4, v2}, Lcom/android/phone/widget/ControlButton;->setBackgroundResource(I)V

    .line 511
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/HtcIncallControlPanel;->updateSpeakerState()V

    .line 512
    return-void

    .line 450
    .end local v2           #resId:I
    :cond_3
    iget-object v4, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlSpeaker:Lcom/android/phone/widget/ControlButton;

    invoke-virtual {v4}, Lcom/android/phone/widget/ControlButton;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_6

    .line 457
    invoke-virtual {p1}, Lcom/android/phone/PhoneApp;->isHandsFreePlugged()Z

    move-result v4

    if-ne v4, v7, :cond_5

    .line 458
    invoke-virtual {p1}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 459
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v3, 0x0

    .line 461
    .local v3, ttyMode:I
    :try_start_0
    const-string v4, "preferred_tty_mode"

    invoke-static {v0, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 466
    :goto_2
    if-eqz v3, :cond_4

    .line 467
    iget-object v4, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlSpeaker:Lcom/android/phone/widget/ControlButton;

    invoke-virtual {v4, v8}, Lcom/android/phone/widget/ControlButton;->setEnabled(Z)V

    goto :goto_0

    .line 463
    :catch_0
    move-exception v1

    .line 464
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v4, "HtcIncallControlPanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "try to get TTY mode in method updateSpeakerButton - ERROR( "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 469
    .end local v1           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_4
    iget-object v4, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlSpeaker:Lcom/android/phone/widget/ControlButton;

    invoke-virtual {v4, v7}, Lcom/android/phone/widget/ControlButton;->setEnabled(Z)V

    goto :goto_0

    .line 472
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v3           #ttyMode:I
    :cond_5
    iget-object v4, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlSpeaker:Lcom/android/phone/widget/ControlButton;

    invoke-virtual {v4, v7}, Lcom/android/phone/widget/ControlButton;->setEnabled(Z)V

    goto :goto_0

    .line 481
    :cond_6
    invoke-virtual {p1}, Lcom/android/phone/PhoneApp;->isHandsFreePlugged()Z

    move-result v4

    if-ne v4, v7, :cond_1

    .line 482
    invoke-virtual {p1}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 483
    .restart local v0       #cr:Landroid/content/ContentResolver;
    const/4 v3, 0x0

    .line 485
    .restart local v3       #ttyMode:I
    :try_start_1
    const-string v4, "preferred_tty_mode"

    invoke-static {v0, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 490
    :goto_3
    if-eqz v3, :cond_1

    .line 491
    iget-object v4, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlSpeaker:Lcom/android/phone/widget/ControlButton;

    invoke-virtual {v4, v8}, Lcom/android/phone/widget/ControlButton;->setEnabled(Z)V

    goto/16 :goto_0

    .line 487
    :catch_1
    move-exception v1

    .line 488
    .restart local v1       #e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v4, "HtcIncallControlPanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "try to get TTY mode in method updateSpeakerButton - ERROR( "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 505
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #e:Landroid/provider/Settings$SettingNotFoundException;
    .end local v3           #ttyMode:I
    .restart local v2       #resId:I
    :cond_7
    const-string v4, "phone_btn_contorl_right"

    const-string v5, "drawable"

    invoke-static {v4, v5, v8}, Lcom/android/phone/theme/ThemeAdapter;->getIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    goto/16 :goto_1
.end method

.method private updateSpeakerDialogButton(Landroid/view/View;)V
    .locals 2
    .parameter "rootView"

    .prologue
    .line 1013
    const v1, 0x7f0800b3

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1016
    .local v0, speakerView:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 1017
    iget-object v1, p0, Lcom/android/phone/HtcIncallControlPanel;->mIncallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/HtcIncallControlPanel;->setAudioIndicator(Landroid/widget/TextView;Z)V

    .line 1020
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1022
    :cond_0
    return-void
.end method

.method private updateSpeakerState()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 515
    iget-object v2, p0, Lcom/android/phone/HtcIncallControlPanel;->mIncallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v1

    .line 517
    .local v1, speakerOn:Z
    iget-boolean v2, p0, Lcom/android/phone/HtcIncallControlPanel;->mSpeakerState:Z

    if-eq v2, v1, :cond_0

    .line 518
    iput-boolean v1, p0, Lcom/android/phone/HtcIncallControlPanel;->mSpeakerState:Z

    .line 519
    iget-boolean v2, p0, Lcom/android/phone/HtcIncallControlPanel;->mSpeakerState:Z

    if-eqz v2, :cond_3

    const v0, 0x7f0e006a

    .line 521
    .local v0, resId:I
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/phone/HtcIncallControlPanel;->makeToast(I)V

    .line 524
    .end local v0           #resId:I
    :cond_0
    if-eqz v1, :cond_1

    iget v2, p0, Lcom/android/phone/HtcIncallControlPanel;->mLastSrc:I

    if-eq v3, v2, :cond_1

    .line 525
    iput v3, p0, Lcom/android/phone/HtcIncallControlPanel;->mLastSrc:I

    .line 528
    :cond_1
    iget-object v2, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlSpeaker:Lcom/android/phone/widget/ControlButton;

    invoke-virtual {v2, v1}, Lcom/android/phone/widget/ControlButton;->setChecked(Z)V

    .line 529
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isLandscapeProject()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 530
    iget-object v2, p0, Lcom/android/phone/HtcIncallControlPanel;->mIncallScreen:Lcom/android/phone/InCallScreen;

    const v3, 0x2020003

    invoke-virtual {v2, v3, v1}, Lcom/android/phone/InCallScreen;->setButtonChecked(IZ)V

    .line 532
    :cond_2
    return-void

    .line 519
    :cond_3
    const v0, 0x7f0e006b

    goto :goto_0
.end method


# virtual methods
.method public arrangeLayout(ZZZ)V
    .locals 8
    .parameter "isNavi"
    .parameter "isMulti"
    .parameter "isConf"

    .prologue
    const/4 v7, 0x0

    .line 1102
    or-int v1, p2, p3

    .line 1104
    .local v1, isMcMode:Z
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isTmousCustomization()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1105
    if-eqz p1, :cond_2

    move v5, v7

    .line 1106
    .local v5, visible:I
    :goto_0
    iget-object v6, p0, Lcom/android/phone/HtcIncallControlPanel;->mMuteText:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1107
    iget-object v6, p0, Lcom/android/phone/HtcIncallControlPanel;->mSpeakerText:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1109
    const/16 v2, 0x8

    .line 1110
    .local v2, layer1Visible:I
    const/16 v3, 0x8

    .line 1112
    .local v3, layer2Visible:I
    if-eqz p1, :cond_0

    .line 1113
    if-nez v1, :cond_3

    .line 1114
    const/4 v3, 0x0

    .line 1124
    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlEndHeldCall:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1127
    iget-object v6, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlHold:Lcom/android/phone/widget/ControlButton;

    invoke-virtual {v6}, Lcom/android/phone/widget/ControlButton;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1130
    iget-object v6, p0, Lcom/android/phone/HtcIncallControlPanel;->mIncallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v6}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1131
    .local v4, res:Landroid/content/res/Resources;
    if-eqz v1, :cond_5

    .line 1132
    const v6, 0x7f0c0022

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v0, v6

    .line 1133
    .local v0, bottom:I
    iget-object v6, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlLayout:Landroid/view/View;

    invoke-virtual {v6, v7, v7, v7, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 1138
    .end local v0           #bottom:I
    .end local v2           #layer1Visible:I
    .end local v3           #layer2Visible:I
    .end local v4           #res:Landroid/content/res/Resources;
    .end local v5           #visible:I
    :cond_1
    :goto_2
    return-void

    .line 1105
    :cond_2
    const/4 v5, 0x4

    goto :goto_0

    .line 1116
    .restart local v2       #layer1Visible:I
    .restart local v3       #layer2Visible:I
    .restart local v5       #visible:I
    :cond_3
    if-eqz p2, :cond_4

    .line 1117
    const/4 v2, 0x0

    goto :goto_1

    .line 1118
    :cond_4
    if-eqz p3, :cond_0

    .line 1119
    const/4 v3, 0x0

    goto :goto_1

    .line 1135
    .restart local v4       #res:Landroid/content/res/Resources;
    :cond_5
    iget-object v6, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlLayout:Landroid/view/View;

    invoke-virtual {v6, v7, v7, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_2
.end method

.method destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 240
    iget-object v0, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlMute:Lcom/android/phone/widget/ControlButton;

    invoke-direct {p0, v0}, Lcom/android/phone/HtcIncallControlPanel;->reset(Landroid/view/View;)V

    .line 241
    iget-object v0, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlSpeaker:Lcom/android/phone/widget/ControlButton;

    invoke-direct {p0, v0}, Lcom/android/phone/HtcIncallControlPanel;->reset(Landroid/view/View;)V

    .line 242
    iget-object v0, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlHold:Lcom/android/phone/widget/ControlButton;

    invoke-direct {p0, v0}, Lcom/android/phone/HtcIncallControlPanel;->reset(Landroid/view/View;)V

    .line 243
    iget-object v0, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlAddCall:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/phone/HtcIncallControlPanel;->reset(Landroid/view/View;)V

    .line 244
    iget-object v0, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlEndHeldCall:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/phone/HtcIncallControlPanel;->reset(Landroid/view/View;)V

    .line 245
    iget-object v0, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlMergeCall:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/phone/HtcIncallControlPanel;->reset(Landroid/view/View;)V

    .line 247
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/phone/NotificationMgr;->removeStateListener(Lcom/android/phone/NotificationMgr$StateListener;)V

    .line 249
    iget-object v0, p0, Lcom/android/phone/HtcIncallControlPanel;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/android/phone/HtcIncallControlPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 251
    iput-object v1, p0, Lcom/android/phone/HtcIncallControlPanel;->mHandler:Landroid/os/Handler;

    .line 253
    :cond_0
    return-void
.end method

.method dismissDialog(I)V
    .locals 1
    .parameter "dialogId"

    .prologue
    .line 899
    iget-object v0, p0, Lcom/android/phone/HtcIncallControlPanel;->mAudioSrcDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/HtcIncallControlPanel;->mAudioSrcDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 900
    iget-object v0, p0, Lcom/android/phone/HtcIncallControlPanel;->mAudioSrcDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 902
    :cond_0
    return-void
.end method

.method getDialog(Landroid/app/Activity;I)Landroid/app/Dialog;
    .locals 2
    .parameter "screen"
    .parameter "dialogId"

    .prologue
    .line 876
    const/4 v0, 0x0

    .line 878
    .local v0, result:Landroid/app/Dialog;
    if-nez p1, :cond_0

    if-lez p2, :cond_1

    .line 880
    :cond_0
    const/4 v1, 0x1

    if-ne v1, p2, :cond_1

    .line 881
    invoke-direct {p0, p1}, Lcom/android/phone/HtcIncallControlPanel;->getAudioSrcDialog(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    .line 888
    :cond_1
    return-object v0
.end method

.method initLayout(Landroid/view/View;)V
    .locals 6
    .parameter "controlLayout"

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 138
    if-eqz p1, :cond_2

    .line 139
    iput-object p1, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlLayout:Landroid/view/View;

    .line 141
    const v2, 0x7f0800bd

    invoke-direct {p0, v2}, Lcom/android/phone/HtcIncallControlPanel;->initControlButton(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/phone/widget/ControlButton;

    iput-object v2, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlMute:Lcom/android/phone/widget/ControlButton;

    .line 142
    const v2, 0x7f0800bf

    invoke-direct {p0, v2}, Lcom/android/phone/HtcIncallControlPanel;->initControlButton(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/phone/widget/ControlButton;

    iput-object v2, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlSpeaker:Lcom/android/phone/widget/ControlButton;

    .line 143
    const v2, 0x7f0800bb

    invoke-direct {p0, v2}, Lcom/android/phone/HtcIncallControlPanel;->initControlButton(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/phone/widget/ControlButton;

    iput-object v2, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlHold:Lcom/android/phone/widget/ControlButton;

    .line 144
    const v2, 0x7f0800b9

    invoke-direct {p0, v2}, Lcom/android/phone/HtcIncallControlPanel;->initControlButton(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlAddCall:Landroid/view/View;

    .line 145
    const v2, 0x7f0800b5

    invoke-direct {p0, v2}, Lcom/android/phone/HtcIncallControlPanel;->initControlButton(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlEndHeldCall:Landroid/view/View;

    .line 146
    const v2, 0x7f0800b7

    invoke-direct {p0, v2}, Lcom/android/phone/HtcIncallControlPanel;->initControlButton(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlMergeCall:Landroid/view/View;

    .line 148
    iget-object v2, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlMute:Lcom/android/phone/widget/ControlButton;

    invoke-virtual {v2, v3}, Lcom/android/phone/widget/ControlButton;->setCheckable(Z)V

    .line 149
    iget-object v2, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlSpeaker:Lcom/android/phone/widget/ControlButton;

    invoke-virtual {v2, v3}, Lcom/android/phone/widget/ControlButton;->setCheckable(Z)V

    .line 151
    iget-object v2, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlLayout:Landroid/view/View;

    const v3, 0x7f0800be

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/HtcIncallControlPanel;->mMuteText:Landroid/widget/TextView;

    .line 152
    iget-object v2, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlLayout:Landroid/view/View;

    const v3, 0x7f0800c0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/HtcIncallControlPanel;->mSpeakerText:Landroid/widget/TextView;

    .line 153
    iget-object v2, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlLayout:Landroid/view/View;

    const v3, 0x7f0800bc

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/HtcIncallControlPanel;->mHoldText:Landroid/widget/TextView;

    .line 154
    iget-object v2, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlLayout:Landroid/view/View;

    const v3, 0x7f0800ba

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/HtcIncallControlPanel;->mAddCallText:Landroid/widget/TextView;

    .line 155
    iget-object v2, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlLayout:Landroid/view/View;

    const v3, 0x7f0800b6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/HtcIncallControlPanel;->mEndHeldCallText:Landroid/widget/TextView;

    .line 156
    iget-object v2, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlLayout:Landroid/view/View;

    const v3, 0x7f0800b8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/HtcIncallControlPanel;->mMergeCallText:Landroid/widget/TextView;

    .line 158
    invoke-direct {p0}, Lcom/android/phone/HtcIncallControlPanel;->resetSpeakerButtonOnClickListener()V

    .line 163
    invoke-virtual {p0}, Lcom/android/phone/HtcIncallControlPanel;->onLocaleChanged()V

    .line 167
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isTmousCustomization()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 168
    const-string v2, "phone_btn_left_speaker"

    const-string v3, "drawable"

    const-string v4, "phone_btn_contorl_left"

    const-string v5, "drawable"

    invoke-static {v4, v5, v1}, Lcom/android/phone/theme/ThemeAdapter;->getIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/android/phone/theme/ThemeAdapter;->getIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 172
    .local v0, resId:I
    iget-object v2, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlMute:Lcom/android/phone/widget/ControlButton;

    invoke-virtual {v2, v0}, Lcom/android/phone/widget/ControlButton;->setBackgroundResource(I)V

    .line 175
    .end local v0           #resId:I
    :cond_0
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isLandscapeProject()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x8

    .line 176
    .local v1, visibility:I
    :cond_1
    iget-object v2, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlLayout:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 178
    .end local v1           #visibility:I
    :cond_2
    return-void
.end method

.method public muteStateChange(Z)V
    .locals 5
    .parameter "on"

    .prologue
    const/4 v2, 0x0

    .line 767
    iget-object v3, p0, Lcom/android/phone/HtcIncallControlPanel;->mHandler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    .line 768
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 769
    .local v0, arg1:I
    :goto_0
    iget-object v3, p0, Lcom/android/phone/HtcIncallControlPanel;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 771
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 773
    .end local v0           #arg1:I
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 768
    goto :goto_0
.end method

.method onBTStateChagned(Lcom/android/internal/telephony/Phone;)V
    .locals 1
    .parameter "phone"

    .prologue
    .line 1155
    iget-boolean v0, p0, Lcom/android/phone/HtcIncallControlPanel;->mPendingSpeakerOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/HtcIncallControlPanel;->mIncallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnectedOrPending()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1157
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/HtcIncallControlPanel;->turnSpeaker(Z)V

    .line 1162
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/HtcIncallControlPanel;->mPendingSpeakerOn:Z

    .line 1163
    return-void

    .line 1159
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/phone/HtcIncallControlPanel;->updateLayout(Lcom/android/internal/telephony/Phone;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const v5, 0x2020003

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 664
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 665
    .local v0, id:I
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    iget-object v2, v4, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    .line 666
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    packed-switch v0, :pswitch_data_0

    .line 746
    :pswitch_0
    const-string v3, "HtcIncallControlPanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onClick: unknown id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    :cond_0
    :goto_0
    return-void

    .line 668
    :pswitch_1
    iget-object v4, p0, Lcom/android/phone/HtcIncallControlPanel;->mIncallScreen:Lcom/android/phone/InCallScreen;

    if-nez v4, :cond_1

    .line 669
    const-string v3, "HtcIncallControlPanel"

    const-string v4, "speaker on/off and no mIncallScreen assigned"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 671
    :cond_1
    iget-object v4, p0, Lcom/android/phone/HtcIncallControlPanel;->mIncallScreen:Lcom/android/phone/InCallScreen;

    iget-object v5, p0, Lcom/android/phone/HtcIncallControlPanel;->mIncallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v4, v5}, Lcom/android/phone/InCallScreen;->switchSpeakerOnOff(Landroid/content/Context;)V

    .line 674
    invoke-virtual {p1, v3}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    .line 682
    :pswitch_2
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v4

    if-nez v4, :cond_2

    .line 683
    .local v1, newMuteState:Z
    :goto_1
    if-nez v2, :cond_3

    .line 684
    const-string v3, "HtcIncallControlPanel"

    const-string v4, "mute on/off and no phone assigned"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1           #newMuteState:Z
    :cond_2
    move v1, v3

    .line 682
    goto :goto_1

    .line 686
    .restart local v1       #newMuteState:Z
    :cond_3
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 689
    invoke-virtual {p1, v3}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    .line 696
    .end local v1           #newMuteState:Z
    :pswitch_3
    invoke-direct {p0, v1}, Lcom/android/phone/HtcIncallControlPanel;->turnBT(Z)V

    .line 697
    invoke-virtual {p0, v1}, Lcom/android/phone/HtcIncallControlPanel;->dismissDialog(I)V

    .line 698
    iget-object v4, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlSpeaker:Lcom/android/phone/widget/ControlButton;

    invoke-virtual {v4, v3}, Lcom/android/phone/widget/ControlButton;->setChecked(Z)V

    .line 699
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isLandscapeProject()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 700
    iget-object v4, p0, Lcom/android/phone/HtcIncallControlPanel;->mIncallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v4, v5, v3}, Lcom/android/phone/InCallScreen;->setButtonChecked(IZ)V

    goto :goto_0

    .line 706
    :pswitch_4
    invoke-direct {p0, v3}, Lcom/android/phone/HtcIncallControlPanel;->turnBT(Z)V

    .line 707
    invoke-direct {p0, v3}, Lcom/android/phone/HtcIncallControlPanel;->turnSpeaker(Z)V

    .line 708
    invoke-virtual {p0, v1}, Lcom/android/phone/HtcIncallControlPanel;->dismissDialog(I)V

    .line 709
    iget-object v4, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlSpeaker:Lcom/android/phone/widget/ControlButton;

    invoke-virtual {v4, v3}, Lcom/android/phone/widget/ControlButton;->setChecked(Z)V

    .line 710
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isLandscapeProject()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 711
    iget-object v4, p0, Lcom/android/phone/HtcIncallControlPanel;->mIncallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v4, v5, v3}, Lcom/android/phone/InCallScreen;->setButtonChecked(IZ)V

    goto :goto_0

    .line 717
    :pswitch_5
    invoke-direct {p0, v1}, Lcom/android/phone/HtcIncallControlPanel;->turnSpeaker(Z)V

    .line 718
    invoke-virtual {p0, v1}, Lcom/android/phone/HtcIncallControlPanel;->dismissDialog(I)V

    .line 719
    iget-object v3, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlSpeaker:Lcom/android/phone/widget/ControlButton;

    invoke-virtual {v3, v1}, Lcom/android/phone/widget/ControlButton;->setChecked(Z)V

    .line 720
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isLandscapeProject()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 721
    iget-object v3, p0, Lcom/android/phone/HtcIncallControlPanel;->mIncallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3, v5, v1}, Lcom/android/phone/InCallScreen;->setButtonChecked(IZ)V

    goto :goto_0

    .line 726
    :pswitch_6
    iget-object v3, p0, Lcom/android/phone/HtcIncallControlPanel;->mIncallScreen:Lcom/android/phone/InCallScreen;

    if-nez v3, :cond_4

    .line 727
    const-string v3, "HtcIncallControlPanel"

    const-string v4, "hold/unhold and no mIncallScreen assigned"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 729
    :cond_4
    iget-object v3, p0, Lcom/android/phone/HtcIncallControlPanel;->mIncallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InCallScreen;->switchHoldUnhold()V

    goto/16 :goto_0

    .line 734
    :pswitch_7
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->startNewCall(Lcom/android/internal/telephony/CallManager;)V

    goto/16 :goto_0

    .line 738
    :pswitch_8
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->hangupHoldingCall(Lcom/android/internal/telephony/Call;)Z

    goto/16 :goto_0

    .line 742
    :pswitch_9
    invoke-static {}, Lcom/android/phone/PhoneUtils;->mergeCalls()V

    goto/16 :goto_0

    .line 666
    :pswitch_data_0
    .packed-switch 0x7f0800b0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onLocaleChanged()V
    .locals 2

    .prologue
    .line 1180
    iget-object v0, p0, Lcom/android/phone/HtcIncallControlPanel;->mMuteText:Landroid/widget/TextView;

    const v1, 0x7f0e0259

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1181
    iget-object v0, p0, Lcom/android/phone/HtcIncallControlPanel;->mSpeakerText:Landroid/widget/TextView;

    const v1, 0x7f0e0257

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1182
    iget-object v0, p0, Lcom/android/phone/HtcIncallControlPanel;->mHoldText:Landroid/widget/TextView;

    const v1, 0x7f0e025a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1183
    iget-object v0, p0, Lcom/android/phone/HtcIncallControlPanel;->mAddCallText:Landroid/widget/TextView;

    const v1, 0x7f0e025e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1184
    iget-object v0, p0, Lcom/android/phone/HtcIncallControlPanel;->mEndHeldCallText:Landroid/widget/TextView;

    const v1, 0x7f0e0084

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1185
    iget-object v0, p0, Lcom/android/phone/HtcIncallControlPanel;->mMergeCallText:Landroid/widget/TextView;

    const v1, 0x7f0e025d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1186
    return-void
.end method

.method public removeIncallScreen()V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/phone/HtcIncallControlPanel;->mIncallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_0

    .line 257
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/HtcIncallControlPanel;->mIncallScreen:Lcom/android/phone/InCallScreen;

    .line 259
    :cond_0
    return-void
.end method

.method public speakerStateChange(Z)V
    .locals 5
    .parameter "on"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 752
    iget-object v4, p0, Lcom/android/phone/HtcIncallControlPanel;->mHandler:Landroid/os/Handler;

    if-eqz v4, :cond_0

    .line 753
    if-eqz p1, :cond_1

    move v0, v2

    .line 754
    .local v0, arg1:I
    :goto_0
    iget-object v4, p0, Lcom/android/phone/HtcIncallControlPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2, v0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 756
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 758
    .end local v0           #arg1:I
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    return-void

    :cond_1
    move v0, v3

    .line 753
    goto :goto_0
.end method

.method public updateFakeScreen(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call$State;)V
    .locals 0
    .parameter "phone"
    .parameter "fgCallState"

    .prologue
    .line 326
    invoke-direct {p0, p1, p2}, Lcom/android/phone/HtcIncallControlPanel;->updateMuteButton(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call$State;)V

    .line 328
    invoke-virtual {p0}, Lcom/android/phone/HtcIncallControlPanel;->updateSpeakerButton()V

    .line 330
    invoke-direct {p0, p1}, Lcom/android/phone/HtcIncallControlPanel;->updateHoldButton(Lcom/android/internal/telephony/Phone;)V

    .line 332
    invoke-direct {p0}, Lcom/android/phone/HtcIncallControlPanel;->updateAddCallButton()V

    .line 333
    return-void
.end method

.method updateLayout(Lcom/android/internal/telephony/Phone;)V
    .locals 5
    .parameter "phone"

    .prologue
    const/4 v4, 0x0

    .line 272
    iget-boolean v3, p0, Lcom/android/phone/HtcIncallControlPanel;->mPendingSpeakerOn:Z

    if-eqz v3, :cond_0

    .line 273
    iput-boolean v4, p0, Lcom/android/phone/HtcIncallControlPanel;->mPendingSpeakerOn:Z

    .line 276
    :cond_0
    iget-object v3, p0, Lcom/android/phone/HtcIncallControlPanel;->mIncallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InCallScreen;->getMode()Lcom/android/phone/InCallScreen$InCallScreenMode;

    move-result-object v2

    .line 277
    .local v2, mode:Lcom/android/phone/InCallScreen$InCallScreenMode;
    invoke-direct {p0, p1, v2}, Lcom/android/phone/HtcIncallControlPanel;->updateControlLayout(Lcom/android/internal/telephony/Phone;Lcom/android/phone/InCallScreen$InCallScreenMode;)Z

    move-result v1

    .line 288
    .local v1, isControlVisible:Z
    if-eqz v1, :cond_1

    .line 292
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 294
    .local v0, fgCallState:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {v2}, Lcom/android/phone/InCallScreen$InCallScreenMode;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 298
    invoke-direct {p0, p1}, Lcom/android/phone/HtcIncallControlPanel;->updateMuteState(Lcom/android/internal/telephony/Phone;)V

    .line 299
    invoke-direct {p0}, Lcom/android/phone/HtcIncallControlPanel;->updateSpeakerState()V

    .line 300
    iget-object v3, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlMute:Lcom/android/phone/widget/ControlButton;

    invoke-virtual {v3, v4}, Lcom/android/phone/widget/ControlButton;->setEnabled(Z)V

    .line 301
    iget-object v3, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlSpeaker:Lcom/android/phone/widget/ControlButton;

    invoke-virtual {v3, v4}, Lcom/android/phone/widget/ControlButton;->setEnabled(Z)V

    .line 302
    iget-object v3, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlHold:Lcom/android/phone/widget/ControlButton;

    invoke-virtual {v3, v4}, Lcom/android/phone/widget/ControlButton;->setEnabled(Z)V

    .line 303
    iget-object v3, p0, Lcom/android/phone/HtcIncallControlPanel;->mControlAddCall:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 319
    .end local v0           #fgCallState:Lcom/android/internal/telephony/Call$State;
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/phone/HtcIncallControlPanel;->updateAudioSrcDialog()V

    .line 320
    return-void

    .line 306
    .restart local v0       #fgCallState:Lcom/android/internal/telephony/Call$State;
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/android/phone/HtcIncallControlPanel;->updateMuteButton(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call$State;)V

    .line 309
    invoke-virtual {p0}, Lcom/android/phone/HtcIncallControlPanel;->updateSpeakerButton()V

    goto :goto_0
.end method

.method public updateSpeakerButton()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 417
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    .line 418
    .local v2, phoneApp:Lcom/android/phone/PhoneApp;
    iget-object v6, v2, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    .line 419
    .local v3, state:Lcom/android/internal/telephony/Phone$State;
    sget-object v6, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v6, v3, :cond_0

    move v0, v4

    .line 420
    .local v0, isIdle:Z
    :goto_0
    sget-object v6, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v6, v3, :cond_1

    move v1, v4

    .line 422
    .local v1, isRinging:Z
    :goto_1
    sget-boolean v4, Lcom/android/phone/util/Constants;->SUPPORT_AUDIO_SRC_SELECTION:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/phone/HtcIncallControlPanel;->mIncallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v4}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 424
    invoke-direct {p0, v0, v1}, Lcom/android/phone/HtcIncallControlPanel;->updateAudioSrcButton(ZZ)V

    .line 429
    :goto_2
    invoke-direct {p0}, Lcom/android/phone/HtcIncallControlPanel;->resetSpeakerButtonOnClickListener()V

    .line 430
    return-void

    .end local v0           #isIdle:Z
    .end local v1           #isRinging:Z
    :cond_0
    move v0, v5

    .line 419
    goto :goto_0

    .restart local v0       #isIdle:Z
    :cond_1
    move v1, v5

    .line 420
    goto :goto_1

    .line 426
    .restart local v1       #isRinging:Z
    :cond_2
    invoke-direct {p0, v2, v0, v1}, Lcom/android/phone/HtcIncallControlPanel;->updateSpeakerButton(Lcom/android/phone/PhoneApp;ZZ)V

    goto :goto_2
.end method
