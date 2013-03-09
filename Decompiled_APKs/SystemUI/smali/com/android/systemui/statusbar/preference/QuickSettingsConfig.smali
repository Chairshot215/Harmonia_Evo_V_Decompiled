.class public Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;
.super Landroid/widget/LinearLayout;
.source "QuickSettingsConfig.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "QuickSettingsConfig"


# instance fields
.field private mCarrierAppView:Lcom/android/systemui/statusbar/phone/CarrierAppView;

.field private mContext:Landroid/content/Context;

.field private mMobileConfigView:Lcom/android/systemui/statusbar/phone/MobileConfigView;

.field private mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mSettingTitle:Lcom/android/systemui/statusbar/phone/TitleView;

.field private mSettingTitleListener:Landroid/view/View$OnClickListener;

.field private mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

.field private mWlanConfigView:Lcom/android/systemui/statusbar/phone/WlanConfigView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    new-instance v0, Lcom/android/systemui/statusbar/preference/QuickSettingsConfig$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/QuickSettingsConfig$1;-><init>(Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;->mSettingTitleListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;->mContext:Landroid/content/Context;

    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_SKIN:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/StatusBarStyleable;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/StatusBarStyleable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private init()V
    .locals 0

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0e003e

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/MobileConfigView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;->mMobileConfigView:Lcom/android/systemui/statusbar/phone/MobileConfigView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;->mMobileConfigView:Lcom/android/systemui/statusbar/phone/MobileConfigView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/MobileConfigView;->setVisibility(I)V

    const v0, 0x7f0e0045

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/WlanConfigView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;->mWlanConfigView:Lcom/android/systemui/statusbar/phone/WlanConfigView;

    const v0, 0x7f0e004a

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/CarrierAppView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;->mCarrierAppView:Lcom/android/systemui/statusbar/phone/CarrierAppView;

    const v0, 0x7f0e004c

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/TitleView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;->mSettingTitle:Lcom/android/systemui/statusbar/phone/TitleView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;->mSettingTitle:Lcom/android/systemui/statusbar/phone/TitleView;

    const v1, 0x7f0800b7

    invoke-virtual {v0, v2, v1, v2}, Lcom/android/systemui/statusbar/phone/TitleView;->updateName(ZIZ)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;->mSettingTitle:Lcom/android/systemui/statusbar/phone/TitleView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;->mSettingTitleListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/TitleView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;->mSettingTitle:Lcom/android/systemui/statusbar/phone/TitleView;

    const v1, 0x7f02004f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/TitleView;->setButtonImageResource(I)V

    return-void
.end method

.method public onStart()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;->mMobileConfigView:Lcom/android/systemui/statusbar/phone/MobileConfigView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/MobileConfigView;->onStart()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;->mWlanConfigView:Lcom/android/systemui/statusbar/phone/WlanConfigView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/WlanConfigView;->onStart()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;->mCarrierAppView:Lcom/android/systemui/statusbar/phone/CarrierAppView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CarrierAppView;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;->mMobileConfigView:Lcom/android/systemui/statusbar/phone/MobileConfigView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/MobileConfigView;->onStop()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;->mWlanConfigView:Lcom/android/systemui/statusbar/phone/WlanConfigView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/WlanConfigView;->onStop()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;->mCarrierAppView:Lcom/android/systemui/statusbar/phone/CarrierAppView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CarrierAppView;->onStop()V

    return-void
.end method

.method public setService(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;->mMobileConfigView:Lcom/android/systemui/statusbar/phone/MobileConfigView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/MobileConfigView;->setService(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;->mWlanConfigView:Lcom/android/systemui/statusbar/phone/WlanConfigView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/WlanConfigView;->setService(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;->mCarrierAppView:Lcom/android/systemui/statusbar/phone/CarrierAppView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/CarrierAppView;->setService(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    return-void
.end method

.method public updateResources()V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_SKIN:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarStyleable;->updateStyleName()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;->mMobileConfigView:Lcom/android/systemui/statusbar/phone/MobileConfigView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/MobileConfigView;->updateResources()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;->mWlanConfigView:Lcom/android/systemui/statusbar/phone/WlanConfigView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/WlanConfigView;->updateResources()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;->mCarrierAppView:Lcom/android/systemui/statusbar/phone/CarrierAppView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CarrierAppView;->updateResources()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;->mSettingTitle:Lcom/android/systemui/statusbar/phone/TitleView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TitleView;->updateResources()V

    return-void
.end method
