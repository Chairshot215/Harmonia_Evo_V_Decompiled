.class public Lcom/android/settings/ProgressCategory;
.super Lcom/android/settings/ProgressCategoryBase;
.source "ProgressCategory.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNoDeviceFoundAdded:Z

.field private mNoDeviceFoundPreference:Lcom/htc/preference/HtcPreference;

.field private mProgress:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/settings/ProgressCategoryBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    .line 35
    iput-object p1, p0, Lcom/android/settings/ProgressCategory;->mContext:Landroid/content/Context;

    .line 36
    const v0, 0x7f04006c

    invoke-virtual {p0, v0}, Lcom/android/settings/ProgressCategory;->setLayoutResource(I)V

    .line 37
    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 9
    .parameter "view"

    .prologue
    const v8, 0x203002a

    const/4 v5, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 41
    invoke-super {p0, p1}, Lcom/android/settings/ProgressCategoryBase;->onBindView(Landroid/view/View;)V

    .line 43
    const v4, 0x1020016

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 44
    .local v3, title:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/android/settings/ProgressCategory;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v8}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 45
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 46
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 48
    const v4, 0x7f0800ff

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 49
    .local v2, textView:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/android/settings/ProgressCategory;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4, v8}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 50
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 51
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 53
    const v4, 0x7f080100

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 55
    .local v1, progressBar:Landroid/view/View;
    iget-boolean v4, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    if-eqz v4, :cond_4

    const v4, 0x7f0c07cb

    :goto_0
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/ProgressCategory;->getPreferenceCount()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/ProgressCategory;->getPreferenceCount()I

    move-result v4

    if-ne v4, v7, :cond_5

    invoke-virtual {p0, v6}, Lcom/android/settings/ProgressCategory;->getPreference(I)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    iget-object v8, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Lcom/htc/preference/HtcPreference;

    if-ne v4, v8, :cond_5

    :cond_0
    move v0, v7

    .line 58
    .local v0, noDeviceFound:Z
    :goto_1
    if-eqz v0, :cond_6

    move v4, v5

    :goto_2
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 59
    iget-boolean v4, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    if-eqz v4, :cond_1

    move v5, v6

    :cond_1
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 61
    iget-boolean v4, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    if-nez v4, :cond_2

    if-nez v0, :cond_7

    .line 62
    :cond_2
    iget-boolean v4, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundAdded:Z

    if-eqz v4, :cond_3

    .line 63
    iget-object v4, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0, v4}, Lcom/android/settings/ProgressCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 64
    iput-boolean v6, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundAdded:Z

    .line 78
    :cond_3
    :goto_3
    return-void

    .line 55
    .end local v0           #noDeviceFound:Z
    :cond_4
    const v4, 0x7f0c07cc

    goto :goto_0

    :cond_5
    move v0, v6

    .line 56
    goto :goto_1

    .restart local v0       #noDeviceFound:Z
    :cond_6
    move v4, v6

    .line 58
    goto :goto_2

    .line 67
    :cond_7
    iget-boolean v4, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundAdded:Z

    if-nez v4, :cond_3

    .line 68
    iget-object v4, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Lcom/htc/preference/HtcPreference;

    if-nez v4, :cond_8

    .line 69
    new-instance v4, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/android/settings/ProgressCategory;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Lcom/htc/preference/HtcPreference;

    .line 70
    iget-object v4, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Lcom/htc/preference/HtcPreference;

    const v5, 0x7f040064

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreference;->setLayoutResource(I)V

    .line 71
    iget-object v4, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Lcom/htc/preference/HtcPreference;

    const v5, 0x7f0c07cd

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 72
    iget-object v4, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v4, v6}, Lcom/htc/preference/HtcPreference;->setSelectable(Z)V

    .line 74
    :cond_8
    iget-object v4, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0, v4}, Lcom/android/settings/ProgressCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 75
    iput-boolean v7, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundAdded:Z

    goto :goto_3
.end method

.method public setProgress(Z)V
    .locals 0
    .parameter "progressOn"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/ProgressCategory;->notifyChanged()V

    .line 84
    return-void
.end method
