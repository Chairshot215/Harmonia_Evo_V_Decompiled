.class public Lcom/android/systemui/statusbar/preference/ScreenOn;
.super Lcom/android/systemui/statusbar/preference/StatusBarPreference;
.source "ScreenOn.java"


# instance fields
.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;-><init>(Landroid/content/Context;Landroid/view/View;)V

    new-instance v0, Lcom/android/systemui/statusbar/preference/ScreenOn$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/ScreenOn$1;-><init>(Lcom/android/systemui/statusbar/preference/ScreenOn;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/ScreenOn;->mClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/systemui/statusbar/preference/ScreenOn$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/ScreenOn$2;-><init>(Lcom/android/systemui/statusbar/preference/ScreenOn;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/ScreenOn;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preference/ScreenOn;->init()V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/ScreenOn;->mTitle:Landroid/widget/TextView;

    const v2, 0x7f0800cd

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/ScreenOn;->mSummary:Landroid/widget/TextView;

    const v2, 0x104039f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/ScreenOn;->mIcon:Landroid/widget/ImageView;

    const v2, 0x7f02019a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/ScreenOn;->mContentView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/ScreenOn;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/ScreenOn;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public onStart()V
    .locals 4

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/ScreenOn;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_off_timeout"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/ScreenOn;->mSummary:Landroid/widget/TextView;

    const v3, 0x104039f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/ScreenOn;->mCheckBox:Lcom/htc/widget/HtcToggleButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcToggleButton;->setChecked(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/ScreenOn;->mSummary:Landroid/widget/TextView;

    const v3, 0x10403a0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/ScreenOn;->mCheckBox:Lcom/htc/widget/HtcToggleButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcToggleButton;->setChecked(Z)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method public updateResources()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->updateResources()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/ScreenOn;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f0800cd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
