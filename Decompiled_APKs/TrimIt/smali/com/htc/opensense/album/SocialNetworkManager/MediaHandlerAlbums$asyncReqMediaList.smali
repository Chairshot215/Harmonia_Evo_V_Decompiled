.class Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;
.super Landroid/os/AsyncTask;
.source "MediaHandlerAlbums.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "asyncReqMediaList"
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
.field private mIsCacheExits:Z

.field private mIsExceptioned:Z

.field private mListCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;",
            ">;"
        }
    .end annotation
.end field

.field private mListLive:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/AlbumOp;",
            ">;"
        }
    .end annotation
.end field

.field private mPersonOp:Lcom/htc/opensense/social/PersonOp;

.field final synthetic this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;


# direct methods
.method private constructor <init>(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 253
    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 255
    iput-boolean v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->mIsExceptioned:Z

    .line 256
    iput-boolean v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->mIsCacheExits:Z

    .line 257
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->mListCache:Ljava/util/List;

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->mListLive:Ljava/util/List;

    .line 259
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->mPersonOp:Lcom/htc/opensense/social/PersonOp;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 253
    invoke-direct {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;-><init>(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 6
    .parameter "urls"

    .prologue
    const/4 v5, 0x1

    .line 264
    :try_start_0
    invoke-static {}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->access$500()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][MediaHandlerAlbums][asyncReqMediaList]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mIsForceLiveUpdate:Z
    invoke-static {v4}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->access$600(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "getAlbums.."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v2, v2, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaSource:Ljava/util/List;

    if-eqz v2, :cond_3

    .line 267
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v2, v2, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaSource:Ljava/util/List;

    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mAlbumCount:I
    invoke-static {v3}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->access$700(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense/social/PersonOp;

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->mPersonOp:Lcom/htc/opensense/social/PersonOp;

    .line 268
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->mPersonOp:Lcom/htc/opensense/social/PersonOp;

    invoke-virtual {v3}, Lcom/htc/opensense/social/PersonOp;->getData()Lcom/htc/opensense/social/data/Person;

    move-result-object v3

    iget-object v3, v3, Lcom/htc/opensense/social/data/Person;->uid:Ljava/lang/String;

    #calls: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->isFileCacheExist(Ljava/lang/String;)Z
    invoke-static {v2, v3}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->access$800(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->mIsCacheExits:Z

    .line 270
    invoke-static {}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->access$500()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][MediaHandlerAlbums][asyncReqMediaList]: ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mAlbumCount:I
    invoke-static {v4}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->access$700(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mAlbumRequestTotal:I
    invoke-static {v4}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->access$900(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mIsForceLiveUpdate:Z
    invoke-static {v2}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->access$600(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;)Z

    move-result v2

    if-eq v5, v2, :cond_0

    iget-boolean v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->mIsCacheExits:Z

    if-nez v2, :cond_3

    .line 274
    :cond_0
    invoke-static {}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->access$500()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[HTCAlbum][MediaHandlerAlbums][asyncReqMediaList]: sync live..!!!"

    invoke-static {v2, v3}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->mPersonOp:Lcom/htc/opensense/social/PersonOp;

    if-eqz v2, :cond_1

    .line 277
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->mPersonOp:Lcom/htc/opensense/social/PersonOp;

    invoke-virtual {v2}, Lcom/htc/opensense/social/PersonOp;->getAlbumsOf()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->mListLive:Ljava/util/List;

    .line 279
    :cond_1
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->mListLive:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 281
    const/4 v1, 0x0

    .local v1, nIndex:I
    :goto_0
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->mListLive:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_2

    .line 283
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v3, v2, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappersTemp:Ljava/util/List;

    new-instance v4, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->mListLive:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense/social/AlbumOp;

    invoke-direct {v4, v2}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;-><init>(Lcom/htc/opensense/social/AlbumOp;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 286
    .end local v1           #nIndex:I
    :cond_2
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    const/4 v3, 0x1

    #setter for: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mIsForceLiveUpdate:Z
    invoke-static {v2, v3}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->access$602(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;Z)Z
    :try_end_0
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    :cond_3
    :goto_1
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    return-object v2

    .line 291
    :catch_0
    move-exception v0

    .line 294
    .local v0, e:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
    invoke-static {}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->access$500()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][MediaHandlerAlbums][asyncReqMediaList] SocialNetworkException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iput-boolean v5, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->mIsExceptioned:Z

    .line 296
    invoke-virtual {v0}, Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;->printStackTrace()V

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 253
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 303
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 4
    .parameter "result"

    .prologue
    const/4 v3, 0x0

    .line 311
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v0, v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappers:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->mIsExceptioned:Z

    if-ne v0, v1, :cond_1

    .line 313
    :cond_0
    invoke-static {}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HTCAlbum][MediaHandlerAlbums][asyncReqMediaList]: Error Next..."

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    :goto_0
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    #setter for: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mIsForceLiveUpdate:Z
    invoke-static {v0, v3}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->access$602(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;Z)Z

    .line 320
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    const/16 v1, 0x4e2e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 321
    return-void

    .line 317
    :cond_1
    invoke-static {}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HTCAlbum][MediaHandlerAlbums][asyncReqMediaList]: Success Next... "

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 253
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 306
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 253
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
