.class public Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;
.super Lcom/htc/preference/HtcCheckBoxPreference;
.source "CheckBoxAndSettingsPreference.java"


# static fields
.field private static final DISABLED_ALPHA:F = 0.4f


# instance fields
.field private mCheckBox:Landroid/view/View;

.field private mFragment:Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;

.field private mSetingsButton:Landroid/view/View;

.field private mSettingsIntent:Landroid/content/Intent;

.field private mSummaryText:Landroid/widget/TextView;

.field private mTitleText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    const v0, 0x7f040068

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->setLayoutResource(I)V

    .line 47
    const v0, 0x7f040069

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->setWidgetLayoutResource(I)V

    .line 48
    return-void
.end method

.method private enableSettingsButton()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 122
    iget-object v1, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mSetingsButton:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 123
    iget-object v1, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mSettingsIntent:Landroid/content/Intent;

    if-nez v1, :cond_3

    .line 124
    iget-object v1, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mSetingsButton:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 136
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mTitleText:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 137
    iget-object v1, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 139
    :cond_1
    iget-object v1, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mSummaryText:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 140
    iget-object v1, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mSummaryText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 142
    :cond_2
    return-void

    .line 126
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->isChecked()Z

    move-result v0

    .line 127
    .local v0, checked:Z
    iget-object v1, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mSetingsButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 128
    iget-object v1, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mSetingsButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 129
    iget-object v1, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mSetingsButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 130
    if-nez v0, :cond_0

    .line 131
    iget-object v1, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mSetingsButton:Landroid/view/View;

    const v2, 0x3ecccccd

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v4, 0x0

    .line 52
    invoke-super {p0, p1}, Lcom/htc/preference/HtcCheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 53
    const v2, 0x7f080111

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mCheckBox:Landroid/view/View;

    .line 54
    iget-object v2, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mCheckBox:Landroid/view/View;

    new-instance v3, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference$1;

    invoke-direct {v3, p0}, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference$1;-><init>(Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "item_background_holo_dark"

    invoke-static {v2, v3, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 66
    .local v0, resId1:I
    if-eqz v0, :cond_0

    .line 67
    iget-object v2, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mCheckBox:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 71
    :cond_0
    const v2, 0x7f080112

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mSetingsButton:Landroid/view/View;

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "item_background_holo_dark"

    invoke-static {v2, v3, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 76
    .local v1, resId2:I
    if-eqz v1, :cond_1

    .line 77
    iget-object v2, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mSetingsButton:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 81
    :cond_1
    const v2, 0x1020016

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mTitleText:Landroid/widget/TextView;

    .line 82
    const v2, 0x1020010

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mSummaryText:Landroid/widget/TextView;

    .line 83
    iget-object v2, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mSetingsButton:Landroid/view/View;

    new-instance v3, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference$2;

    invoke-direct {v3, p0}, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference$2;-><init>(Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    invoke-direct {p0}, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->enableSettingsButton()V

    .line 92
    return-void
.end method

.method protected onCheckBoxClicked()V
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->setChecked(Z)V

    .line 112
    :goto_0
    return-void

    .line 110
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method protected onSettingsButtonClicked(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mFragment:Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mSettingsIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mFragment:Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;

    iget-object v1, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mSettingsIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->startActivity(Landroid/content/Intent;)V

    .line 118
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 98
    invoke-direct {p0}, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->enableSettingsButton()V

    .line 99
    return-void
.end method

.method public setFragmentIntent(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Landroid/content/Intent;)V
    .locals 0
    .parameter "fragment"
    .parameter "intent"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mFragment:Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;

    .line 103
    iput-object p2, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mSettingsIntent:Landroid/content/Intent;

    .line 104
    return-void
.end method
