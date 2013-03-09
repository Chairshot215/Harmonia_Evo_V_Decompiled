.class public Lcom/google/android/googlequicksearchbox/SearchActivity;
.super Landroid/app/Activity;
.source "SearchActivity.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/SuggestionsPresenter$SuggestionsDisplay;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/googlequicksearchbox/SearchActivity$OnDestroyListener;,
        Lcom/google/android/googlequicksearchbox/SearchActivity$ClickHandler;
    }
.end annotation


# instance fields
.field private mApp:Lcom/google/android/googlequicksearchbox/QsbApplication;

.field private mAppSearchData:Landroid/os/Bundle;

.field private mClock:Lcom/google/android/googlequicksearchbox/Clock;

.field private mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

.field private final mDelayedInitializeTask:Ljava/lang/Runnable;

.field private volatile mDestroyListener:Lcom/google/android/googlequicksearchbox/SearchActivity$OnDestroyListener;

.field mFirstRunDialog:Lcom/google/android/googlequicksearchbox/FirstRunDialog;

.field private final mHandler:Landroid/os/Handler;

.field private final mIdleHandler:Landroid/os/MessageQueue$IdleHandler;

.field private mLauncher:Lcom/google/android/googlequicksearchbox/SuggestionLauncher;

.field private mOnCreateLatency:I

.field private mOnCreateTracker:Lcom/google/android/googlequicksearchbox/LatencyTracker;

.field private final mPrefetcher:Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetcherWrapper;

.field private mPresenter:Lcom/google/android/googlequicksearchbox/SuggestionsPresenter;

.field private mRemoveFromHistoryDialog:Landroid/app/Dialog;

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mSearchActivityView:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

.field private mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

.field private mStartLatencyTracker:Lcom/google/android/googlequicksearchbox/LatencyTracker;

.field private mStarting:Z

.field private mTraceStartUp:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 102
    new-instance v0, Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetcherWrapper;

    invoke-direct {v0}, Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetcherWrapper;-><init>()V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mPrefetcher:Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetcherWrapper;

    .line 104
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mHandler:Landroid/os/Handler;

    .line 106
    new-instance v0, Lcom/google/android/googlequicksearchbox/SearchActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/googlequicksearchbox/SearchActivity$1;-><init>(Lcom/google/android/googlequicksearchbox/SearchActivity;)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mDelayedInitializeTask:Ljava/lang/Runnable;

    .line 112
    new-instance v0, Lcom/google/android/googlequicksearchbox/SearchActivity$2;

    invoke-direct {v0, p0}, Lcom/google/android/googlequicksearchbox/SearchActivity$2;-><init>(Lcom/google/android/googlequicksearchbox/SearchActivity;)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    .line 663
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/googlequicksearchbox/SearchActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->initializeDelayed()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/googlequicksearchbox/SearchActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mDelayedInitializeTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/googlequicksearchbox/SearchActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->onVoiceSearchClicked()V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/googlequicksearchbox/SearchActivity;Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;JI)Lcom/google/android/googlequicksearchbox/ui/ListEntry;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/googlequicksearchbox/SearchActivity;->getAndLogClickedSuggestion(Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;JI)Lcom/google/android/googlequicksearchbox/ui/ListEntry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/googlequicksearchbox/SearchActivity;)Lcom/google/android/googlequicksearchbox/SuggestionLauncher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mLauncher:Lcom/google/android/googlequicksearchbox/SuggestionLauncher;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/google/android/googlequicksearchbox/SearchActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mRemoveFromHistoryDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/google/android/googlequicksearchbox/SearchActivity;)Lcom/google/android/googlequicksearchbox/QsbApplication;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mApp:Lcom/google/android/googlequicksearchbox/QsbApplication;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/googlequicksearchbox/SearchActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/googlequicksearchbox/SearchActivity;)Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mSearchActivityView:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/googlequicksearchbox/SearchActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->firstRunComplete()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/googlequicksearchbox/SearchActivity;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/google/android/googlequicksearchbox/SearchActivity;->onSearchClicked(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/google/android/googlequicksearchbox/SearchActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/SearchActivity;->normalizeQueryForSuggest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/googlequicksearchbox/SearchActivity;)Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetcherWrapper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mPrefetcher:Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetcherWrapper;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/googlequicksearchbox/SearchActivity;)Lcom/google/android/googlequicksearchbox/SuggestionsPresenter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mPresenter:Lcom/google/android/googlequicksearchbox/SuggestionsPresenter;

    return-object v0
