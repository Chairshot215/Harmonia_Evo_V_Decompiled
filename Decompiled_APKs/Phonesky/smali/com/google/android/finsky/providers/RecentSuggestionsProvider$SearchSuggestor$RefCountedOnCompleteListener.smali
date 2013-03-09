.class Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$RefCountedOnCompleteListener;
.super Ljava/lang/Object;
.source "RecentSuggestionsProvider.java"

# interfaces
.implements Lcom/google/android/finsky/providers/RecentSuggestionsProvider$OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RefCountedOnCompleteListener"
.end annotation


# instance fields
.field mRefCount:I

.field mWrappedListener:Lcom/google/android/finsky/providers/RecentSuggestionsProvider$OnCompleteListener;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/providers/RecentSuggestionsProvider$OnCompleteListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$RefCountedOnCompleteListener;->mRefCount:I

    .line 272
    iput-object p1, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$RefCountedOnCompleteListener;->mWrappedListener:Lcom/google/android/finsky/providers/RecentSuggestionsProvider$OnCompleteListener;

    .line 273
    return-void
.end method


# virtual methods
.method public declared-synchronized addProducer()V
    .locals 1

    .prologue
    .line 289
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$RefCountedOnCompleteListener;->mRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$RefCountedOnCompleteListener;->mRefCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    monitor-exit p0

    return-void

    .line 289
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onComplete()V
    .locals 1

    .prologue
    .line 277
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$RefCountedOnCompleteListener;->mRefCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v0, :cond_1

    .line 285
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 281
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$RefCountedOnCompleteListener;->mRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$RefCountedOnCompleteListener;->mRefCount:I

    .line 282
    iget v0, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$RefCountedOnCompleteListener;->mRefCount:I

    if-gtz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$RefCountedOnCompleteListener;->mWrappedListener:Lcom/google/android/finsky/providers/RecentSuggestionsProvider$OnCompleteListener;

    invoke-interface {v0}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$OnCompleteListener;->onComplete()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
