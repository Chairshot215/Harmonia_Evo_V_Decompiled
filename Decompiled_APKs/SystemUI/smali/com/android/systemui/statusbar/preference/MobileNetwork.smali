.class public Lcom/android/systemui/statusbar/preference/MobileNetwork;
.super Lcom/android/systemui/statusbar/preference/StatusBarPreference;
.source "MobileNetwork.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/preference/MobileNetwork$4;
    }
.end annotation


# static fields
.field private static final LOCAL_LOGD:Z = false

.field private static final SENDER:Ljava/lang/String; = "MobileNetwork"

.field private static final TAG:Ljava/lang/String; = "MobileNetworkStatusBarPreference"

.field private static isConnecting:Z


# instance fields
.field private connectivity:Landroid/net/ConnectivityManager;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mMobileDataEnabledSetting:Z

.field private mMobileDataInService:Z

.field private mMobileStateFilter:Landroid/content/IntentFilter;

.field private final mMobileStateReceiver:Landroid/content/BroadcastReceiver;

.field private mPhoneService:Lcom/android/internal/telephony/ITelephony;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;-><init>(Landroid/content/Context;Landroid/view/View;)V

    new-instance v0, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/MobileNetwork$1;-><init>(Lcom/android/systemui/statusbar/preference/MobileNetwork;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/statusbar/preference/MobileNetwork$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/MobileNetwork$2;-><init>(Lcom/android/systemui/statusbar/preference/MobileNetwork;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/android/systemui/statusbar/preference/MobileNetwork$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/MobileNetwork$3;-><init>(Lcom/android/systemui/statusbar/preference/MobileNetwork;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mClickListener:Landroid/view/View$OnClickListener;

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->init()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;
    .locals 1

    invoke-static {p0}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/preference/MobileNetwork;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mMobileDataEnabledSetting:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/preference/MobileNetwork;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mMobileDataEnabledSetting:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/preference/MobileNetwork;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->getPersistedMobileDataEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/preference/MobileNetwork;)Landroid/net/ConnectivityManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->connectivity:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/preference/MobileNetwork;Landroid/net/ConnectivityManager;)Landroid/net/ConnectivityManager;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->connectivity:Landroid/net/ConnectivityManager;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/preference/MobileNetwork;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->isEnabledByDependency()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/preference/MobileNetwork;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mMobileDataInService:Z

    return v0
.end method

.method static synthetic access$602(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->isConnecting:Z

    return p0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/preference/MobileNetwork;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->getPersistedAirplaneModeEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/preference/MobileNetwork;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->updateServiceState(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/preference/MobileNetwork;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->setMobileDataEnabled(Z)V

    return-void
.end method

.method private getDataOnRoamingEnabled()Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "data_roaming"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;
    .locals 2

    const-string v1, "state"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-class v1, Lcom/android/internal/telephony/Phone$DataState;

    invoke-static {v1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone$DataState;

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0
.end method

.method private getPersistedAirplaneModeEnabled()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private getPersistedMobileDataEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    return v0
.end method

.method private init()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f08008e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mSummary:Landroid/widget/TextView;

    const v1, 0x10403a0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f0200be

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContentView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mMobileStateFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mMobileStateFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MOBILEDATA_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mMobileStateFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method private isEnabledByDependency()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private isNetworkAvailable(I)Z
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->connectivity:Landroid/net/ConnectivityManager;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->connectivity:Landroid/net/ConnectivityManager;

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->connectivity:Landroid/net/ConnectivityManager;

    if-nez v1, :cond_2

    const-string v1, "MobileNetworkStatusBarPreference"

    const-string v2, "couldn\'t get connectivity manager"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->connectivity:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-ne v1, p1, :cond_1

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private persistMobileDataSettingEnabled(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mMobileDataEnabledSetting:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mMobileDataEnabledSetting:Z

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MOBILEDATA_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "sender"

    const-string v2, "MobileNetwork"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setMobileDataEnabled(Z)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v1, "MobileNetworkStatusBarPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMobileDataEnabled()...enabled:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->setEnabled(Z)V

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->persistMobileDataSettingEnabled(Z)V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->isNetworkAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mCheckBox:Lcom/htc/widget/HtcToggleButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcToggleButton;->setChecked(Z)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->setEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->persistMobileDataSettingEnabled(Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->connectivity:Landroid/net/ConnectivityManager;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->connectivity:Landroid/net/ConnectivityManager;

    :cond_2
    const-string v1, "MobileNetworkStatusBarPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "netstate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->connectivity:Landroid/net/ConnectivityManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->connectivity:Landroid/net/ConnectivityManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mCheckBox:Lcom/htc/widget/HtcToggleButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcToggleButton;->setChecked(Z)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateServiceState(I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    sput-boolean v1, Lcom/android/systemui/statusbar/preference/MobileNetwork;->isConnecting:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mMobileDataInService:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mCheckBox:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcToggleButton;->setChecked(Z)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->setEnabled(Z)V

    :goto_0
    return-void

    :pswitch_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mMobileDataInService:Z

    sget-boolean v0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->isConnecting:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->setEnabled(Z)V

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mCheckBox:Lcom/htc/widget/HtcToggleButton;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mMobileDataEnabledSetting:Z

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcToggleButton;->setChecked(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->setEnabled(Z)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public CheckMNetworkFunction()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->getPersistedAirplaneModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mCheckBox:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcToggleButton;->setChecked(Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mCheckBox:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v1}, Lcom/htc/widget/HtcToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v1, Lcom/android/systemui/statusbar/preference/MobileNetwork;->isConnecting:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mSummary:Landroid/widget/TextView;

    const v2, 0x7f08007f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mSummary:Landroid/widget/TextView;

    const v2, 0x104039f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mSummary:Landroid/widget/TextView;

    const v2, 0x10403a0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 5

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-nez v1, :cond_1

    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->getPersistedMobileDataEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mMobileDataEnabledSetting:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mCheckBox:Lcom/htc/widget/HtcToggleButton;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mMobileDataEnabledSetting:Z

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcToggleButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v1, v2, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mMobileStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getDataState()I

    move-result v1

    if-ne v1, v4, :cond_3

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/systemui/statusbar/preference/MobileNetwork;->isConnecting:Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-nez v1, :cond_2

    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mPhoneService:Lcom/android/internal/telephony/ITelephony;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public updateResources()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->updateResources()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f08008e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mCheckBox:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v0}, Lcom/htc/widget/HtcToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mSummary:Landroid/widget/TextView;

    const v1, 0x104039f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mSummary:Landroid/widget/TextView;

    const v1, 0x10403a0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
