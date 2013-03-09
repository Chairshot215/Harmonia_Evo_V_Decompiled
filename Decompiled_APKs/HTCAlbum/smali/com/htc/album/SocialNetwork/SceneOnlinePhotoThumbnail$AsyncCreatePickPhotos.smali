.class Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncCreatePickPhotos;
.super Landroid/os/AsyncTask;
.source "SceneOnlinePhotoThumbnail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncCreatePickPhotos"
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
.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mOutputList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;


# direct methods
.method public constructor <init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 244
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncCreatePickPhotos;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 239
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncCreatePickPhotos;->mList:Ljava/util/ArrayList;

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncCreatePickPhotos;->mOutputList:Ljava/util/ArrayList;

    .line 245
    invoke-virtual {p2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncCreatePickPhotos;->mList:Ljava/util/ArrayList;

    .line 246
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 8
    .parameter "arg0"

    .prologue
    const/4 v7, 0x0

    .line 250
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;>;"
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncCreatePickPhotos;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;

    #getter for: Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    invoke-static {v6}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->access$400(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    .line 252
    .local v0, adapter:Lcom/htc/album/SocialNetwork/LivePhotoAdapter;
    if-nez v0, :cond_0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 267
    :goto_0
    return-object v6

    .line 254
    :cond_0
    invoke-virtual {v0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getCount()I

    move-result v1

    .line 256
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncCreatePickPhotos;->mList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .local v5, size:I
    :goto_1
    if-ge v2, v5, :cond_3

    .line 258
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncCreatePickPhotos;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_0

    .line 260
    :cond_1
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncCreatePickPhotos;->mList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 261
    .local v3, index:I
    if-lt v3, v1, :cond_2

    .line 256
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 263
    :cond_2
    invoke-virtual {v0, v3}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 266
    .end local v3           #index:I
    :cond_3
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncCreatePickPhotos;->mOutputList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 267
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 237
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncCreatePickPhotos;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 4
    .parameter "result"

    .prologue
    const/4 v3, 0x0

    .line 272
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 274
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 275
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncCreatePickPhotos;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;

    const/16 v1, 0x4ea1

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncCreatePickPhotos;->mOutputList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onPostMessage(ILjava/lang/Object;I)V

    .line 278
    :goto_0
    return-void

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncCreatePickPhotos;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;

    const/16 v1, 0x276a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 237
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncCreatePickPhotos;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
