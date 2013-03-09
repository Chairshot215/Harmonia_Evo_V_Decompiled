.class Lcom/google/android/talk/PictureCache$BitmapCache;
.super Ljava/lang/Object;
.source "PictureCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/PictureCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BitmapCache"
.end annotation


# instance fields
.field private mLRU:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSoftCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/google/android/talk/PictureCache$PictureData;",
            ">;>;"
        }
    .end annotation
.end field

.field private mStrongCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/talk/PictureCache$PictureData;",
            ">;"
        }
    .end annotation
.end field

.field private mStrongCacheSize:J

.field final synthetic this$0:Lcom/google/android/talk/PictureCache;


# direct methods
.method constructor <init>(Lcom/google/android/talk/PictureCache;)V
    .locals 2
    .parameter

    .prologue
    .line 636
    iput-object p1, p0, Lcom/google/android/talk/PictureCache$BitmapCache;->this$0:Lcom/google/android/talk/PictureCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 641
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/PictureCache$BitmapCache;->mSoftCache:Ljava/util/HashMap;

    .line 645
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/PictureCache$BitmapCache;->mStrongCache:Ljava/util/HashMap;

    .line 647
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/talk/PictureCache$BitmapCache;->mStrongCacheSize:J

    .line 653
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/PictureCache$BitmapCache;->mLRU:Ljava/util/LinkedList;

    return-void
.end method

.method private internalComputeCacheSize()J
    .locals 7

    .prologue
    .line 818
    const-wide/16 v3, 0x0

    .line 819
    .local v3, size:J
    iget-object v5, p0, Lcom/google/android/talk/PictureCache$BitmapCache;->mStrongCache:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 820
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 821
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 822
    .local v2, key:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/talk/PictureCache$BitmapCache;->mStrongCache:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/PictureCache$PictureData;

    .line 823
    .local v0, cacheItem:Lcom/google/android/talk/PictureCache$PictureData;
    invoke-virtual {v0}, Lcom/google/android/talk/PictureCache$PictureData;->getDrawable()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/android/talk/PictureCache$BitmapCache;->bitmapSize(Landroid/graphics/drawable/BitmapDrawable;)J

    move-result-wide v5

    add-long/2addr v3, v5

    .line 824
    goto :goto_0

    .line 826
    .end local v0           #cacheItem:Lcom/google/android/talk/PictureCache$PictureData;
    .end local v2           #key:Ljava/lang/String;
    :cond_0
    return-wide v3
.end method


# virtual methods
.method add(Lcom/google/android/talk/PictureCache$PictureData;)V
    .locals 7
    .parameter "cacheItem"

    .prologue
    const/4 v6, -0x1

    .line 695
    iget-object v4, p0, Lcom/google/android/talk/PictureCache$BitmapCache;->mLRU:Ljava/util/LinkedList;

    monitor-enter v4

    .line 697
    const/4 v0, -0x1

    .line 700
    .local v0, pos:I
    :try_start_0
    iget-object v3, p0, Lcom/google/android/talk/PictureCache$BitmapCache;->mLRU:Ljava/util/LinkedList;

    invoke-virtual {p1}, Lcom/google/android/talk/PictureCache$PictureData;->getHash()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 704
    if-nez v0, :cond_0

    .line 705
    monitor-exit v4

    .line 735
    :goto_0
    return-void

    .line 708
    :cond_0
    if-eq v0, v6, :cond_1

    .line 709
    iget-object v3, p0, Lcom/google/android/talk/PictureCache$BitmapCache;->mLRU:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 712
    :cond_1
    iget-object v3, p0, Lcom/google/android/talk/PictureCache$BitmapCache;->mLRU:Ljava/util/LinkedList;

    invoke-virtual {p1}, Lcom/google/android/talk/PictureCache$PictureData;->getHash()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 716
    if-ne v0, v6, :cond_2

    .line 723
    invoke-virtual {p1}, Lcom/google/android/talk/PictureCache$PictureData;->getDrawable()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/talk/PictureCache$BitmapCache;->bitmapSize(Landroid/graphics/drawable/BitmapDrawable;)J

    move-result-wide v1

    .line 724
    .local v1, size:J
    iget-object v3, p0, Lcom/google/android/talk/PictureCache$BitmapCache;->mStrongCache:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/google/android/talk/PictureCache$PictureData;->getHash()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    iget-wide v5, p0, Lcom/google/android/talk/PictureCache$BitmapCache;->mStrongCacheSize:J

    add-long/2addr v5, v1

    iput-wide v5, p0, Lcom/google/android/talk/PictureCache$BitmapCache;->mStrongCacheSize:J

    .line 731
    invoke-virtual {p0}, Lcom/google/android/talk/PictureCache$BitmapCache;->pruneIfCacheExceededMax()V

    .line 734
    .end local v1           #size:J
    :cond_2
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method bitmapSize(Landroid/graphics/drawable/BitmapDrawable;)J
    .locals 3
    .parameter "drawable"

    .prologue
    .line 788
    if-nez p1, :cond_0

    .line 789
    const-wide/16 v1, 0x0

    .line 793
    :goto_0
    return-wide v1

    .line 792
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 793
    .local v0, b:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    int-to-long v1, v1

    goto :goto_0
.end method

