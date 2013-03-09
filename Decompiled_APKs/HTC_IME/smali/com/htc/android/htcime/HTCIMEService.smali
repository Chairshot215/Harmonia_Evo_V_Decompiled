.class public Lcom/htc/android/htcime/HTCIMEService;
.super Lcom/htc/android/htcime/compat/InputMethodServiceCompatWrapper;
.source "HTCIMEService.java"


# static fields
.field static BROADCAST_IME_STATE_DELAY:I = 0x0

.field static final BROWSER:I = 0x1

.field static final DEBUG:Z = false

.field static final DIALER:I = 0x2

.field static final GTALK:I = 0x3

.field private static final MSG_DISPATCH_EVENT:I = 0x8

.field public static final MSG_EXEC_ONCE_AT_BOOT:I = 0x3

.field private static final MSG_FIXEDWCL_RELAUNCH:I = 0x6

.field private static final MSG_FIXEDWCL_SHOWN:I = 0x7

.field public static final MSG_HWKB_HIDE_CHECK:I = 0x5

.field public static final MSG_IME_STATUS_BCST:I = 0x4

.field public static final MSG_STATUS_ICON_HIDE:I = 0x2

.field public static final MSG_STATUS_ICON_SHOW:I = 0x1

.field static final TAG:Ljava/lang/String; = "HTCIMEService"

.field static mInstance:Lcom/htc/android/htcime/HTCIMEService;


# instance fields
.field final CURRENT_INPUTTYPE:I

.field private final FLAG_FULLWCLMARGINTOP:I

.field private final FLAG_WCLPOSY:I

.field private _Keyboard:I

.field private _Orientation:I

.field private _protect:Lcom/htc/protection/api/ProInterface;

.field private isConfigChange_Ext_HWKB_Unplug:Z

.field isIncreaseFirstLaunchTimeSku:Z

.field private isOrienChange:Z

.field private isOrienChange_when_IMM_VISIBLE:Z

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAudioService:Lcom/htc/android/htcime/util/AudioService;

.field private mCBDG:Lcom/htc/android/htcime/util/ContactsDBGenerator;

.field mCallByWhichApp:I

.field private mCurConfig:Landroid/content/res/Configuration;

.field mCurHardKeyboardType:I

.field private final mCurSkinSB:Ljava/lang/StringBuilder;

.field private mDAM:Lcom/htc/android/htcime/util/htcDAM;

.field private mData:Lcom/htc/android/htcime/HTCIMMData;

.field mDoHideWindow:Z

.field private mExtractEditText:Landroid/view/View;

.field private mGeneralHandler:Landroid/os/Handler;

.field public mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

.field public mHTCIMMView_dummy:Lcom/htc/android/htcime/HTCIMMView;

.field private mHWKBSwitcher:Lcom/htc/android/htcime/util/SIPSwitcherHWKB;

.field private mIMEFinder:Lcom/htc/android/htcime/util/CodeIMEFinder;

.field private mIMEPackageLoader:Lcom/htc/android/htcime/packageloader/IMEPackageLoader;

.field mInterceptUp:Z

.field mIsLangSwitchlongPress:Z

.field mIsTABlongPress:Z

.field private mKeyDownRepeatCount:I

.field private mKeyDownTime:J

.field private mKeyUpTime:J

.field mOldHardKeyboardType:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSIPSwitcher:Lcom/htc/android/htcime/util/SIPSwitcher;

.field private mSmartCAPSentinel:Lcom/htc/android/htcime/util/SmartCAPSentinel;

.field private mStatusIconShow:Z

.field private mTipSystem:Lcom/htc/android/htcime/tutorial/TipSystem;

.field public mTutorialBubbleAllocate:Z

.field private mVoiceInput:Lcom/htc/android/htcime/deprecated/voice/VoiceInput;

.field mWCList:Lcom/htc/android/htcime/ui/WordCandidateList;

.field private m_bIsCandidatesViewShown:Z

.field private mbReadyForInput:Z

.field private mbShowCompletion:Z

.field private releaseMemoryRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/android/htcime/HTCIMEService;->mInstance:Lcom/htc/android/htcime/HTCIMEService;

    .line 2649
    const/16 v0, 0xc8

    sput v0, Lcom/htc/android/htcime/HTCIMEService;->BROADCAST_IME_STATE_DELAY:I

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 139
    invoke-direct {p0}, Lcom/htc/android/htcime/compat/InputMethodServiceCompatWrapper;-><init>()V

    .line 141
    iput-object v2, p0, Lcom/htc/android/htcime/HTCIMEService;->mIMEFinder:Lcom/htc/android/htcime/util/CodeIMEFinder;

    .line 143
    new-instance v0, Lcom/htc/android/htcime/HTCIMMData;

    invoke-direct {v0}, Lcom/htc/android/htcime/HTCIMMData;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    .line 145
    iput-object v2, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    .line 147
    iput v3, p0, Lcom/htc/android/htcime/HTCIMEService;->_Orientation:I

    .line 148
    iput v4, p0, Lcom/htc/android/htcime/HTCIMEService;->_Keyboard:I

    .line 153
    iput-object v2, p0, Lcom/htc/android/htcime/HTCIMEService;->mWCList:Lcom/htc/android/htcime/ui/WordCandidateList;

    .line 154
    iput-boolean v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mbShowCompletion:Z

    .line 157
    iput-boolean v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mbReadyForInput:Z

    .line 158
    iput-boolean v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mStatusIconShow:Z

    .line 161
    iput-object v2, p0, Lcom/htc/android/htcime/HTCIMEService;->_protect:Lcom/htc/protection/api/ProInterface;

    .line 164
    iput-boolean v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mTutorialBubbleAllocate:Z

    .line 169
    iput-object v2, p0, Lcom/htc/android/htcime/HTCIMEService;->mIMEPackageLoader:Lcom/htc/android/htcime/packageloader/IMEPackageLoader;

    .line 171
    new-instance v0, Lcom/htc/android/htcime/util/SmartCAPSentinel;

    invoke-direct {v0}, Lcom/htc/android/htcime/util/SmartCAPSentinel;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mSmartCAPSentinel:Lcom/htc/android/htcime/util/SmartCAPSentinel;

    .line 173
    iput-boolean v1, p0, Lcom/htc/android/htcime/HTCIMEService;->isOrienChange_when_IMM_VISIBLE:Z

    .line 174
    iput-boolean v1, p0, Lcom/htc/android/htcime/HTCIMEService;->isOrienChange:Z

    .line 175
    iput-boolean v1, p0, Lcom/htc/android/htcime/HTCIMEService;->isConfigChange_Ext_HWKB_Unplug:Z

    .line 177
    iput-object v2, p0, Lcom/htc/android/htcime/HTCIMEService;->mDAM:Lcom/htc/android/htcime/util/htcDAM;

    .line 179
    iput-boolean v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mInterceptUp:Z

    .line 182
    iput-object v2, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView_dummy:Lcom/htc/android/htcime/HTCIMMView;

    .line 183
    iput-boolean v3, p0, Lcom/htc/android/htcime/HTCIMEService;->isIncreaseFirstLaunchTimeSku:Z

    .line 187
    iput v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mOldHardKeyboardType:I

    .line 188
    iput v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mCurHardKeyboardType:I

    .line 191
    iput-boolean v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mIsTABlongPress:Z

    .line 192
    iput-boolean v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mIsLangSwitchlongPress:Z

    .line 193
    iput v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mCallByWhichApp:I

    .line 198
    iput-boolean v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mDoHideWindow:Z

    .line 201
    iput v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mKeyDownRepeatCount:I

    .line 202
    iput-wide v5, p0, Lcom/htc/android/htcime/HTCIMEService;->mKeyDownTime:J

    .line 203
    iput-wide v5, p0, Lcom/htc/android/htcime/HTCIMEService;->mKeyUpTime:J

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mCurSkinSB:Ljava/lang/StringBuilder;

    .line 206
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mCurConfig:Landroid/content/res/Configuration;

    .line 851
    iput-boolean v1, p0, Lcom/htc/android/htcime/HTCIMEService;->m_bIsCandidatesViewShown:Z

    .line 2180
    iput-object v2, p0, Lcom/htc/android/htcime/HTCIMEService;->mExtractEditText:Landroid/view/View;

    .line 3061
    new-instance v0, Lcom/htc/android/htcime/HTCIMEService$1;

    invoke-direct {v0, p0}, Lcom/htc/android/htcime/HTCIMEService$1;-><init>(Lcom/htc/android/htcime/HTCIMEService;)V

    iput-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 3349
    iput v3, p0, Lcom/htc/android/htcime/HTCIMEService;->FLAG_WCLPOSY:I

    .line 3350
    iput v4, p0, Lcom/htc/android/htcime/HTCIMEService;->FLAG_FULLWCLMARGINTOP:I

    .line 3812
    iput-object v2, p0, Lcom/htc/android/htcime/HTCIMEService;->mTipSystem:Lcom/htc/android/htcime/tutorial/TipSystem;

    .line 3944
    new-instance v0, Lcom/htc/android/htcime/HTCIMEService$4;

    invoke-direct {v0, p0}, Lcom/htc/android/htcime/HTCIMEService$4;-><init>(Lcom/htc/android/htcime/HTCIMEService;)V

    iput-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mGeneralHandler:Landroid/os/Handler;

    .line 4036
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/htcime/HTCIMEService;->CURRENT_INPUTTYPE:I

    .line 4214
    new-instance v0, Lcom/htc/android/htcime/HTCIMEService$5;

    invoke-direct {v0, p0}, Lcom/htc/android/htcime/HTCIMEService$5;-><init>(Lcom/htc/android/htcime/HTCIMEService;)V

    iput-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->releaseMemoryRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/htcime/HTCIMEService;)Lcom/htc/android/htcime/HTCIMMData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/android/htcime/HTCIMEService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/htc/android/htcime/HTCIMEService;->handleOnInterrupt()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/android/htcime/HTCIMEService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/htc/android/htcime/HTCIMEService;->closeContextMenu()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/android/htcime/HTCIMEService;)Lcom/htc/android/htcime/util/SIPSwitcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mSIPSwitcher:Lcom/htc/android/htcime/util/SIPSwitcher;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/android/htcime/HTCIMEService;)Lcom/htc/android/htcime/util/AudioService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mAudioService:Lcom/htc/android/htcime/util/AudioService;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/android/htcime/HTCIMEService;)Lcom/htc/android/htcime/util/SIPSwitcherHWKB;
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mHWKBSwitcher:Lcom/htc/android/htcime/util/SIPSwitcherHWKB;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/android/htcime/HTCIMEService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mbReadyForInput:Z

    return v0
.end method

