.class public Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewTablet;
.super Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;
.source "SearchActivityViewTablet.java"


# instance fields
.field protected mSummonsPane:Landroid/view/View;

.field protected mSummonsView:Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;-><init>(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method private updateSummonsPaneState()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewTablet;->mSummonsPane:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewTablet;->mSummonsAdapter:Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewTablet;->mSummonsPane:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewTablet;->mSummonsPane:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public clearAdapters()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewTablet;->mSummonsView:Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 107
    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->clearAdapters()V

    .line 108
    return-void
.end method

.method public considerHidingInputMethod()V
    .locals 0

    .prologue
    .line 119
    return-void
.end method

.method public installAdapters()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewTablet;->mSuggestionsView:Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewTablet;->mSuggestionsAdapter:Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 99
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewTablet;->mSummonsView:Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewTablet;->mSummonsAdapter:Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 100
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 52
    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->onFinishInflate()V

    .line 54
    const v1, 0x7f100019

    invoke-virtual {p0, v1}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewTablet;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewTablet;->mSummonsPane:Landroid/view/View;

    .line 56
    const v1, 0x7f10001a

    invoke-virtual {p0, v1}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewTablet;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;

    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewTablet;->mSummonsView:Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;

    .line 57
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewTablet;->mSummonsView:Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;->setFocusable(Z)V

    .line 59
    const v1, 0x7f100015

    invoke-virtual {p0, v1}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewTablet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 60
    .local v0, dismissBg:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 61
    new-instance v1, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewTablet$1;

    invoke-direct {v1, p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewTablet$1;-><init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewTablet;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewTablet;->mSummonsView:Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;

    new-instance v2, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$InputMethodCloser;

    invoke-direct {v2, p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$InputMethodCloser;-><init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;)V

    invoke-virtual {v1, v2}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 70
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewTablet;->mSummonsView:Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewTablet;->mSuggestionsKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v1, v2}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 71
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 75
    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->onStart()V

    .line 76
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewTablet;->updateSummonsPaneState()V

    .line 77
    return-void
.end method

.method protected onSummonsChanged()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewTablet;->updateSummonsPaneState()V

    .line 82
    return-void
.end method

.method public setSuggestions(Lcom/google/android/googlequicksearchbox/Suggestions;)V
    .locals 2
    .parameter "suggestions"

    .prologue
    .line 112
    invoke-super {p0, p1}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->setSuggestions(Lcom/google/android/googlequicksearchbox/Suggestions;)V

    .line 113
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewTablet;->mSummonsView:Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;->smoothScrollToPosition(I)V

    .line 114
    return-void
.end method
