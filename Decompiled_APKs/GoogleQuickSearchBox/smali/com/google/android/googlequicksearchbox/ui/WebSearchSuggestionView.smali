.class public Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;
.super Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;
.source "WebSearchSuggestionView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView$ViewType;
    }
.end annotation


# instance fields
.field private mBoundSuggestionForQuery:Ljava/lang/String;

.field private mButtonDivider:Landroid/view/View;

.field private mIconAndText1:Landroid/view/View;

.field private mRemoveFromHistoryButton:Landroid/widget/ImageView;

.field private mRemoveFromHistoryButtonAnimation:Lcom/google/android/googlequicksearchbox/ui/DisablingAnimator;

.field private mShowingRemoveFromHistory:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method private setIsHistorySuggestion(ZZ)V
    .locals 3
    .parameter "isHistory"
    .parameter "showRemoveButton"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 108
    if-eqz p1, :cond_2

    .line 109
    if-eqz p2, :cond_1

    .line 110
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;->mRemoveFromHistoryButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;->mButtonDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;->mIcon1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 113
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;->mShowingRemoveFromHistory:Z

    if-nez v0, :cond_0

    .line 114
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;->startRemoveFromHistoryButtonAnimation()V

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;->stopRemoveFromHistoryButtonAnimation()V

    .line 118
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;->mIcon1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;->mRemoveFromHistoryButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;->mButtonDivider:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 123
    :cond_2
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;->stopRemoveFromHistoryButtonAnimation()V

    .line 124
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;->mIcon1:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;->mRemoveFromHistoryButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;->mButtonDivider:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private startRemoveFromHistoryButtonAnimation()V
    .locals 3

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;->mRemoveFromHistoryButtonAnimation:Lcom/google/android/googlequicksearchbox/ui/DisablingAnimator;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Lcom/google/android/googlequicksearchbox/ui/DisablingAnimator;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;->mRemoveFromHistoryButton:Landroid/widget/ImageView;

    const/high16 v2, 0x7f06

    invoke-direct {v0, v1, v2}, Lcom/google/android/googlequicksearchbox/ui/DisablingAnimator;-><init>(Landroid/view/View;I)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;->mRemoveFromHistoryButtonAnimation:Lcom/google/android/googlequicksearchbox/ui/DisablingAnimator;

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;->mRemoveFromHistoryButtonAnimation:Lcom/google/android/googlequicksearchbox/ui/DisablingAnimator;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/ui/DisablingAnimator;->start()V

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;->mShowingRemoveFromHistory:Z

    .line 137
    return-void
.end method

.method private stopRemoveFromHistoryButtonAnimation()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;->mRemoveFromHistoryButtonAnimation:Lcom/google/android/googlequicksearchbox/ui/DisablingAnimator;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;->mRemoveFromHistoryButtonAnimation:Lcom/google/android/googlequicksearchbox/ui/DisablingAnimator;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/ui/DisablingAnimator;->end()V

    .line 143
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;->mShowingRemoveFromHistory:Z

    .line 144
    return-void
.end method


# virtual methods
.method public bindAsSuggestion(Lcom/google/android/googlequicksearchbox/QsbContext;Lcom/google/android/googlequicksearchbox/Suggestion;Ljava/lang/String;Z)Z
    .locals 8
    .parameter "context"
    .parameter "suggestion"
    .parameter "userQuery"
    .parameter "showRemoveFromHistory"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 80
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->bindAsSuggestion(Lcom/google/android/googlequicksearchbox/QsbContext;Lcom/google/android/googlequicksearchbox/Suggestion;Ljava/lang/String;Z)Z

    move-result v0

    .line 83
    .local v0, newlyBound:Z
    invoke-virtual {p2}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionText1()Ljava/lang/CharSequence;

    move-result-object v1

    .line 84
    .local v1, suggested:Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;->mBoundSuggestionForQuery:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 85
    :cond_0
    invoke-virtual {p0, v1, p3}, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;->formatSuggestion(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;->setText1(Ljava/lang/CharSequence;)V

    .line 86
    iput-object p3, p0, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;->mBoundSuggestionForQuery:Ljava/lang/String;

    .line 88
    :cond_1
    if-nez v0, :cond_2

    iget-boolean v2, p0, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;->mShowingRemoveFromHistory:Z

    if-eq v2, p4, :cond_3

    .line 89
    :cond_2
    invoke-virtual {p2}, Lcom/google/android/googlequicksearchbox/Suggestion;->isHistorySuggestion()Z

    move-result v2

    invoke-direct {p0, v2, p4}, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;->setIsHistorySuggestion(ZZ)V

    .line 90
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;->mRemoveFromHistoryButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b003f

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 93
    :cond_3
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;->mIcon2:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b003e

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 95
    return v0
.end method

.method protected formatSuggestion(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "text"
    .parameter "userQuery"

    .prologue
    .line 99
    instance-of v0, p1, Landroid/text/Spanned;

    if-nez v0, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;->getSuggestionFormatter()Lcom/google/android/googlequicksearchbox/SuggestionFormatter;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/google/android/googlequicksearchbox/SuggestionFormatter;->formatSuggestion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 104
    :cond_0
    return-object p1
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 51
    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->onFinishInflate()V

    .line 52
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;->mIcon2:Landroid/widget/ImageView;

    new-instance v1, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView$1;

    invoke-direct {v1, p0}, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView$1;-><init>(Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;->mIcon1:Landroid/widget/ImageView;

    const v1, 0x7f020029

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 58
    const v0, 0x7f10002b

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;->mIconAndText1:Landroid/view/View;

    .line 59
    const v0, 0x7f10002e

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;->mButtonDivider:Landroid/view/View;

    .line 60
    const v0, 0x7f10002d

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;->mRemoveFromHistoryButton:Landroid/widget/ImageView;

    .line 61
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;->mRemoveFromHistoryButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView$2;

    invoke-direct {v1, p0}, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView$2;-><init>(Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    return-void
.end method

.method public setFadedOut(Z)V
    .locals 4
    .parameter "fadedOut"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 71
    invoke-super {p0, p1}, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->setFadedOut(Z)V

    .line 72
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;->mIconAndText1:Landroid/view/View;

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 73
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;->mIcon2:Landroid/widget/ImageView;

    if-nez p1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 74
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;->mRemoveFromHistoryButton:Landroid/widget/ImageView;

    if-nez p1, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 75
    return-void

    :cond_0
    move v0, v2

    .line 72
    goto :goto_0

    :cond_1
    move v0, v2

    .line 73
    goto :goto_1

    :cond_2
    move v1, v2

    .line 74
    goto :goto_2
.end method

.method public setLongClickable(Z)V
    .locals 1
    .parameter "longClickable"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;->mIconAndText1:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLongClickable(Z)V

    .line 152
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;->mIconAndText1:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    return-void
.end method

.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;->mIconAndText1:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 177
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;->mIcon2:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 178
    return-void
.end method

.method public setOnKeyListener(Landroid/view/View$OnKeyListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;->mIconAndText1:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 169
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;->mIcon2:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 170
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView;->mIconAndText1:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 157
    return-void
.end method
