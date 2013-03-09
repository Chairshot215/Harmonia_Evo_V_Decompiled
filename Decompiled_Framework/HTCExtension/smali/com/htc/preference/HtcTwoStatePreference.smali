.class public abstract Lcom/htc/preference/HtcTwoStatePreference;
.super Lcom/htc/preference/HtcPreference;
.source "HtcTwoStatePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/preference/HtcTwoStatePreference$SavedState;
    }
.end annotation


# instance fields
.field mChecked:Z

.field private mDisableDependentsState:Z

.field private mSendClickAccessibilityEvent:Z

.field private mSummaryOff:Ljava/lang/CharSequence;

.field private mSummaryOn:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/preference/HtcTwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/preference/HtcTwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getDisableDependentsState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/preference/HtcTwoStatePreference;->mDisableDependentsState:Z

    return v0
.end method

.method public getSummaryOff()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/htc/preference/HtcTwoStatePreference;->mSummaryOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSummaryOn()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/htc/preference/HtcTwoStatePreference;->mSummaryOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/preference/HtcTwoStatePreference;->mChecked:Z

    return v0
.end method

.method protected onClick()V
    .locals 3

    const/4 v1, 0x1

    invoke-super {p0}, Lcom/htc/preference/HtcPreference;->onClick()V

    invoke-virtual {p0}, Lcom/htc/preference/HtcTwoStatePreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v1, p0, Lcom/htc/preference/HtcTwoStatePreference;->mSendClickAccessibilityEvent:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcTwoStatePreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcTwoStatePreference;->setChecked(Z)V

    goto :goto_1
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/htc/preference/HtcTwoStatePreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/htc/preference/HtcTwoStatePreference$SavedState;

    invoke-virtual {v0}, Lcom/htc/preference/HtcTwoStatePreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/htc/preference/HtcPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-boolean v1, v0, Lcom/htc/preference/HtcTwoStatePreference$SavedState;->checked:Z

    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcTwoStatePreference;->setChecked(Z)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Lcom/htc/preference/HtcPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/preference/HtcTwoStatePreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v1

    :cond_0
    new-instance v0, Lcom/htc/preference/HtcTwoStatePreference$SavedState;

    invoke-direct {v0, v1}, Lcom/htc/preference/HtcTwoStatePreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Lcom/htc/preference/HtcTwoStatePreference;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Lcom/htc/preference/HtcTwoStatePreference$SavedState;->checked:Z

    move-object v1, v0

    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/htc/preference/HtcTwoStatePreference;->mChecked:Z

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcTwoStatePreference;->getPersistedBoolean(Z)Z

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcTwoStatePreference;->setChecked(Z)V

    return-void

    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method sendAccessibilityEvent(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Lcom/htc/preference/HtcTwoStatePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    iget-boolean v2, p0, Lcom/htc/preference/HtcTwoStatePreference;->mSendClickAccessibilityEvent:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/preference/HtcTwoStatePreference;->mSendClickAccessibilityEvent:Z

    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/preference/HtcTwoStatePreference;->mChecked:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/htc/preference/HtcTwoStatePreference;->mChecked:Z

    invoke-virtual {p0, p1}, Lcom/htc/preference/HtcTwoStatePreference;->persistBoolean(Z)Z

    invoke-virtual {p0}, Lcom/htc/preference/HtcTwoStatePreference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcTwoStatePreference;->notifyDependencyChange(Z)V

    invoke-virtual {p0}, Lcom/htc/preference/HtcTwoStatePreference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setDisableDependentsState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/preference/HtcTwoStatePreference;->mDisableDependentsState:Z

    return-void
.end method

.method public setSummaryOff(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/preference/HtcTwoStatePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcTwoStatePreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSummaryOff(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/preference/HtcTwoStatePreference;->mSummaryOff:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/htc/preference/HtcTwoStatePreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/preference/HtcTwoStatePreference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setSummaryOn(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/preference/HtcTwoStatePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcTwoStatePreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSummaryOn(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/preference/HtcTwoStatePreference;->mSummaryOn:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/htc/preference/HtcTwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/preference/HtcTwoStatePreference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v3, p0, Lcom/htc/preference/HtcTwoStatePreference;->mDisableDependentsState:Z

    if-eqz v3, :cond_2

    iget-boolean v0, p0, Lcom/htc/preference/HtcTwoStatePreference;->mChecked:Z

    :goto_0
    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/htc/preference/HtcPreference;->shouldDisableDependents()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1

    :cond_2
    iget-boolean v3, p0, Lcom/htc/preference/HtcTwoStatePreference;->mChecked:Z

    if-nez v3, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method syncSummaryView(Landroid/view/View;)V
    .locals 5

    const v4, 0x1020010

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_3

    const/4 v3, 0x1

    iget-boolean v4, p0, Lcom/htc/preference/HtcTwoStatePreference;->mChecked:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/htc/preference/HtcTwoStatePreference;->mSummaryOn:Ljava/lang/CharSequence;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/htc/preference/HtcTwoStatePreference;->mSummaryOn:Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/htc/preference/HtcTwoStatePreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    :cond_1
    const/16 v0, 0x8

    if-nez v3, :cond_2

    const/4 v0, 0x0

    :cond_2
    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-eq v0, v4, :cond_3

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    return-void

    :cond_4
    iget-boolean v4, p0, Lcom/htc/preference/HtcTwoStatePreference;->mChecked:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/htc/preference/HtcTwoStatePreference;->mSummaryOff:Ljava/lang/CharSequence;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/preference/HtcTwoStatePreference;->mSummaryOff:Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    goto :goto_0
.end method
