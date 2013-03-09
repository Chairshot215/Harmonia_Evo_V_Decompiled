.class public Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;
.super Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;
.source "SearchActivityViewPhone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone$SinglePaneAdapter;
    }
.end annotation


# instance fields
.field private mListAdapter:Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone$SinglePaneAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;-><init>(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method


# virtual methods
.method protected createSuggestionsController(Lcom/google/android/googlequicksearchbox/ui/SuggestionsUpdatingObserver;)Lcom/google/android/googlequicksearchbox/ui/SuggestionsController;
    .locals 7
    .parameter "observer"

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;->getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v6

    .line 65
    .local v6, app:Lcom/google/android/googlequicksearchbox/QsbApplication;
    new-instance v0, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;

    invoke-virtual {v6}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v6}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v2

    invoke-virtual {v6}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getClock()Lcom/google/android/googlequicksearchbox/Clock;

    move-result-object v3

    invoke-virtual {v6}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSettings()Lcom/google/android/googlequicksearchbox/SearchSettings;

    move-result-object v4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsControllerImplPhone;-><init>(Landroid/os/Handler;Lcom/google/android/googlequicksearchbox/Config;Lcom/google/android/googlequicksearchbox/Clock;Lcom/google/android/googlequicksearchbox/SearchSettings;Lcom/google/android/googlequicksearchbox/ui/SuggestionsUpdatingObserver;)V

    return-object v0
.end method

.method protected installAdapters()V
    .locals 3

    .prologue
    .line 78
    new-instance v0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone$SinglePaneAdapter;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;->mSuggestionsAdapter:Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;->mSummonsAdapter:Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone$SinglePaneAdapter;-><init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;Landroid/widget/ListAdapter;Landroid/widget/ListAdapter;)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;->mListAdapter:Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone$SinglePaneAdapter;

    .line 79
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;->mSuggestionsView:Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;->mListAdapter:Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone$SinglePaneAdapter;

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 80
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 51
    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->onFinishInflate()V

    .line 52
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;->mSummonsAdapter:Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;->setSeparatorFirst(Z)V

    .line 53
    return-void
.end method

.method protected onSuggestionsChanged()V
    .locals 0

    .prologue
    .line 71
    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->onSuggestionsChanged()V

    .line 72
    return-void
.end method

.method public setSuggestions(Lcom/google/android/googlequicksearchbox/Suggestions;)V
    .locals 2
    .parameter "suggestions"

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->setSuggestions(Lcom/google/android/googlequicksearchbox/Suggestions;)V

    .line 58
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;->mSuggestionsView:Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsView;->smoothScrollToPosition(I)V

    .line 59
    return-void
.end method