.method static synthetic access$700(Lcom/htc/android/htcime/HTCIMEService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mStatusIconShow:Z

    return v0
.end method

.method static synthetic access$702(Lcom/htc/android/htcime/HTCIMEService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/htc/android/htcime/HTCIMEService;->mStatusIconShow:Z

    return p1
.end method

.method static synthetic access$800(Lcom/htc/android/htcime/HTCIMEService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/htc/android/htcime/HTCIMEService;->broadcastHTC_IMEStateInner()V

    return-void
.end method

.method private broadcastHTC_IMEStateInner()V
    .locals 17

    .prologue
    .line 2661
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 2662
    .local v1, am:Landroid/app/IActivityManager;
    if-eqz v1, :cond_2

    .line 2664
    new-instance v3, Landroid/content/Intent;

    const-string v2, "HTC_IME_CURRENT_STATE"

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2666
    .local v3, msg:Landroid/content/Intent;
    const/16 v16, 0x2

    .line 2667
    .local v16, xt9Mode:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v2, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    instance-of v2, v2, Lcom/htc/android/htcime/XT9IME/XT9IME;

    if-eqz v2, :cond_0

    .line 2668
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v2, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    check-cast v2, Lcom/htc/android/htcime/XT9IME/XT9IME;

    invoke-virtual {v2}, Lcom/htc/android/htcime/XT9IME/XT9IME;->getPredictionMode()I

    move-result v16

    .line 2669
    :cond_0
    const/4 v2, 0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_3

    .line 2670
    const-string v2, "ENG_MODE"

    const-string v4, "XT9"

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2674
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-static {}, Lcom/htc/android/htcime/HTCIMMView;->getIMMViewVisible()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2675
    const-string v2, "SIP_VISIBLE"

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2680
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 2681
    .local v15, sp:Landroid/content/SharedPreferences;
    if-nez v15, :cond_5

    .line 2714
    .end local v3           #msg:Landroid/content/Intent;
    .end local v15           #sp:Landroid/content/SharedPreferences;
    .end local v16           #xt9Mode:I
    :cond_2
    :goto_2
    return-void

    .line 2671
    .restart local v3       #msg:Landroid/content/Intent;
    .restart local v16       #xt9Mode:I
    :cond_3
    const/4 v2, 0x2

    move/from16 v0, v16

    if-ne v0, v2, :cond_1

    .line 2672
    const-string v2, "ENG_MODE"

    const-string v4, "ABC"

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 2677
    :cond_4
    const-string v2, "SIP_VISIBLE"

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    .line 2684
    .restart local v15       #sp:Landroid/content/SharedPreferences;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 2686
    .local v13, r:Landroid/content/res/Resources;
    const v2, 0x7f0900d8

    invoke-virtual {v13, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "2"

    invoke-interface {v15, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 2687
    .local v14, sipType:I
    packed-switch v14, :pswitch_data_0

    .line 2696
    const-string v2, "SOFTKB_TYPE"

    const-string v4, "QWERTY"

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2700
    :goto_3
    const-string v2, "SIP"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v5, v5, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v6, v6, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-virtual {v4, v5, v6}, Lcom/htc/android/htcime/HTCIMMData;->getSIPNameByIHTCSIP(ILcom/htc/android/htcime/Intf/IHTCSIP;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2701
    const-string v4, "SIP_HEIGHT"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget v5, Lcom/htc/android/htcime/HTCIMMData;->mHTCIMMViewHeight:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/HTCIMEService;->isCandidatesViewShown()Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMMView;->getFixedWCLHeight()I

    move-result v2

    :goto_4
    add-int/2addr v2, v5

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2705
    if-eqz v3, :cond_2

    .line 2708
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :try_start_0
    invoke-interface/range {v1 .. v11}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 2709
    :catch_0
    move-exception v12

    .line 2710
    .local v12, e:Landroid/os/RemoteException;
    const-string v2, "HTCIMEService"

    const-string v4, "[brocastHTC_IMEState]:"

    invoke-static {v2, v4, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 2690
    .end local v12           #e:Landroid/os/RemoteException;
    :pswitch_0
    const-string v2, "SOFTKB_TYPE"

    const-string v4, "20Key"

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 2693
    :pswitch_1
    const-string v2, "SOFTKB_TYPE"

    const-string v4, "12Key"

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 2701
    :cond_6
    const/4 v2, 0x0

    goto :goto_4

    .line 2687
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private checkPrivateIMEOptions(Ljava/lang/String;)V
    .locals 12
    .parameter "options"

    .prologue
    const/4 v9, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 3352
    iget-object v8, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    if-nez v8, :cond_1

    .line 3434
    :cond_0
    :goto_0
    return-void

    .line 3354
    :cond_1
    const/4 v0, 0x0

    .line 3355
    .local v0, OptFlag:I
    iget-object v8, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iput v10, v8, Lcom/htc/android/htcime/HTCIMMData;->mCustomizedFullWCLMargenTop:I

    .line 3357
    iget-object v8, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    const-string v8, ""

    sput-object v8, Lcom/htc/android/htcime/HTCIMMView;->mMailBtnBarName:Ljava/lang/String;

    .line 3358
    iget-object v8, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    const-string v8, ""

    sput-object v8, Lcom/htc/android/htcime/HTCIMMView;->mMailPackageName:Ljava/lang/String;

    .line 3360
    iget-object v8, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    const-string v8, ""

    sput-object v8, Lcom/htc/android/htcime/HTCIMMView;->mMailBtnName1:Ljava/lang/String;

    .line 3361
    iget-object v8, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    const-string v8, ""

    sput-object v8, Lcom/htc/android/htcime/HTCIMMView;->mMailBtnName2:Ljava/lang/String;

    .line 3362
    iget-object v8, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    const-string v8, ""

    sput-object v8, Lcom/htc/android/htcime/HTCIMMView;->mMailBtnName3:Ljava/lang/String;

    .line 3363
    iget-object v8, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    const-string v8, ""

    sput-object v8, Lcom/htc/android/htcime/HTCIMMView;->mMailBtnName4:Ljava/lang/String;

    .line 3365
    iget-object v8, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    sput-object v9, Lcom/htc/android/htcime/HTCIMMView;->mMailBtnText1:Ljava/lang/String;

    .line 3366
    iget-object v8, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    sput-object v9, Lcom/htc/android/htcime/HTCIMMView;->mMailBtnText2:Ljava/lang/String;

    .line 3367
    iget-object v8, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    sput-object v9, Lcom/htc/android/htcime/HTCIMMView;->mMailBtnText3:Ljava/lang/String;

    .line 3368
    iget-object v8, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    sput-object v9, Lcom/htc/android/htcime/HTCIMMView;->mMailBtnText4:Ljava/lang/String;

    .line 3370
    if-eqz p1, :cond_f

    .line 3371
    const-string v8, ":"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 3372
    .local v2, pattern:Ljava/util/regex/Pattern;
    const-string v8, "\\|"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 3373
    .local v3, pattern2:Ljava/util/regex/Pattern;
    const-string v8, "#"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 3374
    .local v4, pattern3:Ljava/util/regex/Pattern;
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v5

    .line 3376
    .local v5, split_options_l1:[Ljava/lang/String;
    aget-object v8, v5, v10

    const-string v9, "com.htc.android.htcime"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 3377
    aget-object v8, v5, v11

    invoke-virtual {v3, v8}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v6

    .line 3378
    .local v6, split_options_l2:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v8, v6

    if-ge v1, v8, :cond_f

    .line 3379
    aget-object v8, v6, v1

    invoke-virtual {v4, v8}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v7

    .line 3380
    .local v7, split_options_l3:[Ljava/lang/String;
    aget-object v8, v7, v10

    const-string v9, "WCLPOSY"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3381
    or-int/lit8 v0, v0, 0x1

    .line 3382
    iget-object v8, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    aget-object v9, v7, v11

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v11, v10, v9}, Lcom/htc/android/htcime/HTCIMMView;->updateCustomizedWCLPos(ZII)V

    .line 3378
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3387
    :cond_3
    aget-object v8, v7, v10

    const-string v9, "FULLWCLMARGINTOP"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 3388
    or-int/lit8 v0, v0, 0x2

    .line 3389
    iget-object v8, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    aget-object v9, v7, v11

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v8, Lcom/htc/android/htcime/HTCIMMData;->mCustomizedFullWCLMargenTop:I

    goto :goto_2

    .line 3392
    :cond_4
    aget-object v8, v7, v10

    const-string v9, "DISABLEURLAPPEND"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 3393
    sput-boolean v11, Lcom/htc/android/htcime/HTCIMMData;->sIsIMECursorAdapter:Z

    goto :goto_2

    .line 3397
    :cond_5
    aget-object v8, v7, v10

    const-string v9, "BTN_UPON_SIP_LAYOUT"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 3398
    iget-object v8, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    aget-object v8, v7, v11

    sput-object v8, Lcom/htc/android/htcime/HTCIMMView;->mMailBtnBarName:Ljava/lang/String;

    goto :goto_2

    .line 3400
    :cond_6
    aget-object v8, v7, v10

    const-string v9, "PACKAGE_NAME"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 3401
    iget-object v8, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    aget-object v8, v7, v11

    sput-object v8, Lcom/htc/android/htcime/HTCIMMView;->mMailPackageName:Ljava/lang/String;

    goto :goto_2

    .line 3403
    :cond_7
    aget-object v8, v7, v10

    const-string v9, "BTN_1_ID"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 3404
    iget-object v8, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    aget-object v8, v7, v11

    sput-object v8, Lcom/htc/android/htcime/HTCIMMView;->mMailBtnName1:Ljava/lang/String;

    goto :goto_2

    .line 3406
    :cond_8
    aget-object v8, v7, v10

    const-string v9, "BTN_2_ID"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 3407
    iget-object v8, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    aget-object v8, v7, v11

    sput-object v8, Lcom/htc/android/htcime/HTCIMMView;->mMailBtnName2:Ljava/lang/String;

    goto :goto_2

    .line 3409
    :cond_9
    aget-object v8, v7, v10

    const-string v9, "BTN_3_ID"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 3410
    iget-object v8, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    aget-object v8, v7, v11

    sput-object v8, Lcom/htc/android/htcime/HTCIMMView;->mMailBtnName3:Ljava/lang/String;

    goto :goto_2

    .line 3412
    :cond_a
    aget-object v8, v7, v10

    const-string v9, "BTN_4_ID"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 3413
    iget-object v8, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    aget-object v8, v7, v11

    sput-object v8, Lcom/htc/android/htcime/HTCIMMView;->mMailBtnName4:Ljava/lang/String;

    goto/16 :goto_2

    .line 3415
    :cond_b
    aget-object v8, v7, v10

    const-string v9, "BTN_1_TEXT"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 3416
    iget-object v8, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    aget-object v8, v7, v11

    sput-object v8, Lcom/htc/android/htcime/HTCIMMView;->mMailBtnText1:Ljava/lang/String;

    goto/16 :goto_2

    .line 3418
    :cond_c
    aget-object v8, v7, v10

    const-string v9, "BTN_2_TEXT"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 3419
    iget-object v8, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    aget-object v8, v7, v11

    sput-object v8, Lcom/htc/android/htcime/HTCIMMView;->mMailBtnText2:Ljava/lang/String;

    goto/16 :goto_2

    .line 3421
    :cond_d
    aget-object v8, v7, v10

    const-string v9, "BTN_3_TEXT"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 3422
    iget-object v8, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    aget-object v8, v7, v11

    sput-object v8, Lcom/htc/android/htcime/HTCIMMView;->mMailBtnText3:Ljava/lang/String;

    goto/16 :goto_2

    .line 3424
    :cond_e
    aget-object v8, v7, v10

    const-string v9, "BTN_4_TEXT"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 3425
    iget-object v8, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    aget-object v8, v7, v11

    sput-object v8, Lcom/htc/android/htcime/HTCIMMView;->mMailBtnText4:Ljava/lang/String;

    goto/16 :goto_2

    .line 3432
    .end local v1           #i:I
    .end local v2           #pattern:Ljava/util/regex/Pattern;
    .end local v3           #pattern2:Ljava/util/regex/Pattern;
    .end local v4           #pattern3:Ljava/util/regex/Pattern;
    .end local v5           #split_options_l1:[Ljava/lang/String;
    .end local v6           #split_options_l2:[Ljava/lang/String;
    .end local v7           #split_options_l3:[Ljava/lang/String;
    :cond_f
    and-int/lit8 v8, v0, 0x1

    if-eq v8, v11, :cond_0

    .line 3433
    iget-object v8, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v8, v10, v10, v10}, Lcom/htc/android/htcime/HTCIMMView;->updateCustomizedWCLPos(ZII)V

    goto/16 :goto_0
.end method

.method private checkProtection()V
    .locals 4

    .prologue
    .line 3610
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->_protect:Lcom/htc/protection/api/ProInterface;

    if-eqz v1, :cond_0

    .line 3611
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->_protect:Lcom/htc/protection/api/ProInterface;

    invoke-interface {v1}, Lcom/htc/protection/api/ProInterface;->check()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3616
    :cond_0
    :goto_0
    return-void

    .line 3613
    :catch_0
    move-exception v0

    .line 3614
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "HTCIMEService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[checkProtection] exception="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " (null==_protect) = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->_protect:Lcom/htc/protection/api/ProInterface;

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private checkTutoKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    .line 1364
    const/4 v0, 0x0

    .line 1365
    .local v0, ret:Z
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->mTutorialing:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 1366
    sparse-switch p1, :sswitch_data_0

    .line 1408
    :cond_0
    :goto_0
    return v0

    .line 1368
    :sswitch_0
    const/4 v0, 0x1

    .line 1369
    goto :goto_0

    .line 1373
    :sswitch_1
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ui/TutorialBubbles;->isAllocated()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1374
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ui/TutorialBubbles;->destroyBubbles()V

    .line 1375
    :cond_1
    iput-boolean v3, p0, Lcom/htc/android/htcime/HTCIMEService;->mTutorialBubbleAllocate:Z

    goto :goto_0

    .line 1383
    :sswitch_2
    sput-boolean v3, Lcom/htc/android/htcime/HTCIMMData;->mForceAutoCapCheck:Z

    .line 1384
    const/4 v0, 0x1

    .line 1385
    goto :goto_0

    .line 1391
    :cond_2
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->sTutored:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    if-eqz v1, :cond_0

    .line 1393
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMMView;->isFirstTimeTutoring()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1394
    sparse-switch p1, :sswitch_data_1

    goto :goto_0

    .line 1401
    :sswitch_3
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMMView;->doneFirstTimeTutor()V

    .line 1402
    const/4 v0, 0x1

    goto :goto_0

    .line 1397
    :sswitch_4
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMMView;->doneFirstTimeTutor()V

    .line 1398
    const/4 v0, 0x0

    .line 1399
    goto :goto_0

    .line 1366
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x5 -> :sswitch_1
        0x13 -> :sswitch_2
        0x14 -> :sswitch_2
        0x15 -> :sswitch_2
        0x16 -> :sswitch_2
        0x17 -> :sswitch_2
        0x52 -> :sswitch_0
    .end sparse-switch

    .line 1394
    :sswitch_data_1
    .sparse-switch
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x52 -> :sswitch_4
    .end sparse-switch
.end method

.method private checkTutoKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1412
    const/4 v0, 0x0

    .line 1413
    .local v0, ret:Z
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->mTutorialing:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1414
    packed-switch p1, :pswitch_data_0

    .line 1437
    :cond_0
    :goto_0
    return v0

    .line 1422
    :pswitch_0
    const/4 v0, 0x1

    .line 1423
    goto :goto_0

    .line 1414
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private closeContextMenu()V
    .locals 2

    .prologue
    .line 2995
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mExactViewMenu:Landroid/view/ContextMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mExactViewMenu:Landroid/view/ContextMenu;

    invoke-interface {v0}, Landroid/view/ContextMenu;->hasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2996
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mExactViewMenu:Landroid/view/ContextMenu;

    invoke-interface {v0}, Landroid/view/ContextMenu;->close()V

    .line 2998
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/htc/android/htcime/HTCIMMData;->mExactViewMenu:Landroid/view/ContextMenu;

    .line 2999
    return-void
.end method

.method private cusomizationLoader()V
    .locals 2

    .prologue
    .line 3325
    invoke-virtual {p0}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 3334
    .local v0, context:Landroid/content/Context;
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    invoke-static {v0, v1}, Lcom/htc/android/htcime/util/SIPUtils;->defaultHWKBSIPLoader(Landroid/content/Context;Lcom/htc/android/htcime/HTCIMMData;)V

    .line 3336
    invoke-static {v0}, Lcom/htc/android/htcime/util/CustomizeUtil;->getCustomizationData(Landroid/content/Context;)V

    .line 3337
    invoke-static {v0}, Lcom/htc/android/htcime/util/CustomizeUtil;->getIMEServiceData(Landroid/content/Context;)V

    .line 3338
    return-void
.end method

.method public static fetchHtcSenseVer()F
    .locals 5

    .prologue
    .line 3894
    :try_start_0
    sget-object v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3901
    .local v1, ver:F
    :goto_0
    const-string v2, "HTCIMEService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fetch result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/high16 v4, 0x40a0

    add-float/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3902
    return v1

    .line 3895
    .end local v1           #ver:F
    :catch_0
    move-exception v0

    .line 3896
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v2, "HTCIMEService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: QAZ"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "PLM"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3897
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 3898
    const/4 v1, 0x0

    .restart local v1       #ver:F
    goto :goto_0
.end method

.method private handleExeOnceAtBoot()V
    .locals 2

    .prologue
    .line 4028
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mGeneralHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4029
    return-void
.end method

.method private handleOnInterrupt()V
    .locals 4

    .prologue
    .line 3915
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    if-eqz v1, :cond_0

    .line 3916
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v1}, Lcom/htc/android/htcime/Intf/IHTCIM;->onInterrupt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3920
    :cond_0
    :goto_0
    return-void

    .line 3917
    :catch_0
    move-exception v0

    .line 3918
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "HTCIMEService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[handleOnInterrupt] mData.mCurrIM.onInterrupt(); Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initSIPDependentObj()V
    .locals 3

    .prologue
    .line 3312
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mIMEFinder:Lcom/htc/android/htcime/util/CodeIMEFinder;

    invoke-virtual {v0}, Lcom/htc/android/htcime/util/CodeIMEFinder;->loadIMMConfig()V

    .line 3313
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mIMEFinder:Lcom/htc/android/htcime/util/CodeIMEFinder;

    invoke-virtual {v0}, Lcom/htc/android/htcime/util/CodeIMEFinder;->loadAllIME()V

    .line 3315
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mCurrHWKB:Lcom/htc/android/htcime/ezsip/QwertyHWKBView;

    invoke-virtual {v0, p0}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->init(Lcom/htc/android/htcime/HTCIMEService;)V

    .line 3316
    new-instance v0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;

    invoke-direct {v0, p0}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;-><init>(Lcom/htc/android/htcime/HTCIMEService;)V

    iput-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mHWKBSwitcher:Lcom/htc/android/htcime/util/SIPSwitcherHWKB;

    .line 3317
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mCurrHWKB:Lcom/htc/android/htcime/ezsip/QwertyHWKBView;

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mHWKBSwitcher:Lcom/htc/android/htcime/util/SIPSwitcherHWKB;

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->setSwitcher(Lcom/htc/android/htcime/util/SIPSwitcherHWKB;)V

    .line 3319
    invoke-virtual {p0}, Lcom/htc/android/htcime/HTCIMEService;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030061

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcime/ui/WordCandidateList;

    iput-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mWCList:Lcom/htc/android/htcime/ui/WordCandidateList;

    .line 3320
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mWCList:Lcom/htc/android/htcime/ui/WordCandidateList;

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v0, p0, v1}, Lcom/htc/android/htcime/ui/WordCandidateList;->init(Lcom/htc/android/htcime/HTCIMEService;Lcom/htc/android/htcime/HTCIMMView;)V

    .line 3321
    return-void
.end method

.method private initVoiceInput()V
    .locals 1

    .prologue
    .line 3806
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mVoiceInput:Lcom/htc/android/htcime/deprecated/voice/VoiceInput;

    if-eqz v0, :cond_0

    .line 3807
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mVoiceInput:Lcom/htc/android/htcime/deprecated/voice/VoiceInput;

    invoke-virtual {v0}, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->destroy()V

    .line 3808
    :cond_0
    new-instance v0, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;

    invoke-direct {v0, p0}, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;-><init>(Lcom/htc/android/htcime/HTCIMEService;)V

    iput-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mVoiceInput:Lcom/htc/android/htcime/deprecated/voice/VoiceInput;

    .line 3809
    return-void
.end method

.method private loadAudioService()V
    .locals 3

    .prologue
    .line 2976
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mAudioService:Lcom/htc/android/htcime/util/AudioService;

    if-nez v0, :cond_0

    .line 2977
    new-instance v0, Lcom/htc/android/htcime/util/AudioService;

    invoke-virtual {p0}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/htc/android/htcime/util/AudioService;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mAudioService:Lcom/htc/android/htcime/util/AudioService;

    .line 2978
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mAudioService:Lcom/htc/android/htcime/util/AudioService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/util/AudioService;->init()V

    .line 2980
    :cond_0
    return-void
.end method

.method public static peekInstance()Lcom/htc/android/htcime/HTCIMEService;
    .locals 1

    .prologue
    .line 376
    sget-object v0, Lcom/htc/android/htcime/HTCIMEService;->mInstance:Lcom/htc/android/htcime/HTCIMEService;

    return-object v0
.end method

.method private receiverRegister()V
    .locals 2

    .prologue
    .line 3030
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3031
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3032
    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3033
    const-string v1, "com.htc.android.htcime.FORCE_SHOWSOFTINPUT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3034
    const-string v1, "com.htc.android.htcime.SIP_RECORDER_DONE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3035
    const-string v1, "android.intent.action.INPUT_METHOD_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3036
    const-string v1, "com.htc.android.htcime.hwlangswitch"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3037
    const-string v1, "com.htc.android.htcime.hwlangdialog"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3038
    const-string v1, "android.intent.action.QUICKBOOT_POWEROFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3039
    const-string v1, "START_1st_AUTO_COMP_TEST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3040
    const-string v1, "com.htc.launcher.intent.LOADING_COMPLETE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3057
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/android/htcime/HTCIMEService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3059
    return-void
.end method

.method private removeUnhandledMsg(I)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 4032
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mGeneralHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4033
    return-void
.end method

.method private unloadAudioService()V
    .locals 1

    .prologue
    .line 2982
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mAudioService:Lcom/htc/android/htcime/util/AudioService;

    if-eqz v0, :cond_0

    .line 2983
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mAudioService:Lcom/htc/android/htcime/util/AudioService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/util/AudioService;->destroy()V

    .line 2984
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mAudioService:Lcom/htc/android/htcime/util/AudioService;

    .line 2985
    return-void
.end method

.method private updateInputDevices(Z)V
    .locals 9
    .parameter "isHWKShown"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 4122
    if-nez p1, :cond_0

    .line 4123
    iget-object v7, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sput-boolean v5, Lcom/htc/android/htcime/HTCIMMData;->mbUseExternalHWKB:Z

    .line 4124
    iget-object v7, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v8, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v8, v8, Lcom/htc/android/htcime/HTCIMMData;->mHWKB:[Lcom/htc/android/htcime/ezsip/QwertyHWKBView;

    aget-object v8, v8, v5

    iput-object v8, v7, Lcom/htc/android/htcime/HTCIMMData;->mCurrHWKB:Lcom/htc/android/htcime/ezsip/QwertyHWKBView;

    .line 4127
    :cond_0
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v3

    .line 4128
    .local v3, inputDevices:[I
    if-eqz v3, :cond_1

    array-length v7, v3

    add-int/lit8 v2, v7, -0x1

    .line 4129
    .local v2, i:I
    :goto_0
    const/4 v1, 0x0

    .line 4131
    .local v1, externalHWKBCnt:I
    :goto_1
    if-lez v2, :cond_5

    .line 4132
    aget v7, v3, v2

    invoke-static {v7}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 4133
    .local v0, device:Landroid/view/InputDevice;
    if-nez v0, :cond_2

    move v4, v5

    .line 4135
    .local v4, isAlaphKeyboardType:Z
    :goto_2
    if-eqz v4, :cond_4

    .line 4136
    add-int/lit8 v1, v1, 0x1

    .line 4131
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .end local v0           #device:Landroid/view/InputDevice;
    .end local v1           #externalHWKBCnt:I
    .end local v2           #i:I
    .end local v4           #isAlaphKeyboardType:Z
    :cond_1
    move v2, v5

    .line 4128
    goto :goto_0

    .line 4133
    .restart local v0       #device:Landroid/view/InputDevice;
    .restart local v1       #externalHWKBCnt:I
    .restart local v2       #i:I
    :cond_2
    invoke-virtual {v0}, Landroid/view/InputDevice;->getKeyboardType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    move v4, v6

    goto :goto_2

    :cond_3
    move v4, v5

    goto :goto_2

    .line 4138
    .restart local v4       #isAlaphKeyboardType:Z
    :cond_4
    const/4 v7, -0x1

    aput v7, v3, v2

    goto :goto_3

    .line 4143
    .end local v0           #device:Landroid/view/InputDevice;
    .end local v4           #isAlaphKeyboardType:Z
    :cond_5
    if-lez v1, :cond_7

    .line 4144
    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sput-boolean v6, Lcom/htc/android/htcime/HTCIMMData;->mbUseExternalHWKB:Z

    .line 4145
    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v5, v5, Lcom/htc/android/htcime/HTCIMMData;->mHWKB:[Lcom/htc/android/htcime/ezsip/QwertyHWKBView;

    aget-object v5, v5, v6

    if-nez v5, :cond_6

    .line 4146
    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v5, v5, Lcom/htc/android/htcime/HTCIMMData;->mHWKB:[Lcom/htc/android/htcime/ezsip/QwertyHWKBView;

    new-instance v7, Lcom/htc/android/htcime/ezsip/ExternalHWKBView;

    invoke-direct {v7, p0}, Lcom/htc/android/htcime/ezsip/ExternalHWKBView;-><init>(Landroid/content/Context;)V

    aput-object v7, v5, v6

    .line 4147
    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v7, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v7, v7, Lcom/htc/android/htcime/HTCIMMData;->mHWKB:[Lcom/htc/android/htcime/ezsip/QwertyHWKBView;

    aget-object v6, v7, v6

    iput-object v6, v5, Lcom/htc/android/htcime/HTCIMMData;->mCurrHWKB:Lcom/htc/android/htcime/ezsip/QwertyHWKBView;

    .line 4148
    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v5, v5, Lcom/htc/android/htcime/HTCIMMData;->mCurrHWKB:Lcom/htc/android/htcime/ezsip/QwertyHWKBView;

    invoke-virtual {v5, p0}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->init(Lcom/htc/android/htcime/HTCIMEService;)V

    .line 4149
    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v5, v5, Lcom/htc/android/htcime/HTCIMMData;->mCurrHWKB:Lcom/htc/android/htcime/ezsip/QwertyHWKBView;

    iget-object v6, p0, Lcom/htc/android/htcime/HTCIMEService;->mHWKBSwitcher:Lcom/htc/android/htcime/util/SIPSwitcherHWKB;

    invoke-virtual {v5, v6}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->setSwitcher(Lcom/htc/android/htcime/util/SIPSwitcherHWKB;)V

    .line 4161
    :cond_6
    :goto_4
    return-void

    .line 4158
    :cond_7
    iget-object v6, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sput-boolean v5, Lcom/htc/android/htcime/HTCIMMData;->mbUseExternalHWKB:Z

    .line 4159
    iget-object v6, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v7, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v7, v7, Lcom/htc/android/htcime/HTCIMMData;->mHWKB:[Lcom/htc/android/htcime/ezsip/QwertyHWKBView;

    aget-object v5, v7, v5

    iput-object v5, v6, Lcom/htc/android/htcime/HTCIMMData;->mCurrHWKB:Lcom/htc/android/htcime/ezsip/QwertyHWKBView;

    goto :goto_4
.end method


# virtual methods
.method public broadcastHTC_IMEState(Z)V
    .locals 4
    .parameter "isShowSIP"

    .prologue
    const/4 v3, 0x4

    .line 2652
    if-eqz p1, :cond_0

    .line 2653
    invoke-direct {p0}, Lcom/htc/android/htcime/HTCIMEService;->broadcastHTC_IMEStateInner()V

    .line 2658
    :goto_0
    return-void

    .line 2655
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mGeneralHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2656
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mGeneralHandler:Landroid/os/Handler;

    sget v1, Lcom/htc/android/htcime/HTCIMEService;->BROADCAST_IME_STATE_DELAY:I

    int-to-long v1, v1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public checkCVWExcpeption()V
    .locals 1

    .prologue
    .line 838
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-boolean v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mWCLException:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-boolean v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mFullWCLException:Z

    if-eqz v0, :cond_1

    .line 839
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMMView;->reinitWCL()V

    .line 841
    :cond_1
    return-void
.end method

.method public checkInputLag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "funcFrom"
    .parameter "dumpContentIfLag"

    .prologue
    .line 3755
    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-boolean v5, v5, Lcom/htc/android/htcime/HTCIMMData;->touchEvent_doLagAlert:Z

    if-nez v5, :cond_0

    .line 3798
    :goto_0
    return-void

    .line 3758
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-object v7, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-wide v7, v7, Lcom/htc/android/htcime/HTCIMMData;->touchEvent_start:J

    sub-long v3, v5, v7

    .line 3763
    .local v3, totalTime:J
    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    invoke-virtual {v5}, Lcom/htc/android/htcime/HTCIMMData;->isQwertyAlphabet()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3764
    const-wide/16 v1, 0x63

    .line 3770
    .local v1, maxTimeTouchEvCost:J
    :goto_1
    cmp-long v5, v3, v1

    if-lez v5, :cond_1

    .line 3785
    new-instance v5, Ljava/lang/String;

    const-string v6, "["

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "]: Process time of touch down event is too long! ("

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "ms)  text="

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3792
    .local v0, htcLog:Ljava/lang/String;
    const-string v5, "HTCIMEService"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3797
    .end local v0           #htcLog:Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/htc/android/htcime/HTCIMMData;->touchEvent_doLagAlert:Z

    goto :goto_0

    .line 3765
    .end local v1           #maxTimeTouchEvCost:J
    :cond_2
    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    invoke-virtual {v5}, Lcom/htc/android/htcime/HTCIMMData;->is12KeyAlphabet()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    invoke-virtual {v5}, Lcom/htc/android/htcime/HTCIMMData;->is20KeyAlphabet()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3766
    :cond_3
    const-wide/16 v1, 0x96

    .restart local v1       #maxTimeTouchEvCost:J
    goto :goto_1

    .line 3768
    .end local v1           #maxTimeTouchEvCost:J
    :cond_4
    const-wide v1, 0x7fffffffffffffffL

    .restart local v1       #maxTimeTouchEvCost:J
    goto :goto_1
.end method

.method public commitText(Ljava/lang/CharSequence;I)V
    .locals 2
    .parameter "text"
    .parameter "newCursorPosition"

    .prologue
    .line 2262
    invoke-static {p1}, Lcom/htc/android/htcime/util/CharTransfer;->transfer(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 2266
    invoke-virtual {p0}, Lcom/htc/android/htcime/HTCIMEService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2267
    invoke-virtual {p0}, Lcom/htc/android/htcime/HTCIMEService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 2272
    :goto_0
    const-string v0, "commitText"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/htcime/HTCIMEService;->checkInputLag(Ljava/lang/String;Ljava/lang/String;)V

    .line 2273
    return-void

    .line 2269
    :cond_0
    const-string v0, "TAG"

    const-string v1, "commitText, null pointer."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public commitTyped(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "inputConnection"
    .parameter "mComposing"

    .prologue
    .line 2230
    invoke-static {p2}, Lcom/htc/android/htcime/util/CharTransfer;->transfer(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    .line 2234
    invoke-direct {p0}, Lcom/htc/android/htcime/HTCIMEService;->checkProtection()V

    .line 2236
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 2237
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1, p2, v0}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 2239
    :cond_0
    return-void
.end method

.method public deleteSurroundingText(II)Z
    .locals 6
    .parameter "leftLength"
    .parameter "rightLength"

    .prologue
    .line 2461
    invoke-virtual {p0}, Lcom/htc/android/htcime/HTCIMEService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 2464
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2470
    .local v2, ret:Z
    :goto_0
    return v2

    .line 2465
    .end local v2           #ret:Z
    :catch_0
    move-exception v0

    .line 2466
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "HTCIMEService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[deleteSurroundingText] ic = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2467
    const/4 v2, 0x0

    .restart local v2       #ret:Z
    goto :goto_0
.end method

.method public dispatchExtractViewPoint(FF)Z
    .locals 10
    .parameter "x"
    .parameter "y"

    .prologue
    .line 4248
    invoke-virtual {p0}, Lcom/htc/android/htcime/HTCIMEService;->isInputViewShown()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4249
    const/4 v2, 0x0

    .line 4265
    :goto_0
    return v2

    .line 4251
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/htcime/HTCIMEService;->isFullscreenMode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4252
    const/4 v2, 0x0

    goto :goto_0

    .line 4254
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 4256
    .local v0, now:J
    const/4 v4, 0x0

    const/4 v7, 0x0

    move-wide v2, v0

    move v5, p1

    move v6, p2

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 4258
    .local v8, evt:Landroid/view/MotionEvent;
    invoke-virtual {p0}, Lcom/htc/android/htcime/HTCIMEService;->getWindow()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4259
    const/4 v4, 0x1

    const/4 v7, 0x0

    move-wide v2, v0

    move v5, p1

    move v6, p2

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 4261
    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMEService;->mGeneralHandler:Landroid/os/Handler;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 4262
    .local v9, msg:Landroid/os/Message;
    iput-object v8, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4263
    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMEService;->mGeneralHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x1e

    invoke-virtual {v2, v9, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4265
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public execOnceAtBoot()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 3267
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->mbExecOnceAtBoot:Z

    if-eqz v1, :cond_0

    .line 3291
    :goto_0
    return-void

    .line 3269
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/htcime/HTCIMEService;->loadAudioService()V

    .line 3270
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    new-instance v2, Lcom/htc/android/htcime/ui/TutorialBubbles;

    invoke-direct {v2, p0}, Lcom/htc/android/htcime/ui/TutorialBubbles;-><init>(Lcom/htc/android/htcime/HTCIMEService;)V

    iput-object v2, v1, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    .line 3271
    invoke-direct {p0}, Lcom/htc/android/htcime/HTCIMEService;->receiverRegister()V

    .line 3273
    invoke-virtual {p0}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 3275
    .local v0, context:Landroid/content/Context;
    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->sFeature_Tips_Enable:Z

    if-eqz v1, :cond_1

    .line 3276
    new-instance v1, Lcom/htc/android/htcime/tutorial/TipSystem;

    invoke-direct {v1, v0}, Lcom/htc/android/htcime/tutorial/TipSystem;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mTipSystem:Lcom/htc/android/htcime/tutorial/TipSystem;

    .line 3279
    :cond_1
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sput-boolean v3, Lcom/htc/android/htcime/HTCIMMData;->mbExecOnceAtBoot:Z

    .line 3281
    new-instance v1, Lcom/htc/android/htcime/util/ContactsDBGenerator;

    invoke-direct {v1, v0}, Lcom/htc/android/htcime/util/ContactsDBGenerator;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mCBDG:Lcom/htc/android/htcime/util/ContactsDBGenerator;

    .line 3282
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    new-instance v2, Lcom/htc/android/htcime/ezsip/trace/Trace;

    invoke-direct {v2, p0}, Lcom/htc/android/htcime/ezsip/trace/Trace;-><init>(Lcom/htc/android/htcime/HTCIMEService;)V

    iput-object v2, v1, Lcom/htc/android/htcime/HTCIMMData;->mTrace:Lcom/htc/android/htcime/ezsip/trace/Trace;

    .line 3283
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->sFeature_DAMEnable:Z

    if-ne v1, v3, :cond_2

    .line 3284
    new-instance v1, Lcom/htc/android/htcime/util/htcDAM;

    invoke-direct {v1}, Lcom/htc/android/htcime/util/htcDAM;-><init>()V

    iput-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mDAM:Lcom/htc/android/htcime/util/htcDAM;

    .line 3289
    :cond_2
    invoke-static {p0}, Lcom/htc/android/htcime/compat/InputMethodManagerCompatWrapper;->init(Lcom/htc/android/htcime/compat/InputMethodServiceCompatWrapper;)V

    .line 3290
    invoke-static {p0}, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->init(Lcom/htc/android/htcime/HTCIMEService;)V

    goto :goto_0
.end method

.method public execOnceAtBoot2()V
    .locals 1

    .prologue
    .line 3298
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->mbExecOnceAtBoot2:Z

    if-eqz v0, :cond_0

    .line 3307
    :goto_0
    return-void

    .line 3301
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->mbExecOnceAtBoot2:Z

    .line 3303
    invoke-virtual {p0}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/htcime/util/CustomizeUtil;->execBootNeedTask(Landroid/content/Context;)V

    .line 3304
    invoke-direct {p0}, Lcom/htc/android/htcime/HTCIMEService;->cusomizationLoader()V

    .line 3306
    new-instance v0, Lcom/htc/android/htcime/util/SIPSwitcher;

    invoke-direct {v0, p0}, Lcom/htc/android/htcime/util/SIPSwitcher;-><init>(Lcom/htc/android/htcime/HTCIMEService;)V

    iput-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mSIPSwitcher:Lcom/htc/android/htcime/util/SIPSwitcher;

    goto :goto_0
.end method

.method public finishComposingText()V
    .locals 5

    .prologue
    .line 2368
    invoke-virtual {p0}, Lcom/htc/android/htcime/HTCIMEService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 2370
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    :try_start_0
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2372
    :goto_0
    return-void

    .line 2371
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "HTCIMEService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[finishComposingText] ic = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public finishSIPrecord()V
    .locals 3

    .prologue
    .line 3819
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    const/16 v2, 0x18

    if-eq v1, v2, :cond_0

    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->mSIPrecord:Z

    if-eqz v1, :cond_1

    .line 3821
    :cond_0
    new-instance v0, Lcom/htc/android/htcime/HTCIMEService$3;

    invoke-direct {v0, p0}, Lcom/htc/android/htcime/HTCIMEService$3;-><init>(Lcom/htc/android/htcime/HTCIMEService;)V

    .line 3885
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3887
    .end local v0           #t:Ljava/lang/Thread;
    :cond_1
    return-void
.end method

.method public getAudioService()Lcom/htc/android/htcime/util/AudioService;
    .locals 1

    .prologue
    .line 2973
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mAudioService:Lcom/htc/android/htcime/util/AudioService;

    return-object v0
.end method

.method public getCurrentText(Z)Ljava/lang/String;
    .locals 6
    .parameter "isNoNewLine"

    .prologue
    .line 4233
    const-string v2, ""

    .line 4234
    .local v2, sRet:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/android/htcime/HTCIMEService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 4237
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    :try_start_0
    invoke-static {v1}, Lcom/htc/android/htcime/util/AppUnbundleUtil;->getText(Landroid/view/inputmethod/InputConnection;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4238
    if-eqz p1, :cond_0

    .line 4239
    const-string v3, "\n"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 4244
    :cond_0
    :goto_0
    return-object v2

    .line 4240
    :catch_0
    move-exception v0

    .line 4241
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "HTCIMEService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getText] ic = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getDAM()Lcom/htc/android/htcime/util/htcDAM;
    .locals 1

    .prologue
    .line 3659
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mDAM:Lcom/htc/android/htcime/util/htcDAM;

    return-object v0
.end method

.method public getDefaultWCLText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1734
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mWCLText:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getIMByTypeAndSIP(III)Lcom/htc/android/htcime/Intf/IHTCIM;
    .locals 4
    .parameter "orientation"
    .parameter "contentType"
    .parameter "sipID"

    .prologue
    const/4 v2, 0x2

    .line 2615
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->mbUseExternalHWKB:Z

    if-nez v1, :cond_3

    .line 2617
    :cond_0
    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->sFeature_HWKB_ChineseSupport:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->mbUseExternalHWKB:Z

    if-nez v1, :cond_2

    .line 2618
    const/4 v0, 0x0

    .line 2625
    .local v0, preferredIM:I
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 2644
    :cond_1
    :goto_1
    const-string v1, "HTCIMEService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getIMByTypeAndSIP] preferredIM="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2646
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mIM:[Lcom/htc/android/htcime/Intf/IHTCIM;

    aget-object v1, v1, v0

    return-object v1

    .line 2620
    .end local v0           #preferredIM:I
    :cond_2
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mLandSIPPreferredIME:[I

    aget v0, v1, p3

    .restart local v0       #preferredIM:I
    goto :goto_0

    .line 2623
    .end local v0           #preferredIM:I
    :cond_3
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mPortSIPPreferredIME:[I

    aget v0, v1, p3

    .restart local v0       #preferredIM:I
    goto :goto_0

    .line 2627
    :pswitch_0
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mTrace:Lcom/htc/android/htcime/ezsip/trace/Trace;

    invoke-virtual {v1, p3}, Lcom/htc/android/htcime/ezsip/trace/Trace;->isActiveOnAllField(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2631
    const/4 v1, 0x1

    if-ne p1, v1, :cond_4

    if-ne p3, v2, :cond_4

    .line 2633
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mXT9ModuleByType:[I

    aget v0, v1, p2

    goto :goto_1

    .line 2635
    :cond_4
    if-ne p1, v2, :cond_1

    if-nez p3, :cond_1

    invoke-virtual {p0}, Lcom/htc/android/htcime/HTCIMEService;->isExtractViewShown()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2638
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mXT9ModuleByType:[I

    aget v0, v1, p2

    goto :goto_1

    .line 2625
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getIMEPackageLoader()Lcom/htc/android/htcime/packageloader/IMEPackageLoader;
    .locals 1

    .prologue
    .line 3666
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mIMEPackageLoader:Lcom/htc/android/htcime/packageloader/IMEPackageLoader;

    return-object v0
.end method

.method public getLowerLineIndex()I
    .locals 2

    .prologue
    .line 2174
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkbWCL:Z

    if-eqz v0, :cond_0

    .line 2175
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mWCList:Lcom/htc/android/htcime/ui/WordCandidateList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ui/WordCandidateList;->findLineSelection(Z)I

    move-result v0

    .line 2177
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMMView;->getLowerLineIndex()I

    move-result v0

    goto :goto_0
.end method

.method public getSIPByType(II)I
    .locals 5
    .parameter "orientation"
    .parameter "contentType"

    .prologue
    const/16 v4, 0x17

    const/4 v3, 0x2

    const/4 v2, -0x1

    const/4 v0, 0x1

    .line 2481
    if-ne p1, v3, :cond_2

    .line 2484
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mLandPrimarySIP:I

    if-ne v1, v2, :cond_0

    .line 2485
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mLandSIPByType:[I

    aget v1, v1, p2

    if-nez v1, :cond_0

    .line 2486
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mLandSIPByType:[I

    aget v2, v2, p2

    iput v2, v1, Lcom/htc/android/htcime/HTCIMMData;->mLandPrimarySIP:I

    .line 2490
    :cond_0
    if-ne p2, v4, :cond_1

    .line 2527
    :goto_0
    return v0

    .line 2493
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mLandSIPByType:[I

    aget v0, v0, p2

    packed-switch v0, :pswitch_data_0

    .line 2498
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mLandSIPByType:[I

    aget v0, v0, p2

    goto :goto_0

    .line 2495
    :pswitch_0
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mLandPrimarySIP:I

    goto :goto_0

    .line 2504
    :cond_2
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mPortPrimarySIP:I

    if-ne v1, v2, :cond_4

    .line 2505
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mPortSIPByType:[I

    aget v1, v1, p2

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mPortSIPByType:[I

    aget v1, v1, p2

    if-eq v1, v0, :cond_3

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mPortSIPByType:[I

    aget v1, v1, p2

    if-ne v1, v3, :cond_4

    .line 2508
    :cond_3
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mPortSIPByType:[I

    aget v2, v2, p2

    iput v2, v1, Lcom/htc/android/htcime/HTCIMMData;->mPortPrimarySIP:I

    .line 2512
    :cond_4
    if-ne p2, v4, :cond_7

    .line 2514
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mPortPrimarySIP:I

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mPortPrimarySIP:I

    if-ne v1, v0, :cond_6

    .line 2515
    :cond_5
    const/4 v0, 0x5

    goto :goto_0

    .line 2517
    :cond_6
    const/4 v0, 0x3

    goto :goto_0

    .line 2520
    :cond_7
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mPortSIPByType:[I

    aget v0, v0, p2

    packed-switch v0, :pswitch_data_1

    .line 2527
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mPortSIPByType:[I

    aget v0, v0, p2

    goto :goto_0

    .line 2524
    :pswitch_1
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mPortPrimarySIP:I

    goto :goto_0

    .line 2493
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 2520
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getSIPID(II)I
    .locals 5
    .parameter "orientation"
    .parameter "contentType"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 2539
    const/4 v0, -0x1

    .line 2541
    .local v0, sip_id:I
    if-ne p1, v4, :cond_3

    .line 2543
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mInputFieldAttribute:Landroid/view/inputmethod/EditorInfo;

    iget v1, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v1}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;

    move-result-object v1

    iget v0, v1, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    .line 2545
    :goto_0
    sparse-switch v0, :sswitch_data_0

    .line 2556
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->mIsChaCha:Z

    if-eqz v1, :cond_2

    .line 2557
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    const/4 v0, 0x3

    iput v0, v1, Lcom/htc/android/htcime/HTCIMMData;->mLandPrimarySIP:I

    .line 2607
    :cond_0
    :goto_1
    :sswitch_0
    return v0

    .line 2543
    :cond_1
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mLandSIPByType:[I

    aget v0, v1, p2

    goto :goto_0

    .line 2548
    :sswitch_1
    const/4 v0, 0x1

    .line 2549
    goto :goto_1

    .line 2560
    :cond_2
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMEService;->mSIPSwitcher:Lcom/htc/android/htcime/util/SIPSwitcher;

    invoke-virtual {v2, p2, v0, p1}, Lcom/htc/android/htcime/util/SIPSwitcher;->getContentSensitiveSIP(III)I

    move-result v0

    iput v0, v1, Lcom/htc/android/htcime/HTCIMMData;->mLandPrimarySIP:I

    goto :goto_1

    .line 2567
    :cond_3
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mPortPrimarySIP:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_5

    .line 2568
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mPortSIPByType:[I

    aget v1, v1, p2

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mPortSIPByType:[I

    aget v1, v1, p2

    if-eq v1, v3, :cond_4

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mPortSIPByType:[I

    aget v1, v1, p2

    if-ne v1, v4, :cond_5

    .line 2571
    :cond_4
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mPortSIPByType:[I

    aget v0, v2, p2

    iput v0, v1, Lcom/htc/android/htcime/HTCIMMData;->mPortPrimarySIP:I

    .line 2575
    :cond_5
    const/16 v1, 0x17

    if-ne p2, v1, :cond_8

    .line 2577
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mPortPrimarySIP:I

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mPortPrimarySIP:I

    if-ne v1, v3, :cond_7

    .line 2578
    :cond_6
    const/4 v0, 0x5

    .line 2587
    :goto_2
    sparse-switch v0, :sswitch_data_1

    .line 2602
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMEService;->mSIPSwitcher:Lcom/htc/android/htcime/util/SIPSwitcher;

    invoke-virtual {v2, p2, v0, p1}, Lcom/htc/android/htcime/util/SIPSwitcher;->getContentSensitiveSIP(III)I

    move-result v0

    iput v0, v1, Lcom/htc/android/htcime/HTCIMMData;->mPortPrimarySIP:I

    goto :goto_1

    .line 2580
    :cond_7
    const/4 v0, 0x3

    goto :goto_2

    .line 2583
    :cond_8
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mInputFieldAttribute:Landroid/view/inputmethod/EditorInfo;

    iget v1, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v1}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;

    move-result-object v1

    iget v0, v1, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    :goto_3
    goto :goto_2

    :cond_9
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mPortSIPByType:[I

    aget v0, v1, p2

    goto :goto_3

    .line 2590
    :sswitch_2
    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->mIsLargeTablet:Z

    if-eqz v1, :cond_0

    .line 2591
    const/4 v0, 0x3

    goto :goto_1

    .line 2545
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch

    .line 2587
    :sswitch_data_1
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_2
        0x5 -> :sswitch_0
        0x6 -> :sswitch_0
        0x12 -> :sswitch_0
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
    .end sparse-switch
.end method

.method public getSIPSwitcher()Lcom/htc/android/htcime/util/SIPSwitcher;
    .locals 1

    .prologue
    .line 3654
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mSIPSwitcher:Lcom/htc/android/htcime/util/SIPSwitcher;

    return-object v0
.end method

.method public getShareData()Lcom/htc/android/htcime/HTCIMMData;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    return-object v0
.end method

.method public getTextAfterCursor(I)Ljava/lang/CharSequence;
    .locals 6
    .parameter "n"

    .prologue
    .line 2412
    const-string v2, ""

    .line 2413
    .local v2, sRet:Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/htc/android/htcime/HTCIMEService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 2416
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v1, p1, v3}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2421
    :goto_0
    return-object v2

    .line 2417
    :catch_0
    move-exception v0

    .line 2418
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "HTCIMEService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getTextAfterCursor] ic = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getTextAfterCursor(III)Ljava/lang/CharSequence;
    .locals 6
    .parameter "n"
    .parameter "flags"
    .parameter "waitTime"

    .prologue
    .line 2428
    const-string v2, ""

    .line 2429
    .local v2, sRet:Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/htc/android/htcime/HTCIMEService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 2434
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    :try_start_0
    invoke-static {v1, p1, p2, p3}, Lcom/htc/android/htcime/util/AppUnbundleUtil;->getTextAfterCursor(Landroid/view/inputmethod/InputConnection;III)Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2439
    :goto_0
    return-object v2

    .line 2435
    :catch_0
    move-exception v0

    .line 2436
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "HTCIMEService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getTextAfterCursor_wT] ic = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getTextBeforeCursor(I)Ljava/lang/CharSequence;
    .locals 6
    .parameter "n"

    .prologue
    .line 2378
    const-string v2, ""

    .line 2379
    .local v2, sRet:Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/htc/android/htcime/HTCIMEService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 2382
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v1, p1, v3}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2387
    :goto_0
    return-object v2

    .line 2383
    :catch_0
    move-exception v0

    .line 2384
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "HTCIMEService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getTextBeforeCursor] ic = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getTextBeforeCursor(III)Ljava/lang/CharSequence;
    .locals 6
    .parameter "n"
    .parameter "flags"
    .parameter "waitTime"

    .prologue
    .line 2394
    const-string v2, ""

    .line 2395
    .local v2, sRet:Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/htc/android/htcime/HTCIMEService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 2400
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    :try_start_0
    invoke-static {v1, p1, p2, p3}, Lcom/htc/android/htcime/util/AppUnbundleUtil;->getTextBeforeCursor(Landroid/view/inputmethod/InputConnection;III)Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2405
    :goto_0
    return-object v2

    .line 2401
    :catch_0
    move-exception v0

    .line 2402
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "HTCIMEService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getTextBeforeCursor_wT] ic = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getTipInstance()Lcom/htc/android/htcime/tutorial/TipSystem;
    .locals 1

    .prologue
    .line 3814
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mTipSystem:Lcom/htc/android/htcime/tutorial/TipSystem;

    return-object v0
.end method

.method public getUpperLineIndex()I
    .locals 2

    .prologue
    .line 2162
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkbWCL:Z

    if-eqz v0, :cond_0

    .line 2163
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mWCList:Lcom/htc/android/htcime/ui/WordCandidateList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ui/WordCandidateList;->findLineSelection(Z)I

    move-result v0

    .line 2165
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMMView;->getUpperLineIndex()I

    move-result v0

    goto :goto_0
.end method

.method public getVibrator()Landroid/os/Vibrator;
    .locals 1

    .prologue
    .line 2990
    invoke-static {}, Lcom/htc/android/htcime/util/VibrationUtil;->getVibrator()Landroid/os/Vibrator;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceInput()Lcom/htc/android/htcime/deprecated/voice/VoiceInput;
    .locals 1

    .prologue
    .line 3803
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mVoiceInput:Lcom/htc/android/htcime/deprecated/voice/VoiceInput;

    return-object v0
.end method

.method public getWCLText(I)Ljava/lang/String;
    .locals 1
    .parameter "idx"

    .prologue
    .line 1745
    const/4 v0, 0x3

    if-ge p1, v0, :cond_0

    .line 1746
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mWCLText:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 1748
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public handleIconShow(I)V
    .locals 3
    .parameter "show"

    .prologue
    .line 3940
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mGeneralHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3941
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mGeneralHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3942
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mGeneralHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3943
    return-void
.end method

.method public hideWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 929
    const-string v0, "HTCIMEService"

    const-string v1, "[hideWindow]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    iget-boolean v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mDoHideWindow:Z

    if-nez v0, :cond_1

    .line 933
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-static {}, Lcom/htc/android/htcime/HTCIMMView;->getIMMViewVisible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard:Z

    if-eqz v0, :cond_1

    .line 934
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMMView;->hideIMMView()V

    .line 940
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->mbUseExternalHWKB:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard:Z

    if-eqz v0, :cond_2

    .line 941
    iget-boolean v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mDoHideWindow:Z

    if-eqz v0, :cond_5

    .line 942
    iput-boolean v2, p0, Lcom/htc/android/htcime/HTCIMEService;->mDoHideWindow:Z

    .line 958
    :cond_2
    invoke-virtual {p0}, Lcom/htc/android/htcime/HTCIMEService;->onFinishInput()V

    .line 961
    invoke-super {p0}, Lcom/htc/android/htcime/compat/InputMethodServiceCompatWrapper;->hideWindow()V

    .line 963
    iput-boolean v2, p0, Lcom/htc/android/htcime/HTCIMEService;->mbReadyForInput:Z

    .line 966
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mTipSystem:Lcom/htc/android/htcime/tutorial/TipSystem;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mTipSystem:Lcom/htc/android/htcime/tutorial/TipSystem;

    invoke-virtual {v0}, Lcom/htc/android/htcime/tutorial/TipSystem;->hideAllTips()V

    .line 968
    :cond_3
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mSIPSwitcher:Lcom/htc/android/htcime/util/SIPSwitcher;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mSIPSwitcher:Lcom/htc/android/htcime/util/SIPSwitcher;

    invoke-virtual {v0}, Lcom/htc/android/htcime/util/SIPSwitcher;->hideSwitchMenu()V

    .line 969
    :cond_4
    :goto_0
    return-void

    .line 946
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mDoHideWindow:Z

    goto :goto_0
.end method

.method public isCandidatesViewShown()Z
    .locals 1

    .prologue
    .line 853
    iget-boolean v0, p0, Lcom/htc/android/htcime/HTCIMEService;->m_bIsCandidatesViewShown:Z

    return v0
.end method

.method isNumRelatedType(I)Z
    .locals 3
    .parameter "inputType"

    .prologue
    const/4 v1, 0x0

    .line 4039
    const/4 v2, -0x1

    if-ne p1, v2, :cond_3

    .line 4040
    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mInputFieldAttribute:Landroid/view/inputmethod/EditorInfo;

    if-nez v2, :cond_1

    .line 4052
    :cond_0
    :goto_0
    return v1

    .line 4042
    :cond_1
    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mInputFieldAttribute:Landroid/view/inputmethod/EditorInfo;

    iget v2, v2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v0, v2, 0xf

    .line 4047
    .local v0, type:I
    :goto_1
    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 4050
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 4045
    .end local v0           #type:I
    :cond_3
    and-int/lit8 v0, p1, 0xf

    .restart local v0       #type:I
    goto :goto_1
.end method

.method public isStatusIconShow()Z
    .locals 1

    .prologue
    .line 3923
    iget-boolean v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mStatusIconShow:Z

    return v0
.end method

.method public isWclSpreaded()Z
    .locals 1

    .prologue
    .line 3538
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mWCList:Lcom/htc/android/htcime/ui/WordCandidateList;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/WordCandidateList;->isWclSpreaded()Z

    move-result v0

    return v0
.end method

.method public keyRegionCorrect(III)I
    .locals 1
    .parameter "keyCode"
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    .line 2476
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v0, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v0, p1, p2, p3}, Lcom/htc/android/htcime/Intf/IHTCIM;->keyRegionCorrect(III)I

    move-result v0

    return v0
.end method

.method public onAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 16
    .parameter "action"
    .parameter "data"

    .prologue
    .line 1960
    sget-object v12, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    .line 1962
    .local v12, ver:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    if-nez v13, :cond_1

    .line 2152
    :cond_0
    :goto_0
    return-void

    .line 1963
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v13, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    if-eqz v13, :cond_0

    .line 1965
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/htcime/HTCIMEService;->checkProtection()V

    .line 1968
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1971
    const-string v13, "CUSTOMIZE_LAND_BUTTON"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 1973
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v13, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard:Z

    if-nez v13, :cond_0

    .line 1976
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    const/4 v14, 0x1

    iput-boolean v14, v13, Lcom/htc/android/htcime/HTCIMMData;->mIsMMSExtractView:Z

    .line 1977
    const-string v13, "PACKAGE_NAME"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1978
    .local v7, packageName:Ljava/lang/String;
    new-instance v1, Lcom/htc/android/htcime/util/APKResTool;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v1, v7, v13}, Lcom/htc/android/htcime/util/APKResTool;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 1981
    .local v1, apkTool:Lcom/htc/android/htcime/util/APKResTool;
    const-string v13, "BG_DRAWABLE_KEY_UP"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 1983
    .local v4, drawableID:I
    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    iget-object v13, v13, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSBtnUpBg:Landroid/graphics/drawable/Drawable;

    if-nez v13, :cond_2

    .line 1984
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v1, v4}, Lcom/htc/android/htcime/util/APKResTool;->getDrawableById(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    iput-object v14, v13, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSBtnUpBg:Landroid/graphics/drawable/Drawable;

    .line 1986
    :cond_2
    const-string v13, "BG_DRAWABLE_KEY_DOWN"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 1987
    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    iget-object v13, v13, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSBtnDownBg:Landroid/graphics/drawable/Drawable;

    if-nez v13, :cond_3

    .line 1988
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v1, v4}, Lcom/htc/android/htcime/util/APKResTool;->getDrawableById(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    iput-object v14, v13, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSBtnDownBg:Landroid/graphics/drawable/Drawable;

    .line 1991
    :cond_3
    const-string v13, "BTN_SEND_TEXT"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_4

    const-string v13, "BTN_SEND_TEXT"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 1992
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    const-string v14, "BTN_SEND_TEXT"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSSendText:Ljava/lang/String;

    .line 1994
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    const-string v14, "BTN_SEND_TEXT_SIZE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    iput v14, v13, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSSendTextSize:I

    .line 1997
    const-string v13, "BTN_ATTACH_TEXT"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_5

    const-string v13, "BTN_ATTACH_TEXT"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 1998
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    const-string v14, "BTN_ATTACH_TEXT"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSAttachText:Ljava/lang/String;

    .line 2000
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    const-string v14, "BTN_ATTACH_TEXT_SIZE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    iput v14, v13, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSAttachTextSize:I

    .line 2003
    const-string v13, "BTN2_DRAWABLE_KEY_UP"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 2005
    if-nez v4, :cond_d

    .line 2006
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    const/4 v14, 0x1

    iput-boolean v14, v13, Lcom/htc/android/htcime/HTCIMMView;->bIsMMSToField:Z

    .line 2010
    :goto_1
    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    iget-object v13, v13, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSAttachIcon:Landroid/graphics/drawable/Drawable;

    if-nez v13, :cond_6

    .line 2011
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v1, v4}, Lcom/htc/android/htcime/util/APKResTool;->getDrawableById(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    iput-object v14, v13, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSAttachIcon:Landroid/graphics/drawable/Drawable;

    .line 2013
    :cond_6
    const-string v13, "BTN2_DRAWABLE_KEY_DOWN"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 2014
    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    iget-object v13, v13, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSAttachInvIcon:Landroid/graphics/drawable/Drawable;

    if-nez v13, :cond_7

    .line 2015
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v1, v4}, Lcom/htc/android/htcime/util/APKResTool;->getDrawableById(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    iput-object v14, v13, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSAttachInvIcon:Landroid/graphics/drawable/Drawable;

    .line 2018
    :cond_7
    const-string v13, "BTN1_DRAWABLE_KEY_UP"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 2020
    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    iget-object v13, v13, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSSendIcon:Landroid/graphics/drawable/Drawable;

    if-nez v13, :cond_8

    .line 2021
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v1, v4}, Lcom/htc/android/htcime/util/APKResTool;->getDrawableById(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    iput-object v14, v13, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSSendIcon:Landroid/graphics/drawable/Drawable;

    .line 2023
    :cond_8
    const-string v13, "BTN1_DRAWABLE_KEY_DOWN"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 2024
    if-eqz v4, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    iget-object v13, v13, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSSendInvIcon:Landroid/graphics/drawable/Drawable;

    if-nez v13, :cond_9

    .line 2025
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v1, v4}, Lcom/htc/android/htcime/util/APKResTool;->getDrawableById(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    iput-object v14, v13, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSSendInvIcon:Landroid/graphics/drawable/Drawable;

    .line 2028
    :cond_9
    const-string v13, "BTN1_DRAWABLE_DISABLE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 2029
    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    iget-object v13, v13, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSSendDisableIcon:Landroid/graphics/drawable/Drawable;

    if-nez v13, :cond_a

    .line 2030
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v1, v4}, Lcom/htc/android/htcime/util/APKResTool;->getDrawableById(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    iput-object v14, v13, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSSendDisableIcon:Landroid/graphics/drawable/Drawable;

    .line 2032
    :cond_a
    const-string v13, "BTN2_DRAWABLE_DISABLE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 2033
    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    iget-object v13, v13, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSAttachDisableIcon:Landroid/graphics/drawable/Drawable;

    if-nez v13, :cond_b

    .line 2034
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v1, v4}, Lcom/htc/android/htcime/util/APKResTool;->getDrawableById(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    iput-object v14, v13, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSAttachDisableIcon:Landroid/graphics/drawable/Drawable;

    .line 2036
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v13}, Lcom/htc/android/htcime/HTCIMMView;->CreateLandMMSTextView()Landroid/view/View;

    move-result-object v11

    .line 2038
    .local v11, v:Landroid/view/View;
    if-nez v11, :cond_c

    .line 2039
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/HTCIMEService;->onCreateExtractTextView()Landroid/view/View;

    move-result-object v11

    .line 2041
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v13}, Lcom/htc/android/htcime/HTCIMMView;->isShown()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/HTCIMEService;->isExtractViewShown()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 2042
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/htc/android/htcime/HTCIMEService;->setExtractView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 2008
    .end local v11           #v:Landroid/view/View;
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    const/4 v14, 0x0

    iput-boolean v14, v13, Lcom/htc/android/htcime/HTCIMMView;->bIsMMSToField:Z

    goto/16 :goto_1

    .line 2045
    .end local v1           #apkTool:Lcom/htc/android/htcime/util/APKResTool;
    .end local v4           #drawableID:I
    .end local v7           #packageName:Ljava/lang/String;
    :cond_e
    const-string v13, "inputRemainCount"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    const-string v13, "remaincount"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 2046
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    if-eqz v13, :cond_0

    .line 2048
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    const/4 v14, 0x1

    iput-boolean v14, v13, Lcom/htc/android/htcime/HTCIMMData;->mIsMMSExtractView:Z

    .line 2049
    const-string v13, "remaincount"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2050
    .local v8, s:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    iput-object v8, v13, Lcom/htc/android/htcime/HTCIMMView;->mLandMMSRemainText:Ljava/lang/String;

    .line 2051
    const/4 v2, -0x1

    .line 2052
    .local v2, c:I
    const/high16 v10, 0x4140

    .line 2053
    .local v10, size:F
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/HTCIMEService;->isExtractViewShown()Z

    move-result v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v13}, Lcom/htc/android/htcime/HTCIMMView;->isShown()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 2055
    const-string v13, "color"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 2056
    const-string v13, "color"

    const/4 v14, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 2058
    :cond_f
    const-string v13, "textsize"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_10

    .line 2059
    const-string v13, "textsize"

    const/high16 v14, 0x4140

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v10

    .line 2062
    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v13, v8, v2, v10}, Lcom/htc/android/htcime/HTCIMMView;->setMMSRemainText(Ljava/lang/String;IF)V

    goto/16 :goto_0

    .line 2066
    .end local v2           #c:I
    .end local v8           #s:Ljava/lang/String;
    .end local v10           #size:F
    :cond_11
    const-string v13, "ControlMMSBtn"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_15

    .line 2067
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    if-eqz v13, :cond_0

    .line 2070
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    const/4 v14, 0x1

    iput-boolean v14, v13, Lcom/htc/android/htcime/HTCIMMData;->mIsMMSExtractView:Z

    .line 2072
    const-string v13, "DISABLE_SEND_BTN"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_12

    .line 2073
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    const/4 v13, 0x1

    const-string v14, "DISABLE_SEND_BTN"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    if-ne v13, v14, :cond_13

    const/4 v13, 0x1

    :goto_2
    sput-boolean v13, Lcom/htc/android/htcime/HTCIMMView;->mDisableSendBtn:Z

    .line 2075
    :cond_12
    const-string v13, "DISABLE_ATTACH_BTN"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 2076
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    const/4 v13, 0x1

    const-string v14, "DISABLE_ATTACH_BTN"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    if-ne v13, v14, :cond_14

    const/4 v13, 0x1

    :goto_3
    sput-boolean v13, Lcom/htc/android/htcime/HTCIMMView;->mDisableAttachBtn:Z

    goto/16 :goto_0

    .line 2073
    :cond_13
    const/4 v13, 0x0

    goto :goto_2

    .line 2076
    :cond_14
    const/4 v13, 0x0

    goto :goto_3

    .line 2079
    :cond_15
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v13, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    if-eqz v13, :cond_16

    const-string v13, "addwordforxt9"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_16

    .line 2080
    const-string v13, "WORD"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 2081
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v13, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    const-string v14, "WORD"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lcom/htc/android/htcime/Intf/IHTCIM;->addUserWord(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2084
    :cond_16
    const-string v13, "LEFT_WCL_SPACE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_17

    const-string v13, "width"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_17

    .line 2085
    const-string v13, "width"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2089
    :cond_17
    const-string v13, "TextView_MetaStatus"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_18

    .line 2091
    const-string v13, "FN"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 2092
    .local v6, fn:I
    const-string v13, "CAPS"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 2093
    .local v3, caps:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v13, v13, Lcom/htc/android/htcime/HTCIMMData;->mCurrHWKB:Lcom/htc/android/htcime/ezsip/QwertyHWKBView;

    invoke-virtual {v13, v6, v3}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->updateFNCAPSMode(II)V

    goto/16 :goto_0

    .line 2095
    .end local v3           #caps:I
    .end local v6           #fn:I
    :cond_18
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v13, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    if-eqz v13, :cond_19

    const-string v13, "smartdialcommit"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_19

    .line 2096
    const-string v13, "BACK"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 2097
    const/high16 v13, 0x71d

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyEvent(I)V

    goto/16 :goto_0

    .line 2100
    :cond_19
    const-string v13, "htcime_reselect"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1c

    const-string v13, "content"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1c

    .line 2102
    :try_start_0
    sget-boolean v13, Lcom/htc/android/htcime/HTCIMMData;->sFeature_Error_Reselect:Z

    if-eqz v13, :cond_0

    .line 2104
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-boolean v13, v13, Lcom/htc/android/htcime/HTCIMMData;->mISPostSpellingCheck:Z

    if-eqz v13, :cond_0

    .line 2106
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v13, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    if-eqz v13, :cond_0

    .line 2109
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v13, v13, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v13, v13, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v13}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 2113
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v13, v13, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v13}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;

    move-result-object v13

    iget v9, v13, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    .line 2115
    .local v9, sip_id:I
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v14, v14, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    if-ne v13, v14, :cond_1b

    .line 2116
    const/4 v13, 0x2

    if-ne v13, v9, :cond_0

    .line 2123
    :cond_1a
    const-string v13, "content"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2126
    .restart local v8       #s:Ljava/lang/String;
    invoke-static {v8}, Lcom/htc/android/htcime/util/SIPUtils;->isPSValidString(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 2129
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sput-object v8, Lcom/htc/android/htcime/HTCIMMData;->mReselectWord:Ljava/lang/String;

    .line 2130
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    const-string v13, "cursor_start"

    const/4 v14, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    sput v13, Lcom/htc/android/htcime/HTCIMMData;->mReselectCursorStart:I

    .line 2131
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    const-string v13, "tap"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    sput-boolean v13, Lcom/htc/android/htcime/HTCIMMData;->mReselectFromTap:Z

    .line 2134
    const/high16 v13, 0x731

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyEvent(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2136
    .end local v8           #s:Ljava/lang/String;
    .end local v9           #sip_id:I
    :catch_0
    move-exception v5

    .line 2137
    .local v5, e:Ljava/lang/Exception;
    const-string v13, "HTCIMEService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[PS]Exception "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2119
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v9       #sip_id:I
    :cond_1b
    if-eqz v9, :cond_1a

    goto/16 :goto_0

    .line 2142
    .end local v9           #sip_id:I
    :cond_1c
    const-string v13, "FLOAT_WCL"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1d

    .line 2143
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    const-string v13, "float_wcl"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    sput-boolean v13, Lcom/htc/android/htcime/HTCIMMData;->mFloatWCL:Z

    goto/16 :goto_0

    .line 2146
    :cond_1d
    const-string v13, "ime_switch_dialog"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const-string v13, "show"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 2147
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    if-eqz v13, :cond_0

    .line 2149
    const/high16 v13, 0x710

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyEvent(I)V

    goto/16 :goto_0
.end method

.method public onComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V
    .locals 1
    .parameter "outInsets"

    .prologue
    .line 4096
    invoke-super {p0, p1}, Lcom/htc/android/htcime/compat/InputMethodServiceCompatWrapper;->onComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V

    .line 4097
    invoke-virtual {p0}, Lcom/htc/android/htcime/HTCIMEService;->isFullscreenMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4098
    iget v0, p1, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    iput v0, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    .line 4100
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 22
    .parameter "newConfig"

    .prologue
    .line 2718
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/android/htcime/HTCIMEService;->isOrienChange:Z

    .line 2721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v18, v0

    if-nez v18, :cond_0

    .line 2723
    const-string v18, "HTCIMEService"

    const-string v19, "onConfigurationChanged mData is null"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2724
    sget-object v18, Ljava/io/FileDescriptor;->err:Ljava/io/FileDescriptor;

    new-instance v19, Ljava/io/PrintWriter;

    sget-object v20, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const/16 v21, 0x1

    invoke-direct/range {v19 .. v21}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-super {v0, v1, v2, v3}, Lcom/htc/android/htcime/compat/InputMethodServiceCompatWrapper;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2969
    :goto_0
    return-void

    .line 2729
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v18, v0

    sget-object v18, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    if-nez v18, :cond_1

    .line 2731
    const-string v18, "HTCIMEService"

    const-string v19, "onConfigurationChanged mData.mCurrIM is null"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2732
    sget-object v18, Ljava/io/FileDescriptor;->err:Ljava/io/FileDescriptor;

    new-instance v19, Ljava/io/PrintWriter;

    sget-object v20, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const/16 v21, 0x1

    invoke-direct/range {v19 .. v21}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-super {v0, v1, v2, v3}, Lcom/htc/android/htcime/compat/InputMethodServiceCompatWrapper;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    .line 2737
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/htcime/HTCIMEService;->checkProtection()V

    .line 2740
    const/4 v10, 0x0

    .line 2741
    .local v10, noConfigChange:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMEService;->mCurConfig:Landroid/content/res/Configuration;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMEService;->mCurConfig:Landroid/content/res/Configuration;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v10

    .line 2748
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMEService;->mCurConfig:Landroid/content/res/Configuration;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 2760
    if-eqz v10, :cond_3

    .line 2761
    const-string v18, "HTCIMEService"

    const-string v19, "onConfigurationChanged, nothing changes"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2767
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMEService;->mCurSkinSB:Ljava/lang/StringBuilder;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2768
    .local v5, curSkin:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/htc/android/htcime/util/AppUnbundleUtil;->getConfigurationSkin(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v9

    .line 2769
    .local v9, newSkin:Ljava/lang/String;
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_6

    .line 2770
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v18, v0

    if-eqz v18, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mIM:[Lcom/htc/android/htcime/Intf/IHTCIM;

    move-object/from16 v18, v0

    if-eqz v18, :cond_6

    .line 2771
    const/4 v7, 0x0

    .line 2773
    .local v7, imUpdated:Z
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mIM:[Lcom/htc/android/htcime/Intf/IHTCIM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v6, v0, :cond_5

    .line 2774
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mIM:[Lcom/htc/android/htcime/Intf/IHTCIM;

    move-object/from16 v18, v0

    aget-object v18, v18, v6

    if-eqz v18, :cond_4

    .line 2775
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mIM:[Lcom/htc/android/htcime/Intf/IHTCIM;

    move-object/from16 v18, v0

    aget-object v18, v18, v6

    invoke-interface/range {v18 .. v18}, Lcom/htc/android/htcime/Intf/IHTCIM;->loadCommonCtrlValue()V

    .line 2776
    const/4 v7, 0x1

    .line 2773
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2780
    :cond_5
    if-eqz v7, :cond_6

    .line 2781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMEService;->mCurSkinSB:Ljava/lang/StringBuilder;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v20

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2782
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMEService;->mCurSkinSB:Ljava/lang/StringBuilder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2789
    .end local v6           #i:I
    .end local v7           #imUpdated:Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v18, v0

    sget-boolean v18, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard:Z

    if-eqz v18, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v18, v0

    sget-boolean v18, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkbWCL:Z

    if-eqz v18, :cond_7

    .line 2790
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/HTCIMEService;->setCandidatesViewShown(Z)V

    .line 2793
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/HTCIMEService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "LocaleChange"

    const/16 v20, -0x1

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v18, v0

    sget-boolean v18, Lcom/htc/android/htcime/HTCIMMData;->mbExecOnceAtBoot2:Z

    if-eqz v18, :cond_8

    .line 2794
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v18 .. v20}, Lcom/htc/android/htcime/util/SIPSwitcher;->localeChangeUpdate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2795
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/HTCIMEService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "LocaleChange"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2799
    :cond_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v19, v0

    sget-object v19, Lcom/htc/android/htcime/HTCIMMData;->mLocaleLanguageNow:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_10

    .line 2801
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 2802
    .local v16, sp1:Landroid/content/SharedPreferences;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 2804
    .local v14, r1:Landroid/content/res/Resources;
    const v18, 0x7f0900e3

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, -0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_9

    const v18, 0x7f0900e4

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, -0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    .line 2806
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v18, v0

    const/16 v18, 0x1

    sput-boolean v18, Lcom/htc/android/htcime/HTCIMMData;->mPreLocaleChange:Z

    .line 2810
    :cond_a
    const-string v18, "ro.cid"

    const-string v19, "00000000"

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "HTC__304"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 2811
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 2812
    .local v4, curLang:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v18, v0

    invoke-super/range {p0 .. p0}, Lcom/htc/android/htcime/compat/InputMethodServiceCompatWrapper;->onEvaluateInputViewShown()Z

    move-result v18

    if-nez v18, :cond_c

    const/16 v18, 0x1

    :goto_2
    sput-boolean v18, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard:Z

    .line 2813
    const-string v18, "es"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 2814
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 2815
    .local v15, sp:Landroid/content/SharedPreferences;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/HTCIMEService;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 2816
    .local v13, r:Landroid/content/res/Resources;
    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    const v19, 0x7f0900eb

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    const v19, 0x7f0900ec

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x10

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2820
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mCurrHWKB:Lcom/htc/android/htcime/ezsip/QwertyHWKBView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_b

    .line 2821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mCurrHWKB:Lcom/htc/android/htcime/ezsip/QwertyHWKBView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->forceLoadDefaultSIP()V

    .line 2838
    .end local v4           #curLang:Ljava/lang/String;
    .end local v13           #r:Landroid/content/res/Resources;
    .end local v15           #sp:Landroid/content/SharedPreferences;
    :cond_b
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v18

    sput-object v18, Lcom/htc/android/htcime/HTCIMMData;->mLocaleLanguageNow:Ljava/lang/String;

    .line 2840
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/htc/android/htcime/util/SIPUtils;->htcIMELocaleTranslator(Ljava/util/Locale;)I

    move-result v8

    .line 2841
    .local v8, newOne:I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v0, v8, :cond_e

    .line 2842
    const-string v18, "HTCIMEService"

    const-string v19, "global locale translate failed"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2812
    .end local v8           #newOne:I
    .restart local v4       #curLang:Ljava/lang/String;
    :cond_c
    const/16 v18, 0x0

    goto/16 :goto_2

    .line 2824
    :cond_d
    const-string v18, "pt"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 2825
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 2826
    .restart local v15       #sp:Landroid/content/SharedPreferences;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/HTCIMEService;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 2827
    .restart local v13       #r:Landroid/content/res/Resources;
    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    const v19, 0x7f0900eb

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    const v19, 0x7f0900ec

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x20

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2831
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mCurrHWKB:Lcom/htc/android/htcime/ezsip/QwertyHWKBView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_b

    .line 2832
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mCurrHWKB:Lcom/htc/android/htcime/ezsip/QwertyHWKBView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->forceLoadDefaultSIP()V

    goto/16 :goto_3

    .line 2845
    .end local v4           #curLang:Ljava/lang/String;
    .end local v13           #r:Landroid/content/res/Resources;
    .end local v15           #sp:Landroid/content/SharedPreferences;
    .restart local v8       #newOne:I
    :cond_e
    invoke-static/range {p0 .. p0}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 2846
    .restart local v15       #sp:Landroid/content/SharedPreferences;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/HTCIMEService;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 2847
    .restart local v13       #r:Landroid/content/res/Resources;
    if-eqz v15, :cond_f

    if-eqz v13, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v0, v8}, Lcom/htc/android/htcime/util/SIPUtils;->isLanguageSupport(Landroid/content/Context;I)Z

    move-result v18

    if-eqz v18, :cond_f

    const v18, 0x7f0900d7

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    const-string v19, "0"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    if-eq v8, v0, :cond_f

    .line 2850
    new-instance v17, Lcom/htc/android/htcime/util/ConfigData;

    invoke-direct/range {v17 .. v17}, Lcom/htc/android/htcime/util/ConfigData;-><init>()V

    .line 2851
    .local v17, util:Lcom/htc/android/htcime/util/ConfigData;
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v8}, Lcom/htc/android/htcime/util/ConfigData;->updateLocaleToSharePrefs(Landroid/content/Context;I)V

    .line 2854
    .end local v17           #util:Lcom/htc/android/htcime/util/ConfigData;
    :cond_f
    invoke-static/range {p0 .. p0}, Lcom/htc/android/htcime/util/CustomizeUtil;->updateLocaleString(Landroid/content/Context;)Z

    .line 2857
    .end local v8           #newOne:I
    .end local v13           #r:Landroid/content/res/Resources;
    .end local v14           #r1:Landroid/content/res/Resources;
    .end local v15           #sp:Landroid/content/SharedPreferences;
    .end local v16           #sp1:Landroid/content/SharedPreferences;
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/htc/android/htcime/util/CustomizeUtil;->cimeConfigLoader(Landroid/content/Context;)V

    .line 2860
    const-string v18, "zh"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v19, v0

    sget-object v19, Lcom/htc/android/htcime/HTCIMMData;->mLocaleLanguageNow:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_19

    .line 2861
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/htc/android/htcime/util/SIPUtils;->updateCIMEDefaultLanguage(Landroid/content/Context;Ljava/lang/String;)V

    .line 2868
    :cond_11
    :goto_4
    move-object/from16 v0, p1

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_14

    .line 2871
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/android/htcime/HTCIMEService;->isOrienChange:Z

    .line 2872
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    move-object/from16 v18, v0

    invoke-static {}, Lcom/htc/android/htcime/HTCIMMView;->getIMMViewVisible()Z

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_12

    .line 2873
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/android/htcime/HTCIMEService;->isOrienChange_when_IMM_VISIBLE:Z

    .line 2878
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/htc/android/htcime/HTCIMMData;->mForceUpdateSIP:Ljava/lang/Boolean;

    .line 2880
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMEService;->mSIPSwitcher:Lcom/htc/android/htcime/util/SIPSwitcher;

    move-object/from16 v18, v0

    if-eqz v18, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMEService;->mSIPSwitcher:Lcom/htc/android/htcime/util/SIPSwitcher;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/htc/android/htcime/util/SIPSwitcher;->hideSwitchMenu()V

    .line 2881
    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/htcime/HTCIMEService;->handleOnInterrupt()V

    .line 2882
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/HTCIMEService;->onFinishInput()V

    .line 2883
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/htcime/HTCIMEService;->closeContextMenu()V

    .line 2886
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_14

    .line 2887
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/htc/android/htcime/HTCIMMView;->hideHWKBSymSip()Z

    .line 2891
    :cond_14
    const/16 v18, 0x2

    move-object/from16 v0, p1

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_15

    .line 2892
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mKeyboardHidden:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_15

    .line 2893
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/HTCIMEService;->onFinishInput()V

    .line 2894
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/htc/android/htcime/HTCIMMData;->mKeyboardHidden:I

    .line 2895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mKeyboardHidden:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1a

    .line 2896
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/htc/android/htcime/HTCIMMData;->mForceUpdateSIP:Ljava/lang/Boolean;

    .line 2897
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/htcime/HTCIMEService;->closeContextMenu()V

    .line 2898
    const/16 v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/HTCIMEService;->handleIconShow(I)V

    .line 2931
    :cond_15
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_16

    sget-boolean v18, Lcom/htc/android/htcime/HTCIMMData;->sFeature_FixedWCL:Z

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_16

    .line 2932
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/htc/android/htcime/HTCIMMView;->dismissFixedWCLSymbol()V

    .line 2935
    :cond_16
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/android/htcime/HTCIMEService;->isConfigChange_Ext_HWKB_Unplug:Z

    .line 2936
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v18, v0

    sget-boolean v12, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard:Z

    .line 2937
    .local v12, oldHWKeyboard:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v18, v0

    sget-boolean v11, Lcom/htc/android/htcime/HTCIMMData;->mbUseExternalHWKB:Z

    .line 2940
    .local v11, oldExternalHWKB:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v18, v0

    invoke-super/range {p0 .. p0}, Lcom/htc/android/htcime/compat/InputMethodServiceCompatWrapper;->onEvaluateInputViewShown()Z

    move-result v18

    if-nez v18, :cond_1b

    const/16 v18, 0x1

    :goto_6
    sput-boolean v18, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard:Z

    .line 2942
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v18, v0

    sget-boolean v18, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard:Z

    if-eqz v18, :cond_1d

    .line 2943
    move-object/from16 v0, p1

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/HTCIMEService;->mCurHardKeyboardType:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_17

    .line 2944
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/HTCIMEService;->mCurHardKeyboardType:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/htcime/HTCIMEService;->mOldHardKeyboardType:I

    .line 2945
    move-object/from16 v0, p1

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/htcime/HTCIMEService;->mCurHardKeyboardType:I

    .line 2947
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/HTCIMEService;->mCurHardKeyboardType:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1c

    const/16 v18, 0x1

    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/htc/android/htcime/HTCIMEService;->updateInputDevices(Z)V

    .line 2956
    :cond_17
    :goto_8
    if-eqz v12, :cond_18

    if-eqz v11, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v18, v0

    sget-boolean v18, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard:Z

    if-nez v18, :cond_18

    .line 2957
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/android/htcime/HTCIMEService;->isConfigChange_Ext_HWKB_Unplug:Z

    .line 2962
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 2963
    .restart local v15       #sp:Landroid/content/SharedPreferences;
    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    const-string v19, "UseExternalHWKB"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v20, v0

    sget-boolean v20, Lcom/htc/android/htcime/HTCIMMData;->mbUseExternalHWKB:Z

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2968
    invoke-super/range {p0 .. p1}, Lcom/htc/android/htcime/compat/InputMethodServiceCompatWrapper;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto/16 :goto_0

    .line 2862
    .end local v11           #oldExternalHWKB:Z
    .end local v12           #oldHWKeyboard:Z
    .end local v15           #sp:Landroid/content/SharedPreferences;
    :cond_19
    invoke-static {}, Lcom/htc/android/htcime/util/SIPUtils;->isHKBuild()Z

    move-result v18

    if-eqz v18, :cond_11

    .line 2864
    const-string v18, "HK"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/htc/android/htcime/util/SIPUtils;->updateCIMEDefaultLanguage(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2900
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mCurrHWKB:Lcom/htc/android/htcime/ezsip/QwertyHWKBView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->forceLoadDefaultSIP()V

    goto/16 :goto_5

    .line 2940
    .restart local v11       #oldExternalHWKB:Z
    .restart local v12       #oldHWKeyboard:Z
    :cond_1b
    const/16 v18, 0x0

    goto/16 :goto_6

    .line 2947
    :cond_1c
    const/16 v18, 0x0

    goto :goto_7

    .line 2950
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v18, v0

    const/16 v18, 0x0

    sput-boolean v18, Lcom/htc/android/htcime/HTCIMMData;->mbUseExternalHWKB:Z

    .line 2951
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/htcime/HTCIMEService;->mCurHardKeyboardType:I

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/htcime/HTCIMEService;->mOldHardKeyboardType:I

    goto :goto_8
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 212
    invoke-static {}, Lcom/htc/android/htcime/HTCIMEService;->fetchHtcSenseVer()F

    move-result v1

    sput v1, Lcom/htc/android/htcime/HTCIMMData;->sHtcSenseVer:F

    .line 214
    sput-object p0, Lcom/htc/android/htcime/HTCIMEService;->mInstance:Lcom/htc/android/htcime/HTCIMEService;

    .line 215
    const/16 v1, 0xa

    invoke-static {v1}, Lcom/htc/android/htcime/util/CommonResourceUtil;->getCommonControlResource(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/HTCIMEService;->setTheme(I)V

    .line 217
    invoke-super {p0}, Lcom/htc/android/htcime/compat/InputMethodServiceCompatWrapper;->onCreate()V

    .line 219
    new-instance v1, Lcom/htc/android/htcime/util/CodeIMEFinder;

    invoke-direct {v1, p0}, Lcom/htc/android/htcime/util/CodeIMEFinder;-><init>(Lcom/htc/android/htcime/HTCIMEService;)V

    iput-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mIMEFinder:Lcom/htc/android/htcime/util/CodeIMEFinder;

    .line 221
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mIMEFinder:Lcom/htc/android/htcime/util/CodeIMEFinder;

    invoke-virtual {v1}, Lcom/htc/android/htcime/util/CodeIMEFinder;->loadEssential()V

    .line 223
    invoke-direct {p0}, Lcom/htc/android/htcime/HTCIMEService;->initSIPDependentObj()V

    .line 228
    :try_start_0
    const-string v1, "This application can only run on HTC devices"

    invoke-static {p0, v1}, Lcom/htc/protection/api/ProEngine;->load(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/protection/api/ProInterface;

    iput-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->_protect:Lcom/htc/protection/api/ProInterface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :goto_0
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    invoke-virtual {p0}, Lcom/htc/android/htcime/HTCIMEService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/android/htcime/HTCIMMData;->mCalendar:Ljava/util/Calendar;

    .line 239
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mCurConfig:Landroid/content/res/Configuration;

    .line 240
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mCurConfig:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->keyboard:I

    iput v1, p0, Lcom/htc/android/htcime/HTCIMEService;->_Keyboard:I

    .line 241
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMEService;->mCurConfig:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->keyboardHidden:I

    iput v2, v1, Lcom/htc/android/htcime/HTCIMMData;->mKeyboardHidden:I

    .line 242
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mCurConfig:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/htc/android/htcime/HTCIMEService;->_Orientation:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 248
    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView_dummy:Lcom/htc/android/htcime/HTCIMMView;

    .line 249
    iget-boolean v1, p0, Lcom/htc/android/htcime/HTCIMEService;->isIncreaseFirstLaunchTimeSku:Z

    if-eqz v1, :cond_0

    .line 250
    invoke-direct {p0}, Lcom/htc/android/htcime/HTCIMEService;->handleExeOnceAtBoot()V

    .line 255
    :cond_0
    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->sFeature_Tablet:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->mIsMemTuneProj:Z

    if-eqz v1, :cond_2

    .line 257
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getFreeNativeBitmap()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 258
    invoke-static {}, Lcom/htc/tracker/ObjectTracker;->getInstance()Lcom/htc/tracker/ObjectTracker;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/htc/tracker/ObjectTracker;->setKey(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 265
    :cond_2
    :goto_2
    return-void

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "HTCIMEService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ProEngine.load]Exception "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " (null==_protect) = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->_protect:Lcom/htc/protection/api/ProInterface;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    :goto_3
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_3

    .line 259
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 260
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "HTCIMEService"

    const-string v2, "onCreate, Releasing bitmap mechanism error, releasing bitmap mechanism not applied"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 243
    .end local v0           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public onCreateCandidatesView()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3494
    sget-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->sFeature_FixedWCL:Z

    if-eqz v0, :cond_1

    .line 3495
    sget-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->sFeature_FixedWCL_Symbol:Z

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/HTCIMEService;->setCandidatesViewShown(Z)V

    .line 3497
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    if-eqz v0, :cond_0

    .line 3498
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMMView;->getWCLView()Landroid/view/View;

    move-result-object v0

    .line 3532
    :goto_0
    return-object v0

    .line 3500
    :cond_0
    const-string v0, "HTCIMEService"

    const-string v1, "[FixedWCL]onCreateCandidateView mHTCIMMView == null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3501
    invoke-super {p0}, Lcom/htc/android/htcime/compat/InputMethodServiceCompatWrapper;->onCreateCandidatesView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 3505
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    if-nez v0, :cond_2

    invoke-super {p0}, Lcom/htc/android/htcime/compat/InputMethodServiceCompatWrapper;->onCreateCandidatesView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 3506
    :cond_2
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v0, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    if-nez v0, :cond_3

    invoke-super {p0}, Lcom/htc/android/htcime/compat/InputMethodServiceCompatWrapper;->onCreateCandidatesView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 3510
    :cond_3
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mWCList:Lcom/htc/android/htcime/ui/WordCandidateList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mWCList:Lcom/htc/android/htcime/ui/WordCandidateList;

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v0, p0, v1}, Lcom/htc/android/htcime/ui/WordCandidateList;->init(Lcom/htc/android/htcime/HTCIMEService;Lcom/htc/android/htcime/HTCIMMView;)V

    .line 3514
    :cond_4
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    if-nez v0, :cond_5

    .line 3515
    const-string v0, "HTCIMEService"

    const-string v1, "[HTCIMEService::onCreateCandidatesView] >> keypad slid out "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3518
    :cond_5
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard:Z

    if-eqz v0, :cond_7

    .line 3519
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mWCList:Lcom/htc/android/htcime/ui/WordCandidateList;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/WordCandidateList;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 3520
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mWCList:Lcom/htc/android/htcime/ui/WordCandidateList;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/WordCandidateList;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 3522
    :cond_6
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mWCList:Lcom/htc/android/htcime/ui/WordCandidateList;

    invoke-virtual {v0, v2}, Lcom/htc/android/htcime/ui/WordCandidateList;->showWCL(I)V

    .line 3523
    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/HTCIMEService;->setCandidatesViewShown(Z)V

    .line 3525
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mWCList:Lcom/htc/android/htcime/ui/WordCandidateList;

    goto :goto_0

    .line 3531
    :cond_7
    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/HTCIMEService;->setCandidatesViewShown(Z)V

    .line 3532
    invoke-super {p0}, Lcom/htc/android/htcime/compat/InputMethodServiceCompatWrapper;->onCreateCandidatesView()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateExtractTextView()Landroid/view/View;
    .locals 4

    .prologue
    .line 2189
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    if-nez v1, :cond_0

    invoke-super {p0}, Lcom/htc/android/htcime/compat/InputMethodServiceCompatWrapper;->onCreateExtractTextView()Landroid/view/View;

    move-result-object v1

    .line 2203
    :goto_0
    return-object v1

    .line 2190
    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    if-nez v1, :cond_1

    invoke-super {p0}, Lcom/htc/android/htcime/compat/InputMethodServiceCompatWrapper;->onCreateExtractTextView()Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 2192
    :cond_1
    invoke-direct {p0}, Lcom/htc/android/htcime/HTCIMEService;->checkProtection()V

    .line 2194
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    if-nez v1, :cond_2

    .line 2195
    invoke-virtual {p0}, Lcom/htc/android/htcime/HTCIMEService;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03001e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/android/htcime/HTCIMMView;

    iput-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    .line 2196
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v1, p0}, Lcom/htc/android/htcime/HTCIMMView;->init(Lcom/htc/android/htcime/HTCIMEService;)V

    .line 2198
    :cond_2
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMMView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2199
    .local v0, inputManager:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isWatchingCursor(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2200
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMMView;->CreateHTCExtractTextView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mExtractEditText:Landroid/view/View;

    .line 2203
    :goto_1
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mExtractEditText:Landroid/view/View;

    goto :goto_0

    .line 2202
    :cond_3
    invoke-super {p0}, Lcom/htc/android/htcime/compat/InputMethodServiceCompatWrapper;->onCreateExtractTextView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mExtractEditText:Landroid/view/View;

    goto :goto_1
.end method

.method public onCreateInputView()Landroid/view/View;
    .locals 8

    .prologue
    const v7, 0x7f03001e

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 270
    const-string v3, "HTCIMEService"

    const-string v4, "[onCreateInputView]"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    sget-boolean v3, Lcom/htc/android/htcime/HTCIMMData;->sFeature_VoiceInput_Enable:Z

    if-eqz v3, :cond_0

    .line 276
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMEService;->mVoiceInput:Lcom/htc/android/htcime/deprecated/voice/VoiceInput;

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/htc/android/htcime/HTCIMEService;->initVoiceInput()V

    .line 280
    :cond_0
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMEService;->mCurConfig:Landroid/content/res/Configuration;

    if-nez v3, :cond_1

    .line 283
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/htcime/HTCIMEService;->mCurConfig:Landroid/content/res/Configuration;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMEService;->mCurConfig:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Lcom/htc/android/htcime/HTCIMEService;->_Orientation:I

    .line 291
    iget v3, p0, Lcom/htc/android/htcime/HTCIMEService;->_Orientation:I

    if-ne v3, v5, :cond_4

    .line 292
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iput v5, v3, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    .line 297
    :goto_1
    iget-boolean v3, p0, Lcom/htc/android/htcime/HTCIMEService;->isIncreaseFirstLaunchTimeSku:Z

    if-eqz v3, :cond_6

    .line 298
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView_dummy:Lcom/htc/android/htcime/HTCIMMView;

    if-nez v3, :cond_5

    .line 299
    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lcom/htc/android/htcime/HTCIMEService;->removeUnhandledMsg(I)V

    .line 302
    invoke-virtual {p0}, Lcom/htc/android/htcime/HTCIMEService;->execOnceAtBoot()V

    .line 303
    invoke-virtual {p0}, Lcom/htc/android/htcime/HTCIMEService;->execOnceAtBoot2()V

    .line 306
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    if-eqz v3, :cond_2

    .line 307
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v3}, Lcom/htc/android/htcime/HTCIMMView;->finishInput()V

    .line 309
    :cond_2
    invoke-virtual {p0}, Lcom/htc/android/htcime/HTCIMEService;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v3, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/android/htcime/HTCIMMView;

    iput-object v3, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    .line 310
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v3, p0}, Lcom/htc/android/htcime/HTCIMMView;->init(Lcom/htc/android/htcime/HTCIMEService;)V

    .line 316
    :cond_3
    :goto_2
    iput-object v6, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView_dummy:Lcom/htc/android/htcime/HTCIMMView;

    .line 330
    :goto_3
    const/4 v0, 0x0

    .line 332
    .local v0, newSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v3, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard:Z

    if-eqz v3, :cond_8

    .line 333
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mCurrHWKB:Lcom/htc/android/htcime/ezsip/QwertyHWKBView;

    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v5, v5, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    invoke-virtual {v3, v4, v5}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->getSIPId(II)I

    move-result v2

    .line 334
    .local v2, sipid:I
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mCurrHWKB:Lcom/htc/android/htcime/ezsip/QwertyHWKBView;

    iput-object v4, v3, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    .line 335
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    invoke-virtual {p0, v3, v4, v2}, Lcom/htc/android/htcime/HTCIMEService;->getIMByTypeAndSIP(III)Lcom/htc/android/htcime/Intf/IHTCIM;

    move-result-object v3

    sput-object v3, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    .line 336
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mCurrHWKB:Lcom/htc/android/htcime/ezsip/QwertyHWKBView;

    invoke-virtual {v3, v2}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->setEZSIP(I)V

    .line 367
    .end local v2           #sipid:I
    :goto_4
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v3, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard:Z

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v3, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkbWCL:Z

    if-eqz v3, :cond_b

    invoke-super {p0}, Lcom/htc/android/htcime/compat/InputMethodServiceCompatWrapper;->onCreateInputView()Landroid/view/View;

    move-result-object v3

    :goto_5
    return-object v3

    .line 294
    .end local v0           #newSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;
    :cond_4
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    const/4 v4, 0x1

    iput v4, v3, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    goto :goto_1

    .line 311
    :cond_5
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView_dummy:Lcom/htc/android/htcime/HTCIMMView;

    if-eqz v3, :cond_3

    .line 312
    invoke-virtual {p0}, Lcom/htc/android/htcime/HTCIMEService;->execOnceAtBoot2()V

    .line 314
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView_dummy:Lcom/htc/android/htcime/HTCIMMView;

    iput-object v3, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    goto :goto_2

    .line 319
    :cond_6
    invoke-virtual {p0}, Lcom/htc/android/htcime/HTCIMEService;->execOnceAtBoot()V

    .line 320
    invoke-virtual {p0}, Lcom/htc/android/htcime/HTCIMEService;->execOnceAtBoot2()V

    .line 323
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    if-eqz v3, :cond_7

    .line 324
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v3}, Lcom/htc/android/htcime/HTCIMMView;->finishInput()V

    .line 326
    :cond_7
    invoke-virtual {p0}, Lcom/htc/android/htcime/HTCIMEService;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v3, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/android/htcime/HTCIMMView;

    iput-object v3, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    .line 327
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v3, p0}, Lcom/htc/android/htcime/HTCIMMView;->init(Lcom/htc/android/htcime/HTCIMEService;)V

    goto :goto_3

    .line 338
    .restart local v0       #newSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;
    :cond_8
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    if-ne v3, v5, :cond_9

    .line 342
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    invoke-virtual {p0, v3, v4}, Lcom/htc/android/htcime/HTCIMEService;->getSIPByType(II)I

    move-result v1

    .line 344
    .local v1, newSIPID:I
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    invoke-virtual {p0, v3, v4, v1}, Lcom/htc/android/htcime/HTCIMEService;->getIMByTypeAndSIP(III)Lcom/htc/android/htcime/Intf/IHTCIM;

    move-result-object v3

    sput-object v3, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    .line 345
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMEService;->mIMEFinder:Lcom/htc/android/htcime/util/CodeIMEFinder;

    invoke-virtual {v3, v1}, Lcom/htc/android/htcime/util/CodeIMEFinder;->getSIPBySIPId(I)Lcom/htc/android/htcime/Intf/IHTCSIP;

    move-result-object v0

    .line 347
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mLandWCLVisibleByType:[Z

    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v5, v5, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    aget-boolean v4, v4, v5

    invoke-virtual {v3, v4}, Lcom/htc/android/htcime/HTCIMMView;->setWCLVisible(Z)V

    .line 348
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v3}, Lcom/htc/android/htcime/HTCIMMView;->initVariables()V

    .line 364
    :goto_6
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iput-object v0, v3, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    goto/16 :goto_4

    .line 353
    .end local v1           #newSIPID:I
    :cond_9
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    invoke-virtual {p0, v3, v4}, Lcom/htc/android/htcime/HTCIMEService;->getSIPByType(II)I

    move-result v1

    .line 356
    .restart local v1       #newSIPID:I
    const/4 v3, -0x1

    if-ne v3, v1, :cond_a

    .line 357
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mIM:[Lcom/htc/android/htcime/Intf/IHTCIM;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    sput-object v3, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    .line 360
    :goto_7
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMEService;->mIMEFinder:Lcom/htc/android/htcime/util/CodeIMEFinder;

    invoke-virtual {v3, v1}, Lcom/htc/android/htcime/util/CodeIMEFinder;->getSIPBySIPId(I)Lcom/htc/android/htcime/Intf/IHTCSIP;

    move-result-object v0

    .line 361
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mPortWCLVisibleByType:[Z

    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v5, v5, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    aget-boolean v4, v4, v5

    invoke-virtual {v3, v4}, Lcom/htc/android/htcime/HTCIMMView;->setWCLVisible(Z)V

    .line 362
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v3}, Lcom/htc/android/htcime/HTCIMMView;->initVariables()V

    goto :goto_6

    .line 359
    :cond_a
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    invoke-virtual {p0, v3, v4, v1}, Lcom/htc/android/htcime/HTCIMEService;->getIMByTypeAndSIP(III)Lcom/htc/android/htcime/Intf/IHTCIM;

    move-result-object v3

    sput-object v3, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    goto :goto_7

    .line 367
    .end local v1           #newSIPID:I
    :cond_b
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    goto/16 :goto_5

    .line 284
    .end local v0           #newSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;
    :catch_0
    move-exception v3

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 13

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 1527
    const/4 v8, 0x3

    invoke-direct {p0, v8}, Lcom/htc/android/htcime/HTCIMEService;->removeUnhandledMsg(I)V

    .line 1529
    :try_start_0
    iget-object v8, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v8, Lcom/htc/android/htcime/HTCIMMData;->mbExecOnceAtBoot:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_0

    .line 1531
    :try_start_1
    iget-object v8, p0, Lcom/htc/android/htcime/HTCIMEService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v8}, Lcom/htc/android/htcime/HTCIMEService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1537
    :cond_0
    :goto_0
    :try_start_2
    invoke-direct {p0}, Lcom/htc/android/htcime/HTCIMEService;->unloadAudioService()V

    .line 1538
    iget-object v8, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v8, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v8, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v8}, Lcom/htc/android/htcime/Intf/IHTCIM;->onDestroy()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1541
    :cond_1
    :try_start_3
    iget-object v8, p0, Lcom/htc/android/htcime/HTCIMEService;->_protect:Lcom/htc/protection/api/ProInterface;

    if-eqz v8, :cond_2

    .line 1542
    invoke-static {}, Lcom/htc/protection/api/ProEngine;->unload()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1547
    :cond_2
    :goto_1
    const v8, 0x7300001

    :try_start_4
    invoke-virtual {p0, v8}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyEvent(I)V

    .line 1550
    sget-boolean v8, Lcom/htc/android/htcime/HTCIMMData;->sFeature_VoiceInput_Enable:Z

    if-eqz v8, :cond_3

    .line 1551
    iget-object v8, p0, Lcom/htc/android/htcime/HTCIMEService;->mVoiceInput:Lcom/htc/android/htcime/deprecated/voice/VoiceInput;

    if-eqz v8, :cond_3

    .line 1552
    iget-object v8, p0, Lcom/htc/android/htcime/HTCIMEService;->mVoiceInput:Lcom/htc/android/htcime/deprecated/voice/VoiceInput;

    invoke-virtual {v8}, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->destroy()V

    .line 1553
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/htc/android/htcime/HTCIMEService;->mVoiceInput:Lcom/htc/android/htcime/deprecated/voice/VoiceInput;

    .line 1557
    :cond_3
    iget-object v8, p0, Lcom/htc/android/htcime/HTCIMEService;->mCBDG:Lcom/htc/android/htcime/util/ContactsDBGenerator;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/htc/android/htcime/HTCIMEService;->mCBDG:Lcom/htc/android/htcime/util/ContactsDBGenerator;

    invoke-virtual {v8}, Lcom/htc/android/htcime/util/ContactsDBGenerator;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1559
    :cond_4
    iget-object v8, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sput-boolean v10, Lcom/htc/android/htcime/HTCIMMData;->mbExecOnceAtBoot:Z

    .line 1560
    iget-object v8, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sput-boolean v10, Lcom/htc/android/htcime/HTCIMMData;->mbExecOnceAtBoot2:Z

    .line 1562
    invoke-super {p0}, Lcom/htc/android/htcime/compat/InputMethodServiceCompatWrapper;->onDestroy()V

    .line 1566
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v4

    .line 1567
    .local v4, maxMemory:J
    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v2

    .line 1568
    .local v2, heapAllocated:J
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v6

    .line 1570
    .local v6, totalMemory:J
    add-long v10, v2, v6

    cmp-long v8, v10, v4

    if-lez v8, :cond_5

    .line 1571
    const-string v8, "HTCIMEService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Memory leaked too much (max="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",getNativeHeapAllocatedSize()="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "), exit!"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1572
    invoke-static {v9}, Ljava/lang/System;->exit(I)V

    .line 1576
    :cond_5
    sget-boolean v8, Lcom/htc/android/htcime/HTCIMMData;->sFeature_Tablet:Z

    if-nez v8, :cond_6

    sget-boolean v8, Lcom/htc/android/htcime/HTCIMMData;->mIsMemTuneProj:Z

    if-eqz v8, :cond_7

    .line 1578
    :cond_6
    :try_start_5
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getFreeNativeBitmap()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1579
    iget-object v8, p0, Lcom/htc/android/htcime/HTCIMEService;->mGeneralHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/htc/android/htcime/HTCIMEService;->releaseMemoryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1580
    iget-object v8, p0, Lcom/htc/android/htcime/HTCIMEService;->releaseMemoryRunnable:Ljava/lang/Runnable;

    invoke-interface {v8}, Ljava/lang/Runnable;->run()V

    .line 1581
    invoke-static {}, Lcom/htc/tracker/ObjectTracker;->getInstance()Lcom/htc/tracker/ObjectTracker;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/htc/tracker/ObjectTracker;->setKey(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 1591
    :cond_7
    :goto_2
    return-void

    .line 1532
    .end local v2           #heapAllocated:J
    .end local v4           #maxMemory:J
    .end local v6           #totalMemory:J
    :catch_0
    move-exception v1

    .line 1533
    .local v1, ex:Ljava/lang/Exception;
    :try_start_6
    const-string v8, "HTCIMEService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[onDestroy] unregisterReceiver()!!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 1559
    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    iget-object v9, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sput-boolean v10, Lcom/htc/android/htcime/HTCIMMData;->mbExecOnceAtBoot:Z

    .line 1560
    iget-object v9, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sput-boolean v10, Lcom/htc/android/htcime/HTCIMMData;->mbExecOnceAtBoot2:Z

    throw v8

    .line 1543
    :catch_1
    move-exception v0

    .line 1544
    .local v0, e:Ljava/lang/Exception;
    :try_start_7
    const-string v11, "HTCIMEService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[ProEngine.unload]Exception "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, " (null==_protect) = "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v8, p0, Lcom/htc/android/htcime/HTCIMEService;->_protect:Lcom/htc/protection/api/ProInterface;

    if-nez v8, :cond_8

    move v8, v9

    :goto_3
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    :cond_8
    move v8, v10

    goto :goto_3

    .line 1583
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #heapAllocated:J
    .restart local v4       #maxMemory:J
    .restart local v6       #totalMemory:J
    :catch_2
    move-exception v0

    .line 1584
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v8, "HTCIMEService"

    const-string v9, "onDestroy, Releasing bitmap mechanism error, releasing bitmap mechanism not applied"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public onDisplayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .locals 1
    .parameter "completions"

    .prologue
    .line 3200
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    if-nez v0, :cond_1

    .line 3207
    :cond_0
    :goto_0
    return-void

    .line 3201
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v0, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    if-eqz v0, :cond_0

    .line 3203
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-boolean v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mIsIMFAutoCompletion:Z

    if-eqz v0, :cond_0

    .line 3206
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v0, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v0, p1}, Lcom/htc/android/htcime/Intf/IHTCIM;->buildWCL_AutoCompleteText([Landroid/view/inputmethod/CompletionInfo;)V

    goto :goto_0
.end method

.method public onEvaluateFullscreenMode()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 3558
    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    if-nez v4, :cond_1

    invoke-super {p0}, Lcom/htc/android/htcime/compat/InputMethodServiceCompatWrapper;->onEvaluateFullscreenMode()Z

    move-result v3

    .line 3586
    :cond_0
    :goto_0
    return v3

    .line 3559
    :cond_1
    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v4, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    if-nez v4, :cond_2

    invoke-super {p0}, Lcom/htc/android/htcime/compat/InputMethodServiceCompatWrapper;->onEvaluateFullscreenMode()Z

    move-result v3

    goto :goto_0

    .line 3561
    :cond_2
    invoke-virtual {p0}, Lcom/htc/android/htcime/HTCIMEService;->onEvaluateInputViewShown()Z

    .line 3568
    const-string v4, "ro.product.display_resolution"

    const-string v5, "Unknown"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3569
    .local v0, displayInfo:Ljava/lang/String;
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 3573
    .local v2, infoSeg:[Ljava/lang/String;
    :try_start_0
    sget-boolean v4, Lcom/htc/android/htcime/HTCIMMData;->mIsChaCha:Z

    if-nez v4, :cond_0

    sget-boolean v4, Lcom/htc/android/htcime/HTCIMMData;->sFeature_Tablet:Z

    if-nez v4, :cond_0

    .line 3576
    const-string v4, "Unknown"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x1

    aget-object v4, v2, v4

    const-string v5, "inch"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    const/high16 v5, 0x40a0

    cmpl-float v4, v4, v5

    if-gez v4, :cond_0

    .line 3586
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v4, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard:Z

    if-nez v4, :cond_0

    invoke-super {p0}, Lcom/htc/android/htcime/compat/InputMethodServiceCompatWrapper;->onEvaluateFullscreenMode()Z

    move-result v3

    goto :goto_0

    .line 3581
    :catch_0
    move-exception v1

    .line 3582
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "HTCIMEService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " onEvaluateFullscreenMode e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "displayInfo = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onEvaluateInputViewShown()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3438
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/htc/android/htcime/compat/InputMethodServiceCompatWrapper;->onEvaluateInputViewShown()Z

    .line 3439
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v0, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/htc/android/htcime/compat/InputMethodServiceCompatWrapper;->onEvaluateInputViewShown()Z

    .line 3441
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->mbUseExternalHWKB:Z

    if-eqz v0, :cond_5

    .line 3442
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v0, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mIM:[Lcom/htc/android/htcime/Intf/IHTCIM;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    if-ne v0, v3, :cond_3

    .line 3443
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sput-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard:Z

    .line 3447
    :goto_0
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard:Z

    sput-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard_CS_OFF:Z

    .line 3448
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    invoke-super {p0}, Lcom/htc/android/htcime/compat/InputMethodServiceCompatWrapper;->onEvaluateInputViewShown()Z

    move-result v0

    if-nez v0, :cond_2

    move v2, v1

    :cond_2
    sput-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard_CS_ON:Z

    .line 3486
    :goto_1
    return v1

    .line 3445
    :cond_3
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    invoke-super {p0}, Lcom/htc/android/htcime/compat/InputMethodServiceCompatWrapper;->onEvaluateInputViewShown()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard:Z

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_2

    .line 3451
    :cond_5
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->mIsChaCha:Z

    if-eqz v0, :cond_7

    .line 3452
    const/4 v0, 0x3

    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mLandPrimarySIP:I

    if-ne v0, v3, :cond_6

    .line 3453
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sput-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard:Z

    goto :goto_1

    .line 3455
    :cond_6
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sput-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard:Z

    goto :goto_1

    .line 3459
    :cond_7
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    invoke-super {p0}, Lcom/htc/android/htcime/compat/InputMethodServiceCompatWrapper;->onEvaluateInputViewShown()Z

    move-result v0

    if-nez v0, :cond_8

    move v2, v1

    :cond_8
    sput-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard:Z

    goto :goto_1
.end method

.method public onFinishInput()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 974
    const-string v1, "HTCIMEService"

    const-string v2, "[onFinishInput]"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    invoke-direct {p0}, Lcom/htc/android/htcime/HTCIMEService;->checkProtection()V

    .line 978
    iput-boolean v3, p0, Lcom/htc/android/htcime/HTCIMEService;->mbReadyForInput:Z

    .line 979
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iput-boolean v3, v1, Lcom/htc/android/htcime/HTCIMMData;->mIsIMFAutoCompletion:Z

    .line 981
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    if-nez v1, :cond_1

    .line 1023
    :cond_0
    :goto_0
    return-void

    .line 982
    :cond_1
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    if-eqz v1, :cond_0

    .line 983
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    if-eqz v1, :cond_0

    .line 985
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 988
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/HTCIMEService;->handleIconShow(I)V

    .line 989
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    if-eqz v1, :cond_2

    .line 990
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMMView;->finishInput()V

    .line 994
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    if-eqz v1, :cond_3

    .line 995
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v1}, Lcom/htc/android/htcime/Intf/IHTCIM;->finishInput()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1001
    :cond_3
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    if-eqz v1, :cond_4

    .line 1002
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v1}, Lcom/htc/android/htcime/Intf/IHTCSIP;->finishInput()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1011
    :cond_4
    :goto_2
    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->sFeature_VoiceInput_Enable:Z

    if-eqz v1, :cond_5

    .line 1012
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mVoiceInput:Lcom/htc/android/htcime/deprecated/voice/VoiceInput;

    if-eqz v1, :cond_5

    .line 1013
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mVoiceInput:Lcom/htc/android/htcime/deprecated/voice/VoiceInput;

    invoke-virtual {v1}, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->cancel()V

    .line 1016
    :cond_5
    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->sFeature_Fake_MultiTouch_Enable:Z

    if-eqz v1, :cond_6

    .line 1017
    const-string v1, "0"

    sget v2, Lcom/htc/android/htcime/HTCIMMData;->mTouchDriverDev:I

    invoke-static {v1, v2}, Lcom/htc/android/htcime/util/SIPUtils;->writeTouchThreshold(Ljava/lang/String;I)V

    .line 1019
    :cond_6
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mTipSystem:Lcom/htc/android/htcime/tutorial/TipSystem;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mTipSystem:Lcom/htc/android/htcime/tutorial/TipSystem;

    invoke-virtual {v1}, Lcom/htc/android/htcime/tutorial/TipSystem;->hideAllTips()V

    .line 1022
    :cond_7
    invoke-super {p0}, Lcom/htc/android/htcime/compat/InputMethodServiceCompatWrapper;->onFinishInput()V

    goto :goto_0

    .line 996
    :catch_0
    move-exception v0

    .line 997
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "HTCIMEService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onFinishInput] mData.mCurrIM.finishInput(); Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1003
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1004
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "HTCIMEService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onFinishInput] mData.mCurrSIP.finishInput(); Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public onFinishInputView(Z)V
    .locals 2
    .parameter "finishingInput"

    .prologue
    const/4 v1, 0x0

    .line 4083
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iput-boolean v1, v0, Lcom/htc/android/htcime/HTCIMMData;->mIsMMSExtractView:Z

    .line 4088
    if-eqz p1, :cond_0

    .line 4089
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iput v1, v0, Lcom/htc/android/htcime/HTCIMMData;->mEditWordLen:I

    .line 4090
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/android/htcime/compat/InputMethodServiceCompatWrapper;->onFinishInputView(Z)V

    .line 4091
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 11
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x3

    const/high16 v8, 0x71c

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1030
    iget-object v6, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    if-nez v6, :cond_1

    .line 1253
    :cond_0
    :goto_0
    :sswitch_0
    return v5

    .line 1031
    :cond_1
    iget-object v6, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v6, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    if-eqz v6, :cond_0

    .line 1033
    invoke-direct {p0}, Lcom/htc/android/htcime/HTCIMEService;->checkProtection()V

    .line 1035
    iget-object v6, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v6, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard:Z

    if-eqz v6, :cond_3

    iget-boolean v6, p0, Lcom/htc/android/htcime/HTCIMEService;->mbReadyForInput:Z

    if-nez v6, :cond_3

    iget v6, p0, Lcom/htc/android/htcime/HTCIMEService;->mCallByWhichApp:I

    if-eq v6, v4, :cond_3

    .line 1036
    :cond_2
    const-string v4, "HTCIMEService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onKeyDown, do not handle, KeyCode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1041
    :cond_3
    const/16 v6, 0x1a

    if-eq p1, v6, :cond_0

    .line 1045
    iget-boolean v6, p0, Lcom/htc/android/htcime/HTCIMEService;->mbReadyForInput:Z

    if-nez v6, :cond_4

    iget v6, p0, Lcom/htc/android/htcime/HTCIMEService;->mCallByWhichApp:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    .line 1049
    :cond_4
    iget-object v6, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    iget-object v6, v6, Lcom/htc/android/htcime/HTCIMMView;->mHWKBSymWindow:Landroid/widget/PopupWindow;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    iget-object v6, v6, Lcom/htc/android/htcime/HTCIMMView;->mHWKBSymWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1050
    const/4 v6, 0x4

    if-eq p1, v6, :cond_5

    const/16 v6, 0x43

    if-eq p1, v6, :cond_5

    const/16 v6, 0x52

    if-ne p1, v6, :cond_7

    .line 1052
    :cond_5
    iget-object v6, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v6}, Lcom/htc/android/htcime/HTCIMMView;->hideHWKBSymSip()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1053
    iget-object v6, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v6, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard:Z

    if-nez v6, :cond_6

    .line 1055
    invoke-direct {p0}, Lcom/htc/android/htcime/HTCIMEService;->handleOnInterrupt()V

    .line 1056
    invoke-virtual {p0}, Lcom/htc/android/htcime/HTCIMEService;->onFinishInput()V

    .line 1057
    iget-object v6, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v6}, Lcom/htc/android/htcime/HTCIMMView;->hideIMMView()V

    .line 1060
    :cond_6
    const/16 v6, 0x52

    if-eq p1, v6, :cond_7

    .line 1061
    iput-boolean v4, p0, Lcom/htc/android/htcime/HTCIMEService;->mInterceptUp:Z

    move v5, v4

    .line 1062
    goto/16 :goto_0

    .line 1067
    :cond_7
    iget-object v6, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v6, p1}, Lcom/htc/android/htcime/HTCIMMView;->handleKeycodeByHWKBSymSip(I)Z

    move-result v6

    if-eqz v6, :cond_8

    move v5, v4

    .line 1068
    goto/16 :goto_0

    .line 1071
    :cond_8
    invoke-direct {p0, p1, p2}, Lcom/htc/android/htcime/HTCIMEService;->checkTutoKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v6

    if-eqz v6, :cond_9

    move v5, v4

    .line 1072
    goto/16 :goto_0

    .line 1074
    :cond_9
    iget-object v6, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v6, v6, Lcom/htc/android/htcime/HTCIMMData;->mCurrHWKB:Lcom/htc/android/htcime/ezsip/QwertyHWKBView;

    invoke-virtual {v6, p1, p2}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->isShortCutDown(ILandroid/view/KeyEvent;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1075
    invoke-virtual {p0}, Lcom/htc/android/htcime/HTCIMEService;->resetMetaState()V

    move v5, v4

    .line 1076
    goto/16 :goto_0

    .line 1079
    :cond_a
    iget-object v6, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v6, v6, Lcom/htc/android/htcime/HTCIMMData;->mCurrHWKB:Lcom/htc/android/htcime/ezsip/QwertyHWKBView;

    invoke-virtual {v6}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->refreshCurFnState()V

    .line 1080
    iget-object v6, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v6, v6, Lcom/htc/android/htcime/HTCIMMData;->mCurrHWKB:Lcom/htc/android/htcime/ezsip/QwertyHWKBView;

    invoke-virtual {v6, p1}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->voiceTextCheck(I)V

    .line 1083
    iget-object v6, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-boolean v6, v6, Lcom/htc/android/htcime/HTCIMMData;->mKeyDownHasAccent:Z

    if-nez v6, :cond_b

    .line 1084
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/htc/android/htcime/HTCIMEService;->mKeyDownTime:J

    .line 1086
    :cond_b
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    iput v6, p0, Lcom/htc/android/htcime/HTCIMEService;->mKeyDownRepeatCount:I

    .line 1089
    const/16 v6, 0x3d

    if-ne p1, v6, :cond_10

    iget-object v6, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v6, v6, Lcom/htc/android/htcime/HTCIMMData;->mCurrHWKB:Lcom/htc/android/htcime/ezsip/QwertyHWKBView;

    invoke-virtual {v6}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->getFnState()Z

    move-result v6

    if-nez v6, :cond_10

    .line 1091
    iget v6, p0, Lcom/htc/android/htcime/HTCIMEService;->mCallByWhichApp:I

    if-ne v6, v4, :cond_c

    iget-boolean v6, p0, Lcom/htc/android/htcime/HTCIMEService;->mbReadyForInput:Z

    if-nez v6, :cond_c

    .line 1092
    const/16 v5, 0x14

    invoke-virtual {p0, v5}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    move v5, v4

    .line 1093
    goto/16 :goto_0

    .line 1096
    :cond_c
    invoke-virtual {p0, v10}, Lcom/htc/android/htcime/HTCIMEService;->isNumRelatedType(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1099
    iget-object v6, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v6, Lcom/htc/android/htcime/HTCIMMData;->mIsChaCha:Z

    if-eqz v6, :cond_f

    .line 1101
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-ne v5, v4, :cond_e

    sget-boolean v5, Lcom/htc/android/htcime/HTCIMMData;->sFeature_VoiceInput_Enable:Z

    if-eqz v5, :cond_e

    .line 1102
    invoke-virtual {p0, v8}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyEvent(I)V

    .line 1103
    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMEService;->mVoiceInput:Lcom/htc/android/htcime/deprecated/voice/VoiceInput;

    if-nez v5, :cond_d

    .line 1104
    invoke-direct {p0}, Lcom/htc/android/htcime/HTCIMEService;->initVoiceInput()V

    .line 1105
    :cond_d
    new-instance v1, Lcom/htc/android/htcime/deprecated/voice/FieldContext;

    invoke-virtual {p0}, Lcom/htc/android/htcime/HTCIMEService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v5

    invoke-virtual {p0}, Lcom/htc/android/htcime/HTCIMEService;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Lcom/htc/android/htcime/deprecated/voice/FieldContext;-><init>(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V

    .line 1106
    .local v1, context:Lcom/htc/android/htcime/deprecated/voice/FieldContext;
    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMEService;->mVoiceInput:Lcom/htc/android/htcime/deprecated/voice/VoiceInput;

    invoke-virtual {v5, v1}, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->startListening(Lcom/htc/android/htcime/deprecated/voice/FieldContext;)V

    .line 1107
    iput-boolean v4, p0, Lcom/htc/android/htcime/HTCIMEService;->mIsTABlongPress:Z

    .end local v1           #context:Lcom/htc/android/htcime/deprecated/voice/FieldContext;
    :cond_e
    move v5, v4

    .line 1109
    goto/16 :goto_0

    .line 1113
    :cond_f
    iget-object v6, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v6, v6, Lcom/htc/android/htcime/HTCIMMData;->mInputFieldAttribute:Landroid/view/inputmethod/EditorInfo;

    iget v6, v6, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/high16 v7, 0x2

    and-int/2addr v6, v7

    if-nez v6, :cond_10

    .line 1114
    invoke-virtual {p0, v8}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyEvent(I)V

    .line 1115
    const/16 v5, 0x14

    invoke-virtual {p0, v5}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    move v5, v4

    .line 1116
    goto/16 :goto_0

    .line 1121
    :cond_10
    iget-object v6, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v6, Lcom/htc/android/htcime/HTCIMMData;->mIsChaCha:Z

    if-eqz v6, :cond_18

    iget-object v6, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v6, v6, Lcom/htc/android/htcime/HTCIMMData;->mCurrHWKB:Lcom/htc/android/htcime/ezsip/QwertyHWKBView;

    invoke-virtual {v6}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->getFnState()Z

    move-result v6

    if-nez v6, :cond_18

    .line 1122
    invoke-virtual {p0, v10}, Lcom/htc/android/htcime/HTCIMEService;->isNumRelatedType(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1125
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    .line 1126
    .local v2, count:I
    const/16 v6, 0xda

    if-ne p1, v6, :cond_12

    .line 1128
    if-ne v2, v4, :cond_11

    sget-boolean v5, Lcom/htc/android/htcime/HTCIMMData;->sFeature_VoiceInput_Enable:Z

    if-eqz v5, :cond_11

    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v5, v5, Lcom/htc/android/htcime/HTCIMMData;->mCurrHWKB:Lcom/htc/android/htcime/ezsip/QwertyHWKBView;

    iget-object v5, v5, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mCID:Ljava/lang/String;

    const-string v6, "HTCCN701"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    .line 1129
    invoke-virtual {p0}, Lcom/htc/android/htcime/HTCIMEService;->startVoiceInput()V

    .line 1130
    iput-boolean v4, p0, Lcom/htc/android/htcime/HTCIMEService;->mIsLangSwitchlongPress:Z

    :cond_11
    move v5, v4

    .line 1132
    goto/16 :goto_0

    .line 1134
    :cond_12
    const/16 v6, 0x11

    if-ne p1, v6, :cond_14

    .line 1135
    if-nez v2, :cond_13

    sget-boolean v5, Lcom/htc/android/htcime/HTCIMMData;->sFeature_VoiceInput_Enable:Z

    if-eqz v5, :cond_13

    .line 1136
    invoke-virtual {p0}, Lcom/htc/android/htcime/HTCIMEService;->startVoiceInput()V

    :cond_13
    move v5, v4

    .line 1138
    goto/16 :goto_0

    .line 1140
    :cond_14
    const/16 v6, 0xd9

    if-ne p1, v6, :cond_18

    iget-object v6, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v6, v6, Lcom/htc/android/htcime/HTCIMMData;->mCurrHWKB:Lcom/htc/android/htcime/ezsip/QwertyHWKBView;

    iget-object v6, v6, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mCID:Ljava/lang/String;

    const-string v7, "HTC__405"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_15

    iget-object v6, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v6, v6, Lcom/htc/android/htcime/HTCIMMData;->mCurrHWKB:Lcom/htc/android/htcime/ezsip/QwertyHWKBView;

    iget-object v6, v6, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mCID:Ljava/lang/String;

    const-string v7, "TIM__401"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 1143
    :cond_15
    if-ne v2, v4, :cond_16

    sget-boolean v6, Lcom/htc/android/htcime/HTCIMMData;->sFeature_VoiceInput_Enable:Z

    if-eqz v6, :cond_16

    .line 1144
    invoke-virtual {p0}, Lcom/htc/android/htcime/HTCIMEService;->startVoiceInput()V

    .line 1145
    iget-object v6, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v6, v6, Lcom/htc/android/htcime/HTCIMMData;->mCurrHWKB:Lcom/htc/android/htcime/ezsip/QwertyHWKBView;

    iput-boolean v5, v6, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->mHandleAtUp:Z

    .line 1147
    :cond_16
    if-gtz v2, :cond_17

    sget v6, Lcom/htc/android/htcime/HTCIMMData;->mLanguage:I

    if-eq v6, v9, :cond_18

    :cond_17
    move v5, v4

    .line 1148
    goto/16 :goto_0

    .line 1152
    .end local v2           #count:I
    :cond_18
    sparse-switch p1, :sswitch_data_0

    .line 1243
    :goto_1
    const-string v4, "HTCIMEService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onKeyDown, keyCode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",mbUseHWkeyboard="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v6, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",mbReadyForInput="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/htc/android/htcime/HTCIMEService;->mbReadyForInput:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",mCurrIM="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v6, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",getEZSIP()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v6, v6, Lcom/htc/android/htcime/HTCIMMData;->mCurrHWKB:Lcom/htc/android/htcime/ezsip/QwertyHWKBView;

    invoke-virtual {v6}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->getEZSIP()Lcom/htc/android/htcime/Intf/IHTCSIP;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    const/4 v0, 0x1

    .line 1246
    .local v0, bRet:Z
    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v4, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard:Z

    if-eqz v4, :cond_19

    const/high16 v4, -0x100

    and-int/2addr v4, p1

    if-gtz v4, :cond_19

    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mCurrHWKB:Lcom/htc/android/htcime/ezsip/QwertyHWKBView;

    invoke-virtual {v4}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->getEZSIP()Lcom/htc/android/htcime/Intf/IHTCSIP;

    move-result-object v4

    if-nez v4, :cond_25

    .line 1247
    :cond_19
    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v4, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v4, p2}, Lcom/htc/android/htcime/Intf/IHTCIM;->onKeyDown(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_2
    move v5, v0

    .line 1253
    goto/16 :goto_0

    .line 1156
    .end local v0           #bRet:Z
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-static {}, Lcom/htc/android/htcime/HTCIMMView;->getIMMViewVisible()Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x1b

    iget-object v6, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v6, v6, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    if-eq v4, v6, :cond_0

    .line 1160
    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v4, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard:Z

    if-eqz v4, :cond_1a

    .line 1161
    invoke-virtual {p0, v8}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyEvent(I)V

    goto/16 :goto_0

    .line 1163
    :cond_1a
    invoke-direct {p0}, Lcom/htc/android/htcime/HTCIMEService;->handleOnInterrupt()V

    .line 1164
    invoke-virtual {p0}, Lcom/htc/android/htcime/HTCIMEService;->onFinishInput()V

    .line 1165
    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v4}, Lcom/htc/android/htcime/HTCIMMView;->hideIMMView()V

    goto/16 :goto_0

    .line 1172
    :sswitch_2
    iget-object v6, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v6, v6, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    const/16 v7, 0x1b

    if-eq v6, v7, :cond_0

    .line 1177
    iget-object v6, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v6, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard:Z

    if-eqz v6, :cond_1b

    .line 1178
    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mCurrHWKB:Lcom/htc/android/htcime/ezsip/QwertyHWKBView;

    invoke-virtual {v4, p1, p2}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v5

    goto/16 :goto_0

    .line 1180
    :cond_1b
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-static {}, Lcom/htc/android/htcime/HTCIMMView;->getIMMViewVisible()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1181
    iget-object v6, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v3, Lcom/htc/android/htcime/HTCIMMData;->mTutorialing:Z

    .line 1182
    .local v3, tutorialing:Z
    invoke-direct {p0}, Lcom/htc/android/htcime/HTCIMEService;->handleOnInterrupt()V

    .line 1183
    iget-object v6, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v6}, Lcom/htc/android/htcime/HTCIMMView;->hideIMMView()V

    .line 1184
    invoke-virtual {p0}, Lcom/htc/android/htcime/HTCIMEService;->onFinishInput()V

    .line 1185
    iget-object v6, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v6, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard:Z

    if-nez v6, :cond_1c

    if-eqz v3, :cond_1d

    :cond_1c
    move v4, v5

    :cond_1d
    move v5, v4

    goto/16 :goto_0

    .line 1195
    .end local v3           #tutorialing:Z
    :sswitch_3
    iget-object v6, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v6, Lcom/htc/android/htcime/HTCIMMData;->mIsChaCha:Z

    if-eqz v6, :cond_24

    .line 1196
    iget-boolean v6, p0, Lcom/htc/android/htcime/HTCIMEService;->mbReadyForInput:Z

    if-nez v6, :cond_1e

    iget-object v6, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v6, v6, Lcom/htc/android/htcime/HTCIMMData;->mLandPrimarySIP:I

    if-ne v9, v6, :cond_22

    iget-object v6, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v6, v6, Lcom/htc/android/htcime/HTCIMMData;->mInputFieldAttribute:Landroid/view/inputmethod/EditorInfo;

    iget v6, v6, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-eqz v6, :cond_22

    .line 1198
    :cond_1e
    invoke-virtual {p0, v10}, Lcom/htc/android/htcime/HTCIMEService;->isNumRelatedType(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1201
    iget-object v6, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v6, v6, Lcom/htc/android/htcime/HTCIMMData;->mCurrHWKB:Lcom/htc/android/htcime/ezsip/QwertyHWKBView;

    invoke-virtual {v6}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->getFnState()Z

    move-result v6

    if-eqz v6, :cond_20

    .line 1202
    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v4, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard:Z

    if-eqz v4, :cond_1f

    .line 1203
    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mCurrHWKB:Lcom/htc/android/htcime/ezsip/QwertyHWKBView;

    invoke-virtual {v4, p1, p2}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v5

    goto/16 :goto_0

    .line 1205
    :cond_1f
    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v4, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v4, p2}, Lcom/htc/android/htcime/Intf/IHTCIM;->onKeyDown(Landroid/view/KeyEvent;)Z

    move-result v5

    goto/16 :goto_0

    .line 1209
    :cond_20
    iget-object v6, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v6, v6, Lcom/htc/android/htcime/HTCIMMData;->mLandPrimarySIP:I

    if-ne v9, v6, :cond_21

    iget-object v6, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    if-eqz v6, :cond_21

    iget-object v6, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-static {}, Lcom/htc/android/htcime/HTCIMMView;->getIMMViewVisible()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1215
    :cond_21
    iget-object v6, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    if-eqz v6, :cond_23

    iget-object v6, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-static {}, Lcom/htc/android/htcime/HTCIMMView;->getIMMViewVisible()Z

    move-result v6

    if-eqz v6, :cond_23

    iget-object v6, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v6, v6, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v6}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;

    move-result-object v6

    iget v6, v6, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    if-ne v9, v6, :cond_23

    .line 1218
    invoke-virtual {p0, v8}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyEvent(I)V

    .line 1219
    invoke-virtual {p0, v4, v5}, Lcom/htc/android/htcime/HTCIMEService;->setSIP(IZ)V

    .line 1224
    :goto_3
    const/16 v6, 0xa

    invoke-virtual {p0, v6, v5}, Lcom/htc/android/htcime/HTCIMEService;->setHWKBSymSIP(IZ)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1227
    :cond_22
    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v5, v5, Lcom/htc/android/htcime/HTCIMMData;->mCurrHWKB:Lcom/htc/android/htcime/ezsip/QwertyHWKBView;

    invoke-virtual {v5}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->updateState()V

    move v5, v4

    .line 1228
    goto/16 :goto_0

    .line 1221
    :cond_23
    invoke-virtual {p0, v8}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyEvent(I)V

    goto :goto_3

    .line 1240
    :cond_24
    :sswitch_4
    sput-boolean v4, Lcom/htc/android/htcime/HTCIMMData;->mForceAutoCapCheck:Z

    goto/16 :goto_1

    .line 1248
    .restart local v0       #bRet:Z
    :cond_25
    iget-boolean v4, p0, Lcom/htc/android/htcime/HTCIMEService;->mbReadyForInput:Z

    if-eqz v4, :cond_26

    .line 1249
    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mCurrHWKB:Lcom/htc/android/htcime/ezsip/QwertyHWKBView;

    invoke-virtual {v4, p1, p2}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_2

    .line 1251
    :cond_26
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 1152
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x13 -> :sswitch_4
        0x14 -> :sswitch_4
        0x15 -> :sswitch_4
        0x16 -> :sswitch_4
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x52 -> :sswitch_1
        0xd8 -> :sswitch_3
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 10
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/high16 v9, 0x2

    const/16 v8, 0x3d

    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 1263
    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    if-nez v4, :cond_1

    .line 1358
    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 1264
    :cond_1
    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v4, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    if-eqz v4, :cond_0

    .line 1266
    invoke-direct {p0}, Lcom/htc/android/htcime/HTCIMEService;->checkProtection()V

    .line 1268
    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v4, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/htc/android/htcime/HTCIMEService;->mbReadyForInput:Z

    if-nez v4, :cond_3

    .line 1269
    :cond_2
    const-string v3, "HTCIMEService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onKeyUp, do not handle, KeyCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1274
    :cond_3
    const/16 v4, 0x1a

    if-eq p1, v4, :cond_0

    .line 1278
    iget-boolean v4, p0, Lcom/htc/android/htcime/HTCIMEService;->mbReadyForInput:Z

    if-nez v4, :cond_4

    iget v4, p0, Lcom/htc/android/htcime/HTCIMEService;->mCallByWhichApp:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 1281
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/htc/android/htcime/HTCIMEService;->mKeyUpTime:J

    .line 1282
    iget-wide v4, p0, Lcom/htc/android/htcime/HTCIMEService;->mKeyUpTime:J

    iget-wide v6, p0, Lcom/htc/android/htcime/HTCIMEService;->mKeyDownTime:J

    sub-long v1, v4, v6

    .line 1284
    .local v1, total_touchTime:J
    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-boolean v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mShowAccentWindow:Z

    if-eqz v4, :cond_6

    .line 1285
    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    invoke-virtual {v4, v1, v2}, Lcom/htc/android/htcime/HTCIMMData;->writeLongPressDurationLog(J)V

    .line 1289
    :cond_5
    :goto_1
    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iput-boolean v0, v4, Lcom/htc/android/htcime/HTCIMMData;->mShowAccentWindow:Z

    .line 1290
    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iput-boolean v0, v4, Lcom/htc/android/htcime/HTCIMMData;->mKeyDownHasAccent:Z

    .line 1293
    if-ne p1, v8, :cond_a

    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mCurrHWKB:Lcom/htc/android/htcime/ezsip/QwertyHWKBView;

    invoke-virtual {v4}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->getFnState()Z

    move-result v4

    if-nez v4, :cond_a

    .line 1294
    const/4 v4, -0x1

    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/HTCIMEService;->isNumRelatedType(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1297
    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v4, Lcom/htc/android/htcime/HTCIMMData;->mIsChaCha:Z

    if-eqz v4, :cond_9

    .line 1299
    iget-boolean v4, p0, Lcom/htc/android/htcime/HTCIMEService;->mIsTABlongPress:Z

    if-eqz v4, :cond_7

    .line 1300
    iput-boolean v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mIsTABlongPress:Z

    move v0, v3

    .line 1301
    goto :goto_0

    .line 1286
    :cond_6
    iget v4, p0, Lcom/htc/android/htcime/HTCIMEService;->mKeyDownRepeatCount:I

    if-nez v4, :cond_5

    .line 1287
    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    invoke-virtual {v4, v1, v2}, Lcom/htc/android/htcime/HTCIMMData;->writeShortPressDurationLog(J)V

    goto :goto_1

    .line 1305
    :cond_7
    const/high16 v4, 0x71c

    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyEvent(I)V

    .line 1306
    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mInputFieldAttribute:Landroid/view/inputmethod/EditorInfo;

    iget v4, v4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/2addr v4, v9

    if-nez v4, :cond_8

    .line 1307
    const/16 v4, 0x14

    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    :goto_2
    move v0, v3

    .line 1311
    goto/16 :goto_0

    .line 1309
    :cond_8
    invoke-virtual {p0, v8}, Lcom/htc/android/htcime/HTCIMEService;->sendSimKeyEvent(I)V

    goto :goto_2

    .line 1315
    :cond_9
    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mInputFieldAttribute:Landroid/view/inputmethod/EditorInfo;

    iget v4, v4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/2addr v4, v9

    if-nez v4, :cond_a

    move v0, v3

    .line 1316
    goto/16 :goto_0

    .line 1320
    :cond_a
    iget-boolean v4, p0, Lcom/htc/android/htcime/HTCIMEService;->mInterceptUp:Z

    if-eqz v4, :cond_b

    .line 1321
    iput-boolean v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mInterceptUp:Z

    move v0, v3

    .line 1322
    goto/16 :goto_0

    .line 1325
    :cond_b
    invoke-direct {p0, p1, p2}, Lcom/htc/android/htcime/HTCIMEService;->checkTutoKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_c

    move v0, v3

    .line 1326
    goto/16 :goto_0

    .line 1328
    :cond_c
    iget-object v4, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mCurrHWKB:Lcom/htc/android/htcime/ezsip/QwertyHWKBView;

    invoke-virtual {v4, p1, p2}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->isShortCutUp(ILandroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1329
    invoke-virtual {p0}, Lcom/htc/android/htcime/HTCIMEService;->resetMetaState()V

    move v0, v3

    .line 1330
    goto/16 :goto_0

    .line 1333
    :cond_d
    sparse-switch p1, :sswitch_data_0

    .line 1347
    :cond_e
    const-string v3, "HTCIMEService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onKeyUp, keyCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mbUseHWkeyboard="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v5, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mbReadyForInput="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/htc/android/htcime/HTCIMEService;->mbReadyForInput:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",getEZSIP()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v5, v5, Lcom/htc/android/htcime/HTCIMMData;->mCurrHWKB:Lcom/htc/android/htcime/ezsip/QwertyHWKBView;

    invoke-virtual {v5}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->getEZSIP()Lcom/htc/android/htcime/Intf/IHTCSIP;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    const/4 v0, 0x1

    .line 1350
    .local v0, bRet:Z
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v3, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard:Z

    if-eqz v3, :cond_f

    const/high16 v3, -0x100

    and-int/2addr v3, p1

    if-gtz v3, :cond_f

    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mCurrHWKB:Lcom/htc/android/htcime/ezsip/QwertyHWKBView;

    invoke-virtual {v3}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->getEZSIP()Lcom/htc/android/htcime/Intf/IHTCSIP;

    move-result-object v3

    if-nez v3, :cond_10

    .line 1351
    :cond_f
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v3, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v3, p2}, Lcom/htc/android/htcime/Intf/IHTCIM;->onKeyUp(Landroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_0

    .line 1342
    .end local v0           #bRet:Z
    :sswitch_1
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    const/16 v4, 0x1b

    if-ne v3, v4, :cond_e

    goto/16 :goto_0

    .line 1352
    .restart local v0       #bRet:Z
    :cond_10
    iget-boolean v3, p0, Lcom/htc/android/htcime/HTCIMEService;->mbReadyForInput:Z

    if-eqz v3, :cond_11

    .line 1353
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mCurrHWKB:Lcom/htc/android/htcime/ezsip/QwertyHWKBView;

    invoke-virtual {v3, p1, p2}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_0

    .line 1355
    :cond_11
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1333
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method public onShowInputRequested(IZ)Z
    .locals 6
    .parameter "flags"
    .parameter "configChange"

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 3214
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    if-nez v1, :cond_0

    invoke-super {p0, p1, p2}, Lcom/htc/android/htcime/compat/InputMethodServiceCompatWrapper;->onShowInputRequested(IZ)Z

    .line 3215
    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    if-nez v1, :cond_1

    invoke-super {p0, p1, p2}, Lcom/htc/android/htcime/compat/InputMethodServiceCompatWrapper;->onShowInputRequested(IZ)Z

    .line 3217
    :cond_1
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iput p1, v1, Lcom/htc/android/htcime/HTCIMMData;->mShowFlag:I

    .line 3219
    if-eqz p1, :cond_2

    .line 3220
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iput p1, v1, Lcom/htc/android/htcime/HTCIMMData;->mShowHWSIPFlag:I

    .line 3224
    :cond_2
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->mIsChaCha:Z

    if-eqz v1, :cond_4

    .line 3225
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mLandPrimarySIP:I

    if-ne v1, v3, :cond_3

    .line 3226
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mShowHWSIPFlag:I

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-boolean v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mSwitchToHW:Z

    if-nez v1, :cond_8

    .line 3228
    invoke-virtual {p0, v5}, Lcom/htc/android/htcime/HTCIMEService;->handleIconShow(I)V

    .line 3235
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iput-boolean v2, v1, Lcom/htc/android/htcime/HTCIMMData;->mSwitchToHW:Z

    .line 3239
    :cond_4
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_5

    .line 3240
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v1, Lcom/htc/android/htcime/HTCIMMData;->mForceUpdateSIP:Ljava/lang/Boolean;

    .line 3242
    :cond_5
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mSmartCAPSentinel:Lcom/htc/android/htcime/util/SmartCAPSentinel;

    invoke-virtual {v1}, Lcom/htc/android/htcime/util/SmartCAPSentinel;->subscribe()V

    .line 3248
    if-eqz p2, :cond_6

    iget v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mOldHardKeyboardType:I

    iget v3, p0, Lcom/htc/android/htcime/HTCIMEService;->mCurHardKeyboardType:I

    if-eq v1, v3, :cond_6

    iget v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mOldHardKeyboardType:I

    if-ne v1, v5, :cond_6

    iget v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mCurHardKeyboardType:I

    if-eq v1, v4, :cond_7

    :cond_6
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->mbUseExternalHWKB:Z

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lcom/htc/android/htcime/HTCIMEService;->isOrienChange:Z

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lcom/htc/android/htcime/HTCIMEService;->isOrienChange_when_IMM_VISIBLE:Z

    if-nez v1, :cond_9

    :cond_7
    move v1, v2

    .line 3257
    :goto_1
    return v1

    .line 3230
    :cond_8
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v3, v1}, Lcom/htc/android/htcime/HTCIMMView;->setSIPView(Landroid/view/View;)Z

    move-result v0

    .line 3231
    .local v0, sipChanged:Z
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v1, v0}, Lcom/htc/android/htcime/HTCIMMView;->showIMMView(Z)V

    .line 3232
    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/HTCIMEService;->handleIconShow(I)V

    goto :goto_0

    .line 3257
    .end local v0           #sipChanged:Z
    :cond_9
    invoke-super {p0, p1, p2}, Lcom/htc/android/htcime/compat/InputMethodServiceCompatWrapper;->onShowInputRequested(IZ)Z

    move-result v1

    goto :goto_1
.end method

.method public onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 4
    .parameter "attribute"
    .parameter "restarting"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 4057
    const-string v0, "com.android.browser"

    iget-object v1, p1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4058
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mCallByWhichApp:I

    .line 4066
    :goto_0
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iput v2, v0, Lcom/htc/android/htcime/HTCIMMData;->mEditWordLen:I

    .line 4070
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-nez v0, :cond_0

    .line 4071
    iput-boolean v2, p0, Lcom/htc/android/htcime/HTCIMEService;->mbReadyForInput:Z

    .line 4072
    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/HTCIMEService;->handleIconShow(I)V

    .line 4076
    :cond_0
    iget-boolean v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mDoHideWindow:Z

    if-eqz v0, :cond_1

    .line 4077
    invoke-virtual {p0}, Lcom/htc/android/htcime/HTCIMEService;->hideWindow()V

    .line 4079
    :cond_1
    return-void

    .line 4059
    :cond_2
    const-string v0, "com.android.htcdialer"

    iget-object v1, p1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4060
    iput v3, p0, Lcom/htc/android/htcime/HTCIMEService;->mCallByWhichApp:I

    goto :goto_0

    .line 4061
    :cond_3
    const-string v0, "com.google.android.talk"

    iget-object v1, p1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4062
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mCallByWhichApp:I

    goto :goto_0

    .line 4064
    :cond_4
    iput v2, p0, Lcom/htc/android/htcime/HTCIMEService;->mCallByWhichApp:I

    goto :goto_0
.end method

.method public onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 18
    .parameter "attribute"
    .parameter "restarting"

    .prologue
    .line 390
    const-string v12, "HTCIMEService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[onStartInputView]: , attribute=0x"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget v14, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-static {v14}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", package="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", restarting="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const-string v12, "HTCIMEService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[onStartInputView]: , mbUseHWkeyboard="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v14, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", initialSelStart="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget v14, v0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", initialSelEnd="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget v14, v0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const/4 v6, 0x0

    .line 399
    .local v6, newSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    if-nez v12, :cond_0

    .line 400
    const-string v12, "HTCIMEService"

    const-string v13, "onStartInputView mHTCIMMView is null"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    sget-object v12, Ljava/io/FileDescriptor;->err:Ljava/io/FileDescriptor;

    new-instance v13, Ljava/io/PrintWriter;

    sget-object v14, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const/4 v15, 0x1

    invoke-direct {v13, v14, v15}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-super {v0, v12, v13, v14}, Lcom/htc/android/htcime/compat/InputMethodServiceCompatWrapper;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 405
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v0, p1

    iput-object v0, v12, Lcom/htc/android/htcime/HTCIMMData;->mInputFieldAttribute:Landroid/view/inputmethod/EditorInfo;

    .line 408
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mCurConfig:Landroid/content/res/Configuration;

    if-nez v12, :cond_1

    .line 411
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v12

    invoke-interface {v12}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mCurConfig:Landroid/content/res/Configuration;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 414
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mCurConfig:Landroid/content/res/Configuration;

    iget v12, v12, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/htc/android/htcime/HTCIMEService;->_Orientation:I

    .line 417
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/android/htcime/HTCIMEService;->_Orientation:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_3

    .line 418
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    const/4 v13, 0x2

    iput v13, v12, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    .line 423
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v12, Lcom/htc/android/htcime/HTCIMMData;->mIsChaCha:Z

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/htc/android/htcime/HTCIMEService;->isOrienChange_when_IMM_VISIBLE:Z

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v12, v12, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_4

    .line 424
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/htc/android/htcime/HTCIMEService;->isOrienChange_when_IMM_VISIBLE:Z

    .line 425
    const-string v12, "HTCIMEService"

    const-string v13, "Chacha with ConfigChange, do not finish onStartInputView()"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    :cond_2
    :goto_2
    return-void

    .line 420
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    const/4 v13, 0x1

    iput v13, v12, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    goto :goto_1

    .line 430
    :cond_4
    move-object/from16 v0, p1

    iget v12, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-nez v12, :cond_6

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/htc/android/htcime/HTCIMEService;->isOrienChange_when_IMM_VISIBLE:Z

    if-nez v12, :cond_5

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/htc/android/htcime/HTCIMEService;->isConfigChange_Ext_HWKB_Unplug:Z

    if-eqz v12, :cond_6

    .line 431
    :cond_5
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/htc/android/htcime/HTCIMEService;->isOrienChange_when_IMM_VISIBLE:Z

    .line 432
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/htc/android/htcime/HTCIMEService;->isConfigChange_Ext_HWKB_Unplug:Z

    .line 433
    invoke-super/range {p0 .. p0}, Lcom/htc/android/htcime/compat/InputMethodServiceCompatWrapper;->hideWindow()V

    .line 434
    const-string v12, "HTCIMEService"

    const-string v13, "0x0 with ConfigChange, do not finish onStartInputView()"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 437
    :cond_6
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/htc/android/htcime/HTCIMEService;->isOrienChange_when_IMM_VISIBLE:Z

    .line 438
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/htc/android/htcime/HTCIMEService;->isConfigChange_Ext_HWKB_Unplug:Z

    .line 441
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v12, Lcom/htc/android/htcime/HTCIMMData;->mIsChaCha:Z

    if-nez v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v12, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard:Z

    if-eqz v12, :cond_8

    .line 442
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/HTCIMEService;->resetMetaState()V

    .line 443
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v12, v12, Lcom/htc/android/htcime/HTCIMMData;->mCurrHWKB:Lcom/htc/android/htcime/ezsip/QwertyHWKBView;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->updateFNCAPSMode(II)V

    .line 449
    :cond_8
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->_protect:Lcom/htc/protection/api/ProInterface;

    if-eqz v12, :cond_9

    .line 450
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->_protect:Lcom/htc/protection/api/ProInterface;

    invoke-interface {v12}, Lcom/htc/protection/api/ProInterface;->open()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 456
    :cond_9
    :goto_3
    if-eqz p2, :cond_a

    .line 457
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/HTCIMEService;->onFinishInput()V

    .line 461
    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    const/16 v13, 0xc

    iput v13, v12, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    .line 462
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    const/4 v13, 0x0

    iput-boolean v13, v12, Lcom/htc/android/htcime/HTCIMMData;->mIsIMFAutoCompletion:Z

    .line 463
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    const/4 v13, 0x0

    iput-boolean v13, v12, Lcom/htc/android/htcime/HTCIMMData;->mIsIMFAutoCompletionPortrait:Z

    .line 464
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const v14, 0x10001

    if-ne v12, v14, :cond_1a

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    const-string v14, "com.android.vending"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1a

    const/4 v12, 0x1

    :goto_4
    iput-boolean v12, v13, Lcom/htc/android/htcime/HTCIMMData;->mIsSearchFieldinMarket:Z

    .line 465
    const/4 v12, 0x0

    invoke-static {v12}, Lcom/htc/android/htcime/util/CharTransfer;->setTransferable(Z)V

    .line 466
    move-object/from16 v0, p1

    iget v12, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v12, v12, 0xf

    packed-switch v12, :pswitch_data_0

    .line 629
    :goto_5
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/htc/android/htcime/HTCIMEService;->checkPrivateIMEOptions(Ljava/lang/String;)V

    .line 631
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v12, v12, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    if-eqz v12, :cond_b

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v12, v12, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    invoke-virtual {v12}, Lcom/htc/android/htcime/ui/TutorialBubbles;->isAllocated()Z

    move-result v12

    if-eqz v12, :cond_b

    .line 632
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v12, v12, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    invoke-virtual {v12}, Lcom/htc/android/htcime/ui/TutorialBubbles;->destroyBubbles()V

    .line 636
    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v12, v12, Lcom/htc/android/htcime/HTCIMMData;->mShowFlag:I

    and-int/lit8 v12, v12, 0x2

    if-eqz v12, :cond_c

    .line 637
    const/4 v12, -0x1

    move-object/from16 v0, p1

    iget v13, v0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    if-ne v12, v13, :cond_c

    const/4 v12, -0x1

    move-object/from16 v0, p1

    iget v13, v0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    if-ne v12, v13, :cond_c

    .line 638
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    const/16 v13, 0x13

    iput v13, v12, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    .line 643
    :cond_c
    new-instance v2, Lcom/htc/android/htcime/util/ConfigData;

    invoke-direct {v2}, Lcom/htc/android/htcime/util/ConfigData;-><init>()V

    .line 644
    .local v2, config:Lcom/htc/android/htcime/util/ConfigData;
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/htc/android/htcime/util/ConfigData;->loadConfigFromSettings(Lcom/htc/android/htcime/HTCIMEService;)V

    .line 648
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-boolean v12, v12, Lcom/htc/android/htcime/HTCIMMData;->mWCLException:Z

    if-nez v12, :cond_d

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-boolean v12, v12, Lcom/htc/android/htcime/HTCIMMData;->mFullWCLException:Z

    if-eqz v12, :cond_e

    .line 649
    :cond_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v12}, Lcom/htc/android/htcime/HTCIMMView;->reinitWCL()V

    .line 651
    :cond_e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-boolean v12, v12, Lcom/htc/android/htcime/HTCIMMData;->mMMSRemainCountException:Z

    if-eqz v12, :cond_f

    .line 652
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v12}, Lcom/htc/android/htcime/HTCIMMView;->reInitMMSView()V

    .line 668
    :cond_f
    move-object/from16 v0, p1

    iget v12, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v12, v12, 0x1000

    if-eqz v12, :cond_22

    .line 669
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    const/4 v13, 0x3

    iput v13, v12, Lcom/htc/android/htcime/HTCIMMData;->mAutoCapMode:I

    .line 680
    :goto_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mCBDG:Lcom/htc/android/htcime/util/ContactsDBGenerator;

    if-eqz v12, :cond_10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mCBDG:Lcom/htc/android/htcime/util/ContactsDBGenerator;

    invoke-virtual {v12}, Lcom/htc/android/htcime/util/ContactsDBGenerator;->updateMDB()V

    .line 683
    :cond_10
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v12, Lcom/htc/android/htcime/HTCIMMData;->mIsChaCha:Z

    if-eqz v12, :cond_11

    .line 684
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mHWKBSwitcher:Lcom/htc/android/htcime/util/SIPSwitcherHWKB;

    if-eqz v12, :cond_11

    .line 685
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mHWKBSwitcher:Lcom/htc/android/htcime/util/SIPSwitcherHWKB;

    invoke-virtual {v12}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->updateCircle()V

    .line 693
    :cond_11
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    if-eqz v12, :cond_13

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v12, Lcom/htc/android/htcime/HTCIMMData;->mbUseExternalHWKB:Z

    if-eqz v12, :cond_13

    .line 694
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v12, v12, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v13, v13, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/htc/android/htcime/HTCIMEService;->getSIPID(II)I

    move-result v11

    .line 695
    .local v11, tmpSIP:I
    const/4 v5, 0x0

    .line 698
    .local v5, isHWRSip:Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v12, v12, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_26

    .line 699
    const/16 v12, 0x9

    if-eq v11, v12, :cond_12

    const/4 v12, 0x3

    if-ne v11, v12, :cond_25

    :cond_12
    const/4 v5, 0x1

    .line 704
    :goto_7
    if-eqz v5, :cond_2a

    .line 705
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    const/4 v12, 0x0

    sput-boolean v12, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard:Z

    .line 706
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v12, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard:Z

    sput-boolean v12, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard_CS_OFF:Z

    .line 707
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    invoke-super/range {p0 .. p0}, Lcom/htc/android/htcime/compat/InputMethodServiceCompatWrapper;->onEvaluateInputViewShown()Z

    move-result v12

    if-nez v12, :cond_29

    const/4 v12, 0x1

    :goto_8
    sput-boolean v12, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard_CS_ON:Z

    .line 715
    .end local v5           #isHWRSip:Z
    .end local v11           #tmpSIP:I
    :cond_13
    :goto_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v12, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard:Z

    if-eqz v12, :cond_2d

    .line 716
    const/4 v9, 0x0

    .line 717
    .local v9, sipid:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v12, Lcom/htc/android/htcime/HTCIMMData;->mbUseExternalHWKB:Z

    if-eqz v12, :cond_2b

    .line 718
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mSIPSwitcher:Lcom/htc/android/htcime/util/SIPSwitcher;

    if-eqz v12, :cond_14

    .line 719
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mSIPSwitcher:Lcom/htc/android/htcime/util/SIPSwitcher;

    invoke-virtual {v12}, Lcom/htc/android/htcime/util/SIPSwitcher;->updateCircle()V

    .line 721
    :cond_14
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v12, v12, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v13, v13, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/htc/android/htcime/HTCIMEService;->getSIPID(II)I

    move-result v9

    .line 728
    :goto_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v13, v13, Lcom/htc/android/htcime/HTCIMMData;->mCurrHWKB:Lcom/htc/android/htcime/ezsip/QwertyHWKBView;

    iput-object v13, v12, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    .line 729
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v12, v12, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v13, v13, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v9}, Lcom/htc/android/htcime/HTCIMEService;->getIMByTypeAndSIP(III)Lcom/htc/android/htcime/Intf/IHTCIM;

    move-result-object v12

    sput-object v12, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    .line 730
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v12, v12, Lcom/htc/android/htcime/HTCIMMData;->mCurrHWKB:Lcom/htc/android/htcime/ezsip/QwertyHWKBView;

    invoke-virtual {v12, v9}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->setEZSIP(I)V

    .line 771
    .end local v9           #sipid:I
    :goto_b
    const-string v12, "HTCIMEService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[onStartInputView]: mCurrSIP="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v14, v14, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", mData.mCurrIM="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v14, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v12, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v12}, Lcom/htc/android/htcime/Intf/IHTCIM;->startInput()V

    .line 774
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v12, v12, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v12}, Lcom/htc/android/htcime/Intf/IHTCSIP;->startInput()V

    .line 777
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v12, Lcom/htc/android/htcime/HTCIMMData;->mIsChaCha:Z

    if-eqz v12, :cond_32

    const/4 v12, 0x3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v13, v13, Lcom/htc/android/htcime/HTCIMMData;->mLandPrimarySIP:I

    if-ne v12, v13, :cond_32

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v12, v12, Lcom/htc/android/htcime/HTCIMMData;->mShowHWSIPFlag:I

    if-nez v12, :cond_32

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-boolean v12, v12, Lcom/htc/android/htcime/HTCIMMData;->mSwitchToHW:Z

    if-nez v12, :cond_32

    .line 787
    :cond_15
    :goto_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/HTCIMEService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v13

    iput-object v13, v12, Lcom/htc/android/htcime/HTCIMMData;->oldInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 792
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v12, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard:Z

    if-eqz v12, :cond_33

    move-object/from16 v0, p1

    iget v12, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-eqz v12, :cond_33

    .line 793
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mbReadyForInput:Z

    .line 794
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/android/htcime/HTCIMEService;->handleIconShow(I)V

    .line 801
    :goto_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v12, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard:Z

    if-eqz v12, :cond_16

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mWCList:Lcom/htc/android/htcime/ui/WordCandidateList;

    invoke-virtual {v12}, Lcom/htc/android/htcime/ui/WordCandidateList;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    if-eqz v12, :cond_16

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v12, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkbWCL:Z

    if-eqz v12, :cond_16

    .line 804
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mWCList:Lcom/htc/android/htcime/ui/WordCandidateList;

    invoke-virtual {v12}, Lcom/htc/android/htcime/ui/WordCandidateList;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget v13, Lcom/htc/android/htcime/HTCIMMData;->mDisplayWidth:I

    iput v13, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 806
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mWCList:Lcom/htc/android/htcime/ui/WordCandidateList;

    invoke-virtual {v12}, Lcom/htc/android/htcime/ui/WordCandidateList;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    const/16 v13, 0x1c

    iput v13, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 809
    :cond_16
    move-object/from16 v0, p1

    iget v12, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/high16 v13, 0x1

    and-int/2addr v12, v13

    if-lez v12, :cond_34

    const/4 v12, 0x1

    :goto_e
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mbShowCompletion:Z

    .line 812
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/HTCIMEService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    if-eqz v12, :cond_17

    .line 813
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v12, Lcom/htc/android/htcime/HTCIMMData;->mVibrationFlag:Z

    if-eqz v12, :cond_35

    .line 814
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/HTCIMEService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "htc.ime.isVibrateOn"

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 820
    :cond_17
    :goto_f
    sget-boolean v12, Lcom/htc/android/htcime/HTCIMMData;->sFeature_FixedWCL_Symbol:Z

    if-eqz v12, :cond_36

    .line 821
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mGeneralHandler:Landroid/os/Handler;

    const/4 v13, 0x7

    const-wide/16 v14, 0x32

    invoke-virtual {v12, v13, v14, v15}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 826
    :goto_10
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v12, v12, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    const/16 v13, 0x18

    if-eq v12, v13, :cond_18

    sget-boolean v12, Lcom/htc/android/htcime/HTCIMMData;->mSIPrecord:Z

    if-eqz v12, :cond_2

    .line 828
    :cond_18
    const-string v3, ",\t"

    .line 829
    .local v3, delimeter:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "S"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "time="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "inputType=0x"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v13, v13, Lcom/htc/android/htcime/HTCIMMData;->mInputFieldAttribute:Landroid/view/inputmethod/EditorInfo;

    iget v13, v13, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "app="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v13, v13, Lcom/htc/android/htcime/HTCIMMData;->mInputFieldAttribute:Landroid/view/inputmethod/EditorInfo;

    iget-object v13, v13, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "CurrSIP="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v13, v13, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "CurrIM="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 833
    .local v10, startInfo:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v12, v12, Lcom/htc/android/htcime/HTCIMMData;->mTSRLog:Ljava/lang/StringBuffer;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 452
    .end local v2           #config:Lcom/htc/android/htcime/util/ConfigData;
    .end local v3           #delimeter:Ljava/lang/String;
    .end local v10           #startInfo:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 453
    .local v4, e:Ljava/lang/Exception;
    const-string v13, "HTCIMEService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[onStartInputView]: _protect.open, exception="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " (null==_protect) = "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->_protect:Lcom/htc/protection/api/ProInterface;

    if-nez v12, :cond_19

    const/4 v12, 0x1

    :goto_11
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_19
    const/4 v12, 0x0

    goto :goto_11

    .line 464
    .end local v4           #e:Ljava/lang/Exception;
    :cond_1a
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 469
    :pswitch_0
    move-object/from16 v0, p1

    iget v12, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v12, v12, 0xff0

    sparse-switch v12, :sswitch_data_0

    .line 584
    :goto_12
    const/4 v1, 0x0

    .line 586
    .local v1, browserCAFlag:Z
    move-object/from16 v0, p1

    iget v12, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/high16 v13, 0x1

    and-int/2addr v12, v13

    if-eqz v12, :cond_1c

    .line 588
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/HTCIMEService;->isFullscreenMode()Z

    move-result v12

    if-nez v12, :cond_1b

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v12, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard:Z

    if-eqz v12, :cond_1e

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v12, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkbWCL:Z

    if-eqz v12, :cond_1e

    :cond_1b
    const/4 v12, 0x1

    :goto_13
    iput-boolean v12, v13, Lcom/htc/android/htcime/HTCIMMData;->mIsIMFAutoCompletion:Z

    .line 589
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/HTCIMEService;->isFullscreenMode()Z

    move-result v12

    if-nez v12, :cond_1f

    const/4 v12, 0x1

    :goto_14
    iput-boolean v12, v13, Lcom/htc/android/htcime/HTCIMMData;->mIsIMFAutoCompletionPortrait:Z

    .line 591
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v12, v12, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_1c

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    const-string v13, "com.android.browser"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1c

    .line 593
    const/4 v1, 0x1

    .line 598
    :cond_1c
    move-object/from16 v0, p1

    iget v12, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/high16 v13, 0x100

    and-int/2addr v12, v13

    if-nez v12, :cond_1d

    if-eqz v1, :cond_20

    .line 600
    :cond_1d
    const-string v12, "HTCIMEService"

    const-string v13, "[onStartInputView]: editor with IME cursor adapter."

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    const/4 v12, 0x1

    sput-boolean v12, Lcom/htc/android/htcime/HTCIMMData;->sIsIMECursorAdapter:Z

    .line 607
    :goto_15
    move-object/from16 v0, p1

    iget v12, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/high16 v13, 0x80

    and-int/2addr v12, v13

    if-eqz v12, :cond_21

    .line 608
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    const/4 v13, 0x1

    iput-boolean v13, v12, Lcom/htc/android/htcime/HTCIMMData;->mISPostSpellingCheck:Z

    goto/16 :goto_5

    .line 472
    .end local v1           #browserCAFlag:Z
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    const/4 v13, 0x0

    iput v13, v12, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    goto :goto_12

    .line 476
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    const/4 v13, 0x2

    iput v13, v12, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    goto :goto_12

    .line 480
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    const/4 v13, 0x5

    iput v13, v12, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    goto/16 :goto_12

    .line 484
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    const/4 v13, 0x6

    iput v13, v12, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    goto/16 :goto_12

    .line 491
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    const/16 v13, 0x8

    iput v13, v12, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    goto/16 :goto_12

    .line 495
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    const/16 v13, 0x9

    iput v13, v12, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    goto/16 :goto_12

    .line 499
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    const/16 v13, 0xb

    iput v13, v12, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    .line 500
    const/4 v12, 0x0

    sput-boolean v12, Lcom/htc/android/htcime/HTCIMMData;->mForceAutoCapCheck:Z

    goto/16 :goto_12

    .line 504
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    const/16 v13, 0xb

    iput v13, v12, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    .line 505
    const/4 v12, 0x0

    sput-boolean v12, Lcom/htc/android/htcime/HTCIMMData;->mForceAutoCapCheck:Z

    goto/16 :goto_12

    .line 512
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    const/4 v13, 0x4

    iput v13, v12, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    goto/16 :goto_12

    .line 516
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    const/16 v13, 0x12

    iput v13, v12, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    goto/16 :goto_12

    .line 520
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    const/4 v13, 0x7

    iput v13, v12, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    goto/16 :goto_12

    .line 524
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    const/4 v13, 0x7

    iput v13, v12, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    goto/16 :goto_12

    .line 532
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    const/16 v13, 0x14

    iput v13, v12, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    goto/16 :goto_12

    .line 536
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    const/16 v13, 0x16

    iput v13, v12, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    goto/16 :goto_12

    .line 540
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    const/16 v13, 0x19

    iput v13, v12, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    goto/16 :goto_12

    .line 544
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    const/16 v13, 0x15

    iput v13, v12, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    goto/16 :goto_12

    .line 548
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    const/16 v13, 0x18

    iput v13, v12, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    .line 551
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v12, v12, Lcom/htc/android/htcime/HTCIMMData;->mTSRLog:Ljava/lang/StringBuffer;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v14, v14, Lcom/htc/android/htcime/HTCIMMData;->mTSRLog:Ljava/lang/StringBuffer;

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->length()I

    move-result v14

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    goto/16 :goto_12

    .line 555
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    const/16 v13, 0x1a

    iput v13, v12, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    goto/16 :goto_12

    .line 559
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    const/4 v13, 0x0

    iput v13, v12, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    goto/16 :goto_12

    .line 564
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    const/16 v13, 0x1b

    iput v13, v12, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    goto/16 :goto_12

    .line 570
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    const/16 v13, 0x1c

    iput v13, v12, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    goto/16 :goto_12

    .line 576
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    const/16 v13, 0x17

    iput v13, v12, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    goto/16 :goto_12

    .line 580
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    const/16 v13, 0x1e

    iput v13, v12, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    goto/16 :goto_12

    .line 588
    .restart local v1       #browserCAFlag:Z
    :cond_1e
    const/4 v12, 0x0

    goto/16 :goto_13

    .line 589
    :cond_1f
    const/4 v12, 0x0

    goto/16 :goto_14

    .line 603
    :cond_20
    const/4 v12, 0x0

    sput-boolean v12, Lcom/htc/android/htcime/HTCIMMData;->sIsIMECursorAdapter:Z

    goto/16 :goto_15

    .line 610
    :cond_21
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    const/4 v13, 0x0

    iput-boolean v13, v12, Lcom/htc/android/htcime/HTCIMMData;->mISPostSpellingCheck:Z

    goto/16 :goto_5

    .line 616
    .end local v1           #browserCAFlag:Z
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    const/16 v13, 0x17

    iput v13, v12, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    goto/16 :goto_5

    .line 620
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    const/16 v13, 0xa

    iput v13, v12, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    goto/16 :goto_5

    .line 624
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    const/16 v13, 0x17

    iput v13, v12, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    goto/16 :goto_5

    .line 670
    .restart local v2       #config:Lcom/htc/android/htcime/util/ConfigData;
    :cond_22
    move-object/from16 v0, p1

    iget v12, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v12, v12, 0x2000

    if-eqz v12, :cond_23

    .line 671
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    const/4 v13, 0x2

    iput v13, v12, Lcom/htc/android/htcime/HTCIMMData;->mAutoCapMode:I

    goto/16 :goto_6

    .line 672
    :cond_23
    move-object/from16 v0, p1

    iget v12, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v12, v12, 0x4000

    if-eqz v12, :cond_24

    .line 673
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    const/4 v13, 0x1

    iput v13, v12, Lcom/htc/android/htcime/HTCIMMData;->mAutoCapMode:I

    goto/16 :goto_6

    .line 675
    :cond_24
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    const/4 v13, 0x0

    iput v13, v12, Lcom/htc/android/htcime/HTCIMMData;->mAutoCapMode:I

    goto/16 :goto_6

    .line 699
    .restart local v5       #isHWRSip:Z
    .restart local v11       #tmpSIP:I
    :cond_25
    const/4 v5, 0x0

    goto/16 :goto_7

    .line 701
    :cond_26
    const/16 v12, 0x11

    if-eq v11, v12, :cond_27

    const/4 v12, 0x7

    if-ne v11, v12, :cond_28

    :cond_27
    const/4 v5, 0x1

    :goto_16
    goto/16 :goto_7

    :cond_28
    const/4 v5, 0x0

    goto :goto_16

    .line 707
    :cond_29
    const/4 v12, 0x0

    goto/16 :goto_8

    .line 709
    :cond_2a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v12, v12, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v13, v13, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v11}, Lcom/htc/android/htcime/HTCIMEService;->getIMByTypeAndSIP(III)Lcom/htc/android/htcime/Intf/IHTCIM;

    move-result-object v12

    sput-object v12, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    .line 710
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/HTCIMEService;->onEvaluateInputViewShown()Z

    goto/16 :goto_9

    .line 723
    .end local v5           #isHWRSip:Z
    .end local v11           #tmpSIP:I
    .restart local v9       #sipid:I
    :cond_2b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v12, Lcom/htc/android/htcime/HTCIMMData;->mIsChaCha:Z

    if-nez v12, :cond_2c

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mHWKBSwitcher:Lcom/htc/android/htcime/util/SIPSwitcherHWKB;

    if-eqz v12, :cond_2c

    .line 724
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mHWKBSwitcher:Lcom/htc/android/htcime/util/SIPSwitcherHWKB;

    invoke-virtual {v12}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->updateCircle()V

    .line 726
    :cond_2c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v12, v12, Lcom/htc/android/htcime/HTCIMMData;->mCurrHWKB:Lcom/htc/android/htcime/ezsip/QwertyHWKBView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v13, v13, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v14, v14, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    invoke-virtual {v12, v13, v14}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->getSIPId(II)I

    move-result v9

    goto/16 :goto_a

    .line 732
    .end local v9           #sipid:I
    :cond_2d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mSIPSwitcher:Lcom/htc/android/htcime/util/SIPSwitcher;

    if-eqz v12, :cond_2e

    .line 733
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mSIPSwitcher:Lcom/htc/android/htcime/util/SIPSwitcher;

    invoke-virtual {v12}, Lcom/htc/android/htcime/util/SIPSwitcher;->updateCircle()V

    .line 736
    :cond_2e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v12, v12, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_2f

    .line 738
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v12, v12, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v13, v13, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/htc/android/htcime/HTCIMEService;->getSIPID(II)I

    move-result v7

    .line 739
    .local v7, newSIPID:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v12, v12, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v13, v13, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v7}, Lcom/htc/android/htcime/HTCIMEService;->getIMByTypeAndSIP(III)Lcom/htc/android/htcime/Intf/IHTCIM;

    move-result-object v12

    sput-object v12, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    .line 741
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mIMEFinder:Lcom/htc/android/htcime/util/CodeIMEFinder;

    invoke-virtual {v12, v7}, Lcom/htc/android/htcime/util/CodeIMEFinder;->getSIPBySIPId(I)Lcom/htc/android/htcime/Intf/IHTCSIP;

    move-result-object v6

    .line 743
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v13, v13, Lcom/htc/android/htcime/HTCIMMData;->mLandWCLVisibleByType:[Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v14, v14, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    aget-boolean v13, v13, v14

    invoke-virtual {v12, v13}, Lcom/htc/android/htcime/HTCIMMView;->setWCLVisible(Z)V

    .line 767
    :goto_17
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iput-object v6, v12, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    goto/16 :goto_b

    .line 748
    .end local v7           #newSIPID:I
    :cond_2f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v12, v12, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v13, v13, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/htc/android/htcime/HTCIMEService;->getSIPID(II)I

    move-result v7

    .line 752
    .restart local v7       #newSIPID:I
    const/16 v12, 0x1b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v13, v13, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    if-ne v12, v13, :cond_30

    .line 753
    const/16 v7, 0x15

    .line 754
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v12, v12, Lcom/htc/android/htcime/HTCIMMData;->mCursorPos:Landroid/graphics/Rect;

    new-instance v13, Landroid/graphics/Rect;

    const/16 v14, 0xa0

    const/16 v15, 0x177

    const/16 v16, 0xa1

    const/16 v17, 0x178

    invoke-direct/range {v13 .. v17}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v12, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 758
    :cond_30
    const/4 v12, -0x1

    if-ne v12, v7, :cond_31

    .line 759
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v12, v12, Lcom/htc/android/htcime/HTCIMMData;->mIM:[Lcom/htc/android/htcime/Intf/IHTCIM;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    sput-object v12, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    .line 764
    :goto_18
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mIMEFinder:Lcom/htc/android/htcime/util/CodeIMEFinder;

    invoke-virtual {v12, v7}, Lcom/htc/android/htcime/util/CodeIMEFinder;->getSIPBySIPId(I)Lcom/htc/android/htcime/Intf/IHTCSIP;

    move-result-object v6

    .line 765
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v13, v13, Lcom/htc/android/htcime/HTCIMMData;->mPortWCLVisibleByType:[Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v14, v14, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    aget-boolean v13, v13, v14

    invoke-virtual {v12, v13}, Lcom/htc/android/htcime/HTCIMMView;->setWCLVisible(Z)V

    goto :goto_17

    .line 761
    :cond_31
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v12, v12, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v13, v13, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v7}, Lcom/htc/android/htcime/HTCIMEService;->getIMByTypeAndSIP(III)Lcom/htc/android/htcime/Intf/IHTCIM;

    move-result-object v12

    sput-object v12, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    goto :goto_18

    .line 781
    .end local v7           #newSIPID:I
    :cond_32
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v12, v12, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    check-cast v12, Landroid/view/View;

    invoke-virtual {v13, v12}, Lcom/htc/android/htcime/HTCIMMView;->setSIPView(Landroid/view/View;)Z

    move-result v8

    .line 782
    .local v8, sipChanged:Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v12, v8}, Lcom/htc/android/htcime/HTCIMMView;->showIMMView(Z)V

    .line 783
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v12, Lcom/htc/android/htcime/HTCIMMData;->mIsChaCha:Z

    if-eqz v12, :cond_15

    const/4 v12, 0x3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v13, v13, Lcom/htc/android/htcime/HTCIMMData;->mLandPrimarySIP:I

    if-ne v12, v13, :cond_15

    .line 784
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/android/htcime/HTCIMEService;->handleIconShow(I)V

    goto/16 :goto_c

    .line 796
    .end local v8           #sipChanged:Z
    :cond_33
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/htc/android/htcime/HTCIMEService;->mbReadyForInput:Z

    goto/16 :goto_d

    .line 809
    :cond_34
    const/4 v12, 0x0

    goto/16 :goto_e

    .line 816
    :cond_35
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/HTCIMEService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "htc.ime.isVibrateOn"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_f

    .line 823
    :cond_36
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/android/htcime/HTCIMEService;->setCandidatesViewShown(Z)V

    goto/16 :goto_10

    .line 412
    .end local v2           #config:Lcom/htc/android/htcime/util/ConfigData;
    :catch_1
    move-exception v12

    goto/16 :goto_0

    .line 466
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 469
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x10 -> :sswitch_1
        0x20 -> :sswitch_2
        0x30 -> :sswitch_3
        0x40 -> :sswitch_a
        0x50 -> :sswitch_b
        0x60 -> :sswitch_4
        0x70 -> :sswitch_5
        0x80 -> :sswitch_6
        0x90 -> :sswitch_7
        0xa0 -> :sswitch_8
        0x900 -> :sswitch_9
        0x920 -> :sswitch_15
        0x930 -> :sswitch_c
        0x940 -> :sswitch_f
        0x950 -> :sswitch_d
        0x960 -> :sswitch_10
        0x970 -> :sswitch_e
        0x980 -> :sswitch_11
        0x990 -> :sswitch_12
        0x9a0 -> :sswitch_13
        0x9b0 -> :sswitch_14
        0x9c0 -> :sswitch_16
    .end sparse-switch
.end method

.method public onUpdateCursor(Landroid/graphics/Rect;)V
    .locals 3
    .parameter "cursor"

    .prologue
    .line 1501
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    if-nez v1, :cond_1

    .line 1522
    :cond_0
    return-void

    .line 1502
    :cond_1
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    if-eqz v1, :cond_0

    .line 1503
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mCursorPos:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    .line 1505
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mCursorPos:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1506
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mCursorPos:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 1508
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mComposingPos:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v1}, Lcom/htc/android/htcime/Intf/IHTCIM;->getInputMethodData()Lcom/htc/android/htcime/Intf/HTCIMData;

    move-result-object v1

    iget v1, v1, Lcom/htc/android/htcime/Intf/HTCIMData;->imEditWordLen:I

    if-eqz v1, :cond_2

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mComposingPos:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-eq v1, v2, :cond_0

    .line 1512
    :cond_2
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mComposingPos:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1513
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mComposingPos:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 1514
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMMView;->getFullWCLVisible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1515
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 1516
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mWCLText:[Ljava/lang/String;

    aget-object v1, v1, v0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v1, v0}, Lcom/htc/android/htcime/HTCIMMView;->getWCLVisible_ID(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1517
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v1, v0}, Lcom/htc/android/htcime/HTCIMMView;->showWCLBar(I)V

    .line 1515
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onUpdateSelection(IIIIII)V
    .locals 9
    .parameter "oldSelStart"
    .parameter "oldSelEnd"
    .parameter "newSelStart"
    .parameter "newSelEnd"
    .parameter "candidatesStart"
    .parameter "candidatesEnd"

    .prologue
    .line 1445
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    if-nez v0, :cond_1

    .line 1492
    :cond_0
    :goto_0
    return-void

    .line 1446
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v0, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    if-eqz v0, :cond_0

    .line 1449
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-static {}, Lcom/htc/android/htcime/HTCIMMView;->getIMMViewVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1452
    invoke-super/range {p0 .. p6}, Lcom/htc/android/htcime/compat/InputMethodServiceCompatWrapper;->onUpdateSelection(IIIIII)V

    .line 1454
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mSmartCAPSentinel:Lcom/htc/android/htcime/util/SmartCAPSentinel;

    invoke-virtual {v0}, Lcom/htc/android/htcime/util/SmartCAPSentinel;->isSubscribed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1462
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    if-eq v0, v1, :cond_2

    .line 1463
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->mForceAutoCapCheck:Z

    .line 1466
    :cond_2
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mSmartCAPSentinel:Lcom/htc/android/htcime/util/SmartCAPSentinel;

    invoke-virtual {v0}, Lcom/htc/android/htcime/util/SmartCAPSentinel;->deal()V

    .line 1467
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v0, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    instance-of v0, v0, Lcom/htc/android/htcime/XT9IME/XT9IME;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMMData;->isQwertyAlphabet()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1468
    const/high16 v0, 0x702

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyEvent(I)V

    .line 1471
    :cond_3
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v0}, Lcom/htc/android/htcime/Intf/IHTCSIP;->onCursorChanged()V

    .line 1474
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->mIsChaCha:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrHWKB:Lcom/htc/android/htcime/ezsip/QwertyHWKBView;

    if-eq v0, v1, :cond_4

    .line 1475
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mCurrHWKB:Lcom/htc/android/htcime/ezsip/QwertyHWKBView;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->onCursorChanged()V

    .line 1477
    :cond_4
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sub-int v1, p6, p5

    iput v1, v0, Lcom/htc/android/htcime/HTCIMMData;->mEditWordLen:I

    .line 1480
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v0, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v7, v1, Lcom/htc/android/htcime/HTCIMMData;->mEditWordLen:I

    move v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p1

    move v6, p2

    invoke-interface/range {v0 .. v7}, Lcom/htc/android/htcime/Intf/IHTCIM;->onUpdateSelection(IIIIIII)I

    move-result v8

    .line 1484
    .local v8, keyCode:I
    const/4 v0, -0x1

    if-eq v8, v0, :cond_5

    .line 1486
    invoke-virtual {p0, v8}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyEvent(I)V

    .line 1488
    :cond_5
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v0, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v0}, Lcom/htc/android/htcime/Intf/IHTCIM;->getInputMethodData()Lcom/htc/android/htcime/Intf/HTCIMData;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/htc/android/htcime/Intf/HTCIMData;->passUpdateSelection:Z

    .line 1491
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->mCPWCLCOMMIT:Z

    goto/16 :goto_0
.end method

.method public onWindowHidden()V
    .locals 5

    .prologue
    .line 4200
    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->sFeature_Tablet:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->mIsMemTuneProj:Z

    if-eqz v1, :cond_1

    .line 4202
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getFreeNativeBitmap()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4203
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mGeneralHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMEService;->releaseMemoryRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x7530

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4204
    invoke-static {}, Lcom/htc/tracker/ObjectTracker;->getInstance()Lcom/htc/tracker/ObjectTracker;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/tracker/ObjectTracker;->setKey(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4211
    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/htc/android/htcime/compat/InputMethodServiceCompatWrapper;->onWindowHidden()V

    .line 4212
    return-void

    .line 4206
    :catch_0
    move-exception v0

    .line 4207
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "HTCIMEService"

    const-string v2, "onWindowHidden, Releasing bitmap mechanism error, releasing bitmap mechanism not applied"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4208
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onWindowShown()V
    .locals 3

    .prologue
    .line 4182
    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->sFeature_Tablet:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->mIsMemTuneProj:Z

    if-eqz v1, :cond_2

    .line 4184
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getFreeNativeBitmap()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4185
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->releaseMemoryRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    .line 4186
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mGeneralHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMEService;->releaseMemoryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4188
    :cond_1
    invoke-static {}, Lcom/htc/tracker/ObjectTracker;->getInstance()Lcom/htc/tracker/ObjectTracker;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/htc/tracker/ObjectTracker;->setKey(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4195
    :cond_2
    :goto_0
    invoke-super {p0}, Lcom/htc/android/htcime/compat/InputMethodServiceCompatWrapper;->onWindowShown()V

    .line 4196
    return-void

    .line 4190
    :catch_0
    move-exception v0

    .line 4191
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "HTCIMEService"

    const-string v2, "onWindowShown, Releasing bitmap mechanism error, releasing bitmap mechanism not applied"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4192
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public relaunchFixedWCLView()V
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 844
    sget-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->sFeature_FixedWCL_Symbol:Z

    if-nez v0, :cond_0

    .line 849
    :goto_0
    return-void

    .line 846
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mGeneralHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 847
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mGeneralHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 848
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mGeneralHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public resetMetaState()V
    .locals 4

    .prologue
    .line 4103
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 4104
    .local v1, resetMeta:Landroid/os/Bundle;
    const-string v2, "META"

    const-string v3, "RESET"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4105
    invoke-virtual {p0}, Lcom/htc/android/htcime/HTCIMEService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 4106
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    const-string v2, "com.htc.android.htcime.adjustMetaState"

    invoke-interface {v0, v2, v1}, Landroid/view/inputmethod/InputConnection;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 4107
    :cond_0
    return-void
.end method

.method public sendArrowKeyEvent(I)V
    .locals 2
    .parameter "eventCode"

    .prologue
    .line 3005
    invoke-direct {p0}, Lcom/htc/android/htcime/HTCIMEService;->checkProtection()V

    .line 3007
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 3008
    .local v0, event:Landroid/view/KeyEvent;
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v1, v0}, Lcom/htc/android/htcime/Intf/IHTCIM;->onKeyDown(Landroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3009
    const/4 v1, 0x1

    sput-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->mForceAutoCapCheck:Z

    .line 3010
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/HTCIMEService;->sendDownUpKeyEventsEx1(I)V

    .line 3012
    :cond_0
    return-void
.end method

.method public sendDownUpKeyEventsEx1(I)V
    .locals 24
    .parameter "keyEventCode"

    .prologue
    .line 3015
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/HTCIMEService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v23

    .line 3016
    .local v23, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v23, :cond_0

    .line 3025
    :goto_0
    return-void

    .line 3017
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3018
    .local v2, eventTime:J
    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->sFeature_Tablet:Z

    if-eqz v1, :cond_1

    const/4 v10, -0x1

    .line 3019
    .local v10, deviceId:I
    :goto_1
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x2

    move-wide v4, v2

    move/from16 v7, p1

    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, v23

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 3022
    new-instance v11, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    const/16 v16, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x2

    move-wide v14, v2

    move/from16 v17, p1

    move/from16 v20, v10

    invoke-direct/range {v11 .. v22}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, v23

    invoke-interface {v0, v11}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_0

    .line 3018
    .end local v10           #deviceId:I
    :cond_1
    const/4 v10, 0x0

    goto :goto_1
.end method

.method public sendInternalKeyDownEvent(I)V
    .locals 2
    .parameter "keyid"

    .prologue
    .line 1603
    invoke-direct {p0}, Lcom/htc/android/htcime/HTCIMEService;->checkProtection()V

    .line 1605
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 1606
    .local v0, event:Landroid/view/KeyEvent;
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v1, v0}, Lcom/htc/android/htcime/Intf/IHTCIM;->onKeyDown(Landroid/view/KeyEvent;)Z

    .line 1607
    return-void
.end method

.method public sendInternalKeyEvent(I)V
    .locals 2
    .parameter "keyid"

    .prologue
    .line 1636
    invoke-direct {p0}, Lcom/htc/android/htcime/HTCIMEService;->checkProtection()V

    .line 1638
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 1639
    .local v0, event:Landroid/view/KeyEvent;
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v1, v0}, Lcom/htc/android/htcime/Intf/IHTCIM;->onKeyDown(Landroid/view/KeyEvent;)Z

    .line 1640
    new-instance v0, Landroid/view/KeyEvent;

    .end local v0           #event:Landroid/view/KeyEvent;
    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 1641
    .restart local v0       #event:Landroid/view/KeyEvent;
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v1, v0}, Lcom/htc/android/htcime/Intf/IHTCIM;->onKeyUp(Landroid/view/KeyEvent;)Z

    .line 1642
    return-void
.end method

.method public sendInternalKeyEvent(III)V
    .locals 2
    .parameter "keyid"
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    .line 1654
    invoke-direct {p0}, Lcom/htc/android/htcime/HTCIMEService;->checkProtection()V

    .line 1656
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 1657
    .local v0, event:Landroid/view/KeyEvent;
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v1, v0, p2, p3}, Lcom/htc/android/htcime/Intf/IHTCIM;->onKeyDown(Landroid/view/KeyEvent;II)Z

    .line 1658
    new-instance v0, Landroid/view/KeyEvent;

    .end local v0           #event:Landroid/view/KeyEvent;
    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 1659
    .restart local v0       #event:Landroid/view/KeyEvent;
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v1, v0, p2, p3}, Lcom/htc/android/htcime/Intf/IHTCIM;->onKeyUp(Landroid/view/KeyEvent;II)Z

    .line 1660
    return-void
.end method

.method public sendInternalKeyUpEvent(I)V
    .locals 2
    .parameter "keyid"

    .prologue
    .line 1620
    invoke-direct {p0}, Lcom/htc/android/htcime/HTCIMEService;->checkProtection()V

    .line 1622
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 1623
    .local v0, event:Landroid/view/KeyEvent;
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v1, v0}, Lcom/htc/android/htcime/Intf/IHTCIM;->onKeyUp(Landroid/view/KeyEvent;)Z

    .line 1624
    return-void
.end method

.method public sendSimKeyEvent(I)V
    .locals 0
    .parameter "eventCode"

    .prologue
    .line 1671
    invoke-direct {p0}, Lcom/htc/android/htcime/HTCIMEService;->checkProtection()V

    .line 1673
    invoke-super {p0, p1}, Lcom/htc/android/htcime/compat/InputMethodServiceCompatWrapper;->sendDownUpKeyEvents(I)V

    .line 1674
    return-void
.end method

.method public sendSimKeyEventDown(I)V
    .locals 13
    .parameter "eventCode"

    .prologue
    const/4 v5, 0x0

    .line 1685
    invoke-direct {p0}, Lcom/htc/android/htcime/HTCIMEService;->checkProtection()V

    .line 1687
    invoke-virtual {p0}, Lcom/htc/android/htcime/HTCIMEService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v12

    .line 1688
    .local v12, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v12, :cond_0

    .line 1695
    :goto_0
    return-void

    .line 1689
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1690
    .local v1, eventTime:J
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v11, 0x6

    move-wide v3, v1

    move v6, p1

    move v7, v5

    move v8, v5

    move v9, v5

    move v10, v5

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-interface {v12, v0}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_0
.end method

.method public setCandidatesViewShown(Z)V
    .locals 1
    .parameter "bShown"

    .prologue
    .line 858
    iget-boolean v0, p0, Lcom/htc/android/htcime/HTCIMEService;->m_bIsCandidatesViewShown:Z

    if-ne v0, p1, :cond_0

    .line 866
    :goto_0
    return-void

    .line 861
    :cond_0
    iput-boolean p1, p0, Lcom/htc/android/htcime/HTCIMEService;->m_bIsCandidatesViewShown:Z

    .line 862
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    if-eqz v0, :cond_1

    .line 863
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMMView;->hideMailBtnPopup()V

    .line 865
    :cond_1
    invoke-super {p0, p1}, Lcom/htc/android/htcime/compat/InputMethodServiceCompatWrapper;->setCandidatesViewShown(Z)V

    goto :goto_0
.end method

.method public setComposingText(Landroid/text/Spanned;I)V
    .locals 5
    .parameter "text"
    .parameter "newCursorPosition"

    .prologue
    .line 2338
    invoke-static {p1}, Lcom/htc/android/htcime/util/CharTransfer;->transfer(Landroid/text/Spanned;)Landroid/text/Spanned;

    move-result-object p1

    .line 2343
    invoke-direct {p0}, Lcom/htc/android/htcime/HTCIMEService;->checkProtection()V

    .line 2345
    invoke-virtual {p0}, Lcom/htc/android/htcime/HTCIMEService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 2348
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    const/4 v2, 0x1

    :try_start_0
    invoke-interface {v1, p1, v2}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2354
    :goto_0
    const-string v2, "setComposingText"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/htc/android/htcime/HTCIMEService;->checkInputLag(Ljava/lang/String;Ljava/lang/String;)V

    .line 2355
    return-void

    .line 2349
    :catch_0
    move-exception v0

    .line 2350
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "HTCIMEService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setComposingText] ic = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setDefaultWCLText(Ljava/lang/String;I)V
    .locals 2
    .parameter "wclText"
    .parameter "candIdx"

    .prologue
    const/4 v1, 0x0

    .line 1762
    if-nez p1, :cond_1

    .line 1763
    const-string p1, ""

    .line 1767
    :goto_0
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mWCLText:[Ljava/lang/String;

    aput-object p1, v0, v1

    .line 1768
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mWCLIdx:[I

    aput p2, v0, v1

    .line 1770
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-static {}, Lcom/htc/android/htcime/HTCIMMView;->getIMMViewVisible()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1783
    :cond_0
    :goto_1
    return-void

    .line 1765
    :cond_1
    invoke-static {p1}, Lcom/htc/android/htcime/util/CharTransfer;->transfer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1772
    :cond_2
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkbWCL:Z

    if-eqz v0, :cond_4

    .line 1773
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/HTCIMEService;->setCandidatesViewShown(Z)V

    .line 1774
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mWCList:Lcom/htc/android/htcime/ui/WordCandidateList;

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ui/WordCandidateList;->showWCL(I)V

    goto :goto_1

    :cond_3
    move v0, v1

    .line 1773
    goto :goto_2

    .line 1777
    :cond_4
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMMView;->setWCLText()V

    goto :goto_1
.end method

.method public setExtractView(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 2211
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    if-nez v0, :cond_1

    .line 2227
    :cond_0
    :goto_0
    return-void

    .line 2212
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v0, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    if-eqz v0, :cond_0

    .line 2213
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mExtractComposingPos:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 2215
    invoke-direct {p0}, Lcom/htc/android/htcime/HTCIMEService;->checkProtection()V

    .line 2217
    invoke-super {p0, p1}, Lcom/htc/android/htcime/compat/InputMethodServiceCompatWrapper;->setExtractView(Landroid/view/View;)V

    .line 2219
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mExtractEditText:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 2220
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mExtractEditText:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->forceLayout()V

    .line 2222
    :cond_2
    sget-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->sFeature_FixedWCL:Z

    if-eqz v0, :cond_3

    .line 2223
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mGeneralHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2225
    :cond_3
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mExtractComposingPos:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 2226
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mExtractComposingPos:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0
.end method

.method public setHWKBSymSIP(IZ)Z
    .locals 4
    .parameter "sip"
    .parameter "isRemember"

    .prologue
    const/4 v2, 0x1

    .line 1890
    const/4 v0, 0x0

    .line 1892
    .local v0, newSymSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;
    invoke-direct {p0}, Lcom/htc/android/htcime/HTCIMEService;->checkProtection()V

    .line 1897
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 1899
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mIMEFinder:Lcom/htc/android/htcime/util/CodeIMEFinder;

    invoke-virtual {v1, p1}, Lcom/htc/android/htcime/util/CodeIMEFinder;->getSIPBySIPId(I)Lcom/htc/android/htcime/Intf/IHTCSIP;

    move-result-object v0

    .line 1901
    if-ne p2, v2, :cond_0

    .line 1902
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mLandSIPByType:[I

    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    aput p1, v1, v3

    .line 1907
    :cond_0
    if-nez v0, :cond_1

    .line 1908
    const-string v1, "HTCIMEService"

    const-string v2, "[setHWKBSymSIP] newSymSIP is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1909
    const/4 v1, 0x0

    .line 1920
    :goto_0
    return v1

    .line 1910
    :cond_1
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    if-eq v0, v1, :cond_2

    .line 1911
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v1}, Lcom/htc/android/htcime/Intf/IHTCSIP;->finishInput()V

    .line 1913
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iput-object v0, v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    .line 1915
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v1}, Lcom/htc/android/htcime/Intf/IHTCSIP;->startInput()V

    .line 1916
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v3, v1}, Lcom/htc/android/htcime/HTCIMMView;->setHWKBSymSIP(Landroid/view/View;)V

    .line 1918
    :cond_2
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMMView;->showHWKBSymSip()V

    move v1, v2

    .line 1920
    goto :goto_0
.end method

.method public setSIP(IZ)V
    .locals 4
    .parameter "sip"
    .parameter "isRemember"

    .prologue
    const/4 v3, 0x1

    .line 1837
    const/4 v0, 0x0

    .line 1839
    .local v0, newSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;
    invoke-direct {p0}, Lcom/htc/android/htcime/HTCIMEService;->checkProtection()V

    .line 1843
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 1846
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mIMEFinder:Lcom/htc/android/htcime/util/CodeIMEFinder;

    invoke-virtual {v1, p1}, Lcom/htc/android/htcime/util/CodeIMEFinder;->getSIPBySIPId(I)Lcom/htc/android/htcime/Intf/IHTCSIP;

    move-result-object v0

    .line 1848
    if-ne p2, v3, :cond_0

    .line 1849
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mLandSIPByType:[I

    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    aput p1, v1, v2

    .line 1851
    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    invoke-virtual {p0, v1, v2, p1}, Lcom/htc/android/htcime/HTCIMEService;->getIMByTypeAndSIP(III)Lcom/htc/android/htcime/Intf/IHTCIM;

    move-result-object v1

    sput-object v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    .line 1867
    :goto_0
    if-nez v0, :cond_4

    .line 1868
    const-string v1, "HTCIMEService"

    const-string v2, "newSIP is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1885
    :cond_1
    :goto_1
    return-void

    .line 1857
    :cond_2
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mIMEFinder:Lcom/htc/android/htcime/util/CodeIMEFinder;

    invoke-virtual {v1, p1}, Lcom/htc/android/htcime/util/CodeIMEFinder;->getSIPBySIPId(I)Lcom/htc/android/htcime/Intf/IHTCSIP;

    move-result-object v0

    .line 1859
    if-ne p2, v3, :cond_3

    .line 1860
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mPortSIPByType:[I

    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    aput p1, v1, v2

    .line 1862
    :cond_3
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    invoke-virtual {p0, v1, v2, p1}, Lcom/htc/android/htcime/HTCIMEService;->getIMByTypeAndSIP(III)Lcom/htc/android/htcime/Intf/IHTCIM;

    move-result-object v1

    sput-object v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    goto :goto_0

    .line 1869
    :cond_4
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    if-eq v0, v1, :cond_1

    .line 1871
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v1}, Lcom/htc/android/htcime/Intf/IHTCIM;->finishInput()V

    .line 1872
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v1}, Lcom/htc/android/htcime/Intf/IHTCSIP;->finishInput()V

    .line 1875
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iput-object v0, v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    .line 1878
    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v2, v1}, Lcom/htc/android/htcime/HTCIMMView;->setSIPView(Landroid/view/View;)Z

    .line 1879
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v1}, Lcom/htc/android/htcime/Intf/IHTCIM;->startInput()V

    .line 1880
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v1}, Lcom/htc/android/htcime/Intf/IHTCSIP;->startInput()V

    .line 1881
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v1}, Lcom/htc/android/htcime/Intf/IHTCIM;->preProcess()V

    .line 1882
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v1, v3}, Lcom/htc/android/htcime/HTCIMMView;->showIMMView(Z)V

    goto :goto_1
.end method

.method public setSIPForHWKB(I)V
    .locals 3
    .parameter "sipid"

    .prologue
    const/4 v2, 0x1

    .line 1925
    invoke-direct {p0}, Lcom/htc/android/htcime/HTCIMEService;->checkProtection()V

    .line 1927
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v0, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v0}, Lcom/htc/android/htcime/Intf/IHTCIM;->finishInput()V

    .line 1928
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v0}, Lcom/htc/android/htcime/Intf/IHTCSIP;->finishInput()V

    .line 1930
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    invoke-virtual {p0, v0, v1, p1}, Lcom/htc/android/htcime/HTCIMEService;->getIMByTypeAndSIP(III)Lcom/htc/android/htcime/Intf/IHTCIM;

    move-result-object v0

    sput-object v0, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    .line 1931
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mCurrHWKB:Lcom/htc/android/htcime/ezsip/QwertyHWKBView;

    invoke-virtual {v0, p1}, Lcom/htc/android/htcime/ezsip/QwertyHWKBView;->setEZSIP(I)V

    .line 1932
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrHWKB:Lcom/htc/android/htcime/ezsip/QwertyHWKBView;

    iput-object v1, v0, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    .line 1933
    iput-boolean v2, p0, Lcom/htc/android/htcime/HTCIMEService;->mbReadyForInput:Z

    .line 1935
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/htc/android/htcime/HTCIMMView;->setSIPView(Landroid/view/View;)Z

    .line 1936
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v0, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v0}, Lcom/htc/android/htcime/Intf/IHTCIM;->startInput()V

    .line 1937
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v0}, Lcom/htc/android/htcime/Intf/IHTCSIP;->startInput()V

    .line 1938
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v0, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v0}, Lcom/htc/android/htcime/Intf/IHTCIM;->preProcess()V

    .line 1939
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v0, v2}, Lcom/htc/android/htcime/HTCIMMView;->showIMMView(Z)V

    .line 1940
    return-void
.end method

.method public setSelection(II)V
    .locals 3
    .parameter "start"
    .parameter "end"

    .prologue
    .line 2279
    const-string v0, "HTCIMEService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setSelection]: start = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", end="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2281
    invoke-virtual {p0}, Lcom/htc/android/htcime/HTCIMEService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2282
    invoke-virtual {p0}, Lcom/htc/android/htcime/HTCIMEService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 2285
    :goto_0
    return-void

    .line 2284
    :cond_0
    const-string v0, "TAG"

    const-string v1, "setSelection, null pointer."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setTwoLinesWCLText(Ljava/lang/String;I)V
    .locals 1
    .parameter "wclText"
    .parameter "idx"

    .prologue
    .line 3741
    invoke-static {p1}, Lcom/htc/android/htcime/util/CharTransfer;->transfer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3742
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iput-object p1, v0, Lcom/htc/android/htcime/HTCIMMData;->m2LinesWCLTopText:Ljava/lang/String;

    .line 3743
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iput p2, v0, Lcom/htc/android/htcime/HTCIMMData;->m2LinesWCLIdx:I

    .line 3744
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/htcime/HTCIMMView;->setTwoLinesWCLSuggestions(Ljava/lang/String;I)V

    .line 3745
    return-void
.end method

.method public setWCLSelByIndex(I)V
    .locals 3
    .parameter "canIdx"

    .prologue
    .line 1709
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMMView;->getWCLMode()I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mWCLId:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-boolean v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mDropDownBottomWCL:Z

    if-nez v0, :cond_1

    .line 1712
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iput p1, v0, Lcom/htc/android/htcime/HTCIMMData;->m2LinesWCLIdx:I

    .line 1716
    :goto_0
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mWCLText:[Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mWCLId:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1718
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkbWCL:Z

    if-eqz v0, :cond_2

    .line 1719
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mWCList:Lcom/htc/android/htcime/ui/WordCandidateList;

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mWCLIdx:[I

    iget-object v2, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mWCLId:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ui/WordCandidateList;->setSelection(I)V

    .line 1724
    :cond_0
    :goto_1
    return-void

    .line 1714
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mWCLIdx:[I

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mWCLId:I

    aput p1, v0, v1

    goto :goto_0

    .line 1721
    :cond_2
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mWCLId:I

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/HTCIMMView;->setWCLSelByIndex_ID(I)V

    goto :goto_1
.end method

.method public setWCLSelByIndex(II)V
    .locals 0
    .parameter "wclBarIdx"
    .parameter "wclIdx"

    .prologue
    .line 3678
    invoke-virtual {p0, p2}, Lcom/htc/android/htcime/HTCIMEService;->setWCLSelByIndex(I)V

    .line 3679
    return-void
.end method

.method public setWCLText(ILjava/lang/String;I)V
    .locals 2
    .parameter "wclBarIdx"
    .parameter "wclText"
    .parameter "candIdx"

    .prologue
    .line 3713
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-static {}, Lcom/htc/android/htcime/HTCIMMView;->getIMMViewVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3737
    :cond_0
    :goto_0
    return-void

    .line 3716
    :cond_1
    const/4 v0, 0x3

    if-ge p1, v0, :cond_0

    .line 3719
    if-nez p2, :cond_2

    .line 3720
    const-string p2, ""

    .line 3725
    :goto_1
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mWCLText:[Ljava/lang/String;

    aput-object p2, v0, p1

    .line 3726
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mWCLIdx:[I

    aput p3, v0, p1

    .line 3728
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iput p1, v0, Lcom/htc/android/htcime/HTCIMMData;->mWCLId:I

    .line 3729
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/android/htcime/HTCIMMData;->mDropDownBottomWCL:Z

    .line 3732
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v0, p1}, Lcom/htc/android/htcime/HTCIMMView;->setWCLTextByID(I)V

    goto :goto_0

    .line 3722
    :cond_2
    invoke-static {p2}, Lcom/htc/android/htcime/util/CharTransfer;->transfer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1
.end method

.method public setWCLTextByID(Ljava/lang/String;II)V
    .locals 2
    .parameter "wclText"
    .parameter "candIdx"
    .parameter "wclID"

    .prologue
    const/4 v0, 0x1

    .line 1795
    const/4 v1, 0x3

    if-lt p3, v1, :cond_1

    .line 1827
    :cond_0
    :goto_0
    return-void

    .line 1801
    :cond_1
    if-nez p1, :cond_3

    .line 1802
    const-string p1, ""

    .line 1806
    :goto_1
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mWCLText:[Ljava/lang/String;

    aput-object p1, v1, p3

    .line 1807
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mWCLIdx:[I

    aput p2, v1, p3

    .line 1808
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iput p3, v1, Lcom/htc/android/htcime/HTCIMMData;->mWCLId:I

    .line 1809
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iput-boolean v0, v1, Lcom/htc/android/htcime/HTCIMMData;->mDropDownBottomWCL:Z

    .line 1811
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-static {}, Lcom/htc/android/htcime/HTCIMMView;->getIMMViewVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1814
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkbWCL:Z

    if-eqz v1, :cond_5

    .line 1815
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mbShowCompletion:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-boolean v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mIsIMFAutoCompletion:Z

    if-eqz v1, :cond_4

    :cond_2
    :goto_2
    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/HTCIMEService;->setCandidatesViewShown(Z)V

    .line 1817
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mWCList:Lcom/htc/android/htcime/ui/WordCandidateList;

    invoke-virtual {v0, p3}, Lcom/htc/android/htcime/ui/WordCandidateList;->showWCL(I)V

    goto :goto_0

    .line 1804
    :cond_3
    invoke-static {p1}, Lcom/htc/android/htcime/util/CharTransfer;->transfer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 1815
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 1820
    :cond_5
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v0, p3}, Lcom/htc/android/htcime/HTCIMMView;->setWCLTextByID(I)V

    goto :goto_0
.end method

.method public setWclSpread(Z)Z
    .locals 1
    .parameter "changeToFullWCL"

    .prologue
    .line 3547
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mWCList:Lcom/htc/android/htcime/ui/WordCandidateList;

    if-nez v0, :cond_0

    .line 3548
    const/4 v0, 0x0

    .line 3549
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMEService;->mWCList:Lcom/htc/android/htcime/ui/WordCandidateList;

    invoke-virtual {v0, p1}, Lcom/htc/android/htcime/ui/WordCandidateList;->setWclSpread(Z)Z

    move-result v0

    goto :goto_0
.end method

.method public showProtectionError()V
    .locals 5

    .prologue
    .line 3620
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMEService;->mAlertDialog:Landroid/app/AlertDialog;

    if-nez v3, :cond_0

    .line 3621
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3622
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 3623
    const v3, 0x1080027

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 3624
    const v3, 0x20c013c

    new-instance v4, Lcom/htc/android/htcime/HTCIMEService$2;

    invoke-direct {v4, p0}, Lcom/htc/android/htcime/HTCIMEService$2;-><init>(Lcom/htc/android/htcime/HTCIMEService;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3632
    const v3, 0x1040014

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 3633
    const v3, 0x7f09005d

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 3635
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/htcime/HTCIMEService;->mAlertDialog:Landroid/app/AlertDialog;

    .line 3636
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMEService;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 3637
    .local v2, window:Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 3638
    .local v1, lp:Landroid/view/WindowManager$LayoutParams;
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v3}, Lcom/htc/android/htcime/HTCIMMView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 3639
    const/16 v3, 0x3eb

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 3640
    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 3641
    const/high16 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 3644
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v2           #window:Landroid/view/Window;
    :cond_0
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMEService;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 3645
    return-void
.end method

.method startVoiceInput()V
    .locals 3

    .prologue
    .line 4111
    const/high16 v1, 0x71c

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyEvent(I)V

    .line 4112
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mVoiceInput:Lcom/htc/android/htcime/deprecated/voice/VoiceInput;

    if-nez v1, :cond_0

    .line 4113
    invoke-direct {p0}, Lcom/htc/android/htcime/HTCIMEService;->initVoiceInput()V

    .line 4114
    :cond_0
    new-instance v0, Lcom/htc/android/htcime/deprecated/voice/FieldContext;

    invoke-virtual {p0}, Lcom/htc/android/htcime/HTCIMEService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/android/htcime/HTCIMEService;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/htc/android/htcime/deprecated/voice/FieldContext;-><init>(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V

    .line 4115
    .local v0, context:Lcom/htc/android/htcime/deprecated/voice/FieldContext;
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMEService;->mVoiceInput:Lcom/htc/android/htcime/deprecated/voice/VoiceInput;

    invoke-virtual {v1, v0}, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->startListening(Lcom/htc/android/htcime/deprecated/voice/FieldContext;)V

    .line 4116
    return-void
.end method

.method public updateCandidatesViewShown()Z
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 871
    sget-boolean v3, Lcom/htc/android/htcime/HTCIMMData;->sFeature_FixedWCL:Z

    if-nez v3, :cond_0

    .line 872
    const/4 v0, 0x0

    .line 923
    :goto_0
    return v0

    .line 874
    :cond_0
    const/4 v0, 0x0

    .line 875
    .local v0, bRet:Z
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v3, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v3}, Lcom/htc/android/htcime/Intf/IHTCIM;->getInputMethodData()Lcom/htc/android/htcime/Intf/HTCIMData;

    move-result-object v3

    iget v1, v3, Lcom/htc/android/htcime/Intf/HTCIMData;->imID:I

    .line 876
    .local v1, currIM:I
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v3}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;

    move-result-object v3

    iget v2, v3, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    .line 877
    .local v2, sipid:I
    if-eqz v1, :cond_7

    .line 878
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v3}, Lcom/htc/android/htcime/HTCIMMView;->isPhoneHWR()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 879
    const/4 v0, 0x0

    .line 894
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    if-ne v3, v4, :cond_a

    .line 895
    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_2

    const/16 v3, 0x12

    if-eq v2, v3, :cond_2

    const/16 v3, 0x13

    if-eq v2, v3, :cond_2

    const/16 v3, 0x14

    if-ne v2, v3, :cond_3

    .line 900
    :cond_2
    const/4 v0, 0x0

    .line 907
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-boolean v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mIsIMFAutoCompletion:Z

    if-ne v3, v4, :cond_4

    .line 908
    const/4 v0, 0x1

    .line 910
    :cond_4
    if-eqz v0, :cond_c

    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v3}, Lcom/htc/android/htcime/HTCIMMView;->isShown()Z

    move-result v3

    if-ne v3, v4, :cond_c

    .line 911
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v3}, Lcom/htc/android/htcime/HTCIMMView;->adjustWCLHeight()V

    .line 912
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v3}, Lcom/htc/android/htcime/HTCIMMView;->showFixedWCLSymbol()V

    .line 917
    :goto_3
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    if-ne v3, v5, :cond_5

    .line 918
    const/4 v0, 0x0

    .line 921
    :cond_5
    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/HTCIMEService;->setCandidatesViewShown(Z)V

    goto :goto_0

    .line 881
    :cond_6
    const/4 v0, 0x1

    goto :goto_1

    .line 885
    :cond_7
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v3, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    instance-of v3, v3, Lcom/htc/android/htcime/XT9IME/XT9IME;

    if-eqz v3, :cond_1

    .line 887
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v3, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    check-cast v3, Lcom/htc/android/htcime/XT9IME/XT9IME;

    invoke-virtual {v3}, Lcom/htc/android/htcime/XT9IME/XT9IME;->isPredictionMode()Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-boolean v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mIsIMFAutoCompletion:Z

    if-eqz v3, :cond_9

    .line 888
    :cond_8
    const/4 v0, 0x1

    goto :goto_1

    .line 890
    :cond_9
    const/4 v0, 0x0

    goto :goto_1

    .line 901
    :cond_a
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMEService;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    if-ne v3, v5, :cond_3

    .line 902
    if-eq v2, v4, :cond_b

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    .line 904
    :cond_b
    const/4 v0, 0x0

    goto :goto_2

    .line 914
    :cond_c
    iget-object v3, p0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v3}, Lcom/htc/android/htcime/HTCIMMView;->dismissFixedWCLSymbol()V

    goto :goto_3
.end method
