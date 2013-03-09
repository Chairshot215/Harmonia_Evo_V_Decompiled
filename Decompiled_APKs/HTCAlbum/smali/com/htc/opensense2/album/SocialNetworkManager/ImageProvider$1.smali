.class Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider$1;
.super Ljava/lang/Object;
.source "ImageProvider.java"

# interfaces
.implements Lcom/htc/opensense/cache/DownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;


# direct methods
.method constructor <init>(Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 385
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider$1;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadError(Ljava/lang/Exception;Landroid/os/Bundle;)V
    .locals 8
    .parameter "e"
    .parameter "bundle"

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x3

    .line 389
    const-string v3, "ImageProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][ImageProvider][onDownloadError]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    const/4 v2, 0x0

    .line 391
    .local v2, szPhotoUrl:Ljava/lang/String;
    const/4 v1, 0x0

    .line 393
    .local v1, szPhotoId:Ljava/lang/String;
    const-string v3, "photo_url"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 394
    const-string v3, "photo_id"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 396
    if-nez v1, :cond_3

    .line 398
    const/4 v0, 0x0

    .line 400
    .local v0, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider$1;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->access$000(Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    .restart local v0       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    if-nez v0, :cond_1

    .line 425
    :cond_0
    :goto_0
    return-void

    .line 403
    :cond_1
    iget-object v3, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 406
    iput v6, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    .line 408
    :cond_2
    iput v7, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    .line 409
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider$1;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v3, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->requestPhotoUpdate(Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;)V

    goto :goto_0

    .line 413
    .end local v0           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    :cond_3
    const/4 v0, 0x0

    .line 415
    .restart local v0       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider$1;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->access$000(Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    .restart local v0       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    if-eqz v0, :cond_0

    .line 418
    iput v6, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    .line 419
    iput v7, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    .line 421
    const-string v3, "ImageProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][ImageProvider][onDownloadError]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider$1;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v3, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->requestPhotoUpdate(Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;)V

    goto :goto_0
.end method

.method public onDownloadSuccess(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 8
    .parameter "uri"
    .parameter "bundle"

    .prologue
    const/4 v7, 0x0

    .line 430
    const/4 v3, 0x0

    .line 431
    .local v3, szPhotoUrl:Ljava/lang/String;
    const/4 v2, 0x0

    .line 436
    .local v2, szPhotoId:Ljava/lang/String;
    const-string v4, "photo_url"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 437
    const-string v4, "photo_id"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 439
    if-nez v2, :cond_2

    .line 441
    const/4 v0, 0x0

    .line 443
    .local v0, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider$1;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->access$000(Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    .restart local v0       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    if-nez v0, :cond_1

    .line 508
    :cond_0
    :goto_0
    return-void

    .line 446
    :cond_1
    iput-object p1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    .line 447
    iput v7, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    .line 453
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider$1;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v4, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->requestPhotoUpdate(Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;)V

    goto :goto_0

    .line 457
    .end local v0           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    :cond_2
    const-string v4, "ImageProvider"

    const-string v5, "[HTCAlbum][ImageProvider][onDownloadSuccess]: ---------------------------------"

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    const-string v4, "ImageProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][ImageProvider][onDownloadSuccess]: id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    const/4 v0, 0x0

    .line 461
    .restart local v0       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    const/4 v1, 0x0

    .line 462
    .local v1, imageCacheCandidate:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider$1;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->access$000(Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    .restart local v0       #imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    if-eqz v0, :cond_0

    .line 465
    iget-object v4, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrl:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrl:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 467
    iput-object p1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    .line 468
    const/4 v4, 0x1

    iput v4, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    .line 469
    const-string v4, "ImageProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][ImageProvider][onDownloadSuccess]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : full: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    :cond_3
    :goto_1
    iput v7, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    .line 492
    const/16 v4, 0x4f4d

    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider$1;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->mUIScrollState:I
    invoke-static {v5}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->access$100(Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;)I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 499
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider$1;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v4, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->requestPhotoUpdate(Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;)V

    .line 500
    if-eqz v1, :cond_0

    .line 501
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider$1;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v4, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->requestPhotoUpdate(Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;)V

    goto/16 :goto_0

    .line 471
    :cond_4
    iget-object v4, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 473
    iput-object p1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    .line 474
    iput v7, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    .line 475
    const-string v4, "ImageProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][ImageProvider][onDownloadSuccess]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : thumb: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider$1;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v4, v3, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->resolveCandidateItem(Ljava/lang/String;Landroid/net/Uri;)Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    move-result-object v1

    if-eqz v1, :cond_3

    goto :goto_1
.end method
