.class public abstract Lcom/htc/opensense/album/AdapterBase;
.super Landroid/widget/BaseAdapter;
.source "AdapterBase.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAdapterListener:Lcom/htc/opensense/album/AdapterInterface;

.field protected mCacheMgr:Lcom/htc/opensense/album/util/CacheManager;

.field protected mContext:Landroid/app/Activity;

.field private mObserver:Landroid/database/ContentObserver;

.field protected mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const-string v0, "PhotoAdapter"

    iput-object v0, p0, Lcom/htc/opensense/album/AdapterBase;->TAG:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/opensense/album/AdapterBase;->mCacheMgr:Lcom/htc/opensense/album/util/CacheManager;

    iput-object p1, p0, Lcom/htc/opensense/album/AdapterBase;->mContext:Landroid/app/Activity;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/AdapterBase;->mResolver:Landroid/content/ContentResolver;

    :goto_0
    return-void

    :cond_0
    iput-object v1, p0, Lcom/htc/opensense/album/AdapterBase;->mResolver:Landroid/content/ContentResolver;

    goto :goto_0
.end method


# virtual methods
.method public disableCache()V
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/AdapterBase;->mCacheMgr:Lcom/htc/opensense/album/util/CacheManager;

    invoke-virtual {v0}, Lcom/htc/opensense/album/util/CacheManager;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/album/AdapterBase;->mCacheMgr:Lcom/htc/opensense/album/util/CacheManager;

    return-void
.end method

.method public enableCache(II)V
    .locals 2

    new-instance v0, Lcom/htc/opensense/album/util/CacheManager;

    iget-object v1, p0, Lcom/htc/opensense/album/AdapterBase;->mContext:Landroid/app/Activity;

    invoke-direct {v0, v1, p1, p2}, Lcom/htc/opensense/album/util/CacheManager;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/htc/opensense/album/AdapterBase;->mCacheMgr:Lcom/htc/opensense/album/util/CacheManager;

    return-void
.end method

.method public getCacheMgr()Lcom/htc/opensense/album/util/CacheManager;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/AdapterBase;->mCacheMgr:Lcom/htc/opensense/album/util/CacheManager;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/htc/opensense/album/AdapterBase;->mAdapterListener:Lcom/htc/opensense/album/AdapterInterface;

    if-nez v0, :cond_0

    const-string v0, "PhotoAdapter"

    const-string v1, "no get view listener"

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/album/AdapterBase;->mAdapterListener:Lcom/htc/opensense/album/AdapterInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/htc/opensense/album/AdapterInterface;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method protected onContentChange(Z)V
    .locals 0

    return-void
.end method

.method protected onMediaMounted()V
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/AdapterBase;->mCacheMgr:Lcom/htc/opensense/album/util/CacheManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/AdapterBase;->mCacheMgr:Lcom/htc/opensense/album/util/CacheManager;

    invoke-virtual {v0}, Lcom/htc/opensense/album/util/CacheManager;->onMediaMounted()V

    :cond_0
    return-void
.end method

.method public registerContentObserve(Landroid/os/Handler;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/htc/opensense/album/AdapterBase;->mResolver:Landroid/content/ContentResolver;

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/opensense/album/AdapterBase;->mObserver:Landroid/database/ContentObserver;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/opensense/album/AdapterBase;->mResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/htc/opensense/album/AdapterBase;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_2
    new-instance v2, Lcom/htc/opensense/album/AdapterBase$1;

    invoke-direct {v2, p0, p1}, Lcom/htc/opensense/album/AdapterBase$1;-><init>(Lcom/htc/opensense/album/AdapterBase;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/htc/opensense/album/AdapterBase;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iget-object v2, p0, Lcom/htc/opensense/album/AdapterBase;->mResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/htc/opensense/album/AdapterBase;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method public setAdapterListener(Lcom/htc/opensense/album/AdapterInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense/album/AdapterBase;->mAdapterListener:Lcom/htc/opensense/album/AdapterInterface;

    return-void
.end method

.method public unregisterContentObserve()V
    .locals 4

    iget-object v1, p0, Lcom/htc/opensense/album/AdapterBase;->mObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/album/AdapterBase;->mResolver:Landroid/content/ContentResolver;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/htc/opensense/album/AdapterBase;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/htc/opensense/album/AdapterBase;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "PhotoAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unregister observer fail. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
