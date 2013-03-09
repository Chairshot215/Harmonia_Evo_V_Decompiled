.class public Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;
.super Landroid/database/DataSetObservable;
.source "RecentLabelsCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/RecentLabelsCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecentLabelList"
.end annotation


# instance fields
.field private final mRecentLabelsLRU:Lcom/google/android/gm/LRUCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gm/LRUCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/gm/RecentLabelsCache;


# direct methods
.method private constructor <init>(Lcom/google/android/gm/RecentLabelsCache;Ljava/util/List;I)V
    .locals 4
    .parameter
    .parameter
    .parameter "capacity"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 243
    .local p2, orderedCanonicalNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;->this$0:Lcom/google/android/gm/RecentLabelsCache;

    invoke-direct {p0}, Landroid/database/DataSetObservable;-><init>()V

    .line 244
    new-instance v2, Lcom/google/android/gm/LRUCache;

    invoke-direct {v2, p3}, Lcom/google/android/gm/LRUCache;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;->mRecentLabelsLRU:Lcom/google/android/gm/LRUCache;

    .line 246
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 247
    .local v0, canonicalName:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;->mRecentLabelsLRU:Lcom/google/android/gm/LRUCache;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gm/LRUCache;->addElement(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 249
    .end local v0           #canonicalName:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gm/RecentLabelsCache;Ljava/util/List;ILcom/google/android/gm/RecentLabelsCache$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 236
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;-><init>(Lcom/google/android/gm/RecentLabelsCache;Ljava/util/List;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 236
    invoke-direct {p0, p1}, Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;->addLabel(Ljava/lang/String;)V

    return-void
.end method

.method private addLabel(Ljava/lang/String;)V
    .locals 2
    .parameter "canonicalName"

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;->mRecentLabelsLRU:Lcom/google/android/gm/LRUCache;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gm/LRUCache;->addElement(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 267
    return-void
.end method


# virtual methods
.method public getOrderedRecentLabels()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 259
    iget-object v1, p0, Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;->mRecentLabelsLRU:Lcom/google/android/gm/LRUCache;

    invoke-virtual {v1}, Lcom/google/android/gm/LRUCache;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 260
    .local v0, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 261
    return-object v0
.end method

.method public registerObserver(Landroid/database/DataSetObserver;)V
    .locals 5
    .parameter "observer"

    .prologue
    .line 278
    invoke-super {p0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 279
    iget-object v0, p0, Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;->this$0:Lcom/google/android/gm/RecentLabelsCache;

    #getter for: Lcom/google/android/gm/RecentLabelsCache;->mUpdateLists:Ljava/util/Set;
    invoke-static {v0}, Lcom/google/android/gm/RecentLabelsCache;->access$200(Lcom/google/android/gm/RecentLabelsCache;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 280
    iget-object v0, p0, Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;->this$0:Lcom/google/android/gm/RecentLabelsCache;

    #getter for: Lcom/google/android/gm/RecentLabelsCache;->mUpdateLists:Ljava/util/Set;
    invoke-static {v0}, Lcom/google/android/gm/RecentLabelsCache;->access$200(Lcom/google/android/gm/RecentLabelsCache;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 282
    const-string v0, "Gmail"

    const-string v1, "global RLC update set size=%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;->this$0:Lcom/google/android/gm/RecentLabelsCache;

    #getter for: Lcom/google/android/gm/RecentLabelsCache;->mUpdateLists:Ljava/util/Set;
    invoke-static {v4}, Lcom/google/android/gm/RecentLabelsCache;->access$200(Lcom/google/android/gm/RecentLabelsCache;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 284
    :cond_0
    return-void
.end method

.method public bridge synthetic registerObserver(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 236
    check-cast p1, Landroid/database/DataSetObserver;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;->registerObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;->mRecentLabelsLRU:Lcom/google/android/gm/LRUCache;

    invoke-virtual {v0}, Lcom/google/android/gm/LRUCache;->size()I

    move-result v0

    return v0
.end method

.method public unregisterAll()V
    .locals 1

    .prologue
    .line 296
    invoke-super {p0}, Landroid/database/DataSetObservable;->unregisterAll()V

    .line 297
    iget-object v0, p0, Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;->this$0:Lcom/google/android/gm/RecentLabelsCache;

    #getter for: Lcom/google/android/gm/RecentLabelsCache;->mUpdateLists:Ljava/util/Set;
    invoke-static {v0}, Lcom/google/android/gm/RecentLabelsCache;->access$200(Lcom/google/android/gm/RecentLabelsCache;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 298
    return-void
.end method

.method public unregisterObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 288
    invoke-super {p0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 289
    iget-object v0, p0, Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;->this$0:Lcom/google/android/gm/RecentLabelsCache;

    #getter for: Lcom/google/android/gm/RecentLabelsCache;->mUpdateLists:Ljava/util/Set;
    invoke-static {v0}, Lcom/google/android/gm/RecentLabelsCache;->access$200(Lcom/google/android/gm/RecentLabelsCache;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 292
    :cond_0
    return-void
.end method

.method public bridge synthetic unregisterObserver(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 236
    check-cast p1, Landroid/database/DataSetObserver;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;->unregisterObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method
