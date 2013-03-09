.class public Lcom/htc/WifiRouter/WifiRouter;
.super Landroid/app/Activity;
.source "WifiRouter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/WifiRouter/WifiRouter$UiHandler;,
        Lcom/htc/WifiRouter/WifiRouter$Device_info;
    }
.end annotation


# static fields
.field public static final DIALOG_CODE_WARNING_ACG:I = 0x7

.field public static final KEY_IS_DIALOG:Ljava/lang/String; = "is_dialog_code"

.field private static final LAUNCH_GUILD_RESULT:I = 0x1

.field private static final MENU_ADVANCED:I = 0x1

.field private static final MENU_HELP:I = 0x2

.field private static final PREFERENCE:Ljava/lang/String; = "PREFERENCE"

.field private static final SAVE_INVALID_PASSWORD_DIALOG:Ljava/lang/String; = "invalid_password"

.field private static final SAVE_INVALID_SSID_DIALOG:Ljava/lang/String; = "invalid_ssid"

.field private static final SAVE_ML_DIALOG:Ljava/lang/String; = "ml_dialog"

.field private static final SAVE_REMIND_DIALOG:Ljava/lang/String; = "remind_dialog"

.field private static final SECURITY_NONE:I = 0x0

.field private static final SECURITY_WEP:I = 0x1

.field private static final SECURITY_WPA:I = 0x2

.field private static final SECURITY_WPA2:I = 0x3

.field private static final SHOWPASSWORD:Ljava/lang/String; = "SHOWPASSWORD"

.field private static final TAG:Ljava/lang/String; = "WifiRouter"

.field public static final debug:Z

.field public static mConfig:Landroid/net/wifi/WifiConfiguration;