.method clear(Ljava/lang/String;)V
    .locals 8
    .parameter "username"

    .prologue
    .line 670
    iget-object v3, p0, Lcom/google/android/talk/PictureCache$BitmapCache;->mLRU:Ljava/util/LinkedList;

    monitor-enter v3

    .line 676
    :try_start_0
    iget-object v2, p0, Lcom/google/android/talk/PictureCache$BitmapCache;->mLRU:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 677
    .local v1, pos:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 678
    iget-object v2, p0, Lcom/google/android/talk/PictureCache$BitmapCache;->mStrongCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/PictureCache$PictureData;

    .line 679
    .local v0, cacheItem:Lcom/google/android/talk/PictureCache$PictureData;
    if-eqz v0, :cond_0

    .line 680
    iget-wide v4, p0, Lcom/google/android/talk/PictureCache$BitmapCache;->mStrongCacheSize:J

    invoke-virtual {v0}, Lcom/google/android/talk/PictureCache$PictureData;->getDrawable()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/talk/PictureCache$BitmapCache;->bitmapSize(Landroid/graphics/drawable/BitmapDrawable;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/talk/PictureCache$BitmapCache;->mStrongCacheSize:J

    .line 682
    :cond_0
    iget-object v2, p0, Lcom/google/android/talk/PictureCache$BitmapCache;->mLRU:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 690
    .end local v0           #cacheItem:Lcom/google/android/talk/PictureCache$PictureData;
    :cond_1
    monitor-exit v3

    .line 691
    return-void

    .line 690
    .end local v1           #pos:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method clearAll()V
    .locals 4

    .prologue
    .line 656
    iget-object v1, p0, Lcom/google/android/talk/PictureCache$BitmapCache;->mLRU:Ljava/util/LinkedList;

    monitor-enter v1

    .line 662
    :try_start_0
    iget-object v0, p0, Lcom/google/android/talk/PictureCache$BitmapCache;->mStrongCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 663
    iget-object v0, p0, Lcom/google/android/talk/PictureCache$BitmapCache;->mLRU:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 664
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/talk/PictureCache$BitmapCache;->mStrongCacheSize:J

    .line 666
    monitor-exit v1

    .line 667
    return-void

    .line 666
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method get(Ljava/lang/String;)Lcom/google/android/talk/PictureCache$PictureData;
    .locals 4
    .parameter "username"

    .prologue
    .line 756
    iget-object v3, p0, Lcom/google/android/talk/PictureCache$BitmapCache;->mLRU:Ljava/util/LinkedList;

    monitor-enter v3

    .line 757
    const/4 v1, 0x0

    .line 760
    .local v1, cacheItem:Lcom/google/android/talk/PictureCache$PictureData;
    :try_start_0
    iget-object v2, p0, Lcom/google/android/talk/PictureCache$BitmapCache;->mStrongCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/google/android/talk/PictureCache$PictureData;

    move-object v1, v0

    .line 778
    if-eqz v1, :cond_0

    .line 779
    invoke-virtual {p0, v1}, Lcom/google/android/talk/PictureCache$BitmapCache;->add(Lcom/google/android/talk/PictureCache$PictureData;)V

    .line 783
    :cond_0
    monitor-exit v3

    return-object v1

    .line 784
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method pruneIfCacheExceededMax()V
    .locals 10

    .prologue
    .line 738
    iget-object v5, p0, Lcom/google/android/talk/PictureCache$BitmapCache;->mLRU:Ljava/util/LinkedList;

    monitor-enter v5

    .line 739
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/talk/PictureCache$BitmapCache;->strongSize()J

    move-result-wide v6

    const-wide/32 v8, 0x96000

    cmp-long v4, v6, v8

    if-lez v4, :cond_0

    .line 740
    iget-object v4, p0, Lcom/google/android/talk/PictureCache$BitmapCache;->mLRU:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 741
    .local v3, userToRemove:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/talk/PictureCache$BitmapCache;->mStrongCache:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/talk/PictureCache$PictureData;

    .line 742
    .local v2, cacheItem:Lcom/google/android/talk/PictureCache$PictureData;
    invoke-virtual {v2}, Lcom/google/android/talk/PictureCache$PictureData;->getDrawable()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/android/talk/PictureCache$BitmapCache;->bitmapSize(Landroid/graphics/drawable/BitmapDrawable;)J

    move-result-wide v0

    .line 746
    .local v0, bitmapSize:J
    iget-wide v6, p0, Lcom/google/android/talk/PictureCache$BitmapCache;->mStrongCacheSize:J

    sub-long/2addr v6, v0

    iput-wide v6, p0, Lcom/google/android/talk/PictureCache$BitmapCache;->mStrongCacheSize:J

    goto :goto_0

    .line 748
    .end local v0           #bitmapSize:J
    .end local v2           #cacheItem:Lcom/google/android/talk/PictureCache$PictureData;
    .end local v3           #userToRemove:Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_0
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 752
    return-void
.end method

.method recomputeCacheSize()V
    .locals 4

    .prologue
    .line 809
    iget-object v1, p0, Lcom/google/android/talk/PictureCache$BitmapCache;->mLRU:Ljava/util/LinkedList;

    monitor-enter v1

    .line 810
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/talk/PictureCache$BitmapCache;->internalComputeCacheSize()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/talk/PictureCache$BitmapCache;->mStrongCacheSize:J

    .line 814
    monitor-exit v1

    .line 815
    return-void

    .line 814
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method strongSize()J
    .locals 2

    .prologue
    .line 805
    iget-wide v0, p0, Lcom/google/android/talk/PictureCache$BitmapCache;->mStrongCacheSize:J

    return-wide v0
.end method
