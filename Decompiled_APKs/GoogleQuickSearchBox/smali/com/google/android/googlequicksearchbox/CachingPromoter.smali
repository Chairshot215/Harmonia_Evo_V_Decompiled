.class public Lcom/google/android/googlequicksearchbox/CachingPromoter;
.super Ljava/lang/Object;
.source "CachingPromoter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/googlequicksearchbox/CachingPromoter$1;,
        Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheEntry;,
        Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheType;
    }
.end annotation


# static fields
.field static final PROMOTED_SOURCE:Ljava/lang/String; = "promoted"


# instance fields
.field private mCache:Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheEntry;

.field private final mCacheType:Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheType;

.field private final mDebugging:Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;

.field private final mMaxPromoted:I

.field private mPromoter:Lcom/google/android/googlequicksearchbox/Promoter;


# direct methods
.method public constructor <init>(ILcom/google/android/googlequicksearchbox/CachingPromoter$CacheType;Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;)V
    .locals 2
    .parameter "maxPromoted"
    .parameter "cacheType"
    .parameter "debugging"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput p1, p0, Lcom/google/android/googlequicksearchbox/CachingPromoter;->mMaxPromoted:I

    .line 62
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/CachingPromoter;->mCacheType:Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheType;

    .line 63
    iput-object p3, p0, Lcom/google/android/googlequicksearchbox/CachingPromoter;->mDebugging:Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;

    .line 64
    new-instance v0, Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheEntry;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheEntry;-><init>(Lcom/google/android/googlequicksearchbox/CachingPromoter;Lcom/google/android/googlequicksearchbox/Suggestions;)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/CachingPromoter;->mCache:Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheEntry;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/googlequicksearchbox/CachingPromoter;Lcom/google/android/googlequicksearchbox/Suggestions;Lcom/google/android/googlequicksearchbox/SuggestionList;)Lcom/google/android/googlequicksearchbox/SuggestionList;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/google/android/googlequicksearchbox/CachingPromoter;->buildPromoted(Lcom/google/android/googlequicksearchbox/Suggestions;Lcom/google/android/googlequicksearchbox/SuggestionList;)Lcom/google/android/googlequicksearchbox/SuggestionList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/googlequicksearchbox/CachingPromoter;Lcom/google/android/googlequicksearchbox/Suggestions;Lcom/google/android/googlequicksearchbox/SuggestionList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/google/android/googlequicksearchbox/CachingPromoter;->refreshShortcuts(Lcom/google/android/googlequicksearchbox/Suggestions;Lcom/google/android/googlequicksearchbox/SuggestionList;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/googlequicksearchbox/CachingPromoter;)Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheType;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/CachingPromoter;->mCacheType:Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheType;

    return-object v0
.end method

.method private declared-synchronized buildPromoted(Lcom/google/android/googlequicksearchbox/Suggestions;Lcom/google/android/googlequicksearchbox/SuggestionList;)Lcom/google/android/googlequicksearchbox/SuggestionList;
    .locals 3
    .parameter "suggestions"
    .parameter "currentlyDisplayed"

    .prologue
    .line 100
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/google/android/googlequicksearchbox/SuggestionListNoDuplicates;

    const-string v1, "promoted"

    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestions;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/googlequicksearchbox/SuggestionListNoDuplicates;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .local v0, promoted:Lcom/google/android/googlequicksearchbox/MutableSuggestionList;
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/CachingPromoter;->mPromoter:Lcom/google/android/googlequicksearchbox/Promoter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 115
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 105
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/CachingPromoter;->mDebugging:Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;

    invoke-interface {v1}, Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;->debugPromotion()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 106
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/CachingPromoter;->mDebugging:Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;

    invoke-interface {v1, p1}, Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;->startPromotion(Lcom/google/android/googlequicksearchbox/Suggestions;)V

    .line 109
    :cond_2
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/CachingPromoter;->mPromoter:Lcom/google/android/googlequicksearchbox/Promoter;

    iget v2, p0, Lcom/google/android/googlequicksearchbox/CachingPromoter;->mMaxPromoted:I

    invoke-interface {v1, p1, v2, v0, p2}, Lcom/google/android/googlequicksearchbox/Promoter;->pickPromoted(Lcom/google/android/googlequicksearchbox/Suggestions;ILcom/google/android/googlequicksearchbox/MutableSuggestionList;Lcom/google/android/googlequicksearchbox/SuggestionList;)V

    .line 111
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/CachingPromoter;->mDebugging:Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;

    invoke-interface {v1}, Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;->debugPromotion()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/CachingPromoter;->mDebugging:Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;

    invoke-interface {v1, p1}, Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;->finishPromotion(Lcom/google/android/googlequicksearchbox/Suggestions;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 100
    .end local v0           #promoted:Lcom/google/android/googlequicksearchbox/MutableSuggestionList;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private refreshShortcuts(Lcom/google/android/googlequicksearchbox/Suggestions;Lcom/google/android/googlequicksearchbox/SuggestionList;)V
    .locals 4
    .parameter "suggestions"
    .parameter "promoted"

    .prologue
    .line 90
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestions;->getShortcuts()Lcom/google/android/googlequicksearchbox/ShortcutList;

    move-result-object v2

    .line 91
    .local v2, shortcuts:Lcom/google/android/googlequicksearchbox/ShortcutList;
    invoke-interface {p2}, Lcom/google/android/googlequicksearchbox/SuggestionList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/googlequicksearchbox/Suggestion;

    .line 92
    .local v1, s:Lcom/google/android/googlequicksearchbox/Suggestion;
    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/Suggestion;->isSuggestionShortcut()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 93
    invoke-interface {v2, v1}, Lcom/google/android/googlequicksearchbox/ShortcutList;->refresh(Lcom/google/android/googlequicksearchbox/Suggestion;)V

    goto :goto_0

    .line 96
    .end local v1           #s:Lcom/google/android/googlequicksearchbox/Suggestion;
    :cond_1
    return-void
.end method


# virtual methods
.method public getPromoted(Lcom/google/android/googlequicksearchbox/SuggestionList;)Lcom/google/android/googlequicksearchbox/SuggestionList;
    .locals 1
    .parameter "currentlyDisplayed"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/CachingPromoter;->mCache:Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheEntry;

    invoke-virtual {v0, p1}, Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheEntry;->getPromoted(Lcom/google/android/googlequicksearchbox/SuggestionList;)Lcom/google/android/googlequicksearchbox/SuggestionList;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized setPromoter(Lcom/google/android/googlequicksearchbox/Promoter;)V
    .locals 1
    .parameter "promoter"

    .prologue
    .line 68
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/CachingPromoter;->mPromoter:Lcom/google/android/googlequicksearchbox/Promoter;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 70
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/CachingPromoter;->mPromoter:Lcom/google/android/googlequicksearchbox/Promoter;

    .line 71
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/CachingPromoter;->mCache:Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheEntry;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheEntry;->onInvalidated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit p0

    return-void

    .line 69
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSuggestions(Lcom/google/android/googlequicksearchbox/Suggestions;)V
    .locals 1
    .parameter "suggestions"

    .prologue
    .line 75
    new-instance v0, Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheEntry;

    invoke-direct {v0, p0, p1}, Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheEntry;-><init>(Lcom/google/android/googlequicksearchbox/CachingPromoter;Lcom/google/android/googlequicksearchbox/Suggestions;)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/CachingPromoter;->mCache:Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheEntry;

    .line 76
    return-void
.end method
