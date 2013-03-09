.class Lcom/htc/album/helper/DeleteManager$DeleteTask;
.super Landroid/os/AsyncTask;
.source "DeleteManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/DeleteManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeleteTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCallback:Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;

.field private mCollection:Lcom/htc/album/modules/collection/Collection;

.field private mDeleteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDoDeleteAll:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/htc/album/modules/collection/Collection;Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;)V
    .locals 2
    .parameter "activity"
    .parameter "collection"
    .parameter "callback"

    .prologue
    const/4 v1, 0x0

    .line 253
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 245
    iput-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mActivity:Landroid/app/Activity;

    .line 246
    iput-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCollection:Lcom/htc/album/modules/collection/Collection;

    .line 247
    iput-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mDeleteList:Ljava/util/ArrayList;

    .line 248
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mDoDeleteAll:Z

    .line 249
    iput-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCallback:Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;

    .line 254
    iput-object p1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mActivity:Landroid/app/Activity;

    .line 255
    iput-object p2, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCollection:Lcom/htc/album/modules/collection/Collection;

    .line 256
    iput-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mDeleteList:Ljava/util/ArrayList;

    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mDoDeleteAll:Z

    .line 258
    iput-object p3, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCallback:Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;

    .line 259
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/htc/album/modules/collection/Collection;Ljava/util/ArrayList;Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;)V
    .locals 2
    .parameter "activity"
    .parameter "collection"
    .parameter
    .parameter "callback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/htc/album/modules/collection/Collection;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 264
    .local p3, deleteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1, p2, p4}, Lcom/htc/album/helper/DeleteManager$DeleteTask;-><init>(Landroid/app/Activity;Lcom/htc/album/modules/collection/Collection;Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;)V

    .line 265
    iput-object p3, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mDeleteList:Ljava/util/ArrayList;

    .line 266
    invoke-virtual {p2}, Lcom/htc/album/modules/collection/Collection;->getPhotoCount()I

    move-result v0

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mDoDeleteAll:Z

    .line 267
    return-void

    .line 266
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 8
    .parameter "arg0"

    .prologue
    .line 300
    iget-object v6, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 301
    .local v3, resolver:Landroid/content/ContentResolver;
    iget-object v6, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v6}, Lcom/htc/album/modules/collection/Collection;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    .line 302
    .local v1, listUber:Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    invoke-virtual {v1}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->resetCancelDelete()V

    .line 304
    iget-boolean v6, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mDoDeleteAll:Z

    if-eqz v6, :cond_2

    .line 306
    iget-object v6, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v6}, Lcom/htc/album/modules/collection/Collection;->getPhotoCount()I

    move-result v4

    .line 307
    .local v4, size:I
    const/4 v2, 0x0

    .local v2, pos:I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 309
    invoke-virtual {p0}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 327
    .end local v2           #pos:I
    .end local v4           #size:I
    :cond_0
    iget-object v6, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v6}, Lcom/htc/album/modules/collection/Collection;->reloadData()V

    .line 329
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    return-object v6

    .line 312
    .restart local v2       #pos:I
    .restart local v4       #size:I
    :cond_1
    iget-object v6, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v6, v3, v2}, Lcom/htc/album/modules/collection/Collection;->onDeleteIBT(Landroid/content/ContentResolver;I)V

    .line 307
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 317
    .end local v2           #pos:I
    .end local v4           #size:I
    :cond_2
    iget-object v5, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mDeleteList:Ljava/util/ArrayList;

    .line 318
    .local v5, tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 320
    .local v2, pos:Ljava/lang/Integer;
    invoke-virtual {p0}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->isCancelled()Z

    move-result v6

    if-nez v6, :cond_0

    .line 323
    iget-object v6, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v3, v7}, Lcom/htc/album/modules/collection/Collection;->onDeleteIBT(Landroid/content/ContentResolver;I)V

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 243
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public isRunning()Z
    .locals 2

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 358
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 359
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v1}, Lcom/htc/album/modules/collection/Collection;->cancelDeleting()V

    .line 361
    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCallback:Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;

    .line 362
    .local v0, callback:Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;
    if-eqz v0, :cond_0

    .line 363
    invoke-interface {v0}, Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;->onDeleteCancel()V

    .line 364
    :cond_0
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 341
    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCallback:Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;

    .line 342
    .local v0, callback:Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;
    if-eqz v0, :cond_0

    .line 343
    invoke-interface {v0}, Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;->onDeleteEnd()V

    .line 344
    :cond_0
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/WindowHelper;->keepScreenOn(Landroid/app/Activity;Z)V

    .line 345
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mActivity:Landroid/app/Activity;

    const/high16 v2, 0x12

    invoke-virtual {v1, v2}, Landroid/app/Activity;->removeDialog(I)V

    .line 346
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mActivity:Landroid/app/Activity;

    .line 347
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 243
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/helper/DeleteManager$DeleteTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 283
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mActivity:Landroid/app/Activity;

    const/high16 v2, 0x12

    invoke-virtual {v1, v2}, Landroid/app/Activity;->showDialog(I)V

    .line 284
    iget-object v1, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/WindowHelper;->keepScreenOn(Landroid/app/Activity;Z)V

    .line 286
    iget-object v0, p0, Lcom/htc/album/helper/DeleteManager$DeleteTask;->mCallback:Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;

    .line 287
    .local v0, callback:Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;
    if-eqz v0, :cond_0

    .line 288
    invoke-interface {v0}, Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;->onDeleteStart()V

    .line 289
    :cond_0
    return-void
.end method
