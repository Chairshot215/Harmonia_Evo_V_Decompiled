.class final Lcom/android/browser/InstantSearchEngine$BrowserSearchboxListener;
.super Landroid/webkit/SearchBox$SearchBoxListener;
.source "InstantSearchEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/InstantSearchEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BrowserSearchboxListener"
.end annotation


# static fields
.field private static final MAX_OUT_OF_ORDER:I = 0x5

.field private static final WAIT_INCREMENT_MS:I = 0x258


# instance fields
.field private mLatestSuggestion:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSuggestions:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/browser/InstantSearchEngine;


# direct methods
.method private constructor <init>(Lcom/android/browser/InstantSearchEngine;)V
    .locals 2
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/browser/InstantSearchEngine$BrowserSearchboxListener;->this$0:Lcom/android/browser/InstantSearchEngine;

    invoke-direct {p0}, Landroid/webkit/SearchBox$SearchBoxListener;-><init>()V

    .line 108
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/browser/InstantSearchEngine$BrowserSearchboxListener;->mSuggestions:Landroid/util/LruCache;

    .line 115
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/InstantSearchEngine$BrowserSearchboxListener;->mLatestSuggestion:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/browser/InstantSearchEngine;Lcom/android/browser/InstantSearchEngine$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/browser/InstantSearchEngine$BrowserSearchboxListener;-><init>(Lcom/android/browser/InstantSearchEngine;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 161
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/browser/InstantSearchEngine$BrowserSearchboxListener;->mSuggestions:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    monitor-exit p0

    return-void

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onSuggestionsReceived(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .parameter "query"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 121
    .local p2, suggestions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/browser/InstantSearchEngine$BrowserSearchboxListener;->mSuggestions:Landroid/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iput-object p2, p0, Lcom/android/browser/InstantSearchEngine$BrowserSearchboxListener;->mLatestSuggestion:Ljava/util/List;

    .line 126
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    monitor-exit p0

    return-void

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized tryWaitForSuggestions(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .parameter "query"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    monitor-enter p0

    const/4 v1, 0x0

    .line 138
    .local v1, numWaitReturns:I
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/browser/InstantSearchEngine$BrowserSearchboxListener;->mSuggestions:Landroid/util/LruCache;

    invoke-virtual {v3, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    if-nez v3, :cond_1

    .line 140
    const-wide/16 v3, 0x258

    :try_start_1
    invoke-virtual {p0, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 141
    add-int/lit8 v1, v1, 0x1

    .line 142
    const/4 v3, 0x5

    if-le v1, v3, :cond_0

    .line 152
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/android/browser/InstantSearchEngine$BrowserSearchboxListener;->mSuggestions:Landroid/util/LruCache;

    invoke-virtual {v3, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 153
    .local v2, suggestions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez v2, :cond_2

    .line 154
    iget-object v2, p0, Lcom/android/browser/InstantSearchEngine$BrowserSearchboxListener;->mLatestSuggestion:Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 157
    .end local v2           #suggestions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    :goto_0
    monitor-exit p0

    return-object v2

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 132
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method