.end method

.method private cancelDelayedInitialize()V
    .locals 2

    .prologue
    .line 354
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 355
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mDelayedInitializeTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 356
    return-void
.end method

.method private createAppSearchData()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 258
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 259
    .local v0, appSearchData:Landroid/os/Bundle;
    const-string v1, "source"

    const-string v2, "search-app"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    return-object v0
.end method

.method private firstRunComplete()V
    .locals 2

    .prologue
    .line 214
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->isFirstRun()Z

    move-result v0

    .line 216
    .local v0, firstRun:Z
    if-eqz v0, :cond_0

    .line 217
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mSearchActivityView:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->hideFirstRunOverlay()V

    .line 218
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    invoke-interface {v1}, Lcom/google/android/googlequicksearchbox/SearchSettings;->setFirstRunComplete()V

    .line 220
    :cond_0
    return-void
.end method

.method private getAndLogClickedSuggestion(Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;JI)Lcom/google/android/googlequicksearchbox/ui/ListEntry;
    .locals 8
    .parameter "adapter"
    .parameter "id"
    .parameter "clickType"

    .prologue
    .line 529
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/googlequicksearchbox/SearchActivity;->getCurrentSuggestion(Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;J)Lcom/google/android/googlequicksearchbox/ui/ListEntry;

    move-result-object v7

    .line 530
    .local v7, suggestion:Lcom/google/android/googlequicksearchbox/ui/ListEntry;
    if-nez v7, :cond_0

    const/4 v7, 0x0

    .line 537
    .end local v7           #suggestion:Lcom/google/android/googlequicksearchbox/ui/ListEntry;
    :goto_0
    return-object v7

    .line 532
    .restart local v7       #suggestion:Lcom/google/android/googlequicksearchbox/ui/ListEntry;
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mApp:Lcom/google/android/googlequicksearchbox/QsbApplication;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getLogger()Lcom/google/android/googlequicksearchbox/Logger;

    move-result-object v0

    invoke-interface {p1, v7}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;->getAbsoluteClickPosition(Lcom/google/android/googlequicksearchbox/ui/ListEntry;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v7}, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->getSuggestionList()Lcom/google/android/googlequicksearchbox/SuggestionList;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/SearchActivity;->getCurrentIncludedSourceNames(Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;)Ljava/util/Set;

    move-result-object v4

    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/SearchActivity;->getCurrentWebSource(Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;)Lcom/google/android/googlequicksearchbox/google/GoogleSource;

    move-result-object v5

    move v6, p4

    invoke-interface/range {v0 .. v6}, Lcom/google/android/googlequicksearchbox/Logger;->logSuggestionClick(JLcom/google/android/googlequicksearchbox/SuggestionList;Ljava/util/Set;Lcom/google/android/googlequicksearchbox/google/GoogleSource;I)V

    goto :goto_0
.end method

.method private getCurrentIncludedSourceNames(Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;)Ljava/util/Set;
    .locals 2
    .parameter "adapter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 541
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mSearchActivityView:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->getSuggestions()Lcom/google/android/googlequicksearchbox/Suggestions;

    move-result-object v0

    .line 542
    .local v0, suggestions:Lcom/google/android/googlequicksearchbox/Suggestions;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Suggestions;->getIncludedSourceNames()Ljava/util/Set;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getCurrentSuggestion(Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;J)Lcom/google/android/googlequicksearchbox/ui/ListEntry;
    .locals 8
    .parameter "adapter"
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    .line 503
    invoke-interface {p1, p2, p3}, Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;->getListEntry(J)Lcom/google/android/googlequicksearchbox/ui/ListEntry;

    move-result-object v1

    .line 504
    .local v1, entry:Lcom/google/android/googlequicksearchbox/ui/ListEntry;
    if-nez v1, :cond_1

    move-object v1, v4

    .line 517
    .end local v1           #entry:Lcom/google/android/googlequicksearchbox/ui/ListEntry;
    :cond_0
    :goto_0
    return-object v1

    .line 507
    .restart local v1       #entry:Lcom/google/android/googlequicksearchbox/ui/ListEntry;
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->getSuggestionList()Lcom/google/android/googlequicksearchbox/SuggestionList;

    move-result-object v3

    .line 508
    .local v3, suggestions:Lcom/google/android/googlequicksearchbox/SuggestionList;
    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->getSuggestionPosition()I

    move-result v2

    .line 509
    .local v2, position:I
    if-nez v3, :cond_2

    move-object v1, v4

    .line 510
    goto :goto_0

    .line 512
    :cond_2
    invoke-interface {v3}, Lcom/google/android/googlequicksearchbox/SuggestionList;->getCount()I

    move-result v0

    .line 513
    .local v0, count:I
    if-ltz v2, :cond_3

    if-lt v2, v0, :cond_0

    .line 514
    :cond_3
    const-string v5, "QSB.SearchActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid suggestion position "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v4

    .line 515
    goto :goto_0
