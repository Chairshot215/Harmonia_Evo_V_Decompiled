.class public Lcom/google/android/gm/SearchTwoPaneActivityController;
.super Lcom/google/android/gm/TwoPaneActivityController;
.source "SearchTwoPaneActivityController.java"


# instance fields
.field private mLabelsView:Landroid/view/View;


# direct methods
.method protected constructor <init>(Lcom/google/android/gm/ActivityController$ControllableActivity;Lcom/google/android/gm/ViewMode;)V
    .locals 0
    .parameter "activity"
    .parameter "viewMode"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/google/android/gm/TwoPaneActivityController;-><init>(Lcom/google/android/gm/ActivityController$ControllableActivity;Lcom/google/android/gm/ViewMode;)V

    .line 23
    return-void
.end method


# virtual methods
.method public handleBackPressed()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 46
    iget-object v1, p0, Lcom/google/android/gm/SearchTwoPaneActivityController;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v1}, Lcom/google/android/gm/ViewMode;->isConversationMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    iget-object v1, p0, Lcom/google/android/gm/SearchTwoPaneActivityController;->mActionBarView:Lcom/google/android/gm/ActionBarView;

    invoke-interface {v1, v0}, Lcom/google/android/gm/ActionBarView;->setMode(I)Z

    .line 49
    iget-object v1, p0, Lcom/google/android/gm/SearchTwoPaneActivityController;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v1}, Lcom/google/android/gm/ViewMode;->transitionToConversationListMode()Z

    .line 52
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/google/android/gm/TwoPaneActivityController;->handleBackPressed()Z

    move-result v0

    goto :goto_0
.end method

.method public handleUpPressed()V
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/gm/SearchTwoPaneActivityController;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v0}, Lcom/google/android/gm/ViewMode;->isConversationMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/google/android/gm/SearchTwoPaneActivityController;->mActionBarView:Lcom/google/android/gm/ActionBarView;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/gm/ActionBarView;->setMode(I)Z

    .line 38
    iget-object v0, p0, Lcom/google/android/gm/SearchTwoPaneActivityController;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v0}, Lcom/google/android/gm/ViewMode;->transitionToConversationListMode()Z

    .line 42
    :goto_0
    return-void

    .line 40
    :cond_0
    invoke-super {p0}, Lcom/google/android/gm/TwoPaneActivityController;->handleUpPressed()V

    goto :goto_0
.end method

.method public initialize(Landroid/os/Bundle;)Z
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/google/android/gm/TwoPaneActivityController;->initialize(Landroid/os/Bundle;)Z

    move-result v0

    .line 28
    .local v0, handled:Z
    iget-object v1, p0, Lcom/google/android/gm/SearchTwoPaneActivityController;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    const v2, 0x7f0f00c0

    invoke-interface {v1, v2}, Lcom/google/android/gm/ActivityController$ControllableActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/SearchTwoPaneActivityController;->mLabelsView:Landroid/view/View;

    .line 29
    iget-object v1, p0, Lcom/google/android/gm/SearchTwoPaneActivityController;->mLabelsView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 30
    return v0
.end method

.method protected showConversationInternal(Lcom/google/android/gm/ConversationInfo;Z)V
    .locals 2
    .parameter "info"
    .parameter "autoCollapseList"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/gm/SearchTwoPaneActivityController;->mActionBarView:Lcom/google/android/gm/ActionBarView;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/google/android/gm/ActionBarView;->setMode(I)Z

    .line 59
    invoke-super {p0, p1, p2}, Lcom/google/android/gm/TwoPaneActivityController;->showConversationInternal(Lcom/google/android/gm/ConversationInfo;Z)V

    .line 60
    return-void
.end method
