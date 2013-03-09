.class public Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;
.super Ljava/lang/Object;
.source "SuggestionsPresenterImpl.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/SuggestionsPresenter;


# instance fields
.field private final mApp:Lcom/google/android/googlequicksearchbox/QsbApplication;

.field private final mConfig:Lcom/google/android/googlequicksearchbox/Config;

.field private mCurrentSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

.field private volatile mForceSuggestionFetch:Z

.field private final mHandler:Landroid/os/Handler;

.field private mInitialized:Z

.field private mSources:Lcom/google/android/googlequicksearchbox/Sources;

.field private final mSourcesObserver:Landroid/database/DataSetObserver;

.field private mStarted:Z

.field private mSuggestionsDisplay:Lcom/google/android/googlequicksearchbox/SuggestionsPresenter$SuggestionsDisplay;

.field private final mSuggestionsTimeoutTask:Ljava/lang/Runnable;

.field private final mUpdateSuggestionsTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/QsbApplication;)V
    .locals 2
    .parameter "app"

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl$1;

    invoke-direct {v0, p0}, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl$1;-><init>(Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mUpdateSuggestionsTask:Ljava/lang/Runnable;

    .line 58
    new-instance v0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl$2;

    invoke-direct {v0, p0}, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl$2;-><init>(Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mSuggestionsTimeoutTask:Ljava/lang/Runnable;

    .line 99
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mApp:Lcom/google/android/googlequicksearchbox/QsbApplication;

    .line 100
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mApp:Lcom/google/android/googlequicksearchbox/QsbApplication;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getConfig()Lcom/google/android/googlequicksearchbox/Config;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    .line 101
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mApp:Lcom/google/android/googlequicksearchbox/QsbApplication;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mHandler:Landroid/os/Handler;

    .line 102
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mApp:Lcom/google/android/googlequicksearchbox/QsbApplication;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSearchHistoryChangedObservable()Landroid/database/DataSetObservable;

    move-result-object v0

    new-instance v1, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl$3;

    invoke-direct {v1, p0}, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl$3;-><init>(Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;)V

    invoke-virtual {v0, v1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 109
    new-instance v0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl$4;

    invoke-direct {v0, p0}, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl$4;-><init>(Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mSourcesObserver:Landroid/database/DataSetObserver;

    .line 115
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->updateSuggestionsInternal()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;)Lcom/google/android/googlequicksearchbox/Suggestions;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mCurrentSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;)Lcom/google/android/googlequicksearchbox/QsbApplication;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mApp:Lcom/google/android/googlequicksearchbox/QsbApplication;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->updateSuggestionsInternal(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private cancelSuggestionsTimeoutTask()V
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mSuggestionsTimeoutTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 326
    return-void
.end method

.method private getSourcesToQuery(Lcom/google/android/googlequicksearchbox/util/Consumer;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/googlequicksearchbox/util/Consumer",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/googlequicksearchbox/Source;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 263
    .local p1, consumer:Lcom/google/android/googlequicksearchbox/util/Consumer;,"Lcom/google/android/googlequicksearchbox/util/Consumer<Ljava/util/List<Lcom/google/android/googlequicksearchbox/Source;>;>;"
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mApp:Lcom/google/android/googlequicksearchbox/QsbApplication;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSourceRanker()Lcom/google/android/googlequicksearchbox/SourceRanker;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mHandler:Landroid/os/Handler;

    invoke-static {v1, p1}, Lcom/google/android/googlequicksearchbox/util/Consumers;->createAsyncConsumer(Landroid/os/Handler;Lcom/google/android/googlequicksearchbox/util/Consumer;)Lcom/google/android/googlequicksearchbox/util/Consumer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/googlequicksearchbox/SourceRanker;->getSourcesInAll(Lcom/google/android/googlequicksearchbox/util/Consumer;)V

    .line 264
    return-void
.end method

.method private initLocationListener()V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mApp:Lcom/google/android/googlequicksearchbox/QsbApplication;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSettings()Lcom/google/android/googlequicksearchbox/SearchSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/googlequicksearchbox/SearchSettings;->shouldSendLocation(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mApp:Lcom/google/android/googlequicksearchbox/QsbApplication;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getLocationHelper()Lcom/google/android/googlequicksearchbox/google/LocationHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/google/LocationHelper;->stopListening()V

    .line 212
    :goto_0
    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mApp:Lcom/google/android/googlequicksearchbox/QsbApplication;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getLocationHelper()Lcom/google/android/googlequicksearchbox/google/LocationHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/google/LocationHelper;->startListening()Landroid/location/Location;

    goto :goto_0
.end method

.method private initSummons()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mApp:Lcom/google/android/googlequicksearchbox/QsbApplication;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSources()Lcom/google/android/googlequicksearchbox/Sources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mSources:Lcom/google/android/googlequicksearchbox/Sources;

    .line 195
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mApp:Lcom/google/android/googlequicksearchbox/QsbApplication;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getNewSourceWatcher()Lcom/google/android/googlequicksearchbox/NewSourceWatcher;

    .line 196
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mStarted:Z

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mSources:Lcom/google/android/googlequicksearchbox/Sources;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mSourcesObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Lcom/google/android/googlequicksearchbox/Sources;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 198
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mApp:Lcom/google/android/googlequicksearchbox/QsbApplication;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getLastAccessValidator()Lcom/google/android/googlequicksearchbox/LastAccessValidator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/LastAccessValidator;->updateLastAccessTimes()V

    .line 200
    :cond_0
    return-void
.end method

.method private initWebSuggestions()V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mApp:Lcom/google/android/googlequicksearchbox/QsbApplication;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSearchUrlHelper()Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;

    .line 186
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mStarted:Z

    if-eqz v0, :cond_0

    .line 187
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->initLocationListener()V

    .line 188
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->refreshSearchHistory()V

    .line 190
    :cond_0
    return-void
.end method

.method private refreshSearchHistory()V
    .locals 2

    .prologue
    .line 217
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mSuggestionsDisplay:Lcom/google/android/googlequicksearchbox/SuggestionsPresenter$SuggestionsDisplay;

    invoke-interface {v1}, Lcom/google/android/googlequicksearchbox/SuggestionsPresenter$SuggestionsDisplay;->isQueryEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 218
    .local v0, refreshSearchHistoryNow:Z
    :goto_0
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mApp:Lcom/google/android/googlequicksearchbox/QsbApplication;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSearchHistoryRefresher()Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher;->onStart(Z)V

    .line 219
    return-void

    .line 217
    .end local v0           #refreshSearchHistoryNow:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showSuggestions(Lcom/google/android/googlequicksearchbox/Suggestions;)V
    .locals 2
    .parameter "suggestions"

    .prologue
    .line 304
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mCurrentSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mCurrentSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Suggestions;->close()V

    .line 311
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->cancelSuggestionsTimeoutTask()V

    .line 313
    :cond_0
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mCurrentSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    .line 314
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->startSuggestionsTimeoutTask()V

    .line 315
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mSuggestionsDisplay:Lcom/google/android/googlequicksearchbox/SuggestionsPresenter$SuggestionsDisplay;

    if-eqz v0, :cond_1

    .line 316
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mSuggestionsDisplay:Lcom/google/android/googlequicksearchbox/SuggestionsPresenter$SuggestionsDisplay;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mCurrentSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    invoke-interface {v0, v1}, Lcom/google/android/googlequicksearchbox/SuggestionsPresenter$SuggestionsDisplay;->showSuggestions(Lcom/google/android/googlequicksearchbox/Suggestions;)V

    .line 318
    :cond_1
    return-void
.end method

.method private startSuggestionsTimeoutTask()V
    .locals 4

    .prologue
    .line 321
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mSuggestionsTimeoutTask:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/Config;->getSourceTimeoutMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 322
    return-void
.end method

.method private updateSuggestions(J)V
    .locals 3
    .parameter "delay"

    .prologue
    .line 239
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mUpdateSuggestionsTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 241
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mSuggestionsDisplay:Lcom/google/android/googlequicksearchbox/SuggestionsPresenter$SuggestionsDisplay;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mInitialized:Z

    if-nez v1, :cond_1

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mSuggestionsDisplay:Lcom/google/android/googlequicksearchbox/SuggestionsPresenter$SuggestionsDisplay;

    invoke-interface {v1}, Lcom/google/android/googlequicksearchbox/SuggestionsPresenter$SuggestionsDisplay;->getQueryForSuggest()Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, query:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mForceSuggestionFetch:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mCurrentSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mCurrentSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/Suggestions;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 247
    :cond_2
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mCurrentSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    if-eqz v1, :cond_3

    .line 250
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mCurrentSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/Suggestions;->close()V

    .line 251
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mCurrentSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    .line 253
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->cancelSuggestionsTimeoutTask()V

    .line 256
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mApp:Lcom/google/android/googlequicksearchbox/QsbApplication;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSuggestionsProvider()Lcom/google/android/googlequicksearchbox/SuggestionsProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/googlequicksearchbox/SuggestionsProvider;->cancelOngoingQuery()V

    .line 258
    :cond_3
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mUpdateSuggestionsTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private updateSuggestionsInternal()V
    .locals 2

    .prologue
    .line 268
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mSuggestionsDisplay:Lcom/google/android/googlequicksearchbox/SuggestionsPresenter$SuggestionsDisplay;

    invoke-static {v1}, Lcom/google/android/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mForceSuggestionFetch:Z

    .line 270
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mSuggestionsDisplay:Lcom/google/android/googlequicksearchbox/SuggestionsPresenter$SuggestionsDisplay;

    invoke-interface {v1}, Lcom/google/android/googlequicksearchbox/SuggestionsPresenter$SuggestionsDisplay;->getQueryForSuggest()Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, normalizedQuery:Ljava/lang/String;
    new-instance v1, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl$5;

    invoke-direct {v1, p0, v0}, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl$5;-><init>(Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->getSourcesToQuery(Lcom/google/android/googlequicksearchbox/util/Consumer;)V

    .line 279
    return-void
.end method

.method private updateSuggestionsInternal(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .parameter "normalizedQuery"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/googlequicksearchbox/Source;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 284
    .local p2, sourcesToQuery:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/googlequicksearchbox/Source;>;"
    const/4 v2, 0x0

    .line 285
    .local v2, webSource:Lcom/google/android/googlequicksearchbox/google/GoogleSource;
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mApp:Lcom/google/android/googlequicksearchbox/QsbApplication;

    invoke-virtual {v3}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSettings()Lcom/google/android/googlequicksearchbox/SearchSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/googlequicksearchbox/SearchSettings;->isWebSourceEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 286
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mApp:Lcom/google/android/googlequicksearchbox/QsbApplication;

    invoke-virtual {v3}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getGoogleSource()Lcom/google/android/googlequicksearchbox/google/GoogleSource;

    move-result-object v2

    .line 288
    :cond_0
    const/4 v0, 0x0

    .line 289
    .local v0, shortcutRepository:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepository;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v3}, Lcom/google/android/googlequicksearchbox/Config;->showSummonsForZeroQuery()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 290
    :cond_1
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mApp:Lcom/google/android/googlequicksearchbox/QsbApplication;

    invoke-virtual {v3}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getShortcutRepository()Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepository;

    move-result-object v0

    .line 293
    :cond_2
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mApp:Lcom/google/android/googlequicksearchbox/QsbApplication;

    invoke-virtual {v3}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSuggestionsProvider()Lcom/google/android/googlequicksearchbox/SuggestionsProvider;

    move-result-object v3

    invoke-interface {v3, p1, p2, v2, v0}, Lcom/google/android/googlequicksearchbox/SuggestionsProvider;->getSuggestions(Ljava/lang/String;Ljava/util/List;Lcom/google/android/googlequicksearchbox/google/GoogleSource;Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepository;)Lcom/google/android/googlequicksearchbox/Suggestions;

    move-result-object v1

    .line 296
    .local v1, suggestions:Lcom/google/android/googlequicksearchbox/Suggestions;
    invoke-direct {p0, v1}, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->showSuggestions(Lcom/google/android/googlequicksearchbox/Suggestions;)V

    .line 297
    return-void
.end method


# virtual methods
.method public initialize()V
    .locals 1

    .prologue
    .line 119
    invoke-static {}, Lcom/google/android/googlequicksearchbox/QsbApplication;->checkThread()V

    .line 120
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mInitialized:Z

    if-nez v0, :cond_0

    .line 121
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->initWebSuggestions()V

    .line 122
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->initSummons()V

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mInitialized:Z

    .line 124
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->updateSuggestionsNow()V

    .line 126
    :cond_0
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 330
    const-string v0, "google_account"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "search_history"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "use_google_com"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 333
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->setForceSuggestionFetch()V

    .line 335
    :cond_1
    return-void
.end method

.method public onStart(Lcom/google/android/googlequicksearchbox/SuggestionsPresenter$SuggestionsDisplay;)V
    .locals 2
    .parameter "display"

    .prologue
    .line 130
    invoke-static {}, Lcom/google/android/googlequicksearchbox/QsbApplication;->checkThread()V

    .line 131
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mSuggestionsDisplay:Lcom/google/android/googlequicksearchbox/SuggestionsPresenter$SuggestionsDisplay;

    .line 133
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mStarted:Z

    if-nez v0, :cond_0

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mStarted:Z

    .line 136
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 138
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->initWebSuggestions()V

    .line 139
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->initSummons()V

    .line 142
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mInitialized:Z

    if-eqz v0, :cond_2

    .line 143
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mForceSuggestionFetch:Z

    if-nez v0, :cond_2

    .line 144
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mCurrentSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mCurrentSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Suggestions;->isDone()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 146
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mCurrentSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Suggestions;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mCurrentSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Suggestions;->reopen()V

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mSuggestionsDisplay:Lcom/google/android/googlequicksearchbox/SuggestionsPresenter$SuggestionsDisplay;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mCurrentSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    invoke-interface {v0, v1}, Lcom/google/android/googlequicksearchbox/SuggestionsPresenter$SuggestionsDisplay;->showSuggestions(Lcom/google/android/googlequicksearchbox/Suggestions;)V

    .line 155
    :cond_2
    :goto_0
    return-void

    .line 151
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->setForceSuggestionFetch()V

    goto :goto_0
.end method

.method public onStop(Lcom/google/android/googlequicksearchbox/SuggestionsPresenter$SuggestionsDisplay;)V
    .locals 2
    .parameter "display"

    .prologue
    .line 159
    invoke-static {}, Lcom/google/android/googlequicksearchbox/QsbApplication;->checkThread()V

    .line 161
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mSuggestionsDisplay:Lcom/google/android/googlequicksearchbox/SuggestionsPresenter$SuggestionsDisplay;

    if-ne p1, v0, :cond_2

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mSuggestionsDisplay:Lcom/google/android/googlequicksearchbox/SuggestionsPresenter$SuggestionsDisplay;

    .line 165
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mSources:Lcom/google/android/googlequicksearchbox/Sources;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mSourcesObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Lcom/google/android/googlequicksearchbox/Sources;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 167
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mApp:Lcom/google/android/googlequicksearchbox/QsbApplication;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->resetShortcutRefresher()V

    .line 168
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mApp:Lcom/google/android/googlequicksearchbox/QsbApplication;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSearchHistoryRefresher()Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher;->onStop()V

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mUpdateSuggestionsTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 173
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mCurrentSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    if-eqz v0, :cond_1

    .line 174
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->cancelSuggestionsTimeoutTask()V

    .line 175
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mCurrentSuggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Suggestions;->close()V

    .line 177
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mStarted:Z

    .line 179
    :cond_2
    return-void
.end method

.method public setForceSuggestionFetch()V
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mForceSuggestionFetch:Z

    .line 225
    return-void
.end method

.method public updateSuggestionsBuffered()V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Config;->getTypingUpdateSuggestionsDelayMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->updateSuggestions(J)V

    .line 235
    return-void
.end method

.method public updateSuggestionsNow()V
    .locals 2

    .prologue
    .line 229
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->updateSuggestions(J)V

    .line 230
    return-void
.end method