.end method

.method private getCurrentWebSource(Lcom/google/android/googlequicksearchbox/ui/SuggestionsAdapter;)Lcom/google/android/googlequicksearchbox/google/GoogleSource;
    .locals 2
    .parameter "adapter"

    .prologue
    .line 546
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mSearchActivityView:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->getSuggestions()Lcom/google/android/googlequicksearchbox/Suggestions;

    move-result-object v0

    .line 547
    .local v0, suggestions:Lcom/google/android/googlequicksearchbox/Suggestions;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Suggestions;->getWebSource()Lcom/google/android/googlequicksearchbox/google/GoogleSource;

    move-result-object v1

    goto :goto_0
.end method

.method private initializeDelayed()V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mApp:Lcom/google/android/googlequicksearchbox/QsbApplication;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->allowSuggestionLogicCreation()V

    .line 224
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mPrefetcher:Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetcherWrapper;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mApp:Lcom/google/android/googlequicksearchbox/QsbApplication;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getPrefetcher()Lcom/google/android/googlequicksearchbox/google/prefetch/SearchResultsPagePrefetcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetcherWrapper;->setWrappedPrefetcher(Lcom/google/android/googlequicksearchbox/google/prefetch/SearchResultsPagePrefetcher;)V

    .line 225
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mPresenter:Lcom/google/android/googlequicksearchbox/SuggestionsPresenter;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/SuggestionsPresenter;->initialize()V

    .line 226
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mSearchActivityView:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->onPostCreate()V

    .line 227
    return-void
.end method

.method private isFirstRun()Z
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/SearchSettings;->shouldShowFirstRunHelp()Z

    move-result v0

    return v0
.end method

