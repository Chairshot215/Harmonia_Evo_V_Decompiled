.class Lcom/google/android/gm/provider/AttachmentStatusLoader$DownloadListener;
.super Ljava/lang/Object;
.source "AttachmentStatusLoader.java"

# interfaces
.implements Landroid/content/Loader$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/provider/AttachmentStatusLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/content/Loader$OnLoadCompleteListener",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/provider/AttachmentStatusLoader;


# direct methods
.method private constructor <init>(Lcom/google/android/gm/provider/AttachmentStatusLoader;)V
    .locals 0
    .parameter

    .prologue
    .line 293
    iput-object p1, p0, Lcom/google/android/gm/provider/AttachmentStatusLoader$DownloadListener;->this$0:Lcom/google/android/gm/provider/AttachmentStatusLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gm/provider/AttachmentStatusLoader;Lcom/google/android/gm/provider/AttachmentStatusLoader$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 293
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/AttachmentStatusLoader$DownloadListener;-><init>(Lcom/google/android/gm/provider/AttachmentStatusLoader;)V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 11
    .parameter
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 297
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v9, p0, Lcom/google/android/gm/provider/AttachmentStatusLoader$DownloadListener;->this$0:Lcom/google/android/gm/provider/AttachmentStatusLoader;

    iget-object v10, p0, Lcom/google/android/gm/provider/AttachmentStatusLoader$DownloadListener;->this$0:Lcom/google/android/gm/provider/AttachmentStatusLoader;

    #getter for: Lcom/google/android/gm/provider/AttachmentStatusLoader;->mAttachments:Ljava/util/List;
    invoke-static {v10}, Lcom/google/android/gm/provider/AttachmentStatusLoader;->access$200(Lcom/google/android/gm/provider/AttachmentStatusLoader;)Ljava/util/List;

    move-result-object v10

    invoke-static {v10}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v10

    #setter for: Lcom/google/android/gm/provider/AttachmentStatusLoader;->mAttachments:Ljava/util/List;
    invoke-static {v9, v10}, Lcom/google/android/gm/provider/AttachmentStatusLoader;->access$202(Lcom/google/android/gm/provider/AttachmentStatusLoader;Ljava/util/List;)Ljava/util/List;

    .line 299
    const-string v9, "_id"

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 300
    .local v0, columnDownloadId:I
    const-string v9, "bytes_so_far"

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 302
    .local v2, columnDownloadedSize:I
    const-string v9, "status"

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 304
    .local v1, columnDownloadStatus:I
    const/4 v8, -0x1

    .line 305
    .local v8, pos:I
    :cond_0
    :goto_0
    add-int/lit8 v8, v8, 0x1

    invoke-interface {p2, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 306
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 307
    .local v3, downloadId:J
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 308
    .local v6, downloadedSize:J
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 310
    .local v5, downloadStatus:I
    iget-object v9, p0, Lcom/google/android/gm/provider/AttachmentStatusLoader$DownloadListener;->this$0:Lcom/google/android/gm/provider/AttachmentStatusLoader;

    #getter for: Lcom/google/android/gm/provider/AttachmentStatusLoader;->mDownloadMap:Ljava/util/Map;
    invoke-static {v9}, Lcom/google/android/gm/provider/AttachmentStatusLoader;->access$300(Lcom/google/android/gm/provider/AttachmentStatusLoader;)Ljava/util/Map;

    move-result-object v9

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 311
    iget-object v9, p0, Lcom/google/android/gm/provider/AttachmentStatusLoader$DownloadListener;->this$0:Lcom/google/android/gm/provider/AttachmentStatusLoader;

    #getter for: Lcom/google/android/gm/provider/AttachmentStatusLoader;->mDownloadMap:Ljava/util/Map;
    invoke-static {v9}, Lcom/google/android/gm/provider/AttachmentStatusLoader;->access$300(Lcom/google/android/gm/provider/AttachmentStatusLoader;)Ljava/util/Map;

    move-result-object v9

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;

    long-to-int v10, v6

    iput v10, v9, Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;->downloadedSize:I

    .line 312
    iget-object v9, p0, Lcom/google/android/gm/provider/AttachmentStatusLoader$DownloadListener;->this$0:Lcom/google/android/gm/provider/AttachmentStatusLoader;

    #getter for: Lcom/google/android/gm/provider/AttachmentStatusLoader;->mDownloadMap:Ljava/util/Map;
    invoke-static {v9}, Lcom/google/android/gm/provider/AttachmentStatusLoader;->access$300(Lcom/google/android/gm/provider/AttachmentStatusLoader;)Ljava/util/Map;

    move-result-object v9

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;

    iput v5, v9, Lcom/google/android/gm/provider/AttachmentStatusLoader$Result;->downloadStatus:I

    goto :goto_0

    .line 316
    .end local v3           #downloadId:J
    .end local v5           #downloadStatus:I
    .end local v6           #downloadedSize:J
    :cond_1
    iget-object v9, p0, Lcom/google/android/gm/provider/AttachmentStatusLoader$DownloadListener;->this$0:Lcom/google/android/gm/provider/AttachmentStatusLoader;

    iget-object v10, p0, Lcom/google/android/gm/provider/AttachmentStatusLoader$DownloadListener;->this$0:Lcom/google/android/gm/provider/AttachmentStatusLoader;

    #getter for: Lcom/google/android/gm/provider/AttachmentStatusLoader;->mAttachments:Ljava/util/List;
    invoke-static {v10}, Lcom/google/android/gm/provider/AttachmentStatusLoader;->access$200(Lcom/google/android/gm/provider/AttachmentStatusLoader;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/android/gm/provider/AttachmentStatusLoader;->deliverResult(Ljava/lang/Object;)V

    .line 317
    return-void
.end method

.method public bridge synthetic onLoadComplete(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 293
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gm/provider/AttachmentStatusLoader$DownloadListener;->onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method
