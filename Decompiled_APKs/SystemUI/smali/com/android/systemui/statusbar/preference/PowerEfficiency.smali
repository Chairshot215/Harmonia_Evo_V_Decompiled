.class public Lcom/android/systemui/statusbar/preference/PowerEfficiency;
.super Lcom/android/systemui/statusbar/preference/StatusBarPreference;
.source "PowerEfficiency.java"


# static fields
.field public static final KEY_ENABLE_POWEREFFICIENCY:Ljava/lang/String; = "enable_power_efficiency"

.field private static final TAG:Ljava/lang/String; = "PowerEfficiencyStatusBarPreference"

.field private static final UPDATE_UI_OFF:I = 0x2

.field private static final UPDATE_UI_ON:I = 0x1


# instance fields
.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;-><init>(Landroid/content/Context;Landroid/view/View;)V

    new-instance v0, Lcom/android/systemui/statusbar/preference/PowerEfficiency$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/PowerEfficiency$1;-><init>(Lcom/android/systemui/statusbar/preference/PowerEfficiency;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/PowerEfficiency;->mClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/systemui/statusbar/preference/PowerEfficiency$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/PowerEfficiency$2;-><init>(Lcom/android/systemui/statusbar/preference/PowerEfficiency;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/PowerEfficiency;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/PowerEfficiency;->init()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/PowerEfficiency;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/preference/PowerEfficiency;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/PowerEfficiency;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/preference/PowerEfficiency;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/PowerEfficiency;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private init()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f08009a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mSummary:Landroid/widget/TextView;

    const v1, 0x10403a0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f0200bf

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContentView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/PowerEfficiency;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private updateToggles()V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/PowerEfficiency;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "enable_power_efficiency"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mCheckBox:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcToggleButton;->setChecked(Z)V

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mSummary:Landroid/widget/TextView;

    const v2, 0x104039f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mSummary:Landroid/widget/TextView;

    const v2, 0x10403a0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method


# virtual methods
.method public onStart()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/PowerEfficiency;->updateToggles()V

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method public updateResources()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->updateResources()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f08009a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
