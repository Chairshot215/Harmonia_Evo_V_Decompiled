.class Lcom/google/android/talk/AnimatedAdapter2$ViewCache;
.super Ljava/lang/Object;
.source "AnimatedAdapter2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/AnimatedAdapter2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewCache"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/AnimatedAdapter2$ViewCache$CacheItem;
    }
.end annotation


# instance fields
.field private mScrapHeap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/view/View;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mViewCacheIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mViewMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/talk/AnimatedAdapter2$ViewCache$CacheItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/talk/AnimatedAdapter2;


# direct methods
.method constructor <init>(Lcom/google/android/talk/AnimatedAdapter2;)V
    .locals 1
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/google/android/talk/AnimatedAdapter2$ViewCache;->this$0:Lcom/google/android/talk/AnimatedAdapter2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/AnimatedAdapter2$ViewCache;->mViewMapping:Ljava/util/HashMap;

    .line 189
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/AnimatedAdapter2$ViewCache;->mViewCacheIds:Ljava/util/HashMap;

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/AnimatedAdapter2$ViewCache;->mScrapHeap:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getScrap(I)Landroid/view/View;
    .locals 5
    .parameter "viewType"

    .prologue
    const/4 v4, 0x0

    .line 195
    iget-object v3, p0, Lcom/google/android/talk/AnimatedAdapter2$ViewCache;->mScrapHeap:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt p1, v3, :cond_0

    move-object v2, v4

    .line 210
    :goto_0
    return-object v2

    .line 198
    :cond_0
    iget-object v3, p0, Lcom/google/android/talk/AnimatedAdapter2$ViewCache;->mScrapHeap:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 200
    .local v0, a:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/ref/SoftReference<Landroid/view/View;>;>;"
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 201
    .local v1, length:I
    if-nez v1, :cond_2

    move-object v2, v4

    .line 210
    goto :goto_0

    .line 205
    :cond_2
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/SoftReference;

    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 206
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_1

    goto :goto_0
.end method

.method public getView(J)Landroid/view/View;
    .locals 3
    .parameter "rowId"

    .prologue
    .line 251
    iget-object v1, p0, Lcom/google/android/talk/AnimatedAdapter2$ViewCache;->mViewMapping:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/AnimatedAdapter2$ViewCache$CacheItem;

    .line 252
    .local v0, cacheItem:Lcom/google/android/talk/AnimatedAdapter2$ViewCache$CacheItem;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/google/android/talk/AnimatedAdapter2$ViewCache$CacheItem;->mView:Landroid/view/View;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    .line 227
    iget-object v5, p0, Lcom/google/android/talk/AnimatedAdapter2$ViewCache;->mViewCacheIds:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 228
    .local v1, id:Ljava/lang/Long;
    if-nez v1, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    iget-object v5, p0, Lcom/google/android/talk/AnimatedAdapter2$ViewCache;->mViewMapping:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/talk/AnimatedAdapter2$ViewCache$CacheItem;

    .line 233
    .local v3, item:Lcom/google/android/talk/AnimatedAdapter2$ViewCache$CacheItem;
    iget-object v5, p0, Lcom/google/android/talk/AnimatedAdapter2$ViewCache;->mViewMapping:Ljava/util/HashMap;

    iget-wide v6, v3, Lcom/google/android/talk/AnimatedAdapter2$ViewCache$CacheItem;->mId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    iget-object v5, p0, Lcom/google/android/talk/AnimatedAdapter2$ViewCache;->mViewCacheIds:Ljava/util/HashMap;

    iget-object v6, v3, Lcom/google/android/talk/AnimatedAdapter2$ViewCache$CacheItem;->mView:Landroid/view/View;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    :goto_1
    iget v5, v3, Lcom/google/android/talk/AnimatedAdapter2$ViewCache$CacheItem;->mViewType:I

    iget-object v6, p0, Lcom/google/android/talk/AnimatedAdapter2$ViewCache;->mScrapHeap:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v5, v6, :cond_2

    .line 237
    iget-object v5, p0, Lcom/google/android/talk/AnimatedAdapter2$ViewCache;->mScrapHeap:Ljava/util/ArrayList;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 239
    :cond_2
    iget-object v5, p0, Lcom/google/android/talk/AnimatedAdapter2$ViewCache;->mScrapHeap:Ljava/util/ArrayList;

    iget v6, v3, Lcom/google/android/talk/AnimatedAdapter2$ViewCache$CacheItem;->mViewType:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 241
    .local v0, a:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/ref/SoftReference<Landroid/view/View;>;>;"
    iget-object v4, v3, Lcom/google/android/talk/AnimatedAdapter2$ViewCache$CacheItem;->mView:Landroid/view/View;

    check-cast v4, Landroid/view/ViewGroup;

    .line 242
    .local v4, vg:Landroid/view/ViewGroup;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 243
    .local v2, innerView:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 245
    if-eqz v2, :cond_0

    .line 246
    new-instance v5, Ljava/lang/ref/SoftReference;

    invoke-direct {v5, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public put(JILandroid/view/View;I)V
    .locals 9
    .parameter "itemId"
    .parameter "translatedPosition"
    .parameter "v"
    .parameter "viewType"

    .prologue
    .line 214
    iget-object v0, p0, Lcom/google/android/talk/AnimatedAdapter2$ViewCache;->mViewMapping:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/talk/AnimatedAdapter2$ViewCache$CacheItem;

    .line 215
    .local v6, c:Lcom/google/android/talk/AnimatedAdapter2$ViewCache$CacheItem;
    if-eqz v6, :cond_0

    .line 216
    iget-object v0, p0, Lcom/google/android/talk/AnimatedAdapter2$ViewCache;->mViewCacheIds:Ljava/util/HashMap;

    iget-object v1, v6, Lcom/google/android/talk/AnimatedAdapter2$ViewCache$CacheItem;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    :cond_0
    iget-object v7, p0, Lcom/google/android/talk/AnimatedAdapter2$ViewCache;->mViewMapping:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    new-instance v0, Lcom/google/android/talk/AnimatedAdapter2$ViewCache$CacheItem;

    move-object v1, p0

    move-object v2, p4

    move-wide v3, p1

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/talk/AnimatedAdapter2$ViewCache$CacheItem;-><init>(Lcom/google/android/talk/AnimatedAdapter2$ViewCache;Landroid/view/View;JI)V

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    iget-object v0, p0, Lcom/google/android/talk/AnimatedAdapter2$ViewCache;->mViewCacheIds:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    return-void
.end method
