.class Lcom/google/android/gm/provider/AttachmentStatusLoader$DownloadStatusLoader;
.super Landroid/content/CursorLoader;
.source "AttachmentStatusLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/provider/AttachmentStatusLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadStatusLoader"
.end annotation


# instance fields
.field private mDownloadIds:[J

.field private final mDownloadManager:Landroid/app/DownloadManager;

.field private final mObserver:Landroid/database/ContentObserver;

.field final synthetic this$0:Lcom/google/android/gm/provider/AttachmentStatusLoader;


# direct methods
.method public constructor <init>(Lcom/google/android/gm/provider/AttachmentStatusLoader;Landroid/content/Context;Landroid/app/DownloadManager;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "downloadManager"

    .prologue
    .line 211
    iput-object p1, p0, Lcom/google/android/gm/provider/AttachmentStatusLoader$DownloadStatusLoader;->this$0:Lcom/google/android/gm/provider/AttachmentStatusLoader;

    .line 212
    invoke-direct {p0, p2}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;)V

    .line 214
    iput-object p3, p0, Lcom/google/android/gm/provider/AttachmentStatusLoader$DownloadStatusLoader;->mDownloadManager:Landroid/app/DownloadManager;

    .line 215
    new-instance v0, Landroid/content/Loader$ForceLoadContentObserver;

    invoke-direct {v0, p0}, Landroid/content/Loader$ForceLoadContentObserver;-><init>(Landroid/content/Loader;)V

    iput-object v0, p0, Lcom/google/android/gm/provider/AttachmentStatusLoader$DownloadStatusLoader;->mObserver:Landroid/database/ContentObserver;

    .line 216
    return-void
.end method


# virtual methods
.method public loadInBackground()Landroid/database/Cursor;
    .locals 4

    .prologue
    .line 235
    iget-object v1, p0, Lcom/google/android/gm/provider/AttachmentStatusLoader$DownloadStatusLoader;->mDownloadManager:Landroid/app/DownloadManager;

    new-instance v2, Landroid/app/DownloadManager$Query;

    invoke-direct {v2}, Landroid/app/DownloadManager$Query;-><init>()V

    iget-object v3, p0, Lcom/google/android/gm/provider/AttachmentStatusLoader$DownloadStatusLoader;->mDownloadIds:[J

    invoke-virtual {v2, v3}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    .line 236
    .local v0, cursor:Landroid/database/Cursor;
    iget-object v1, p0, Lcom/google/android/gm/provider/AttachmentStatusLoader$DownloadStatusLoader;->mObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 237
    return-object v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/google/android/gm/provider/AttachmentStatusLoader$DownloadStatusLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public setIds(Ljava/util/Collection;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 222
    .local p1, ids:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    new-array v4, v4, [J

    iput-object v4, p0, Lcom/google/android/gm/provider/AttachmentStatusLoader$DownloadStatusLoader;->mDownloadIds:[J

    .line 223
    const/4 v0, 0x0

    .line 224
    .local v0, count:I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 225
    .local v1, downloadId:J
    iget-object v4, p0, Lcom/google/android/gm/provider/AttachmentStatusLoader$DownloadStatusLoader;->mDownloadIds:[J

    aput-wide v1, v4, v0

    .line 226
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 228
    .end local v1           #downloadId:J
    :cond_0
    return-void
.end method