.method private isUrl(Ljava/lang/String;)Z
    .locals 1
    .parameter "query"

    .prologue
    .line 487
    sget-object v0, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method private normalizeQueryForSearch(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "rawQuery"

    .prologue
    .line 569
    sget-object v0, Lcom/google/common/base/CharMatcher;->WHITESPACE:Lcom/google/common/base/CharMatcher;

    const/16 v1, 0x20

    invoke-virtual {v0, p1, v1}, Lcom/google/common/base/CharMatcher;->trimAndCollapseFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private normalizeQueryForSuggest(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "rawQuery"

    .prologue
    .line 561
    sget-object v0, Lcom/google/common/base/CharMatcher;->WHITESPACE:Lcom/google/common/base/CharMatcher;

    sget-object v1, Lcom/google/common/base/CharMatcher;->WHITESPACE:Lcom/google/common/base/CharMatcher;

    const/16 v2, 0x20

    invoke-virtual {v1, p1, v2}, Lcom/google/common/base/CharMatcher;->collapseFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/CharMatcher;->trimLeadingFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private onSearchClicked(Ljava/lang/String;I)Z
    .locals 1
    .parameter "query"
    .parameter "method"

    .prologue
    .line 439
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/SearchActivity;->normalizeQueryForSearch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 443
    invoke-static {p1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 448
    :goto_0
    return v0

    .line 446
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/googlequicksearchbox/SearchActivity;->startSearch(Ljava/lang/String;I)V

    .line 448
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private onVoiceSearchClicked()V
    .locals 4

    .prologue
    .line 493
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mApp:Lcom/google/android/googlequicksearchbox/QsbApplication;

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getVoiceSearch()Lcom/google/android/googlequicksearchbox/VoiceSearch;

    move-result-object v1

    .line 495
    .local v1, voiceSearch:Lcom/google/android/googlequicksearchbox/VoiceSearch;
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mApp:Lcom/google/android/googlequicksearchbox/QsbApplication;

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getLogger()Lcom/google/android/googlequicksearchbox/Logger;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/VoiceSearch;->isVoiceSearchAvailable()Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/google/android/googlequicksearchbox/Logger;->logVoiceSearch(Z)V

    .line 498
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->getAppSearchData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/googlequicksearchbox/VoiceSearch;->createVoiceWebSearchIntent(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 499
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->launchIntent(Landroid/content/Intent;)V

    .line 500
    return-void
.end method

.method private recordOnCreateDone()V
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mOnCreateTracker:Lcom/google/android/googlequicksearchbox/LatencyTracker;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/LatencyTracker;->getLatency()I

    move-result v0

    iput v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mOnCreateLatency:I

    .line 255
    return-void
.end method

.method private recordStartTime()V
    .locals 2

    .prologue
    .line 248
    new-instance v0, Lcom/google/android/googlequicksearchbox/LatencyTracker;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mClock:Lcom/google/android/googlequicksearchbox/Clock;

    invoke-direct {v0, v1}, Lcom/google/android/googlequicksearchbox/LatencyTracker;-><init>(Lcom/google/android/googlequicksearchbox/Clock;)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mStartLatencyTracker:Lcom/google/android/googlequicksearchbox/LatencyTracker;

    .line 249
    new-instance v0, Lcom/google/android/googlequicksearchbox/LatencyTracker;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mClock:Lcom/google/android/googlequicksearchbox/Clock;

    invoke-direct {v0, v1}, Lcom/google/android/googlequicksearchbox/LatencyTracker;-><init>(Lcom/google/android/googlequicksearchbox/Clock;)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mOnCreateTracker:Lcom/google/android/googlequicksearchbox/LatencyTracker;

    .line 250
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mStarting:Z

    .line 251
    return-void
.end method

.method private setAppSearchData(Landroid/os/Bundle;)V
    .locals 2
    .parameter "appSearchData"

    .prologue
    .line 264
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mAppSearchData:Landroid/os/Bundle;

    .line 265
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mPrefetcher:Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetcherWrapper;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mAppSearchData:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetcherWrapper;->setAppSearchData(Landroid/os/Bundle;)V

    .line 266
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mLauncher:Lcom/google/android/googlequicksearchbox/SuggestionLauncher;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mAppSearchData:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->setAppSearchData(Landroid/os/Bundle;)V

    .line 267
    return-void
.end method

.method private setupFromIntent(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 5
    .parameter "intent"
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 271
    if-eqz p2, :cond_0

    const-string v3, "SEARCH_ACTIVITY_RESTORE_SUGGESTIONS"

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_3

    .line 273
    :cond_0
    const-string v3, "query"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 274
    .local v1, query:Ljava/lang/String;
    const-string v3, "select_query"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 277
    .local v2, selectAll:Z
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mPresenter:Lcom/google/android/googlequicksearchbox/SuggestionsPresenter;

    invoke-interface {v3}, Lcom/google/android/googlequicksearchbox/SuggestionsPresenter;->setForceSuggestionFetch()V

    .line 278
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mSearchActivityView:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    invoke-virtual {v3, v1, v2}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->setInitialQuery(Ljava/lang/String;Z)V

    .line 283
    .end local v1           #query:Ljava/lang/String;
    .end local v2           #selectAll:Z
    :cond_1
    :goto_0
    const-string v3, "app_data"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 286
    .local v0, appSearchData:Landroid/os/Bundle;
    if-nez v0, :cond_2

    .line 287
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->createAppSearchData()Landroid/os/Bundle;

    move-result-object v0

    .line 289
    :cond_2
    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->setAppSearchData(Landroid/os/Bundle;)V

    .line 290
    return-void

    .line 279
    .end local v0           #appSearchData:Landroid/os/Bundle;
    :cond_3
    const-string v3, "SEARCH_ACTIVITY_REMOVING_FROM_HISTORY"

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 280
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mLauncher:Lcom/google/android/googlequicksearchbox/SuggestionLauncher;

    invoke-virtual {v3, p0}, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->reshowRemoveFromHistoryDialog(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mRemoveFromHistoryDialog:Landroid/app/Dialog;

    goto :goto_0
.end method

.method private showFirstRunDialog()V
    .locals 2

    .prologue
    .line 419
    const-string v0, "QSB.SearchActivity"

    const-string v1, "Showing first-run dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mFirstRunDialog:Lcom/google/android/googlequicksearchbox/FirstRunDialog;

    if-nez v0, :cond_0

    .line 421
    new-instance v0, Lcom/google/android/googlequicksearchbox/FirstRunDialog;

    invoke-direct {v0, p0}, Lcom/google/android/googlequicksearchbox/FirstRunDialog;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mFirstRunDialog:Lcom/google/android/googlequicksearchbox/FirstRunDialog;

    .line 422
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mFirstRunDialog:Lcom/google/android/googlequicksearchbox/FirstRunDialog;

    new-instance v1, Lcom/google/android/googlequicksearchbox/SearchActivity$8;

    invoke-direct {v1, p0}, Lcom/google/android/googlequicksearchbox/SearchActivity$8;-><init>(Lcom/google/android/googlequicksearchbox/SearchActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/FirstRunDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mFirstRunDialog:Lcom/google/android/googlequicksearchbox/FirstRunDialog;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/FirstRunDialog;->show()V

    .line 433
    return-void
.end method

.method private startSearch(Ljava/lang/String;I)V
    .locals 4
    .parameter "query"
    .parameter "method"

    .prologue
    .line 468
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mApp:Lcom/google/android/googlequicksearchbox/QsbApplication;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getLogger()Lcom/google/android/googlequicksearchbox/Logger;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-interface {v1, p2, v2}, Lcom/google/android/googlequicksearchbox/Logger;->logSearch(II)V

    .line 470
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/SearchActivity;->isUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 471
    invoke-static {p1}, Landroid/webkit/URLUtil;->guessUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 472
    .local v0, url:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mLauncher:Lcom/google/android/googlequicksearchbox/SuggestionLauncher;

    invoke-virtual {v1, v0, p0}, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->openUrlInBrowser(Ljava/lang/String;Landroid/app/Activity;)V

    .line 473
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mSearchActivityView:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->hideInputMethod()V

    .line 484
    .end local v0           #url:Ljava/lang/String;
    :goto_0
    return-void

    .line 477
    :cond_0
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    invoke-interface {v1}, Lcom/google/android/googlequicksearchbox/SearchSettings;->shouldUseLocalWebHistory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 478
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mApp:Lcom/google/android/googlequicksearchbox/QsbApplication;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getWebHistoryRepository()Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepository;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mClock:Lcom/google/android/googlequicksearchbox/Clock;

    invoke-interface {v2}, Lcom/google/android/googlequicksearchbox/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v1, p1, v2, v3}, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepository;->insertLocalHistory(Ljava/lang/String;J)V

    .line 481
    :cond_1
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mLauncher:Lcom/google/android/googlequicksearchbox/SuggestionLauncher;

    invoke-virtual {v1, p0, p1}, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->showResultsInBrowser(Landroid/app/Activity;Ljava/lang/String;)V

    .line 482
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mSearchActivityView:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->hideInputMethod()V

    goto :goto_0
.end method


# virtual methods
.method public createMenuItems(Landroid/view/Menu;Z)V
    .locals 2
    .parameter "menu"
    .parameter "showDisabled"

    .prologue
    .line 397
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    invoke-interface {v0, p1, p2}, Lcom/google/android/googlequicksearchbox/SearchSettings;->addMenuItems(Landroid/view/Menu;Z)V

    .line 398
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mApp:Lcom/google/android/googlequicksearchbox/QsbApplication;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getHelp()Lcom/google/android/googlequicksearchbox/Help;

    move-result-object v0

    const-string v1, "search"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/googlequicksearchbox/Help;->addHelpMenuItem(Landroid/view/Menu;Ljava/lang/String;)V

    .line 399
    return-void
.end method

.method public firstRunDialogNeeded()Z
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/SearchSettings;->shouldShowFirstRunDialog()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mApp:Lcom/google/android/googlequicksearchbox/QsbApplication;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getLocationOptIn()Lcom/google/android/googlequicksearchbox/google/LocationSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/google/LocationSettings;->isUseLocationSet()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppSearchData()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mAppSearchData:Landroid/os/Bundle;

    return-object v0
.end method

.method public declared-synchronized getContext()Lcom/google/android/googlequicksearchbox/QsbContext;
    .locals 1

    .prologue
    .line 309
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getQsbApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mApp:Lcom/google/android/googlequicksearchbox/QsbApplication;

    return-object v0
.end method

.method protected getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mSearchActivityView:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->getQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQueryForSuggest()Ljava/lang/String;
    .locals 1

    .prologue
    .line 601
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->normalizeQueryForSuggest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSearchActivityView()Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mSearchActivityView:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    return-object v0
.end method

.method public isQueryEmpty()Z
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mSearchActivityView:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->isQueryEmpty()Z

    move-result v0

    return v0
.end method

.method public launchIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 551
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mLauncher:Lcom/google/android/googlequicksearchbox/SuggestionLauncher;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->launchIntent(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 552
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mSearchActivityView:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->goBack()Z

    move-result v0

    if-nez v0, :cond_0

    .line 404
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 406
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    .line 128
    new-instance v3, Lcom/google/android/googlequicksearchbox/QsbContext;

    invoke-direct {v3, p0}, Lcom/google/android/googlequicksearchbox/QsbContext;-><init>(Landroid/app/Activity;)V

    iput-object v3, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    .line 129
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "trace_start_up"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mTraceStartUp:Z

    .line 130
    iget-boolean v3, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mTraceStartUp:Z

    if-eqz v3, :cond_0

    .line 131
    new-instance v3, Ljava/io/File;

    const-string v4, "traces"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/google/android/googlequicksearchbox/SearchActivity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    const-string v5, "qsb-start.trace"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, traceFile:Ljava/lang/String;
    const-string v3, "QSB.SearchActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Writing start-up trace to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-static {v2}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;)V

    .line 135
    .end local v2           #traceFile:Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mContext:Lcom/google/android/googlequicksearchbox/QsbContext;

    invoke-virtual {v3}, Lcom/google/android/googlequicksearchbox/QsbContext;->getApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mApp:Lcom/google/android/googlequicksearchbox/QsbApplication;

    .line 136
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mApp:Lcom/google/android/googlequicksearchbox/QsbApplication;

    invoke-virtual {v3}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getClock()Lcom/google/android/googlequicksearchbox/Clock;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mClock:Lcom/google/android/googlequicksearchbox/Clock;

    .line 137
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->recordStartTime()V

    .line 139
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 141
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mApp:Lcom/google/android/googlequicksearchbox/QsbApplication;

    invoke-virtual {v3}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSettings()Lcom/google/android/googlequicksearchbox/SearchSettings;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    .line 143
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->setupContentView()Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mSearchActivityView:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    .line 145
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mSavedInstanceState:Landroid/os/Bundle;

    .line 147
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mApp:Lcom/google/android/googlequicksearchbox/QsbApplication;

    invoke-virtual {v3}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSuggestionsPresenter()Lcom/google/android/googlequicksearchbox/SuggestionsPresenter;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mPresenter:Lcom/google/android/googlequicksearchbox/SuggestionsPresenter;

    .line 149
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mApp:Lcom/google/android/googlequicksearchbox/QsbApplication;

    invoke-virtual {v3}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSuggestionLauncher()Lcom/google/android/googlequicksearchbox/SuggestionLauncher;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mLauncher:Lcom/google/android/googlequicksearchbox/SuggestionLauncher;

    .line 150
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mLauncher:Lcom/google/android/googlequicksearchbox/SuggestionLauncher;

    new-instance v4, Lcom/google/android/googlequicksearchbox/SearchActivity$3;

    invoke-direct {v4, p0}, Lcom/google/android/googlequicksearchbox/SearchActivity$3;-><init>(Lcom/google/android/googlequicksearchbox/SearchActivity;)V

    invoke-virtual {v3, v4}, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->setListener(Lcom/google/android/googlequicksearchbox/SuggestionLauncher$Listener;)V

    .line 156
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mSearchActivityView:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    new-instance v4, Lcom/google/android/googlequicksearchbox/SearchActivity$4;

    invoke-direct {v4, p0}, Lcom/google/android/googlequicksearchbox/SearchActivity$4;-><init>(Lcom/google/android/googlequicksearchbox/SearchActivity;)V

    invoke-virtual {v3, v4}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->setSearchClickListener(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$SearchClickListener;)V

    .line 163
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mSearchActivityView:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    new-instance v4, Lcom/google/android/googlequicksearchbox/SearchActivity$5;

    invoke-direct {v4, p0}, Lcom/google/android/googlequicksearchbox/SearchActivity$5;-><init>(Lcom/google/android/googlequicksearchbox/SearchActivity;)V

    invoke-virtual {v3, v4}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->setQueryListener(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$QueryListener;)V

    .line 171
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mSearchActivityView:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    new-instance v4, Lcom/google/android/googlequicksearchbox/SearchActivity$ClickHandler;

    invoke-direct {v4, p0, v6}, Lcom/google/android/googlequicksearchbox/SearchActivity$ClickHandler;-><init>(Lcom/google/android/googlequicksearchbox/SearchActivity;Lcom/google/android/googlequicksearchbox/SearchActivity$1;)V

    invoke-virtual {v3, v4}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->setSuggestionClickListener(Lcom/google/android/googlequicksearchbox/ui/SuggestionClickListener;)V

    .line 173
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mSearchActivityView:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    new-instance v4, Lcom/google/android/googlequicksearchbox/SearchActivity$6;

    invoke-direct {v4, p0}, Lcom/google/android/googlequicksearchbox/SearchActivity$6;-><init>(Lcom/google/android/googlequicksearchbox/SearchActivity;)V

    invoke-virtual {v3, v4}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->setVoiceSearchButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    new-instance v0, Lcom/google/android/googlequicksearchbox/SearchActivity$7;

    invoke-direct {v0, p0}, Lcom/google/android/googlequicksearchbox/SearchActivity$7;-><init>(Lcom/google/android/googlequicksearchbox/SearchActivity;)V

    .line 184
    .local v0, finishOnClick:Landroid/view/View$OnClickListener;
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mSearchActivityView:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    invoke-virtual {v3, v0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->setExitClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->isFirstRun()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 188
    const-string v3, "QSB.SearchActivity"

    const-string v4, "Showing first run cling"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mSearchActivityView:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    invoke-virtual {v3}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->showFirstRunOverlay()V

    .line 198
    :goto_0
    iput-object v6, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mSavedInstanceState:Landroid/os/Bundle;

    .line 200
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->firstRunDialogNeeded()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 201
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->showFirstRunDialog()V

    .line 204
    :cond_1
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->recordOnCreateDone()V

    .line 206
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v3, v4}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 207
    return-void

    .line 191
    :cond_2
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mSearchActivityView:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    invoke-virtual {v3}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->hideFirstRunOverlay()V

    .line 194
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 195
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-direct {p0, v1, v3}, Lcom/google/android/googlequicksearchbox/SearchActivity;->setupFromIntent(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 319
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->cancelDelayedInitialize()V

    .line 320
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mSearchActivityView:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->onDestroy()V

    .line 321
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 322
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mLauncher:Lcom/google/android/googlequicksearchbox/SuggestionLauncher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/SuggestionLauncher;->setListener(Lcom/google/android/googlequicksearchbox/SuggestionLauncher$Listener;)V

    .line 323
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mDestroyListener:Lcom/google/android/googlequicksearchbox/SearchActivity$OnDestroyListener;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mDestroyListener:Lcom/google/android/googlequicksearchbox/SearchActivity$OnDestroyListener;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/SearchActivity$OnDestroyListener;->onDestroyed()V

    .line 326
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 242
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->recordStartTime()V

    .line 243
    invoke-virtual {p0, p1}, Lcom/google/android/googlequicksearchbox/SearchActivity;->setIntent(Landroid/content/Intent;)V

    .line 244
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->setupFromIntent(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 245
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mSearchActivityView:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->onPause()V

    .line 363
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mApp:Lcom/google/android/googlequicksearchbox/QsbApplication;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getLogger()Lcom/google/android/googlequicksearchbox/Logger;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/Logger;->flushLogs()V

    .line 368
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 369
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    const/4 v0, 0x1

    .line 391
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 392
    invoke-virtual {p0, p1, v0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->createMenuItems(Landroid/view/Menu;Z)V

    .line 393
    return v0
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 374
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 375
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mPresenter:Lcom/google/android/googlequicksearchbox/SuggestionsPresenter;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/SuggestionsPresenter;->updateSuggestionsNow()V

    .line 376
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 381
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 382
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mSearchActivityView:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->onResume()V

    .line 383
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mPresenter:Lcom/google/android/googlequicksearchbox/SuggestionsPresenter;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/SuggestionsPresenter;->updateSuggestionsNow()V

    .line 385
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mTraceStartUp:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 386
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    const/4 v0, 0x1

    .line 331
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 332
    const-string v1, "SEARCH_ACTIVITY_RESTORE_SUGGESTIONS"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 333
    const-string v1, "SEARCH_ACTIVITY_REMOVING_FROM_HISTORY"

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mRemoveFromHistoryDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mRemoveFromHistoryDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 335
    return-void

    .line 333
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSearchRequested()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 453
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/googlequicksearchbox/SearchActivity;->normalizeQueryForSearch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 455
    .local v0, query:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-nez v1, :cond_0

    .line 456
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mSearchActivityView:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->showInputMethodForQuery()V

    .line 461
    :goto_0
    return v2

    .line 460
    :cond_0
    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/SearchActivity;->startSearch(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 295
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 296
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mPresenter:Lcom/google/android/googlequicksearchbox/SuggestionsPresenter;

    invoke-interface {v0, p0}, Lcom/google/android/googlequicksearchbox/SuggestionsPresenter;->onStart(Lcom/google/android/googlequicksearchbox/SuggestionsPresenter$SuggestionsDisplay;)V

    .line 297
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mPrefetcher:Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetcherWrapper;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetcherWrapper;->onStart()V

    .line 301
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mSearchActivityView:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->onStart()V

    .line 302
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mSearchActivityView:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->onStop()V

    .line 343
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mRemoveFromHistoryDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mRemoveFromHistoryDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 345
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mRemoveFromHistoryDialog:Landroid/app/Dialog;

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mPresenter:Lcom/google/android/googlequicksearchbox/SuggestionsPresenter;

    invoke-interface {v0, p0}, Lcom/google/android/googlequicksearchbox/SuggestionsPresenter;->onStop(Lcom/google/android/googlequicksearchbox/SuggestionsPresenter$SuggestionsDisplay;)V

    .line 349
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mPrefetcher:Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetcherWrapper;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetcherWrapper;->onStop()V

    .line 350
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 351
    return-void
.end method

.method public setOnDestroyListener(Lcom/google/android/googlequicksearchbox/SearchActivity$OnDestroyListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 660
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mDestroyListener:Lcom/google/android/googlequicksearchbox/SearchActivity$OnDestroyListener;

    .line 661
    return-void
.end method

.method protected setupContentView()Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;
    .locals 1

    .prologue
    .line 230
    const v0, 0x7f040008

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->setContentView(I)V

    .line 231
    const v0, 0x7f100010

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    return-object v0
.end method

.method public showSuggestions(Lcom/google/android/googlequicksearchbox/Suggestions;)V
    .locals 6
    .parameter "suggestions"

    .prologue
    const/4 v5, 0x0

    .line 576
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mStarting:Z

    if-eqz v0, :cond_0

    .line 577
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mStarting:Z

    .line 578
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "source"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 579
    .local v3, source:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mStartLatencyTracker:Lcom/google/android/googlequicksearchbox/LatencyTracker;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/LatencyTracker;->getLatency()I

    move-result v2

    .line 580
    .local v2, latency:I
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mApp:Lcom/google/android/googlequicksearchbox/QsbApplication;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getLogger()Lcom/google/android/googlequicksearchbox/Logger;

    move-result-object v0

    iget v1, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mOnCreateLatency:I

    if-nez p1, :cond_1

    move-object v4, v5

    :goto_0
    if-nez p1, :cond_2

    :goto_1
    invoke-interface/range {v0 .. v5}, Lcom/google/android/googlequicksearchbox/Logger;->logStart(IILjava/lang/String;Ljava/util/List;Lcom/google/android/googlequicksearchbox/google/GoogleSource;)V

    .line 583
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mApp:Lcom/google/android/googlequicksearchbox/QsbApplication;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->onStartupComplete()V

    .line 591
    .end local v2           #latency:I
    .end local v3           #source:Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->isFirstRun()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 597
    :goto_2
    return-void

    .line 580
    .restart local v2       #latency:I
    .restart local v3       #source:Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestions;->getExpectedSources()Ljava/util/List;

    move-result-object v4

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestions;->getWebSource()Lcom/google/android/googlequicksearchbox/google/GoogleSource;

    move-result-object v5

    goto :goto_1

    .line 596
    .end local v2           #latency:I
    .end local v3           #source:Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity;->mSearchActivityView:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    invoke-virtual {v0, p1}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->setSuggestions(Lcom/google/android/googlequicksearchbox/Suggestions;)V

    goto :goto_2
.end method
