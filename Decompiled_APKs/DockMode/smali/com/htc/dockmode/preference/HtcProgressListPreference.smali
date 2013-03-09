.class public Lcom/htc/dockmode/preference/HtcProgressListPreference;
.super Lcom/htc/preference/HtcListPreference;
.source "HtcProgressListPreference.java"


# instance fields
.field protected mIcon:Landroid/widget/ImageView;

.field protected mInitialized:Z

.field protected mProgressBarVisibility:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcListPreference;-><init>(Landroid/content/Context;)V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/dockmode/preference/HtcProgressListPreference;->mInitialized:Z

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/dockmode/preference/HtcProgressListPreference;->mProgressBarVisibility:Z

    .line 23
    invoke-direct {p0}, Lcom/htc/dockmode/preference/HtcProgressListPreference;->initialize()V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/dockmode/preference/HtcProgressListPreference;->mInitialized:Z

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/dockmode/preference/HtcProgressListPreference;->mProgressBarVisibility:Z

    .line 31
    invoke-direct {p0}, Lcom/htc/dockmode/preference/HtcProgressListPreference;->initialize()V

    .line 32
    return-void
.end method

.method private initialize()V
    .locals 1

    .prologue
    .line 35
    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lcom/htc/dockmode/preference/HtcProgressListPreference;->setWidgetLayoutResource(I)V

    .line 36
    return-void
.end method

.method private updateUIVisibility()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 71
    iget-boolean v0, p0, Lcom/htc/dockmode/preference/HtcProgressListPreference;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 72
    iget-boolean v0, p0, Lcom/htc/dockmode/preference/HtcProgressListPreference;->mProgressBarVisibility:Z

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/htc/dockmode/preference/HtcProgressListPreference;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/htc/dockmode/preference/HtcProgressListPreference;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/htc/preference/HtcListPreference;->onBindView(Landroid/view/View;)V

    .line 42
    iget-boolean v0, p0, Lcom/htc/dockmode/preference/HtcProgressListPreference;->mInitialized:Z

    if-nez v0, :cond_0

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/dockmode/preference/HtcProgressListPreference;->mInitialized:Z

    .line 46
    const v0, 0x7f0a0053

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/dockmode/preference/HtcProgressListPreference;->mIcon:Landroid/widget/ImageView;

    .line 50
    invoke-direct {p0}, Lcom/htc/dockmode/preference/HtcProgressListPreference;->updateUIVisibility()V

    .line 52
    :cond_0
    return-void
.end method

.method public setProgressBarVisibility(Z)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/htc/dockmode/preference/HtcProgressListPreference;->mProgressBarVisibility:Z

    if-eq p1, v0, :cond_0

    .line 62
    iput-boolean p1, p0, Lcom/htc/dockmode/preference/HtcProgressListPreference;->mProgressBarVisibility:Z

    .line 63
    invoke-direct {p0}, Lcom/htc/dockmode/preference/HtcProgressListPreference;->updateUIVisibility()V

    .line 65
    :cond_0
    return-void
.end method
