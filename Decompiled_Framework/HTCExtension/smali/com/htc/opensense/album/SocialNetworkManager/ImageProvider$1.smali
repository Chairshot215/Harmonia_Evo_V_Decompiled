.class Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider$1;
.super Ljava/lang/Object;
.source "ImageProvider.java"

# interfaces
.implements Lcom/htc/opensense/cache/DownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;


# direct methods
.method constructor <init>(Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider$1;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadError(Ljava/lang/Exception;Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, -0x2

    invoke-static {}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][ImageProvider][onDownloadError]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string v3, "photo_url"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "photo_id"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider$1;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->access$100(Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iput v6, v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    :cond_2
    iput v7, v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mTaskID:I

    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider$1;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v3, v0}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->requestPhotoUpdate(Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider$1;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->access$100(Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;

    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUrl:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    iput v6, v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    :cond_5
    iput v7, v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mTaskID:I

    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider$1;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v3, v0}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->requestPhotoUpdate(Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;)V

    goto :goto_0
.end method

.method public onDownloadSuccess(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 6

    const/16 v5, 0x4f4d

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string v3, "photo_url"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "photo_id"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider$1;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->access$100(Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    iput v4, v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mTaskID:I

    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider$1;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mUIScrollState:I
    invoke-static {v3}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->access$200(Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;)I

    move-result v3

    if-ne v5, v3, :cond_0

    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider$1;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v3, v0}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->requestPhotoUpdate(Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider$1;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mImageCache:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->access$100(Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;

    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUrl:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUrl:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iput-object p1, v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    :cond_3
    :goto_1
    iput v4, v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mTaskID:I

    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider$1;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->mUIScrollState:I
    invoke-static {v3}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->access$200(Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;)I

    move-result v3

    if-ne v5, v3, :cond_0

    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider$1;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v3, v0}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->requestPhotoUpdate(Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;)V

    goto :goto_0

    :cond_4
    iget-object v3, v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iput-object p1, v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    goto :goto_1
.end method
