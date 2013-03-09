.class public Lcom/android/systemui/statusbar/tablet/SettingsView;
.super Landroid/widget/LinearLayout;
.source "SettingsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field static final TAG:Ljava/lang/String; = "SettingsView"


# instance fields
.field mAirplane:Lcom/android/systemui/statusbar/policy/AirplaneModeController;

.field mBrightness:Lcom/android/systemui/statusbar/policy/BrightnessController;

.field mDoNotDisturb:Lcom/android/systemui/statusbar/policy/DoNotDisturbController;

.field mRotate:Lcom/android/systemui/statusbar/policy/AutoRotateController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/tablet/SettingsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private getStatusBarManager()Landroid/app/StatusBarManager;
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/SettingsView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    return-object v0
.end method

.method private onClickNetwork()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/SettingsView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.WIFI_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/SettingsView;->getStatusBarManager()Landroid/app/StatusBarManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapse()V

    return-void
.end method

.method private onClickSettings()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/SettingsView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/SettingsView;->getStatusBarManager()Landroid/app/StatusBarManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapse()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/SettingsView;->onClickNetwork()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/SettingsView;->onClickSettings()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f0e0031 -> :sswitch_0
        0x7f0e003a -> :sswitch_1
    .end sparse-switch
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mAirplane:Lcom/android/systemui/statusbar/policy/AirplaneModeController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/AirplaneModeController;->release()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mDoNotDisturb:Lcom/android/systemui/statusbar/policy/DoNotDisturbController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->release()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/SettingsView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/statusbar/policy/AirplaneModeController;

    const v1, 0x7f0e00c6

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/tablet/SettingsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton;

    invoke-direct {v2, v0, v1}, Lcom/android/systemui/statusbar/policy/AirplaneModeController;-><init>(Landroid/content/Context;Landroid/widget/CompoundButton;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mAirplane:Lcom/android/systemui/statusbar/policy/AirplaneModeController;

    const v1, 0x7f0e0031

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/tablet/SettingsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lcom/android/systemui/statusbar/policy/AutoRotateController;

    const v1, 0x7f0e00cc

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/tablet/SettingsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton;

    invoke-direct {v2, v0, v1}, Lcom/android/systemui/statusbar/policy/AutoRotateController;-><init>(Landroid/content/Context;Landroid/widget/CompoundButton;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mRotate:Lcom/android/systemui/statusbar/policy/AutoRotateController;

    new-instance v2, Lcom/android/systemui/statusbar/policy/BrightnessController;

    const v1, 0x7f0e002e

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/tablet/SettingsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/ToggleSlider;

    invoke-direct {v2, v0, v1}, Lcom/android/systemui/statusbar/policy/BrightnessController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ToggleSlider;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mBrightness:Lcom/android/systemui/statusbar/policy/BrightnessController;

    new-instance v2, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;

    const v1, 0x7f0e00d0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/tablet/SettingsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton;

    invoke-direct {v2, v0, v1}, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;-><init>(Landroid/content/Context;Landroid/widget/CompoundButton;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mDoNotDisturb:Lcom/android/systemui/statusbar/policy/DoNotDisturbController;

    const v1, 0x7f0e003a

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/tablet/SettingsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