.field public static mDeviceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mRequestList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mSecurityArray:[Ljava/lang/String;


# instance fields
.field private connectedCount:I

.field private default_wep_passwd:Ljava/lang/String;

.field private default_wpa_passwd:Ljava/lang/String;

.field private mActiveDefaultNetwork:I

.field private mConnMgr:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDisabledInAirpalneMode:Z

.field private mDontRemind:Landroid/widget/CheckBox;

.field private mEnableMhs:Z

.field private mHotspotEnableListener:Landroid/view/View$OnClickListener;

.field private mHotspotStateFilter:Landroid/content/IntentFilter;

.field private mHotspotStatus:Lcom/htc/widget/HtcListItem2LineText;

.field private mInvalidPasswordDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mInvalidPasswordDialogShowed:Z

.field private mInvalidSsidDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mInvalidSsidDialogShowed:Z

.field private mLayout:Landroid/widget/Button;

.field private mLayoutFactory:Landroid/view/LayoutInflater;

.field private mMLDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mMLDialogShowed:Z

.field private mMhsIntentFilter:Landroid/content/IntentFilter;

.field private final mMhsReceiver:Landroid/content/BroadcastReceiver;

.field private mMhsStatus:I

.field private mPassGuild:Z

.field private mPassWord:Landroid/widget/EditText;

.field private mPasswdLabel:Landroid/widget/TextView;

.field private mPowerBtn:Lcom/htc/widget/HtcListItemCheckBox;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRemindDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mRemindDialogShowed:Z

.field private mRes:Landroid/content/res/Resources;

.field private mSecurityType:Lcom/htc/widget/HtcSpinner;

.field private mSeparator:Landroid/widget/RelativeLayout;

.field private mShowPassword:Landroid/widget/CheckBox;

.field private mShowPasswordListener:Landroid/view/View$OnClickListener;

.field private mSsid:Landroid/widget/EditText;

.field private mState:Z

.field private mUIHandler:Lcom/htc/WifiRouter/WifiRouter$UiHandler;

.field private mUserManageInfo:Landroid/widget/TextView;

.field private mUserManageLabel:Landroid/widget/TextView;

.field private mUserManagementListener:Landroid/view/View$OnClickListener;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiRegexs:[Ljava/lang/String;

.field private remindDialog:I

.field private securitylistener:Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 112
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "open"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "wep"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "wpa-psk"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "wpa2-psk"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/WifiRouter/WifiRouter;->mSecurityArray:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 84
    iput v1, p0, Lcom/htc/WifiRouter/WifiRouter;->connectedCount:I

    .line 94
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/WifiRouter/WifiRouter;->mActiveDefaultNetwork:I

    .line 124
    new-instance v0, Lcom/htc/WifiRouter/WifiRouter$1;

    invoke-direct {v0, p0}, Lcom/htc/WifiRouter/WifiRouter$1;-><init>(Lcom/htc/WifiRouter/WifiRouter;)V

    iput-object v0, p0, Lcom/htc/WifiRouter/WifiRouter;->mMhsReceiver:Landroid/content/BroadcastReceiver;

    .line 143
    iput-boolean v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mMLDialogShowed:Z

    .line 144
    iput-boolean v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mRemindDialogShowed:Z

    .line 145
    iput-boolean v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mInvalidSsidDialogShowed:Z

    .line 146
    iput-boolean v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mInvalidPasswordDialogShowed:Z

    .line 153
    new-instance v0, Lcom/htc/WifiRouter/WifiRouter$2;

    invoke-direct {v0, p0}, Lcom/htc/WifiRouter/WifiRouter$2;-><init>(Lcom/htc/WifiRouter/WifiRouter;)V

    iput-object v0, p0, Lcom/htc/WifiRouter/WifiRouter;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 606
    new-instance v0, Lcom/htc/WifiRouter/WifiRouter$4;

    invoke-direct {v0, p0}, Lcom/htc/WifiRouter/WifiRouter$4;-><init>(Lcom/htc/WifiRouter/WifiRouter;)V

    iput-object v0, p0, Lcom/htc/WifiRouter/WifiRouter;->mShowPasswordListener:Landroid/view/View$OnClickListener;

    .line 612
    new-instance v0, Lcom/htc/WifiRouter/WifiRouter$5;

    invoke-direct {v0, p0}, Lcom/htc/WifiRouter/WifiRouter$5;-><init>(Lcom/htc/WifiRouter/WifiRouter;)V

    iput-object v0, p0, Lcom/htc/WifiRouter/WifiRouter;->mHotspotEnableListener:Landroid/view/View$OnClickListener;

    .line 843
    new-instance v0, Lcom/htc/WifiRouter/WifiRouter$17;

    invoke-direct {v0, p0}, Lcom/htc/WifiRouter/WifiRouter$17;-><init>(Lcom/htc/WifiRouter/WifiRouter;)V

    iput-object v0, p0, Lcom/htc/WifiRouter/WifiRouter;->securitylistener:Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;

    .line 1031
    new-instance v0, Lcom/htc/WifiRouter/WifiRouter$19;

    invoke-direct {v0, p0}, Lcom/htc/WifiRouter/WifiRouter$19;-><init>(Lcom/htc/WifiRouter/WifiRouter;)V

    iput-object v0, p0, Lcom/htc/WifiRouter/WifiRouter;->mUserManagementListener:Landroid/view/View$OnClickListener;

    .line 1154
    return-void
.end method

.method static synthetic access$000(Lcom/htc/WifiRouter/WifiRouter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/htc/WifiRouter/WifiRouter;->checkMHSStatus()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/WifiRouter/WifiRouter;)Lcom/htc/widget/HtcListItem2LineText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/WifiRouter/WifiRouter;->mHotspotStatus:Lcom/htc/widget/HtcListItem2LineText;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/WifiRouter/WifiRouter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/htc/WifiRouter/WifiRouter;->recoveryAirplaneModeUI()V

    return-void
.end method

.method static synthetic access$1100(Lcom/htc/WifiRouter/WifiRouter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/htc/WifiRouter/WifiRouter;->mActiveDefaultNetwork:I

    return v0
.end method

.method static synthetic access$1102(Lcom/htc/WifiRouter/WifiRouter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput p1, p0, Lcom/htc/WifiRouter/WifiRouter;->mActiveDefaultNetwork:I

    return p1
.end method

.method static synthetic access$1200(Lcom/htc/WifiRouter/WifiRouter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/htc/WifiRouter/WifiRouter;->getActiveNetworkType()I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/htc/WifiRouter/WifiRouter;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/WifiRouter/WifiRouter;->mSsid:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/WifiRouter/WifiRouter;)Lcom/htc/widget/HtcSpinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/WifiRouter/WifiRouter;->mSecurityType:Lcom/htc/widget/HtcSpinner;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/WifiRouter/WifiRouter;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/WifiRouter/WifiRouter;->mPassWord:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/WifiRouter/WifiRouter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/htc/WifiRouter/WifiRouter;->updateUserCountUI()V

    return-void
.end method

.method static synthetic access$1700(Lcom/htc/WifiRouter/WifiRouter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/htc/WifiRouter/WifiRouter;->loadSetting()V

    return-void
.end method

.method static synthetic access$1800(Lcom/htc/WifiRouter/WifiRouter;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/WifiRouter/WifiRouter;->mShowPassword:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/WifiRouter/WifiRouter;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/htc/WifiRouter/WifiRouter;->setShowPassword(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/WifiRouter/WifiRouter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/htc/WifiRouter/WifiRouter;->mPassGuild:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/htc/WifiRouter/WifiRouter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/htc/WifiRouter/WifiRouter;->showRemindDialog()V

    return-void
.end method

.method static synthetic access$202(Lcom/htc/WifiRouter/WifiRouter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/htc/WifiRouter/WifiRouter;->mPassGuild:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/htc/WifiRouter/WifiRouter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/htc/WifiRouter/WifiRouter;->mEnableMhs:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/htc/WifiRouter/WifiRouter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/htc/WifiRouter/WifiRouter;->remindDialog:I

    return v0
.end method

.method static synthetic access$2202(Lcom/htc/WifiRouter/WifiRouter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput p1, p0, Lcom/htc/WifiRouter/WifiRouter;->remindDialog:I

    return p1
.end method

.method static synthetic access$2300(Lcom/htc/WifiRouter/WifiRouter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/htc/WifiRouter/WifiRouter;->showMLDialog()V

    return-void
.end method

.method static synthetic access$2400(Lcom/htc/WifiRouter/WifiRouter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/htc/WifiRouter/WifiRouter;->switchHotspotOnOff()V

    return-void
.end method

.method static synthetic access$2500(Lcom/htc/WifiRouter/WifiRouter;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/WifiRouter/WifiRouter;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/htc/WifiRouter/WifiRouter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/htc/WifiRouter/WifiRouter;->setHotspotStatus()V

    return-void
.end method

.method static synthetic access$2702(Lcom/htc/WifiRouter/WifiRouter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/htc/WifiRouter/WifiRouter;->mMLDialogShowed:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/htc/WifiRouter/WifiRouter;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/WifiRouter/WifiRouter;->mDontRemind:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/htc/WifiRouter/WifiRouter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/htc/WifiRouter/WifiRouter;->mRemindDialogShowed:Z

    return p1
.end method

.method static synthetic access$300(Lcom/htc/WifiRouter/WifiRouter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/htc/WifiRouter/WifiRouter;->mState:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/htc/WifiRouter/WifiRouter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/htc/WifiRouter/WifiRouter;->mInvalidSsidDialogShowed:Z

    return p1
.end method

.method static synthetic access$302(Lcom/htc/WifiRouter/WifiRouter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/htc/WifiRouter/WifiRouter;->mState:Z

    return p1
.end method

.method static synthetic access$3102(Lcom/htc/WifiRouter/WifiRouter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/htc/WifiRouter/WifiRouter;->mInvalidPasswordDialogShowed:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/htc/WifiRouter/WifiRouter;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/htc/WifiRouter/WifiRouter;->setSpinnerLayout(I)V

    return-void
.end method

.method static synthetic access$3300(Lcom/htc/WifiRouter/WifiRouter;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/htc/WifiRouter/WifiRouter;->getSecurityTypeIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/htc/WifiRouter/WifiRouter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/WifiRouter/WifiRouter;->default_wpa_passwd:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/htc/WifiRouter/WifiRouter;)Lcom/htc/WifiRouter/WifiRouter$UiHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/WifiRouter/WifiRouter;->mUIHandler:Lcom/htc/WifiRouter/WifiRouter$UiHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/WifiRouter/WifiRouter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/htc/WifiRouter/WifiRouter;->mDisabledInAirpalneMode:Z

    return v0
.end method

.method static synthetic access$500(Lcom/htc/WifiRouter/WifiRouter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/WifiRouter/WifiRouter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/WifiRouter/WifiRouter;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/htc/WifiRouter/WifiRouter;->setSettingFieldEnable(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/WifiRouter/WifiRouter;)Lcom/htc/widget/HtcListItemCheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/WifiRouter/WifiRouter;->mPowerBtn:Lcom/htc/widget/HtcListItemCheckBox;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/WifiRouter/WifiRouter;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/htc/WifiRouter/WifiRouter;->setSettingFieldAirplane(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/WifiRouter/WifiRouter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/htc/WifiRouter/WifiRouter;->dismissProgressDialog()V

    return-void
.end method

.method private checkMHSStatus()V
    .locals 3

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/htc/WifiRouter/WifiRouter;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->checkWifiApEnabledMhsRequest(Landroid/net/wifi/WifiManager;)I

    move-result v0

    iput v0, p0, Lcom/htc/WifiRouter/WifiRouter;->mMhsStatus:I

    .line 1187
    const-string v0, "WifiRouter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mhs status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/WifiRouter/WifiRouter;->mMhsStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    invoke-direct {p0}, Lcom/htc/WifiRouter/WifiRouter;->handleWifiApStateChanged()V

    .line 1189
    return-void
.end method

.method private dismissProgressDialog()V
    .locals 1

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/htc/WifiRouter/WifiRouter;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 1049
    iget-object v0, p0, Lcom/htc/WifiRouter/WifiRouter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1050
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/WifiRouter/WifiRouter;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 1052
    :cond_0
    return-void
.end method

.method private enableMHS()Z
    .locals 2

    .prologue
    .line 1274
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xa8

    if-ne v0, v1, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x61

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xad

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getActiveNetworkType()I
    .locals 3

    .prologue
    .line 552
    const/4 v1, -0x1

    .line 553
    .local v1, networkType:I
    iget-object v2, p0, Lcom/htc/WifiRouter/WifiRouter;->mConnMgr:Landroid/net/ConnectivityManager;

    if-eqz v2, :cond_0

    .line 554
    iget-object v2, p0, Lcom/htc/WifiRouter/WifiRouter;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 555
    .local v0, actInfo:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    .line 556
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 559
    .end local v0           #actInfo:Landroid/net/NetworkInfo;
    :cond_0
    return v1
.end method

.method private getClientCount(Ljava/lang/String;)I
    .locals 5
    .parameter "mac"

    .prologue
    const/4 v1, 0x0

    .line 237
    if-nez p1, :cond_1

    .line 251
    :cond_0
    :goto_0
    return v1

    .line 239
    :cond_1
    const-string v4, "|"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 241
    .local v3, index:I
    if-ltz v3, :cond_0

    .line 243
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, clientNumber:Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .local v1, count:I
    goto :goto_0

    .line 248
    .end local v1           #count:I
    :catch_0
    move-exception v2

    .line 249
    .local v2, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method private getSecurityTypeIndex(Ljava/lang/String;)I
    .locals 2
    .parameter "type"

    .prologue
    .line 900
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/htc/WifiRouter/WifiRouter;->mSecurityArray:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 901
    sget-object v1, Lcom/htc/WifiRouter/WifiRouter;->mSecurityArray:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 903
    .end local v0           #i:I
    :goto_1
    return v0

    .line 900
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 903
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private handleMhs(Z)Z
    .locals 7
    .parameter "enable"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1237
    if-eqz p1, :cond_3

    .line 1239
    iget-object v5, p0, Lcom/htc/WifiRouter/WifiRouter;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    .line 1240
    .local v2, wifiState:I
    const/4 v5, 0x2

    if-eq v2, v5, :cond_0

    const/4 v5, 0x3

    if-ne v2, v5, :cond_2

    .line 1242
    :cond_0
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v6, 0xa8

    if-ne v5, v6, :cond_1

    .line 1244
    invoke-direct {p0}, Lcom/htc/WifiRouter/WifiRouter;->showTurnoffWifiDialog()V

    .line 1267
    .end local v2           #wifiState:I
    :goto_0
    return v3

    .line 1247
    .restart local v2       #wifiState:I
    :cond_1
    iget-object v5, p0, Lcom/htc/WifiRouter/WifiRouter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1248
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v5, p0, Lcom/htc/WifiRouter/WifiRouter;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 1253
    :try_start_0
    const-string v5, "wifi_saved_state"

    const/4 v6, 0x1

    invoke-static {v0, v5, v6}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1259
    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/htc/WifiRouter/WifiRouter;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v6, 0x0

    invoke-static {v5, v6, v3}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->setWifiApEnabledMhsRequest(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 1262
    iget-object v5, p0, Lcom/htc/WifiRouter/WifiRouter;->mPowerBtn:Lcom/htc/widget/HtcListItemCheckBox;

    invoke-virtual {v5, v4}, Lcom/htc/widget/HtcListItemCheckBox;->setEnabled(Z)V

    .line 1263
    invoke-direct {p0, v4}, Lcom/htc/WifiRouter/WifiRouter;->setSettingFieldEnable(Z)V

    .line 1264
    invoke-direct {p0}, Lcom/htc/WifiRouter/WifiRouter;->showProgressDialog()V

    goto :goto_0

    .line 1254
    .restart local v0       #cr:Landroid/content/ContentResolver;
    :catch_0
    move-exception v1

    .line 1255
    .local v1, e:Ljava/lang/SecurityException;
    const-string v5, "WifiRouter"

    const-string v6, "No writing Settings Secure permission, unable to set WIFI_SAVED_STATE"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #e:Ljava/lang/SecurityException;
    .end local v2           #wifiState:I
    :cond_3
    move v3, v4

    .line 1267
    goto :goto_0
.end method

.method private handleWifiApStateChanged()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1216
    iget-object v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 1217
    .local v0, status:I
    const-string v1, "WifiRouter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiAp status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    const/16 v1, 0xb

    if-ne v0, v1, :cond_2

    .line 1220
    iget-object v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mHotspotStatus:Lcom/htc/widget/HtcListItem2LineText;

    const v2, 0x7f090022

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(I)V

    .line 1221
    iput-boolean v5, p0, Lcom/htc/WifiRouter/WifiRouter;->mPassGuild:Z

    .line 1222
    iput-boolean v5, p0, Lcom/htc/WifiRouter/WifiRouter;->mState:Z

    .line 1223
    invoke-direct {p0, v4}, Lcom/htc/WifiRouter/WifiRouter;->setSettingFieldEnable(Z)V

    .line 1224
    iget-object v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mPowerBtn:Lcom/htc/widget/HtcListItemCheckBox;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcListItemCheckBox;->setEnabled(Z)V

    .line 1225
    iget-object v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mPowerBtn:Lcom/htc/widget/HtcListItemCheckBox;

    iget-boolean v2, p0, Lcom/htc/WifiRouter/WifiRouter;->mState:Z

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    .line 1226
    iget-boolean v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mEnableMhs:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mMhsStatus:I

    invoke-direct {p0, v1}, Lcom/htc/WifiRouter/WifiRouter;->updateMhsUI(I)V

    .line 1228
    :cond_0
    invoke-direct {p0}, Lcom/htc/WifiRouter/WifiRouter;->dismissProgressDialog()V

    .line 1234
    :cond_1
    :goto_0
    return-void

    .line 1229
    :cond_2
    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 1230
    iget-object v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mPowerBtn:Lcom/htc/widget/HtcListItemCheckBox;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcListItemCheckBox;->setEnabled(Z)V

    .line 1231
    iget-object v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mPowerBtn:Lcom/htc/widget/HtcListItemCheckBox;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    .line 1232
    iput-boolean v4, p0, Lcom/htc/WifiRouter/WifiRouter;->mState:Z

    goto :goto_0
.end method

.method private initLayout()V
    .locals 12

    .prologue
    const v11, 0x7f070011

    const v10, 0x208066a

    const/4 v9, 0x1

    const v8, 0x2020010

    const/4 v7, 0x0

    .line 349
    const v4, 0x7f03000a

    invoke-virtual {p0, v4}, Lcom/htc/WifiRouter/WifiRouter;->setContentView(I)V

    .line 350
    const v4, 0x7f0b002f

    invoke-virtual {p0, v4}, Lcom/htc/WifiRouter/WifiRouter;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcListItemCheckBox;

    iput-object v4, p0, Lcom/htc/WifiRouter/WifiRouter;->mPowerBtn:Lcom/htc/widget/HtcListItemCheckBox;

    .line 351
    iget-object v4, p0, Lcom/htc/WifiRouter/WifiRouter;->mPowerBtn:Lcom/htc/widget/HtcListItemCheckBox;

    iget-object v5, p0, Lcom/htc/WifiRouter/WifiRouter;->mHotspotEnableListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItemCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 352
    const v4, 0x7f0b0031

    invoke-virtual {p0, v4}, Lcom/htc/WifiRouter/WifiRouter;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcSpinner;

    iput-object v4, p0, Lcom/htc/WifiRouter/WifiRouter;->mSecurityType:Lcom/htc/widget/HtcSpinner;

    .line 353
    const v4, 0x7f0b0030

    invoke-virtual {p0, v4}, Lcom/htc/WifiRouter/WifiRouter;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/htc/WifiRouter/WifiRouter;->mSsid:Landroid/widget/EditText;

    .line 354
    iget-object v4, p0, Lcom/htc/WifiRouter/WifiRouter;->mSsid:Landroid/widget/EditText;

    const/high16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 355
    iget-object v4, p0, Lcom/htc/WifiRouter/WifiRouter;->mSsid:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/htc/WifiRouter/WifiRouter;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v4, v5, v7, v7, v7}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 357
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v4, 0x20900ee

    invoke-virtual {p0}, Lcom/htc/WifiRouter/WifiRouter;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f05

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, p0, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 359
    .local v0, adapter2:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v4, 0x20900af

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 360
    iget-object v4, p0, Lcom/htc/WifiRouter/WifiRouter;->mSecurityType:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v4, v0}, Lcom/htc/widget/HtcSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 361
    iget-object v4, p0, Lcom/htc/WifiRouter/WifiRouter;->mSecurityType:Lcom/htc/widget/HtcSpinner;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcSpinner;->setSelection(I)V

    .line 362
    iget-object v4, p0, Lcom/htc/WifiRouter/WifiRouter;->mSecurityType:Lcom/htc/widget/HtcSpinner;

    iget-object v5, p0, Lcom/htc/WifiRouter/WifiRouter;->securitylistener:Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcSpinner;->setOnItemSelectedListener(Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;)V

    .line 363
    const v4, 0x7f0b0032

    invoke-virtual {p0, v4}, Lcom/htc/WifiRouter/WifiRouter;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/htc/WifiRouter/WifiRouter;->mPasswdLabel:Landroid/widget/TextView;

    .line 364
    iget-object v4, p0, Lcom/htc/WifiRouter/WifiRouter;->mPasswdLabel:Landroid/widget/TextView;

    const v5, 0x7f09002d

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 365
    const v4, 0x7f0b0033

    invoke-virtual {p0, v4}, Lcom/htc/WifiRouter/WifiRouter;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/htc/WifiRouter/WifiRouter;->mPassWord:Landroid/widget/EditText;

    .line 366
    iget-object v4, p0, Lcom/htc/WifiRouter/WifiRouter;->mPassWord:Landroid/widget/EditText;

    const/16 v5, 0x91

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 367
    iget-object v4, p0, Lcom/htc/WifiRouter/WifiRouter;->mPassWord:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/htc/WifiRouter/WifiRouter;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v4, v5, v7, v7, v7}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 369
    const v4, 0x7f0b0037

    invoke-virtual {p0, v4}, Lcom/htc/WifiRouter/WifiRouter;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/htc/WifiRouter/WifiRouter;->mUserManageLabel:Landroid/widget/TextView;

    .line 370
    iget-object v4, p0, Lcom/htc/WifiRouter/WifiRouter;->mUserManageLabel:Landroid/widget/TextView;

    const v5, 0x7f09002f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 371
    const v4, 0x7f0b0038

    invoke-virtual {p0, v4}, Lcom/htc/WifiRouter/WifiRouter;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/htc/WifiRouter/WifiRouter;->mUserManageInfo:Landroid/widget/TextView;

    .line 372
    iget-object v4, p0, Lcom/htc/WifiRouter/WifiRouter;->mUserManageInfo:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/htc/WifiRouter/WifiRouter;->getConnectedUserLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    const v4, 0x7f0b0036

    invoke-virtual {p0, v4}, Lcom/htc/WifiRouter/WifiRouter;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/htc/WifiRouter/WifiRouter;->mLayout:Landroid/widget/Button;

    .line 374
    iget-object v4, p0, Lcom/htc/WifiRouter/WifiRouter;->mLayout:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setClickable(Z)V

    .line 375
    iget-object v4, p0, Lcom/htc/WifiRouter/WifiRouter;->mLayout:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setFocusable(Z)V

    .line 376
    iget-object v4, p0, Lcom/htc/WifiRouter/WifiRouter;->mLayout:Landroid/widget/Button;

    iget-object v5, p0, Lcom/htc/WifiRouter/WifiRouter;->mUserManagementListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 377
    const v4, 0x2020085

    invoke-virtual {p0, v4}, Lcom/htc/WifiRouter/WifiRouter;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/htc/WifiRouter/WifiRouter;->mSeparator:Landroid/widget/RelativeLayout;

    .line 378
    iget-object v4, p0, Lcom/htc/WifiRouter/WifiRouter;->mSeparator:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v10}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 379
    iget-object v4, p0, Lcom/htc/WifiRouter/WifiRouter;->mSeparator:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f090028

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 380
    const v4, 0x7f0b0035

    invoke-virtual {p0, v4}, Lcom/htc/WifiRouter/WifiRouter;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/htc/WifiRouter/WifiRouter;->mSeparator:Landroid/widget/RelativeLayout;

    .line 381
    iget-object v4, p0, Lcom/htc/WifiRouter/WifiRouter;->mSeparator:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v10}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 382
    iget-object v4, p0, Lcom/htc/WifiRouter/WifiRouter;->mSeparator:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f090034

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 383
    const v4, 0x7f0b002e

    invoke-virtual {p0, v4}, Lcom/htc/WifiRouter/WifiRouter;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v4, p0, Lcom/htc/WifiRouter/WifiRouter;->mHotspotStatus:Lcom/htc/widget/HtcListItem2LineText;

    .line 384
    iget-object v4, p0, Lcom/htc/WifiRouter/WifiRouter;->mHotspotStatus:Lcom/htc/widget/HtcListItem2LineText;

    const v5, 0x2030036

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryTextStyle(I)V

    .line 385
    iget-object v4, p0, Lcom/htc/WifiRouter/WifiRouter;->mHotspotStatus:Lcom/htc/widget/HtcListItem2LineText;

    const v5, 0x203003d

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextStyle(I)V

    .line 386
    iget-object v4, p0, Lcom/htc/WifiRouter/WifiRouter;->mHotspotStatus:Lcom/htc/widget/HtcListItem2LineText;

    const v5, 0x7f090022

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(I)V

    .line 387
    const v4, 0x7f0b002c

    invoke-virtual {p0, v4}, Lcom/htc/WifiRouter/WifiRouter;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v4, v7}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 388
    const v4, 0x7f0b002c

    invoke-virtual {p0, v4}, Lcom/htc/WifiRouter/WifiRouter;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HeaderBarText;

    const v5, 0x7f090028

    invoke-virtual {v4, v5}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 389
    const v4, 0x7f0b002d

    invoke-virtual {p0, v4}, Lcom/htc/WifiRouter/WifiRouter;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/htc/WifiRouter/WifiRouter;->mSeparator:Landroid/widget/RelativeLayout;

    .line 390
    const/4 v1, 0x1

    .line 391
    .local v1, enableHutch:Z
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x42

    if-eq v4, v5, :cond_0

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x10

    if-ne v4, v5, :cond_1

    .line 392
    :cond_0
    const/4 v1, 0x0

    .line 395
    :cond_1
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0x94

    if-ne v4, v5, :cond_2

    .line 396
    iget-object v4, p0, Lcom/htc/WifiRouter/WifiRouter;->mHotspotStatus:Lcom/htc/widget/HtcListItem2LineText;

    const v5, 0x7f090011

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    .line 397
    iget-object v4, p0, Lcom/htc/WifiRouter/WifiRouter;->mSeparator:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f090011

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 414
    :goto_0
    const v4, 0x7f0b0034

    invoke-virtual {p0, v4}, Lcom/htc/WifiRouter/WifiRouter;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/htc/WifiRouter/WifiRouter;->mShowPassword:Landroid/widget/CheckBox;

    .line 415
    iget-object v4, p0, Lcom/htc/WifiRouter/WifiRouter;->mShowPassword:Landroid/widget/CheckBox;

    iget-object v5, p0, Lcom/htc/WifiRouter/WifiRouter;->mShowPasswordListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 416
    const-string v4, "PREFERENCE"

    invoke-virtual {p0, v4, v7}, Lcom/htc/WifiRouter/WifiRouter;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 417
    .local v2, pref:Landroid/content/SharedPreferences;
    const-string v4, "SHOWPASSWORD"

    invoke-interface {v2, v4, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 418
    .local v3, showPassword:Z
    iget-object v4, p0, Lcom/htc/WifiRouter/WifiRouter;->mShowPassword:Landroid/widget/CheckBox;

    invoke-virtual {v4, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 419
    invoke-direct {p0, v3}, Lcom/htc/WifiRouter/WifiRouter;->setShowPassword(Z)V

    .line 420
    return-void

    .line 398
    .end local v2           #pref:Landroid/content/SharedPreferences;
    .end local v3           #showPassword:Z
    :cond_2
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0xa8

    if-ne v4, v5, :cond_3

    .line 399
    iget-object v4, p0, Lcom/htc/WifiRouter/WifiRouter;->mHotspotStatus:Lcom/htc/widget/HtcListItem2LineText;

    const v5, 0x7f09000e

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    .line 400
    iget-object v4, p0, Lcom/htc/WifiRouter/WifiRouter;->mSeparator:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f09000e

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 401
    :cond_3
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0x9b

    if-ne v4, v5, :cond_4

    .line 402
    iget-object v4, p0, Lcom/htc/WifiRouter/WifiRouter;->mHotspotStatus:Lcom/htc/widget/HtcListItem2LineText;

    const v5, 0x7f090010

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    .line 403
    iget-object v4, p0, Lcom/htc/WifiRouter/WifiRouter;->mSeparator:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f090010

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 404
    :cond_4
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0x38

    if-ne v4, v5, :cond_5

    if-eqz v1, :cond_5

    .line 405
    iget-object v4, p0, Lcom/htc/WifiRouter/WifiRouter;->mHotspotStatus:Lcom/htc/widget/HtcListItem2LineText;

    const v5, 0x7f090016

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    .line 406
    iget-object v4, p0, Lcom/htc/WifiRouter/WifiRouter;->mSeparator:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f090016

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 407
    :cond_5
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0x51

    if-ne v4, v5, :cond_6

    .line 408
    iget-object v4, p0, Lcom/htc/WifiRouter/WifiRouter;->mHotspotStatus:Lcom/htc/widget/HtcListItem2LineText;

    const v5, 0x7f09000b

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    .line 409
    iget-object v4, p0, Lcom/htc/WifiRouter/WifiRouter;->mSeparator:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f09000b

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 411
    :cond_6
    iget-object v4, p0, Lcom/htc/WifiRouter/WifiRouter;->mHotspotStatus:Lcom/htc/widget/HtcListItem2LineText;

    const v5, 0x7f090008

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    .line 412
    iget-object v4, p0, Lcom/htc/WifiRouter/WifiRouter;->mSeparator:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f090008

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0
.end method

.method private isHex(Ljava/lang/String;)Z
    .locals 3
    .parameter "key"

    .prologue
    .line 1124
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_4

    .line 1125
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1126
    .local v0, c:C
    const/16 v2, 0x30

    if-lt v0, v2, :cond_0

    const/16 v2, 0x39

    if-le v0, v2, :cond_3

    :cond_0
    const/16 v2, 0x41

    if-lt v0, v2, :cond_1

    const/16 v2, 0x46

    if-le v0, v2, :cond_3

    :cond_1
    const/16 v2, 0x61

    if-lt v0, v2, :cond_2

    const/16 v2, 0x66

    if-le v0, v2, :cond_3

    .line 1127
    :cond_2
    const/4 v2, 0x0

    .line 1131
    .end local v0           #c:C
    :goto_1
    return v2

    .line 1124
    .restart local v0       #c:C
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1131
    .end local v0           #c:C
    :cond_4
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private isSettingChange()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 871
    iget-boolean v2, p0, Lcom/htc/WifiRouter/WifiRouter;->mState:Z

    if-ne v2, v1, :cond_1

    .line 878
    :cond_0
    :goto_0
    return v0

    .line 872
    :cond_1
    sget-object v2, Lcom/htc/WifiRouter/WifiRouter;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v2}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->getSSID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/htc/WifiRouter/WifiRouter;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v2}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->getSSID()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/WifiRouter/WifiRouter;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    .line 873
    goto :goto_0

    .line 874
    :cond_3
    sget-object v2, Lcom/htc/WifiRouter/WifiRouter;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v2}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->getKey()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/htc/WifiRouter/WifiRouter;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v2}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->getKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/WifiRouter/WifiRouter;->mPassWord:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    move v0, v1

    .line 875
    goto :goto_0

    .line 876
    :cond_5
    sget-object v2, Lcom/htc/WifiRouter/WifiRouter;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v2}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->getSecureType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    sget-object v2, Lcom/htc/WifiRouter/WifiRouter;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v2}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->getSecureType()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/htc/WifiRouter/WifiRouter;->mSecurityArray:[Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/WifiRouter/WifiRouter;->mSecurityType:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v4}, Lcom/htc/widget/HtcSpinner;->getSelectedItemPosition()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_6
    move v0, v1

    .line 877
    goto :goto_0
.end method

.method private loadMacAddress()V
    .locals 4

    .prologue
    .line 1099
    sget-object v2, Lcom/htc/WifiRouter/UserManagement;->mBlackList:Ljava/util/ArrayList;

    if-nez v2, :cond_2

    .line 1100
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/htc/WifiRouter/UserManagement;->mBlackList:Ljava/util/ArrayList;

    .line 1104
    :goto_0
    sget-object v2, Lcom/htc/WifiRouter/UserManagement;->mWhiteList:Ljava/util/ArrayList;

    if-nez v2, :cond_3

    .line 1105
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/htc/WifiRouter/UserManagement;->mWhiteList:Ljava/util/ArrayList;

    .line 1109
    :goto_1
    invoke-virtual {p0}, Lcom/htc/WifiRouter/WifiRouter;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "hotspot_black_list"

    invoke-static {v2, v3}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1111
    .local v0, blist:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1113
    sget-object v2, Lcom/htc/WifiRouter/UserManagement;->mBlackList:Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lcom/htc/WifiRouter/WifiRouter;->parseMacAddress(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1115
    :cond_0
    invoke-virtual {p0}, Lcom/htc/WifiRouter/WifiRouter;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "hotspot_white_list"

    invoke-static {v2, v3}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1117
    .local v1, wlist:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1119
    sget-object v2, Lcom/htc/WifiRouter/UserManagement;->mWhiteList:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/htc/WifiRouter/WifiRouter;->parseMacAddress(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1121
    :cond_1
    return-void

    .line 1102
    .end local v0           #blist:Ljava/lang/String;
    .end local v1           #wlist:Ljava/lang/String;
    :cond_2
    sget-object v2, Lcom/htc/WifiRouter/UserManagement;->mBlackList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 1107
    :cond_3
    sget-object v2, Lcom/htc/WifiRouter/UserManagement;->mWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_1
.end method

.method private loadSetting()V
    .locals 1

    .prologue
    .line 882
    new-instance v0, Lcom/htc/WifiRouter/WifiRouter$18;

    invoke-direct {v0, p0}, Lcom/htc/WifiRouter/WifiRouter$18;-><init>(Lcom/htc/WifiRouter/WifiRouter;)V

    invoke-virtual {p0, v0}, Lcom/htc/WifiRouter/WifiRouter;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 897
    return-void
.end method

.method public static parseMacAddress(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 6
    .parameter "source"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, target:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x1

    .line 1056
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    if-ne v3, v4, :cond_1

    .line 1077
    :cond_0
    return-void

    .line 1059
    :cond_1
    const/16 v3, 0x7c

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 1061
    const-string v3, "\\|"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1063
    .local v2, preSplit:[Ljava/lang/String;
    array-length v3, v2

    if-le v3, v5, :cond_0

    .line 1064
    aget-object v3, v2, v5

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1071
    .end local v2           #preSplit:[Ljava/lang/String;
    .local v1, items:[Ljava/lang/String;
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 1072
    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    .line 1073
    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1071
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1069
    .end local v0           #i:I
    .end local v1           #items:[Ljava/lang/String;
    :cond_3
    const-string v3, ","

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .restart local v1       #items:[Ljava/lang/String;
    goto :goto_0
.end method

.method private recoveryAirplaneModeUI()V
    .locals 1

    .prologue
    .line 972
    iget-boolean v0, p0, Lcom/htc/WifiRouter/WifiRouter;->mDisabledInAirpalneMode:Z

    if-eqz v0, :cond_0

    .line 973
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/WifiRouter/WifiRouter;->setSettingFieldAirplane(Z)V

    .line 975
    :cond_0
    return-void
.end method

.method private saveSetting()V
    .locals 3

    .prologue
    .line 863
    sget-object v0, Lcom/htc/WifiRouter/WifiRouter;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->setSSID(Ljava/lang/String;)V

    .line 864
    sget-object v0, Lcom/htc/WifiRouter/WifiRouter;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mPassWord:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->setKey(Ljava/lang/String;)V

    .line 865
    sget-object v0, Lcom/htc/WifiRouter/WifiRouter;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v0

    sget-object v1, Lcom/htc/WifiRouter/WifiRouter;->mSecurityArray:[Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/WifiRouter/WifiRouter;->mSecurityType:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v2}, Lcom/htc/widget/HtcSpinner;->getSelectedItemPosition()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->setSecureType(Ljava/lang/String;)V

    .line 868
    return-void
.end method

.method private setHotspotStatus()V
    .locals 3

    .prologue
    .line 726
    iget-object v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_1

    .line 727
    iget-object v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 728
    .local v0, hotspotstate:I
    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    .line 729
    :cond_0
    iget-object v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mPowerBtn:Lcom/htc/widget/HtcListItemCheckBox;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    .line 734
    .end local v0           #hotspotstate:I
    :cond_1
    :goto_0
    return-void

    .line 731
    .restart local v0       #hotspotstate:I
    :cond_2
    iget-object v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mPowerBtn:Lcom/htc/widget/HtcListItemCheckBox;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method private setSettingFieldAirplane(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 965
    iget-object v0, p0, Lcom/htc/WifiRouter/WifiRouter;->mPowerBtn:Lcom/htc/widget/HtcListItemCheckBox;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcListItemCheckBox;->setEnabled(Z)V

    .line 966
    iget-object v0, p0, Lcom/htc/WifiRouter/WifiRouter;->mLayout:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 967
    iget-object v0, p0, Lcom/htc/WifiRouter/WifiRouter;->mLayout:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setClickable(Z)V

    .line 968
    iget-object v0, p0, Lcom/htc/WifiRouter/WifiRouter;->mLayout:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setFocusable(Z)V

    .line 969
    return-void
.end method

.method private setSettingFieldEnable(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 944
    iget-object v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 945
    iget-object v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 946
    iget-object v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mSecurityType:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v1, p1}, Lcom/htc/widget/HtcSpinner;->setEnabled(Z)V

    .line 947
    iget-object v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mSecurityType:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v1, p1}, Lcom/htc/widget/HtcSpinner;->setFocusable(Z)V

    .line 948
    iget-object v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mShowPassword:Landroid/widget/CheckBox;

    invoke-virtual {v1, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 949
    iget-object v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mPassWord:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 950
    iget-object v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mPassWord:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 951
    iget-object v2, p0, Lcom/htc/WifiRouter/WifiRouter;->mPowerBtn:Lcom/htc/widget/HtcListItemCheckBox;

    if-nez p1, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    .line 952
    if-nez p1, :cond_0

    .line 953
    iget-object v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 954
    iget-object v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mPassWord:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 956
    :cond_0
    iget-object v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mSecurityType:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v1}, Lcom/htc/widget/HtcSpinner;->getSelectedView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 957
    iget-object v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mSecurityType:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v1}, Lcom/htc/widget/HtcSpinner;->getSelectedView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020014

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object v0, v1

    check-cast v0, Landroid/widget/TextView;

    .line 958
    .local v0, T1:Landroid/widget/TextView;
    if-eqz v0, :cond_1

    .line 959
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 962
    .end local v0           #T1:Landroid/widget/TextView;
    :cond_1
    return-void

    .line 951
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setShowPassword(Z)V
    .locals 3
    .parameter "showPassword"

    .prologue
    .line 1169
    const-string v1, "PREFERENCE"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/htc/WifiRouter/WifiRouter;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1170
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "SHOWPASSWORD"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1171
    iget-object v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mPassWord:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 1172
    iget-object v2, p0, Lcom/htc/WifiRouter/WifiRouter;->mPassWord:Landroid/widget/EditText;

    if-eqz p1, :cond_1

    const/16 v1, 0x90

    :goto_0
    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 1176
    :cond_0
    return-void

    .line 1172
    :cond_1
    const/16 v1, 0x80

    goto :goto_0
.end method

.method private setSpinnerLayout(I)V
    .locals 4
    .parameter "securityType"

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 978
    iget-object v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mSecurityType:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v1}, Lcom/htc/widget/HtcSpinner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 979
    .local v0, listParams:Landroid/widget/LinearLayout$LayoutParams;
    packed-switch p1, :pswitch_data_0

    .line 1029
    :cond_0
    :goto_0
    return-void

    .line 981
    :pswitch_0
    iget-object v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mPasswdLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 982
    iget-object v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mPassWord:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 983
    iget-object v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mShowPassword:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 984
    if-eqz v0, :cond_0

    .line 985
    const/16 v1, 0xc

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 986
    iget-object v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mSecurityType:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcSpinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 990
    :pswitch_1
    iget-object v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mPasswdLabel:Landroid/widget/TextView;

    const v2, 0x7f09002c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 991
    iget-object v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mPasswdLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 992
    iget-object v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mPassWord:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 993
    iget-object v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mShowPassword:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 994
    iget-object v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mPassWord:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mPassWord:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/WifiRouter/WifiRouter;->default_wpa_passwd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 995
    :cond_1
    iget-object v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mPassWord:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/htc/WifiRouter/WifiRouter;->default_wep_passwd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 997
    :cond_2
    if-eqz v0, :cond_0

    .line 998
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 999
    iget-object v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mSecurityType:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcSpinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1003
    :pswitch_2
    iget-object v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mPasswdLabel:Landroid/widget/TextView;

    const v2, 0x7f09002d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1004
    iget-object v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mPasswdLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1005
    iget-object v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mPassWord:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1006
    iget-object v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mShowPassword:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1007
    iget-object v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mPassWord:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mPassWord:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/WifiRouter/WifiRouter;->default_wep_passwd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1008
    :cond_3
    iget-object v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mPassWord:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/htc/WifiRouter/WifiRouter;->default_wpa_passwd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1010
    :cond_4
    if-eqz v0, :cond_0

    .line 1011
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1012
    iget-object v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mSecurityType:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcSpinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 1016
    :pswitch_3
    iget-object v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mPasswdLabel:Landroid/widget/TextView;

    const v2, 0x7f09002e

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1017
    iget-object v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mPasswdLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1018
    iget-object v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mPassWord:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1019
    iget-object v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mShowPassword:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1020
    iget-object v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mPassWord:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mPassWord:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/WifiRouter/WifiRouter;->default_wep_passwd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1021
    :cond_5
    iget-object v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mPassWord:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/htc/WifiRouter/WifiRouter;->default_wpa_passwd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1023
    :cond_6
    if-eqz v0, :cond_0

    .line 1024
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1025
    iget-object v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mSecurityType:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcSpinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 979
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showInvalidPasswordDialog()V
    .locals 3

    .prologue
    .line 750
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/WifiRouter/WifiRouter;->mInvalidPasswordDialogShowed:Z

    .line 751
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090056

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090032

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/WifiRouter/WifiRouter;->mInvalidPasswordDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 755
    iget-object v0, p0, Lcom/htc/WifiRouter/WifiRouter;->mInvalidPasswordDialog:Lcom/htc/widget/HtcAlertDialog;

    new-instance v1, Lcom/htc/WifiRouter/WifiRouter$15;

    invoke-direct {v1, p0}, Lcom/htc/WifiRouter/WifiRouter$15;-><init>(Lcom/htc/WifiRouter/WifiRouter;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 760
    return-void
.end method

.method private showInvalidSsidDialogDialog()V
    .locals 3

    .prologue
    .line 737
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/WifiRouter/WifiRouter;->mInvalidSsidDialogShowed:Z

    .line 738
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090056

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090033

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/WifiRouter/WifiRouter;->mInvalidSsidDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 742
    iget-object v0, p0, Lcom/htc/WifiRouter/WifiRouter;->mInvalidSsidDialog:Lcom/htc/widget/HtcAlertDialog;

    new-instance v1, Lcom/htc/WifiRouter/WifiRouter$14;

    invoke-direct {v1, p0}, Lcom/htc/WifiRouter/WifiRouter$14;-><init>(Lcom/htc/WifiRouter/WifiRouter;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 747
    return-void
.end method

.method private showMLDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 639
    iput-boolean v4, p0, Lcom/htc/WifiRouter/WifiRouter;->mMLDialogShowed:Z

    .line 640
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v2, p0, Lcom/htc/WifiRouter/WifiRouter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090068

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090069

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090054

    new-instance v3, Lcom/htc/WifiRouter/WifiRouter$7;

    invoke-direct {v3, p0}, Lcom/htc/WifiRouter/WifiRouter$7;-><init>(Lcom/htc/WifiRouter/WifiRouter;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090052

    new-instance v3, Lcom/htc/WifiRouter/WifiRouter$6;

    invoke-direct {v3, p0}, Lcom/htc/WifiRouter/WifiRouter$6;-><init>(Lcom/htc/WifiRouter/WifiRouter;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 662
    .local v0, mBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mMLDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 663
    iget-object v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mMLDialog:Lcom/htc/widget/HtcAlertDialog;

    new-instance v2, Lcom/htc/WifiRouter/WifiRouter$8;

    invoke-direct {v2, p0}, Lcom/htc/WifiRouter/WifiRouter$8;-><init>(Lcom/htc/WifiRouter/WifiRouter;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 668
    iget-object v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mMLDialog:Lcom/htc/widget/HtcAlertDialog;

    new-instance v2, Lcom/htc/WifiRouter/WifiRouter$9;

    invoke-direct {v2, p0}, Lcom/htc/WifiRouter/WifiRouter$9;-><init>(Lcom/htc/WifiRouter/WifiRouter;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 673
    return-void
.end method

.method private showProgressDialog()V
    .locals 4

    .prologue
    .line 1040
    iget-object v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v1, :cond_0

    .line 1041
    const v1, 0x7f090029

    invoke-virtual {p0, v1}, Lcom/htc/WifiRouter/WifiRouter;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1042
    .local v0, displayStr:Ljava/lang/String;
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v1, v0, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 1045
    .end local v0           #displayStr:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private showRemindDialog()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 676
    iput-boolean v6, p0, Lcom/htc/WifiRouter/WifiRouter;->mRemindDialogShowed:Z

    .line 677
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v4, p0, Lcom/htc/WifiRouter/WifiRouter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f090056

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x1080027

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f090054

    new-instance v5, Lcom/htc/WifiRouter/WifiRouter$11;

    invoke-direct {v5, p0}, Lcom/htc/WifiRouter/WifiRouter$11;-><init>(Lcom/htc/WifiRouter/WifiRouter;)V

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f090052

    new-instance v5, Lcom/htc/WifiRouter/WifiRouter$10;

    invoke-direct {v5, p0}, Lcom/htc/WifiRouter/WifiRouter$10;-><init>(Lcom/htc/WifiRouter/WifiRouter;)V

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    .line 701
    .local v1, mBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;
    iget-object v3, p0, Lcom/htc/WifiRouter/WifiRouter;->mLayoutFactory:Landroid/view/LayoutInflater;

    const v4, 0x7f030008

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 702
    .local v0, contentView:Landroid/widget/LinearLayout;
    const v3, 0x7f0b0018

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/htc/WifiRouter/WifiRouter;->mDontRemind:Landroid/widget/CheckBox;

    .line 703
    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 704
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0xa1

    if-ne v3, v4, :cond_0

    .line 705
    const v3, 0x7f090071

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 706
    const v3, 0x7f0b001c

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 707
    .local v2, text:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/htc/WifiRouter/WifiRouter;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090072

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 708
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 709
    iget-object v3, p0, Lcom/htc/WifiRouter/WifiRouter;->mDontRemind:Landroid/widget/CheckBox;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 711
    .end local v2           #text:Landroid/widget/TextView;
    :cond_0
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/WifiRouter/WifiRouter;->mRemindDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 712
    iget-object v3, p0, Lcom/htc/WifiRouter/WifiRouter;->mRemindDialog:Lcom/htc/widget/HtcAlertDialog;

    new-instance v4, Lcom/htc/WifiRouter/WifiRouter$12;

    invoke-direct {v4, p0}, Lcom/htc/WifiRouter/WifiRouter$12;-><init>(Lcom/htc/WifiRouter/WifiRouter;)V

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 717
    iget-object v3, p0, Lcom/htc/WifiRouter/WifiRouter;->mRemindDialog:Lcom/htc/widget/HtcAlertDialog;

    new-instance v4, Lcom/htc/WifiRouter/WifiRouter$13;

    invoke-direct {v4, p0}, Lcom/htc/WifiRouter/WifiRouter$13;-><init>(Lcom/htc/WifiRouter/WifiRouter;)V

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 722
    return-void
.end method

.method private showTurnoffWifiDialog()V
    .locals 3

    .prologue
    .line 1179
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.hotspot.TurnOffWifi"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1180
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1181
    const-string v1, "WifiRouter"

    const-string v2, "turn off wifi"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    iget-object v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1183
    return-void
.end method

.method private static stateName(I)Ljava/lang/String;
    .locals 1
    .parameter "hotspotstate"

    .prologue
    .line 563
    packed-switch p0, :pswitch_data_0

    .line 573
    const-string v0, "unknown"

    :goto_0
    return-object v0

    .line 565
    :pswitch_0
    const-string v0, "disabling"

    goto :goto_0

    .line 567
    :pswitch_1
    const-string v0, "disabled"

    goto :goto_0

    .line 569
    :pswitch_2
    const-string v0, "enabling"

    goto :goto_0

    .line 571
    :pswitch_3
    const-string v0, "enabled"

    goto :goto_0

    .line 563
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private switchHotspotOnOff()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 763
    iget-boolean v0, p0, Lcom/htc/WifiRouter/WifiRouter;->mState:Z

    if-nez v0, :cond_3

    .line 764
    invoke-direct {p0}, Lcom/htc/WifiRouter/WifiRouter;->validateConfig()Z

    move-result v0

    if-nez v0, :cond_1

    .line 765
    iget-object v0, p0, Lcom/htc/WifiRouter/WifiRouter;->mPowerBtn:Lcom/htc/widget/HtcListItemCheckBox;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    .line 766
    invoke-direct {p0}, Lcom/htc/WifiRouter/WifiRouter;->showInvalidPasswordDialog()V

    .line 841
    :cond_0
    :goto_0
    return-void

    .line 768
    :cond_1
    invoke-direct {p0}, Lcom/htc/WifiRouter/WifiRouter;->validateSSID()Z

    move-result v0

    if-nez v0, :cond_2

    .line 769
    iget-object v0, p0, Lcom/htc/WifiRouter/WifiRouter;->mPowerBtn:Lcom/htc/widget/HtcListItemCheckBox;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    .line 770
    invoke-direct {p0}, Lcom/htc/WifiRouter/WifiRouter;->showInvalidSsidDialogDialog()V

    goto :goto_0

    .line 773
    :cond_2
    invoke-direct {p0}, Lcom/htc/WifiRouter/WifiRouter;->saveSetting()V

    .line 776
    :cond_3
    iget-boolean v0, p0, Lcom/htc/WifiRouter/WifiRouter;->mState:Z

    if-nez v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/htc/WifiRouter/WifiRouter;->mState:Z

    .line 778
    iget-boolean v0, p0, Lcom/htc/WifiRouter/WifiRouter;->mEnableMhs:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/htc/WifiRouter/WifiRouter;->mState:Z

    if-eqz v0, :cond_5

    .line 779
    iget-object v0, p0, Lcom/htc/WifiRouter/WifiRouter;->mWifiManager:Landroid/net/wifi/WifiManager;

    sget-object v1, Lcom/htc/WifiRouter/WifiRouter;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0, v1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->setWifiApConfig(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)I

    .line 780
    iget-boolean v0, p0, Lcom/htc/WifiRouter/WifiRouter;->mState:Z

    invoke-direct {p0, v0}, Lcom/htc/WifiRouter/WifiRouter;->handleMhs(Z)Z

    goto :goto_0

    :cond_4
    move v0, v1

    .line 776
    goto :goto_1

    .line 784
    :cond_5
    invoke-direct {p0}, Lcom/htc/WifiRouter/WifiRouter;->showProgressDialog()V

    .line 786
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/htc/WifiRouter/WifiRouter$16;

    invoke-direct {v2, p0}, Lcom/htc/WifiRouter/WifiRouter$16;-><init>(Lcom/htc/WifiRouter/WifiRouter;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 838
    iget-boolean v0, p0, Lcom/htc/WifiRouter/WifiRouter;->mState:Z

    if-eqz v0, :cond_0

    .line 839
    invoke-direct {p0, v1}, Lcom/htc/WifiRouter/WifiRouter;->setSettingFieldEnable(Z)V

    goto :goto_0
.end method

.method private updateMhsUI(I)V
    .locals 4
    .parameter "status"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1192
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    if-nez p1, :cond_2

    .line 1194
    :cond_0
    const-string v0, "WifiRouter"

    const-string v1, "setchecked false summary starting"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    iget-object v0, p0, Lcom/htc/WifiRouter/WifiRouter;->mPowerBtn:Lcom/htc/widget/HtcListItemCheckBox;

    iget-boolean v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mState:Z

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    .line 1198
    invoke-direct {p0, v2}, Lcom/htc/WifiRouter/WifiRouter;->setSettingFieldEnable(Z)V

    .line 1200
    invoke-direct {p0}, Lcom/htc/WifiRouter/WifiRouter;->showProgressDialog()V

    .line 1201
    iget-object v0, p0, Lcom/htc/WifiRouter/WifiRouter;->mHotspotStatus:Lcom/htc/widget/HtcListItem2LineText;

    const v1, 0x7f090023

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(I)V

    .line 1213
    :cond_1
    :goto_0
    return-void

    .line 1203
    :cond_2
    if-ne p1, v3, :cond_1

    .line 1204
    const-string v0, "WifiRouter"

    const-string v1, "setchecked true summary original"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    iget-object v0, p0, Lcom/htc/WifiRouter/WifiRouter;->mPowerBtn:Lcom/htc/widget/HtcListItemCheckBox;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcListItemCheckBox;->setEnabled(Z)V

    .line 1208
    iget-object v0, p0, Lcom/htc/WifiRouter/WifiRouter;->mPowerBtn:Lcom/htc/widget/HtcListItemCheckBox;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    .line 1210
    iget-object v0, p0, Lcom/htc/WifiRouter/WifiRouter;->mHotspotStatus:Lcom/htc/widget/HtcListItem2LineText;

    const v1, 0x7f090022

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(I)V

    .line 1211
    iput-boolean v2, p0, Lcom/htc/WifiRouter/WifiRouter;->mState:Z

    goto :goto_0
.end method

.method private updateUserCountUI()V
    .locals 6

    .prologue
    .line 434
    iget-object v2, p0, Lcom/htc/WifiRouter/WifiRouter;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v2}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->getAssocListStr(Landroid/net/wifi/WifiManager;)Ljava/lang/String;

    move-result-object v1

    .line 436
    .local v1, str:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/htc/WifiRouter/WifiRouter;->getClientCount(Ljava/lang/String;)I

    move-result v0

    .line 437
    .local v0, count:I
    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    .line 438
    iget-object v2, p0, Lcom/htc/WifiRouter/WifiRouter;->mUserManageInfo:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/WifiRouter/WifiRouter;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090031

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 443
    :goto_0
    sget-object v2, Lcom/htc/WifiRouter/WifiRouter;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v2}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->getEnableMacFilter()I

    move-result v2

    if-nez v2, :cond_0

    .line 444
    sget-object v2, Lcom/htc/WifiRouter/WifiRouter;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 445
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 446
    sget-object v2, Lcom/htc/WifiRouter/WifiRouter;->mDeviceList:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/htc/WifiRouter/WifiRouter;->parseMacAddress(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 454
    :cond_0
    return-void

    .line 440
    :cond_1
    iget-object v2, p0, Lcom/htc/WifiRouter/WifiRouter;->mUserManageInfo:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/WifiRouter/WifiRouter;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090030

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private validateConfig()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 923
    iget-object v2, p0, Lcom/htc/WifiRouter/WifiRouter;->mSecurityType:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v2}, Lcom/htc/widget/HtcSpinner;->getSelectedItemPosition()I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 925
    iget-object v2, p0, Lcom/htc/WifiRouter/WifiRouter;->mPassWord:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_3

    .line 940
    :cond_0
    :goto_0
    return v0

    .line 932
    :cond_1
    iget-object v2, p0, Lcom/htc/WifiRouter/WifiRouter;->mSecurityType:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v2}, Lcom/htc/widget/HtcSpinner;->getSelectedItemPosition()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/htc/WifiRouter/WifiRouter;->mSecurityType:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v2}, Lcom/htc/widget/HtcSpinner;->getSelectedItemPosition()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 935
    :cond_2
    iget-object v2, p0, Lcom/htc/WifiRouter/WifiRouter;->mPassWord:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    const/16 v3, 0x8

    if-lt v2, v3, :cond_0

    iget-object v2, p0, Lcom/htc/WifiRouter/WifiRouter;->mPassWord:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    const/16 v3, 0x3f

    if-gt v2, v3, :cond_0

    :cond_3
    move v0, v1

    .line 940
    goto :goto_0
.end method

.method private validateSSID()Z
    .locals 6

    .prologue
    const/16 v5, 0x20

    const/4 v3, 0x0

    .line 907
    iget-object v4, p0, Lcom/htc/WifiRouter/WifiRouter;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 908
    .local v2, ssid:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v5, :cond_1

    .line 919
    :cond_0
    :goto_0
    return v3

    .line 912
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_6

    .line 913
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 914
    .local v0, c:C
    const/16 v4, 0x30

    if-lt v0, v4, :cond_2

    const/16 v4, 0x39

    if-le v0, v4, :cond_5

    :cond_2
    const/16 v4, 0x41

    if-lt v0, v4, :cond_3

    const/16 v4, 0x5a

    if-le v0, v4, :cond_5

    :cond_3
    const/16 v4, 0x61

    if-lt v0, v4, :cond_4

    const/16 v4, 0x7a

    if-le v0, v4, :cond_5

    :cond_4
    if-eq v0, v5, :cond_5

    const/16 v4, 0x2d

    if-eq v0, v4, :cond_5

    const/16 v4, 0x5f

    if-eq v0, v4, :cond_5

    const/16 v4, 0x2e

    if-ne v0, v4, :cond_0

    .line 912
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 919
    .end local v0           #c:C
    :cond_6
    const/4 v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getConnectedUserLabel()Ljava/lang/String;
    .locals 3

    .prologue
    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/htc/WifiRouter/WifiRouter;->connectedCount:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/WifiRouter/WifiRouter;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090030

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isMLEnabled()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1136
    const-string v2, "init.svc.modem"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1140
    .local v0, s:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "stopped"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1145
    :cond_0
    :goto_0
    return v1

    .line 1142
    :cond_1
    const-string v2, "running"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1143
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v0, 0x1

    .line 857
    if-ne p1, v0, :cond_0

    .line 858
    iput-boolean v0, p0, Lcom/htc/WifiRouter/WifiRouter;->mPassGuild:Z

    .line 860
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 255
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 256
    iput-object p0, p0, Lcom/htc/WifiRouter/WifiRouter;->mContext:Landroid/content/Context;

    .line 257
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mLayoutFactory:Landroid/view/LayoutInflater;

    .line 258
    invoke-virtual {p0}, Lcom/htc/WifiRouter/WifiRouter;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mRes:Landroid/content/res/Resources;

    .line 260
    invoke-virtual {p0, v3}, Lcom/htc/WifiRouter/WifiRouter;->requestWindowFeature(I)Z

    .line 261
    const/high16 v1, 0x7f09

    invoke-virtual {p0, v1}, Lcom/htc/WifiRouter/WifiRouter;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/WifiRouter/WifiRouter;->default_wep_passwd:Ljava/lang/String;

    .line 262
    const v1, 0x7f090001

    invoke-virtual {p0, v1}, Lcom/htc/WifiRouter/WifiRouter;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/WifiRouter/WifiRouter;->default_wpa_passwd:Ljava/lang/String;

    .line 263
    invoke-direct {p0}, Lcom/htc/WifiRouter/WifiRouter;->initLayout()V

    .line 264
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/htc/WifiRouter/WifiRouter;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 266
    iget-object v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_0

    .line 267
    iget-object v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    sput-object v1, Lcom/htc/WifiRouter/WifiRouter;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 274
    :cond_0
    new-instance v1, Lcom/htc/WifiRouter/WifiRouter$UiHandler;

    invoke-direct {v1, p0}, Lcom/htc/WifiRouter/WifiRouter$UiHandler;-><init>(Lcom/htc/WifiRouter/WifiRouter;)V

    iput-object v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mUIHandler:Lcom/htc/WifiRouter/WifiRouter$UiHandler;

    .line 275
    iput-boolean v2, p0, Lcom/htc/WifiRouter/WifiRouter;->mPassGuild:Z

    .line 277
    invoke-direct {p0}, Lcom/htc/WifiRouter/WifiRouter;->enableMHS()Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mEnableMhs:Z

    .line 279
    iget-boolean v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mEnableMhs:Z

    if-eqz v1, :cond_6

    .line 280
    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "android.net.conn.HTC_PERMITTED_TETHER_CHANGE"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mMhsIntentFilter:Landroid/content/IntentFilter;

    .line 286
    :goto_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v4, Lcom/htc/WifiRouter/WifiRouter$3;

    invoke-direct {v4, p0}, Lcom/htc/WifiRouter/WifiRouter$3;-><init>(Lcom/htc/WifiRouter/WifiRouter;)V

    invoke-direct {v1, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 292
    sget-object v1, Lcom/htc/WifiRouter/WifiRouter;->mDeviceList:Ljava/util/ArrayList;

    if-nez v1, :cond_7

    .line 293
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/htc/WifiRouter/WifiRouter;->mDeviceList:Ljava/util/ArrayList;

    .line 298
    :goto_1
    sget-object v1, Lcom/htc/WifiRouter/WifiRouter;->mRequestList:Ljava/util/ArrayList;

    if-nez v1, :cond_8

    .line 299
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/htc/WifiRouter/WifiRouter;->mRequestList:Ljava/util/ArrayList;

    .line 304
    :goto_2
    invoke-virtual {p0}, Lcom/htc/WifiRouter/WifiRouter;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "airplane_mode_toggleable_radios"

    invoke-static {v1, v4}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 306
    .local v0, toggleable:Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    :cond_1
    move v1, v3

    :goto_3
    iput-boolean v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mDisabledInAirpalneMode:Z

    .line 309
    if-eqz p1, :cond_5

    .line 310
    const-string v1, "ml_dialog"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mMLDialogShowed:Z

    .line 311
    iget-boolean v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mMLDialogShowed:Z

    if-eqz v1, :cond_2

    .line 312
    invoke-direct {p0}, Lcom/htc/WifiRouter/WifiRouter;->showMLDialog()V

    .line 314
    :cond_2
    const-string v1, "remind_dialog"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mRemindDialogShowed:Z

    .line 315
    iget-boolean v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mRemindDialogShowed:Z

    if-eqz v1, :cond_3

    .line 316
    invoke-direct {p0}, Lcom/htc/WifiRouter/WifiRouter;->showRemindDialog()V

    .line 318
    :cond_3
    const-string v1, "invalid_ssid"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mInvalidSsidDialogShowed:Z

    .line 319
    iget-boolean v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mInvalidSsidDialogShowed:Z

    if-eqz v1, :cond_4

    .line 320
    invoke-direct {p0}, Lcom/htc/WifiRouter/WifiRouter;->showInvalidSsidDialogDialog()V

    .line 322
    :cond_4
    const-string v1, "invalid_password"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mInvalidPasswordDialogShowed:Z

    .line 323
    iget-boolean v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mInvalidPasswordDialogShowed:Z

    if-eqz v1, :cond_5

    .line 324
    invoke-direct {p0}, Lcom/htc/WifiRouter/WifiRouter;->showInvalidPasswordDialog()V

    .line 327
    :cond_5
    return-void

    .line 282
    .end local v0           #toggleable:Ljava/lang/String;
    :cond_6
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mMhsIntentFilter:Landroid/content/IntentFilter;

    goto :goto_0

    .line 295
    :cond_7
    sget-object v1, Lcom/htc/WifiRouter/WifiRouter;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    .line 301
    :cond_8
    sget-object v1, Lcom/htc/WifiRouter/WifiRouter;->mRequestList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_2

    .restart local v0       #toggleable:Ljava/lang/String;
    :cond_9
    move v1, v2

    .line 306
    goto :goto_3
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 423
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 424
    const v0, 0x7f090026

    invoke-virtual {p0, v0}, Lcom/htc/WifiRouter/WifiRouter;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080336

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 425
    const/4 v0, 0x2

    const v1, 0x7f090027

    invoke-virtual {p0, v1}, Lcom/htc/WifiRouter/WifiRouter;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v2, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080328

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 426
    return v3
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 536
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 537
    iget-object v0, p0, Lcom/htc/WifiRouter/WifiRouter;->mMLDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/htc/WifiRouter/WifiRouter;->mMLDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/htc/WifiRouter/WifiRouter;->mRemindDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_1

    .line 541
    iget-object v0, p0, Lcom/htc/WifiRouter/WifiRouter;->mRemindDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 543
    :cond_1
    iget-object v0, p0, Lcom/htc/WifiRouter/WifiRouter;->mInvalidSsidDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_2

    .line 544
    iget-object v0, p0, Lcom/htc/WifiRouter/WifiRouter;->mInvalidSsidDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 546
    :cond_2
    iget-object v0, p0, Lcom/htc/WifiRouter/WifiRouter;->mInvalidPasswordDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_3

    .line 547
    iget-object v0, p0, Lcom/htc/WifiRouter/WifiRouter;->mInvalidPasswordDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 549
    :cond_3
    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 578
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 603
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 580
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 581
    .local v0, intent:Landroid/content/Intent;
    const-class v2, Lcom/htc/WifiRouter/AdvancedSetting;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 582
    invoke-virtual {p0, v0}, Lcom/htc/WifiRouter/WifiRouter;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 585
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_1
    iget-object v2, p0, Lcom/htc/WifiRouter/WifiRouter;->mPowerBtn:Lcom/htc/widget/HtcListItemCheckBox;

    invoke-virtual {v2}, Lcom/htc/widget/HtcListItemCheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 586
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 587
    .restart local v0       #intent:Landroid/content/Intent;
    const-class v2, Lcom/htc/WifiRouter/Guild;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 588
    const-string v2, "ssid"

    iget-object v3, p0, Lcom/htc/WifiRouter/WifiRouter;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 589
    iget-object v2, p0, Lcom/htc/WifiRouter/WifiRouter;->mSecurityType:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v2}, Lcom/htc/widget/HtcSpinner;->getSelectedItemPosition()I

    move-result v2

    if-nez v2, :cond_0

    .line 590
    const-string v2, "key"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 594
    :goto_1
    invoke-virtual {p0, v0}, Lcom/htc/WifiRouter/WifiRouter;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 592
    :cond_0
    const-string v2, "key"

    iget-object v3, p0, Lcom/htc/WifiRouter/WifiRouter;->mPassWord:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 596
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 597
    .restart local v0       #intent:Landroid/content/Intent;
    const-class v2, Lcom/htc/WifiRouter/Intro;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 598
    const-string v2, "callFromOther"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 599
    invoke-virtual {p0, v0}, Lcom/htc/WifiRouter/WifiRouter;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 578
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 516
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 517
    iget-object v0, p0, Lcom/htc/WifiRouter/WifiRouter;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/WifiRouter/WifiRouter;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 518
    invoke-direct {p0}, Lcom/htc/WifiRouter/WifiRouter;->dismissProgressDialog()V

    .line 519
    invoke-direct {p0}, Lcom/htc/WifiRouter/WifiRouter;->isSettingChange()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 521
    invoke-direct {p0}, Lcom/htc/WifiRouter/WifiRouter;->validateConfig()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/htc/WifiRouter/WifiRouter;->validateSSID()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/htc/WifiRouter/WifiRouter;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 523
    invoke-direct {p0}, Lcom/htc/WifiRouter/WifiRouter;->saveSetting()V

    .line 524
    iget-object v0, p0, Lcom/htc/WifiRouter/WifiRouter;->mWifiManager:Landroid/net/wifi/WifiManager;

    sget-object v1, Lcom/htc/WifiRouter/WifiRouter;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0, v1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->setWifiApConfig(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)I

    .line 529
    :cond_0
    iget-boolean v0, p0, Lcom/htc/WifiRouter/WifiRouter;->mEnableMhs:Z

    if-eqz v0, :cond_1

    .line 530
    iget-object v0, p0, Lcom/htc/WifiRouter/WifiRouter;->mMhsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/WifiRouter/WifiRouter;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 532
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 458
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 459
    const/16 v1, 0xe

    .line 460
    .local v1, state:I
    iget-object v2, p0, Lcom/htc/WifiRouter/WifiRouter;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iput-object v2, p0, Lcom/htc/WifiRouter/WifiRouter;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 461
    iget-object v2, p0, Lcom/htc/WifiRouter/WifiRouter;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/WifiRouter/WifiRouter;->mWifiRegexs:[Ljava/lang/String;

    .line 462
    iget-object v2, p0, Lcom/htc/WifiRouter/WifiRouter;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/WifiRouter/WifiRouter;->mState:Z

    .line 463
    iget-object v2, p0, Lcom/htc/WifiRouter/WifiRouter;->mPowerBtn:Lcom/htc/widget/HtcListItemCheckBox;

    iget-boolean v4, p0, Lcom/htc/WifiRouter/WifiRouter;->mState:Z

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    .line 464
    iget-boolean v2, p0, Lcom/htc/WifiRouter/WifiRouter;->mEnableMhs:Z

    if-eqz v2, :cond_0

    .line 465
    iget-object v2, p0, Lcom/htc/WifiRouter/WifiRouter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/htc/WifiRouter/WifiRouter;->mMhsReceiver:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/htc/WifiRouter/WifiRouter;->mMhsIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 466
    invoke-direct {p0}, Lcom/htc/WifiRouter/WifiRouter;->checkMHSStatus()V

    .line 470
    :cond_0
    iget-object v2, p0, Lcom/htc/WifiRouter/WifiRouter;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v2, :cond_1

    .line 471
    iget-object v2, p0, Lcom/htc/WifiRouter/WifiRouter;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    sput-object v2, Lcom/htc/WifiRouter/WifiRouter;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 472
    iget-object v2, p0, Lcom/htc/WifiRouter/WifiRouter;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    .line 474
    invoke-direct {p0}, Lcom/htc/WifiRouter/WifiRouter;->updateUserCountUI()V

    .line 477
    :cond_1
    invoke-direct {p0}, Lcom/htc/WifiRouter/WifiRouter;->getActiveNetworkType()I

    move-result v2

    iput v2, p0, Lcom/htc/WifiRouter/WifiRouter;->mActiveDefaultNetwork:I

    .line 480
    const/16 v2, 0xc

    if-ne v1, v2, :cond_2

    .line 481
    invoke-direct {p0}, Lcom/htc/WifiRouter/WifiRouter;->showProgressDialog()V

    .line 507
    :goto_0
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/htc/WifiRouter/WifiRouter;->mHotspotStateFilter:Landroid/content/IntentFilter;

    .line 508
    iget-object v2, p0, Lcom/htc/WifiRouter/WifiRouter;->mHotspotStateFilter:Landroid/content/IntentFilter;

    const-string v3, "android.net.hotspot.ASSOCLIST"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 509
    iget-object v2, p0, Lcom/htc/WifiRouter/WifiRouter;->mHotspotStateFilter:Landroid/content/IntentFilter;

    const-string v3, "com.htc.htcconnectivity.ActiveWAN"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 510
    iget-object v2, p0, Lcom/htc/WifiRouter/WifiRouter;->mHotspotStateFilter:Landroid/content/IntentFilter;

    const-string v3, "com.htc.netsharing.state"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 511
    iget-object v2, p0, Lcom/htc/WifiRouter/WifiRouter;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/htc/WifiRouter/WifiRouter;->mHotspotStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v2, v3}, Lcom/htc/WifiRouter/WifiRouter;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 512
    return-void

    .line 482
    :cond_2
    const/16 v2, 0xd

    if-ne v1, v2, :cond_5

    .line 483
    iput-boolean v0, p0, Lcom/htc/WifiRouter/WifiRouter;->mPassGuild:Z

    .line 484
    iget v2, p0, Lcom/htc/WifiRouter/WifiRouter;->mActiveDefaultNetwork:I

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/htc/WifiRouter/WifiRouter;->mActiveDefaultNetwork:I

    const/4 v4, 0x6

    if-ne v2, v4, :cond_4

    .line 486
    :cond_3
    iget-object v2, p0, Lcom/htc/WifiRouter/WifiRouter;->mHotspotStatus:Lcom/htc/widget/HtcListItem2LineText;

    const v4, 0x7f090025

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(I)V

    .line 490
    :goto_1
    invoke-direct {p0, v3}, Lcom/htc/WifiRouter/WifiRouter;->setSettingFieldEnable(Z)V

    .line 491
    invoke-direct {p0}, Lcom/htc/WifiRouter/WifiRouter;->recoveryAirplaneModeUI()V

    goto :goto_0

    .line 488
    :cond_4
    iget-object v2, p0, Lcom/htc/WifiRouter/WifiRouter;->mHotspotStatus:Lcom/htc/widget/HtcListItem2LineText;

    const v4, 0x7f09005c

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(I)V

    goto :goto_1

    .line 493
    :cond_5
    iget-boolean v2, p0, Lcom/htc/WifiRouter/WifiRouter;->mDisabledInAirpalneMode:Z

    if-eqz v2, :cond_7

    .line 495
    iget-object v2, p0, Lcom/htc/WifiRouter/WifiRouter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "airplane_mode_on"

    invoke-static {v2, v4, v3}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_6

    .line 497
    .local v0, enabled:Z
    :goto_2
    invoke-direct {p0, v0}, Lcom/htc/WifiRouter/WifiRouter;->setSettingFieldEnable(Z)V

    .line 498
    iget-object v2, p0, Lcom/htc/WifiRouter/WifiRouter;->mPowerBtn:Lcom/htc/widget/HtcListItemCheckBox;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    .line 499
    invoke-direct {p0, v0}, Lcom/htc/WifiRouter/WifiRouter;->setSettingFieldAirplane(Z)V

    goto :goto_0

    .end local v0           #enabled:Z
    :cond_6
    move v0, v3

    .line 495
    goto :goto_2

    .line 501
    :cond_7
    invoke-direct {p0, v0}, Lcom/htc/WifiRouter/WifiRouter;->setSettingFieldEnable(Z)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 331
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 333
    iget-boolean v0, p0, Lcom/htc/WifiRouter/WifiRouter;->mMLDialogShowed:Z

    if-eqz v0, :cond_0

    .line 334
    const-string v0, "ml_dialog"

    iget-boolean v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mMLDialogShowed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 336
    :cond_0
    iget-boolean v0, p0, Lcom/htc/WifiRouter/WifiRouter;->mRemindDialogShowed:Z

    if-eqz v0, :cond_1

    .line 337
    const-string v0, "remind_dialog"

    iget-boolean v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mRemindDialogShowed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 339
    :cond_1
    iget-boolean v0, p0, Lcom/htc/WifiRouter/WifiRouter;->mInvalidSsidDialogShowed:Z

    if-eqz v0, :cond_2

    .line 340
    const-string v0, "invalid_ssid"

    iget-boolean v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mInvalidSsidDialogShowed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 342
    :cond_2
    iget-boolean v0, p0, Lcom/htc/WifiRouter/WifiRouter;->mInvalidPasswordDialogShowed:Z

    if-eqz v0, :cond_3

    .line 343
    const-string v0, "invalid_password"

    iget-boolean v1, p0, Lcom/htc/WifiRouter/WifiRouter;->mInvalidPasswordDialogShowed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 345
    :cond_3
    return-void
.end method

.method public parseUnkrownMacAddressOnly(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4
    .parameter "source"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1080
    .local p2, target:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 1096
    :cond_0
    return-void

    .line 1081
    :cond_1
    sget-object v2, Lcom/htc/WifiRouter/UserManagement;->mWhiteList:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/htc/WifiRouter/UserManagement;->mBlackList:Ljava/util/ArrayList;

    if-nez v2, :cond_3

    .line 1082
    :cond_2
    invoke-direct {p0}, Lcom/htc/WifiRouter/WifiRouter;->loadMacAddress()V

    .line 1085
    :cond_3
    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1086
    .local v1, items:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 1087
    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    .line 1088
    aget-object v2, v1, v0

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lcom/htc/WifiRouter/UserManagement;->mWhiteList:Ljava/util/ArrayList;

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lcom/htc/WifiRouter/UserManagement;->mBlackList:Ljava/util/ArrayList;

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1089
    aget-object v2, v1, v0

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1086
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
