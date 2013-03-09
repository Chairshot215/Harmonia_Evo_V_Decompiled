.class public Lcom/android/systemui/statusbar/phone/MobileConfigView;
.super Landroid/widget/LinearLayout;
.source "MobileConfigView.java"


# static fields
.field public static final AUTOSYNC_IN_MOBILE_ON:Ljava/lang/String; = "autosync_in_mobile_on"

.field public static final AUTOSYNC_IN_WIFI_ON:Ljava/lang/String; = "autosync_in_wifi_on"

.field public static final CONNECTIVITY_ACTION:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE"

.field private static final LOG_TAG:Ljava/lang/String; = "MobileConfigView"

.field private static final SENDER:Ljava/lang/String; = "MobileDataEnabler"


# instance fields
.field private mCarrierTitle:Lcom/android/systemui/statusbar/phone/TitleView;

.field private mContext:Landroid/content/Context;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

.field private mTitleButtonListener:Landroid/view/View$OnClickListener;

.field private mToggleBarListener:Lcom/android/systemui/statusbar/widget/ToggleBar$OnToggleChangeListener;

.field mToggolebar:Lcom/android/systemui/statusbar/widget/ToggleBar;

.field private mbRegistered:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MobileConfigView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    new-instance v0, Lcom/android/systemui/statusbar/phone/MobileConfigView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/MobileConfigView$1;-><init>(Lcom/android/systemui/statusbar/phone/MobileConfigView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MobileConfigView;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MobileConfigView;->mbRegistered:Z

    new-instance v0, Lcom/android/systemui/statusbar/phone/MobileConfigView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/MobileConfigView$2;-><init>(Lcom/android/systemui/statusbar/phone/MobileConfigView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MobileConfigView;->mTitleButtonListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/systemui/statusbar/phone/MobileConfigView$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/MobileConfigView$3;-><init>(Lcom/android/systemui/statusbar/phone/MobileConfigView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MobileConfigView;->mToggleBarListener:Lcom/android/systemui/statusbar/widget/ToggleBar$OnToggleChangeListener;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MobileConfigView;->mContext:Landroid/content/Context;

    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_SKIN:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/StatusBarStyleable;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/StatusBarStyleable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MobileConfigView;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MobileConfigView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/MobileConfigView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MobileConfigView;->updateStateUI()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/MobileConfigView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MobileConfigView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/MobileConfigView;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MobileConfigView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/MobileConfigView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MobileConfigView;->getMobileDataEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/MobileConfigView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/MobileConfigView;->setMobileDataEnabled(Z)V

    return-void
.end method

.method private getMobileDataEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MobileConfigView;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    return v0
.end method

.method private getMobileSyncDataStatus()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MobileConfigView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "autosync_in_mobile_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private init()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MobileConfigView;->mIntentFilter:Landroid/content/IntentFilter;

    return-void
.end method

.method private setMobileDataEnabled(Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MobileConfigView;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MOBILEDATA_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "sender"

    const-string v2, "MobileDataEnabler"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MobileConfigView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setMobileSyncDataStatus(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MobileConfigView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "autosync_in_mobile_on"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateStateUI()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MobileConfigView;->getAutoSyncSetting()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MobileConfigView;->getBackgroundDataSetting()Z

    move-result v1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MobileConfigView;->getMobileDataEnabled()Z

    move-result v2

    if-ne v0, v5, :cond_0

    if-ne v1, v5, :cond_0

    if-ne v2, v5, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/MobileConfigView;->mToggolebar:Lcom/android/systemui/statusbar/widget/ToggleBar;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/widget/ToggleBar;->setProgress(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MobileConfigView;->isNetworkAvailableButNotMobile()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/MobileConfigView;->mToggolebar:Lcom/android/systemui/statusbar/widget/ToggleBar;

    invoke-virtual {v3, v6}, Lcom/android/systemui/statusbar/widget/ToggleBar;->setTouchable(Z)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MobileConfigView;->updateResources()V

    return-void

    :cond_0
    if-ne v2, v5, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/MobileConfigView;->mToggolebar:Lcom/android/systemui/statusbar/widget/ToggleBar;

    const/16 v4, 0x32

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/widget/ToggleBar;->setProgress(I)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/MobileConfigView;->mToggolebar:Lcom/android/systemui/statusbar/widget/ToggleBar;

    invoke-virtual {v3, v6}, Lcom/android/systemui/statusbar/widget/ToggleBar;->setProgress(I)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/MobileConfigView;->mToggolebar:Lcom/android/systemui/statusbar/widget/ToggleBar;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/MobileConfigView;->mToggleBarListener:Lcom/android/systemui/statusbar/widget/ToggleBar$OnToggleChangeListener;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/widget/ToggleBar;->setOnToggleChangeListener(Lcom/android/systemui/statusbar/widget/ToggleBar$OnToggleChangeListener;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/MobileConfigView;->mToggolebar:Lcom/android/systemui/statusbar/widget/ToggleBar;

    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/widget/ToggleBar;->setTouchable(Z)V

    goto :goto_1
.end method


# virtual methods
.method public getAutoSyncSetting()Z
    .locals 1

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    return v0
.end method

.method public getBackgroundDataSetting()Z
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MobileConfigView;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v1

    return v1
.end method

.method public isNetworkAvailableButNotMobile()Z
    .locals 3

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MobileConfigView;->isNetworkAvailableExt()I

    move-result v0

    if-eq v0, v1, :cond_0

    const/16 v2, 0x12

    if-ne v0, v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isNetworkAvailableExt()I
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/MobileConfigView;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1

    const-string v2, "MobileConfigView"

    const-string v3, "couldn\'t get connectivity manager"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0e003f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/MobileConfigView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/TitleView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MobileConfigView;->mCarrierTitle:Lcom/android/systemui/statusbar/phone/TitleView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MobileConfigView;->mCarrierTitle:Lcom/android/systemui/statusbar/phone/TitleView;

    const v1, 0x7f0800b0

    invoke-virtual {v0, v2, v1, v2}, Lcom/android/systemui/statusbar/phone/TitleView;->updateName(ZIZ)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MobileConfigView;->mCarrierTitle:Lcom/android/systemui/statusbar/phone/TitleView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MobileConfigView;->mTitleButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/TitleView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e0041

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/MobileConfigView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/widget/ToggleBar;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MobileConfigView;->mToggolebar:Lcom/android/systemui/statusbar/widget/ToggleBar;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MobileConfigView;->mToggolebar:Lcom/android/systemui/statusbar/widget/ToggleBar;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/widget/ToggleBar;->setToggleEnable(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MobileConfigView;->mToggolebar:Lcom/android/systemui/statusbar/widget/ToggleBar;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/widget/ToggleBar;->setToggleSize(I)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MobileConfigView;->updateStateUI()V

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MobileConfigView;->registerReceiver()V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MobileConfigView;->unRegisterReceiver()V

    return-void
.end method

.method public registerReceiver()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MobileConfigView;->mIntentFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_1

    const-string v0, "MobileConfigView"

    const-string v1, "mIntentFilter == null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MobileConfigView;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MobileConfigView;->mbRegistered:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MobileConfigView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MobileConfigView;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/MobileConfigView;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MobileConfigView;->mbRegistered:Z

    goto :goto_0
.end method

.method public setAutoSyncSetting(Z)V
    .locals 0

    invoke-static {p1}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/MobileConfigView;->setMobileSyncDataStatus(Z)V

    return-void
.end method

.method public setBackgroundDataSetting(Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MobileConfigView;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setBackgroundDataSetting(Z)V

    return-void
.end method

.method public setService(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MobileConfigView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    return-void
.end method

.method public unRegisterReceiver()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MobileConfigView;->mbRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MobileConfigView;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MobileConfigView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MobileConfigView;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MobileConfigView;->mbRegistered:Z

    :cond_0
    return-void
.end method

.method public updateResources()V
    .locals 2

    sget-boolean v1, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_SKIN:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MobileConfigView;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MobileConfigView;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarStyleable;->updateStyleName()V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MobileConfigView;->mCarrierTitle:Lcom/android/systemui/statusbar/phone/TitleView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MobileConfigView;->mCarrierTitle:Lcom/android/systemui/statusbar/phone/TitleView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/TitleView;->updateResources()V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MobileConfigView;->mToggolebar:Lcom/android/systemui/statusbar/widget/ToggleBar;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MobileConfigView;->mToggolebar:Lcom/android/systemui/statusbar/widget/ToggleBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/widget/ToggleBar;->updateResources()V

    :cond_2
    const v1, 0x7f0e0042

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/MobileConfigView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0800b1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f0e0043

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/MobileConfigView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0800b2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f0e0044

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/MobileConfigView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0800b3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
