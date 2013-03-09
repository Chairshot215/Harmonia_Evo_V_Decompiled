.class public Lcom/android/browser/preferences/SeekBarSummaryPreference;
.super Landroid/preference/SeekBarPreference;
.source "SeekBarSummaryPreference.java"


# instance fields
.field mSummary:Ljava/lang/CharSequence;

.field mSummaryView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/preference/SeekBarPreference;-><init>(Landroid/content/Context;)V

    .line 47
    invoke-virtual {p0}, Lcom/android/browser/preferences/SeekBarSummaryPreference;->init()V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    invoke-virtual {p0}, Lcom/android/browser/preferences/SeekBarSummaryPreference;->init()V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    invoke-virtual {p0}, Lcom/android/browser/preferences/SeekBarSummaryPreference;->init()V

    .line 38
    return-void
.end method


# virtual methods
.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return-object v0
.end method

.method init()V
    .locals 1

    .prologue
    .line 51
    const v0, 0x7f040017

    invoke-virtual {p0, v0}, Lcom/android/browser/preferences/SeekBarSummaryPreference;->setWidgetLayoutResource(I)V

    .line 52
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/preference/SeekBarPreference;->onBindView(Landroid/view/View;)V

    .line 70
    const v0, 0x7f0d0047

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/browser/preferences/SeekBarSummaryPreference;->mSummaryView:Landroid/widget/TextView;

    .line 71
    iget-object v0, p0, Lcom/android/browser/preferences/SeekBarSummaryPreference;->mSummary:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/browser/preferences/SeekBarSummaryPreference;->mSummaryView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/android/browser/preferences/SeekBarSummaryPreference;->mSummaryView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 75
    iget-object v0, p0, Lcom/android/browser/preferences/SeekBarSummaryPreference;->mSummaryView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/browser/preferences/SeekBarSummaryPreference;->mSummary:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 82
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 87
    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "summary"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/browser/preferences/SeekBarSummaryPreference;->mSummary:Ljava/lang/CharSequence;

    .line 57
    iget-object v0, p0, Lcom/android/browser/preferences/SeekBarSummaryPreference;->mSummaryView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/android/browser/preferences/SeekBarSummaryPreference;->mSummaryView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/browser/preferences/SeekBarSummaryPreference;->mSummary:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    :cond_0
    return-void
.end method
