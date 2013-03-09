.class public Lcom/android/settings/framework/preference/HtcProgressListPreference;
.super Lcom/htc/preference/HtcListPreference;
.source "HtcProgressListPreference.java"


# instance fields
.field protected mIcon:Landroid/widget/ImageView;

.field protected mInitialized:Z

.field protected mProgress:Landroid/widget/ProgressBar;

.field protected mProgressBarVisibility:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcListPreference;-><init>(Landroid/content/Context;)V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/HtcProgressListPreference;->mInitialized:Z

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/HtcProgressListPreference;->mProgressBarVisibility:Z

    .line 24
    invoke-direct {p0}, Lcom/android/settings/framework/preference/HtcProgressListPreference;->initialize()V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/HtcProgressListPreference;->mInitialized:Z

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/HtcProgressListPreference;->mProgressBarVisibility:Z

    .line 33
    invoke-direct {p0}, Lcom/android/settings/framework/preference/HtcProgressListPreference;->initialize()V

    .line 34
    return-void
.end method

.method private initialize()V
    .locals 1

    .prologue
    .line 37
    const v0, 0x7f040043

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/HtcProgressListPreference;->setWidgetLayoutResource(I)V

    .line 38
    return-void
.end method

.method private updateUIVisibility()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 72
    iget-boolean v0, p0, Lcom/android/settings/framework/preference/HtcProgressListPreference;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 73
    iget-boolean v0, p0, Lcom/android/settings/framework/preference/HtcProgressListPreference;->mProgressBarVisibility:Z

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcProgressListPreference;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 75
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcProgressListPreference;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcProgressListPreference;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcProgressListPreference;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/htc/preference/HtcListPreference;->onBindView(Landroid/view/View;)V

    .line 44
    iget-boolean v0, p0, Lcom/android/settings/framework/preference/HtcProgressListPreference;->mInitialized:Z

    if-nez v0, :cond_0

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/HtcProgressListPreference;->mInitialized:Z

    .line 48
    const v0, 0x7f0800c5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcProgressListPreference;->mIcon:Landroid/widget/ImageView;

    .line 50
    const v0, 0x7f0800c6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcProgressListPreference;->mProgress:Landroid/widget/ProgressBar;

    .line 52
    invoke-direct {p0}, Lcom/android/settings/framework/preference/HtcProgressListPreference;->updateUIVisibility()V

    .line 54
    :cond_0
    return-void
.end method

.method public setProgressBarVisibility(Z)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/android/settings/framework/preference/HtcProgressListPreference;->mProgressBarVisibility:Z

    if-eq p1, v0, :cond_0

    .line 63
    iput-boolean p1, p0, Lcom/android/settings/framework/preference/HtcProgressListPreference;->mProgressBarVisibility:Z

    .line 64
    invoke-direct {p0}, Lcom/android/settings/framework/preference/HtcProgressListPreference;->updateUIVisibility()V

    .line 66
    :cond_0
    return-void
.end method
