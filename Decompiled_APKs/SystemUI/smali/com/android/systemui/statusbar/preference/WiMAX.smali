.class public Lcom/android/systemui/statusbar/preference/WiMAX;
.super Lcom/android/systemui/statusbar/preference/StatusBarPreference;
.source "WiMAX.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "WiMAXStatusBarPreference"


# instance fields
.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mHtcWimax4GManager:Lcom/htc/net/wimax/HTCWimax4GManager;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mWimaxController:Lcom/htc/net/wimax/WimaxController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;-><init>(Landroid/content/Context;Landroid/view/View;)V

    new-instance v0, Lcom/android/systemui/statusbar/preference/WiMAX$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/WiMAX$1;-><init>(Lcom/android/systemui/statusbar/preference/WiMAX;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/WiMAX;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/statusbar/preference/WiMAX$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/WiMAX$2;-><init>(Lcom/android/systemui/statusbar/preference/WiMAX;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/WiMAX;->mClickListener:Landroid/view/View$OnClickListener;

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/WiMAX;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/WiMAX;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/preference/WiMAX;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/WiMAX;->updateToggles()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/preference/WiMAX;)Lcom/htc/net/wimax/WimaxController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/WiMAX;->mWimaxController:Lcom/htc/net/wimax/WimaxController;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/preference/WiMAX;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/preference/WiMAX;->persistWimaxSettingEnabled(Z)V

    return-void
.end method

.method private init()V
    .locals 3

    const v2, 0x7f0200c4

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x94

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f08008f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mSummary:Landroid/widget/TextView;

    const v1, 0x10403a0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContentView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/WiMAX;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/WiMAX;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void

    :cond_0
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x50

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f080091

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f0200c5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f080092

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f080090

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f0200c6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private persistWimaxSettingEnabled(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wimax_on"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateEnableState()V
    .locals 8

    const/4 v2, 0x0

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/systemui/statusbar/preference/WiMAX;->mWimaxController:Lcom/htc/net/wimax/WimaxController;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/statusbar/preference/WiMAX;->mHtcWimax4GManager:Lcom/htc/net/wimax/HTCWimax4GManager;

    if-nez v6, :cond_1

    :cond_0
    const-string v5, "WiMAXStatusBarPreference"

    const-string v6, "get null WiMAX instance"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/preference/WiMAX;->mWimaxController:Lcom/htc/net/wimax/WimaxController;

    invoke-virtual {v6}, Lcom/htc/net/wimax/WimaxController;->getWimaxState()I

    move-result v4

    iget-object v6, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    invoke-static {v6, v7, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v6, p0, Lcom/android/systemui/statusbar/preference/WiMAX;->mHtcWimax4GManager:Lcom/htc/net/wimax/HTCWimax4GManager;

    invoke-virtual {v6}, Lcom/htc/net/wimax/HTCWimax4GManager;->isAvailable()Z

    move-result v1

    const/4 v6, 0x2

    if-eq v4, v6, :cond_4

    if-eqz v4, :cond_4

    if-eq v0, v5, :cond_4

    if-eqz v1, :cond_4

    move v3, v5

    :goto_1
    const/4 v6, 0x3

    if-eq v4, v6, :cond_2

    if-nez v4, :cond_3

    :cond_2
    if-eq v0, v5, :cond_3

    if-eqz v1, :cond_3

    move v2, v5

    :cond_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mCheckBox:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v5, v3}, Lcom/htc/widget/HtcToggleButton;->setEnabled(Z)V

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/preference/WiMAX;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mCheckBox:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v5, v2}, Lcom/htc/widget/HtcToggleButton;->setChecked(Z)V

    goto :goto_0

    :cond_4
    move v3, v2

    goto :goto_1
.end method

.method private updateSummary()V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/WiMAX;->mWimaxController:Lcom/htc/net/wimax/WimaxController;

    if-nez v1, :cond_0

    const-string v1, "WiMAXStatusBarPreference"

    const-string v2, "get null WiMAX instance"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/WiMAX;->mWimaxController:Lcom/htc/net/wimax/WimaxController;

    invoke-virtual {v1}, Lcom/htc/net/wimax/WimaxController;->getWimaxState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mSummary:Landroid/widget/TextView;

    const v2, 0x7f080080

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mSummary:Landroid/widget/TextView;

    const v2, 0x10403a0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mSummary:Landroid/widget/TextView;

    const v2, 0x7f08007f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mSummary:Landroid/widget/TextView;

    const v2, 0x104039f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private updateToggles()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/WiMAX;->updateEnableState()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/WiMAX;->updateSummary()V

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContext:Landroid/content/Context;

    const-string v1, "wimax"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/net/wimax/WimaxController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/WiMAX;->mWimaxController:Lcom/htc/net/wimax/WimaxController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContext:Landroid/content/Context;

    const-string v1, "fourG_wimax"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/net/wimax/HTCWimax4GManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/WiMAX;->mHtcWimax4GManager:Lcom/htc/net/wimax/HTCWimax4GManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/WiMAX;->mWimaxController:Lcom/htc/net/wimax/WimaxController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/WiMAX;->mHtcWimax4GManager:Lcom/htc/net/wimax/HTCWimax4GManager;

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "WiMAXStatusBarPreference"

    const-string v1, "get null WiMAX instance"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/WiMAX;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/WiMAX;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.htc.net.wimax.WIMAX_ENABLED_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/WiMAX;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.htc.net.wimax.WIMAX_4G_AVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/WiMAX;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/WiMAX;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/WiMAX;->updateToggles()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/WiMAX;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public updateResources()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->updateResources()V

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x94

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f08008f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void

    :cond_0
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x50

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f080091

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f080092

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f080090

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
