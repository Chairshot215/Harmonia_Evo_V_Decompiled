.class public Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;
.super Landroid/widget/ListView;
.source "SuggestionsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/googlequicksearchbox/ui/SuggestionsView$FocusStateBackup;
    }
.end annotation


# instance fields
.field private mController:Lcom/google/android/googlequicksearchbox/ui/SuggestionsController;

.field private mRestoreFocusFromTouchMode:Landroid/view/View;

.field private mTouchModeInconsistent:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method private backupFocusState()Lcom/google/android/googlequicksearchbox/ui/SuggestionsView$FocusStateBackup;
    .locals 2

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 118
    .local v0, focused:Landroid/view/View;
    instance-of v1, v0, Lcom/google/android/googlequicksearchbox/ui/SuggestionView;

    if-eqz v1, :cond_0

    .line 119
    new-instance v1, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView$FocusStateBackup;

    check-cast v0, Lcom/google/android/googlequicksearchbox/ui/SuggestionView;

    .end local v0           #focused:Landroid/view/View;
    invoke-direct {v1, p0, v0}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView$FocusStateBackup;-><init>(Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;Lcom/google/android/googlequicksearchbox/ui/SuggestionView;)V

    .line 121
    :goto_0
    return-object v1

    .restart local v0       #focused:Landroid/view/View;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private restoreFocusLostInSwitchToTouchMode()V
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;->mRestoreFocusFromTouchMode:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;->mRestoreFocusFromTouchMode:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocusFromTouch()Z

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;->mRestoreFocusFromTouchMode:Landroid/view/View;

    .line 114
    :cond_0
    return-void
.end method


# virtual methods
.method public checkForInconsistentTouchMode()V
    .locals 3

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;->isInTouchMode()Z

    move-result v0

    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/view/View;->isInTouchMode()Z

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;->mTouchModeInconsistent:Z

    .line 106
    return-void

    .line 105
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected layoutChildren()V
    .locals 1

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;->restoreFocusLostInSwitchToTouchMode()V

    .line 128
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;->backupFocusState()Lcom/google/android/googlequicksearchbox/ui/SuggestionsView$FocusStateBackup;

    move-result-object v0

    .line 129
    .local v0, focusState:Lcom/google/android/googlequicksearchbox/ui/SuggestionsView$FocusStateBackup;
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 131
    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView$FocusStateBackup;->restore()V

    .line 134
    :cond_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 60
    invoke-super {p0}, Landroid/widget/ListView;->onFinishInflate()V

    .line 61
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;->setItemsCanFocus(Z)V

    .line 62
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 67
    const/16 v1, 0x42

    if-eq p1, v1, :cond_0

    const/16 v1, 0x54

    if-eq p1, v1, :cond_0

    const/16 v1, 0x17

    if-ne p1, v1, :cond_1

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 71
    .local v0, selected:Landroid/view/View;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    const/4 v1, 0x1

    .line 76
    .end local v0           #selected:Landroid/view/View;
    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 6
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 138
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onSizeChanged(IIII)V

    .line 139
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;->mController:Lcom/google/android/googlequicksearchbox/ui/SuggestionsController;

    if-eqz v4, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 147
    .local v3, suggestionHeight:I
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0009

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 150
    .local v2, separatorHeight:I
    div-int/lit8 v4, v3, 0x2

    add-int/2addr p2, v4

    .line 151
    add-int v4, v3, v2

    div-int v0, p2, v4

    .line 153
    .local v0, numVisibleSuggestions:I
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v1, v4, Landroid/content/res/Configuration;->orientation:I

    .line 154
    .local v1, orientation:I
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;->mController:Lcom/google/android/googlequicksearchbox/ui/SuggestionsController;

    invoke-interface {v4, v1, v0}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsController;->setNumVisibleSuggestions(II)V

    .line 156
    .end local v0           #numVisibleSuggestions:I
    .end local v1           #orientation:I
    .end local v2           #separatorHeight:I
    .end local v3           #suggestionHeight:I
    :cond_0
    return-void
.end method

.method public onTouchModeChanged(Z)V
    .locals 2
    .parameter "isInTouchMode"

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 82
    .local v0, focused:Landroid/view/View;
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchModeChanged(Z)V

    .line 84
    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;->mTouchModeInconsistent:Z

    if-eqz v1, :cond_0

    .line 93
    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;->mRestoreFocusFromTouchMode:Landroid/view/View;

    .line 94
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;->mTouchModeInconsistent:Z

    .line 96
    :cond_0
    return-void
.end method

.method public setSuggestionsController(Lcom/google/android/googlequicksearchbox/ui/SuggestionsController;)V
    .locals 0
    .parameter "controller"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;->mController:Lcom/google/android/googlequicksearchbox/ui/SuggestionsController;

    .line 56
    return-void
.end method
