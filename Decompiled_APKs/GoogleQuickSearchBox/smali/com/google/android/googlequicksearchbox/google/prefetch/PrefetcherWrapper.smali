.class public Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetcherWrapper;
.super Ljava/lang/Object;
.source "PrefetcherWrapper.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/google/prefetch/SearchResultsPagePrefetcher;


# instance fields
.field private mAppSearchData:Landroid/os/Bundle;

.field private mPrefetcher:Lcom/google/android/googlequicksearchbox/google/prefetch/SearchResultsPagePrefetcher;

.field private mStarted:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryChanged(Ljava/lang/String;)V
    .locals 1
    .parameter "newQuery"

    .prologue
    .line 68
    invoke-static {}, Lcom/google/android/googlequicksearchbox/QsbApplication;->checkThread()V

    .line 69
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetcherWrapper;->mPrefetcher:Lcom/google/android/googlequicksearchbox/google/prefetch/SearchResultsPagePrefetcher;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetcherWrapper;->mPrefetcher:Lcom/google/android/googlequicksearchbox/google/prefetch/SearchResultsPagePrefetcher;

    invoke-interface {v0, p1}, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchResultsPagePrefetcher;->onQueryChanged(Ljava/lang/String;)V

    .line 72
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Lcom/google/android/googlequicksearchbox/QsbApplication;->checkThread()V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetcherWrapper;->mStarted:Z

    .line 52
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetcherWrapper;->mPrefetcher:Lcom/google/android/googlequicksearchbox/google/prefetch/SearchResultsPagePrefetcher;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetcherWrapper;->mPrefetcher:Lcom/google/android/googlequicksearchbox/google/prefetch/SearchResultsPagePrefetcher;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchResultsPagePrefetcher;->onStart()V

    .line 55
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 59
    invoke-static {}, Lcom/google/android/googlequicksearchbox/QsbApplication;->checkThread()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetcherWrapper;->mStarted:Z

    .line 61
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetcherWrapper;->mPrefetcher:Lcom/google/android/googlequicksearchbox/google/prefetch/SearchResultsPagePrefetcher;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetcherWrapper;->mPrefetcher:Lcom/google/android/googlequicksearchbox/google/prefetch/SearchResultsPagePrefetcher;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchResultsPagePrefetcher;->onStop()V

    .line 64
    :cond_0
    return-void
.end method

.method public onSuggestionsDone()V
    .locals 1

    .prologue
    .line 85
    invoke-static {}, Lcom/google/android/googlequicksearchbox/QsbApplication;->checkThread()V

    .line 86
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetcherWrapper;->mPrefetcher:Lcom/google/android/googlequicksearchbox/google/prefetch/SearchResultsPagePrefetcher;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetcherWrapper;->mPrefetcher:Lcom/google/android/googlequicksearchbox/google/prefetch/SearchResultsPagePrefetcher;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchResultsPagePrefetcher;->onSuggestionsDone()V

    .line 89
    :cond_0
    return-void
.end method

.method public declared-synchronized performSearch(Ljava/lang/String;)Z
    .locals 1
    .parameter "query"

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetcherWrapper;->mPrefetcher:Lcom/google/android/googlequicksearchbox/google/prefetch/SearchResultsPagePrefetcher;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetcherWrapper;->mPrefetcher:Lcom/google/android/googlequicksearchbox/google/prefetch/SearchResultsPagePrefetcher;

    invoke-interface {v0, p1}, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchResultsPagePrefetcher;->performSearch(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 96
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized prefetch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "query"
    .parameter "suggestion"

    .prologue
    .line 102
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetcherWrapper;->mPrefetcher:Lcom/google/android/googlequicksearchbox/google/prefetch/SearchResultsPagePrefetcher;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetcherWrapper;->mPrefetcher:Lcom/google/android/googlequicksearchbox/google/prefetch/SearchResultsPagePrefetcher;

    invoke-interface {v0, p1, p2}, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchResultsPagePrefetcher;->prefetch(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    :cond_0
    monitor-exit p0

    return-void

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAppSearchData(Landroid/os/Bundle;)V
    .locals 1
    .parameter "appSearchData"

    .prologue
    .line 76
    invoke-static {}, Lcom/google/android/googlequicksearchbox/QsbApplication;->checkThread()V

    .line 77
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetcherWrapper;->mAppSearchData:Landroid/os/Bundle;

    .line 78
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetcherWrapper;->mPrefetcher:Lcom/google/android/googlequicksearchbox/google/prefetch/SearchResultsPagePrefetcher;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetcherWrapper;->mPrefetcher:Lcom/google/android/googlequicksearchbox/google/prefetch/SearchResultsPagePrefetcher;

    invoke-interface {v0, p1}, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchResultsPagePrefetcher;->setAppSearchData(Landroid/os/Bundle;)V

    .line 81
    :cond_0
    return-void
.end method

.method public declared-synchronized setWrappedPrefetcher(Lcom/google/android/googlequicksearchbox/google/prefetch/SearchResultsPagePrefetcher;)V
    .locals 2
    .parameter "prefetcher"

    .prologue
    .line 38
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/android/googlequicksearchbox/QsbApplication;->checkThread()V

    .line 39
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetcherWrapper;->mPrefetcher:Lcom/google/android/googlequicksearchbox/google/prefetch/SearchResultsPagePrefetcher;

    .line 40
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetcherWrapper;->mPrefetcher:Lcom/google/android/googlequicksearchbox/google/prefetch/SearchResultsPagePrefetcher;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetcherWrapper;->mPrefetcher:Lcom/google/android/googlequicksearchbox/google/prefetch/SearchResultsPagePrefetcher;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetcherWrapper;->mAppSearchData:Landroid/os/Bundle;

    invoke-interface {v0, v1}, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchResultsPagePrefetcher;->setAppSearchData(Landroid/os/Bundle;)V

    .line 42
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetcherWrapper;->mStarted:Z

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetcherWrapper;->mPrefetcher:Lcom/google/android/googlequicksearchbox/google/prefetch/SearchResultsPagePrefetcher;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/google/prefetch/SearchResultsPagePrefetcher;->onStart()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :cond_0
    monitor-exit p0

    return-void

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
