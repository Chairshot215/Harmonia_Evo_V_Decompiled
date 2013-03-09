.class public Lcom/htc/socialnetwork/flickr/FlickrClient;
.super Lcom/htc/socialnetwork/SocialNetworkClient;
.source "FlickrClient.java"


# instance fields
.field final LASTMODIFY:Ljava/lang/String;

.field final LOG_TAG:Ljava/lang/String;

.field LoginUser:Lcom/htc/socialnetwork/User;

.field mFlickr:Lcom/htc/socialnetwork/flickr/Flickr;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/16 v4, 0x320

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/socialnetwork/SocialNetworkClient;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "FlickrClient"

    iput-object v2, p0, Lcom/htc/socialnetwork/flickr/FlickrClient;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Last-Modified"

    iput-object v2, p0, Lcom/htc/socialnetwork/flickr/FlickrClient;->LASTMODIFY:Ljava/lang/String;

    new-instance v2, Lcom/htc/socialnetwork/flickr/Flickr;

    invoke-direct {v2, p2, p3}, Lcom/htc/socialnetwork/flickr/Flickr;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/htc/socialnetwork/flickr/FlickrClient;->mFlickr:Lcom/htc/socialnetwork/flickr/Flickr;

    invoke-virtual {p0}, Lcom/htc/socialnetwork/flickr/FlickrClient;->refreshData()V

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v2, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v3, 0xf0

    if-eq v2, v3, :cond_0

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ge v2, v4, :cond_0

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-lt v2, v4, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/htc/socialnetwork/flickr/FlickrClient;->mFlickr:Lcom/htc/socialnetwork/flickr/Flickr;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/htc/socialnetwork/flickr/Flickr;->useLargePhoto:Z

    :cond_1
    return-void
.end method

.method private getNotInSetAlbum()Lcom/htc/socialnetwork/Album;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    new-instance v0, Lcom/htc/socialnetwork/Album;

    invoke-direct {v0}, Lcom/htc/socialnetwork/Album;-><init>()V

    const-string v3, "NotInSet"

    invoke-virtual {v0, v3}, Lcom/htc/socialnetwork/Album;->setName(Ljava/lang/String;)V

    :try_start_0
    iget-object v3, p0, Lcom/htc/socialnetwork/flickr/FlickrClient;->mFlickr:Lcom/htc/socialnetwork/flickr/Flickr;

    invoke-virtual {v3}, Lcom/htc/socialnetwork/flickr/Flickr;->getNotInSetPhotosIdList()[Ljava/lang/String;
    :try_end_0
    .catch Lcom/htc/socialnetwork/SocialNetworkException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/socialnetwork/Album;->setPhotos([Ljava/lang/String;)V

    array-length v3, v2

    if-lez v3, :cond_0

    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v0, v3}, Lcom/htc/socialnetwork/Album;->setCoverPhoto(Ljava/lang/String;)V

    :cond_0
    const-string v3, "0"

    invoke-virtual {v0, v3}, Lcom/htc/socialnetwork/Album;->setId(Ljava/lang/String;)V

    array-length v3, v2

    invoke-virtual {v0, v3}, Lcom/htc/socialnetwork/Album;->setPhotoAmount(I)V

    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/htc/socialnetwork/SocialNetworkException;->getErrorCode()I

    move-result v3

    const/16 v4, 0x7dd

    if-ne v3, v4, :cond_1

    new-instance v3, Lcom/htc/socialnetwork/AuthenticationException;

    invoke-direct {v3}, Lcom/htc/socialnetwork/AuthenticationException;-><init>()V

    throw v3

    :cond_1
    throw v1
.end method


# virtual methods
.method public addPhotoComment(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/socialnetwork/flickr/FlickrClient;->mFlickr:Lcom/htc/socialnetwork/flickr/Flickr;

    invoke-virtual {v0, p1, p2}, Lcom/htc/socialnetwork/flickr/Flickr;->addComment(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addToAlbum(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    iget-object v1, p0, Lcom/htc/socialnetwork/flickr/FlickrClient;->mFlickr:Lcom/htc/socialnetwork/flickr/Flickr;

    invoke-virtual {v1}, Lcom/htc/socialnetwork/flickr/Flickr;->getParams()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "auth_token"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/htc/socialnetwork/AuthenticationException;

    invoke-direct {v1}, Lcom/htc/socialnetwork/AuthenticationException;-><init>()V

    throw v1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/htc/socialnetwork/flickr/FlickrClient;->mFlickr:Lcom/htc/socialnetwork/flickr/Flickr;

    aget-object v2, p2, v0

    invoke-virtual {v1, p1, v2}, Lcom/htc/socialnetwork/flickr/Flickr;->addToAlbum(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected checkLogin()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/socialnetwork/flickr/FlickrClient;->mFlickr:Lcom/htc/socialnetwork/flickr/Flickr;

    invoke-virtual {v0}, Lcom/htc/socialnetwork/flickr/Flickr;->getParams()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "auth_token"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/socialnetwork/flickr/FlickrClient;->mFlickr:Lcom/htc/socialnetwork/flickr/Flickr;

    invoke-virtual {v0}, Lcom/htc/socialnetwork/flickr/Flickr;->CheckToken()Z

    move-result v0

    goto :goto_0
.end method

.method public createAlbum(Ljava/util/HashMap;I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    iget-object v2, p0, Lcom/htc/socialnetwork/flickr/FlickrClient;->mFlickr:Lcom/htc/socialnetwork/flickr/Flickr;

    invoke-virtual {v2}, Lcom/htc/socialnetwork/flickr/Flickr;->getParams()Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "auth_token"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/htc/socialnetwork/AuthenticationException;

    invoke-direct {v2}, Lcom/htc/socialnetwork/AuthenticationException;-><init>()V

    throw v2

    :cond_0
    const-string v2, "albumName"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "cover_id"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/socialnetwork/flickr/FlickrClient;->mFlickr:Lcom/htc/socialnetwork/flickr/Flickr;

    invoke-virtual {v2, v1, v0}, Lcom/htc/socialnetwork/flickr/Flickr;->CreatePhotoSet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public createAlbum(Ljava/util/HashMap;ZI)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZI)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7d9

    const-string v2, "API_NOT_SUPPORTEXCEPTION"

    invoke-direct {v0, v1, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public deepLink(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7d9

    const-string v2, "API_NOT_SUPPORTEXCEPTION"

    invoke-direct {v0, v1, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public doAuth()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    iget-object v2, p0, Lcom/htc/socialnetwork/flickr/FlickrClient;->mFlickr:Lcom/htc/socialnetwork/flickr/Flickr;

    invoke-virtual {v2}, Lcom/htc/socialnetwork/flickr/Flickr;->getToken()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/socialnetwork/flickr/FlickrClient;->mFlickr:Lcom/htc/socialnetwork/flickr/Flickr;

    invoke-virtual {v2}, Lcom/htc/socialnetwork/flickr/Flickr;->getLoginUserName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/socialnetwork/flickr/FlickrClient;->mFlickr:Lcom/htc/socialnetwork/flickr/Flickr;

    invoke-virtual {v2}, Lcom/htc/socialnetwork/flickr/Flickr;->getParams()Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "auth_token"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public doAuth(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7d9

    const-string v2, "API_NOT_SUPPORTEXCEPTION"

    invoke-direct {v0, v1, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public findAlbumById(Ljava/lang/String;)Lcom/htc/socialnetwork/Album;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    :try_start_0
    const-string v2, "0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/htc/socialnetwork/flickr/FlickrClient;->getNotInSetAlbum()Lcom/htc/socialnetwork/Album;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/htc/socialnetwork/Album;->setSNClient(Lcom/htc/socialnetwork/SocialNetworkClient;)V

    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/htc/socialnetwork/flickr/FlickrClient;->mFlickr:Lcom/htc/socialnetwork/flickr/Flickr;

    invoke-virtual {v2, p1}, Lcom/htc/socialnetwork/flickr/Flickr;->getPhotoSetInfo(Ljava/lang/String;)Lcom/htc/socialnetwork/Album;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    new-instance v2, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v3, 0x7d0

    const-string v4, "JSONException"

    invoke-direct {v2, v3, v4, v1}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    new-instance v2, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v3, 0x7d7

    const-string v4, "MalformedURLException"

    invoke-direct {v2, v3, v4, v1}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected findAlbumList(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/socialnetwork/flickr/FlickrClient;->mFlickr:Lcom/htc/socialnetwork/flickr/Flickr;

    invoke-virtual {v0, p1}, Lcom/htc/socialnetwork/flickr/Flickr;->getAlbumIdList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected findEventById(J)Lcom/htc/socialnetwork/Event;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/AuthenticationException;,
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7d9

    const-string v2, "API_NOT_SUPPORTEXCEPTION"

    invoke-direct {v0, v1, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method protected findEvents(Ljava/lang/String;Ljava/util/Collection;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lcom/htc/socialnetwork/Event;",
            ">;J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7d9

    const-string v2, "API_NOT_SUPPORTEXCEPTION"

    invoke-direct {v0, v1, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method protected findFriendIdList(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    iget-object v1, p0, Lcom/htc/socialnetwork/flickr/FlickrClient;->mFlickr:Lcom/htc/socialnetwork/flickr/Flickr;

    invoke-virtual {v1}, Lcom/htc/socialnetwork/flickr/Flickr;->getParams()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "auth_token"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/htc/socialnetwork/flickr/FlickrClient;->mFlickr:Lcom/htc/socialnetwork/flickr/Flickr;

    invoke-virtual {v1}, Lcom/htc/socialnetwork/flickr/Flickr;->getListWithToken()Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/htc/socialnetwork/SocialNetworkException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/htc/socialnetwork/SocialNetworkException;->getErrorCode()I

    move-result v1

    const/16 v2, 0x7dd

    if-ne v1, v2, :cond_0

    new-instance v1, Lcom/htc/socialnetwork/AuthenticationException;

    invoke-direct {v1}, Lcom/htc/socialnetwork/AuthenticationException;-><init>()V

    throw v1

    :cond_0
    throw v0

    :cond_1
    iget-object v1, p0, Lcom/htc/socialnetwork/flickr/FlickrClient;->mFlickr:Lcom/htc/socialnetwork/flickr/Flickr;

    invoke-virtual {v1, p1}, Lcom/htc/socialnetwork/flickr/Flickr;->getListWithoutToken(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0
.end method

.method protected findFriendIds(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    iget-object v1, p0, Lcom/htc/socialnetwork/flickr/FlickrClient;->mFlickr:Lcom/htc/socialnetwork/flickr/Flickr;

    invoke-virtual {v1}, Lcom/htc/socialnetwork/flickr/Flickr;->getParams()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "auth_token"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/htc/socialnetwork/flickr/FlickrClient;->mFlickr:Lcom/htc/socialnetwork/flickr/Flickr;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2, p2}, Lcom/htc/socialnetwork/flickr/Flickr;->getContactIds(Ljava/lang/String;ZLjava/util/Collection;)V
    :try_end_0
    .catch Lcom/htc/socialnetwork/SocialNetworkException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iget-object v1, p0, Lcom/htc/socialnetwork/flickr/FlickrClient;->mFlickr:Lcom/htc/socialnetwork/flickr/Flickr;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, p2}, Lcom/htc/socialnetwork/flickr/Flickr;->getContactIds(Ljava/lang/String;ZLjava/util/Collection;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/htc/socialnetwork/SocialNetworkException;->getErrorCode()I

    move-result v1

    const/16 v2, 0x7dd

    if-ne v1, v2, :cond_1

    new-instance v1, Lcom/htc/socialnetwork/AuthenticationException;

    invoke-direct {v1}, Lcom/htc/socialnetwork/AuthenticationException;-><init>()V

    throw v1

    :cond_1
    throw v0
.end method

.method protected findFriendInvites(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7d9

    const-string v2, "API_NOT_SUPPORTEXCEPTION"

    invoke-direct {v0, v1, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method protected findFriends(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v3, p0, Lcom/htc/socialnetwork/flickr/FlickrClient;->mFlickr:Lcom/htc/socialnetwork/flickr/Flickr;

    invoke-virtual {v3}, Lcom/htc/socialnetwork/flickr/Flickr;->getParams()Ljava/util/HashMap;

    move-result-object v3

    const-string v4, "auth_token"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, p0, Lcom/htc/socialnetwork/flickr/FlickrClient;->mFlickr:Lcom/htc/socialnetwork/flickr/Flickr;

    invoke-virtual {v3, p1, v2}, Lcom/htc/socialnetwork/flickr/Flickr;->getContacts(Ljava/lang/String;Z)Ljava/util/List;
    :try_end_0
    .catch Lcom/htc/socialnetwork/SocialNetworkException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/htc/socialnetwork/SocialNetworkException;->getErrorCode()I

    move-result v3

    const/16 v4, 0x7dd

    if-ne v3, v4, :cond_0

    new-instance v3, Lcom/htc/socialnetwork/AuthenticationException;

    invoke-direct {v3}, Lcom/htc/socialnetwork/AuthenticationException;-><init>()V

    throw v3
.end method

.method protected findFriendsWithContactData(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/htc/socialnetwork/flickr/FlickrClient;->findFriends(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected findGroupIdList(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/htc/socialnetwork/flickr/FlickrClient;->mFlickr:Lcom/htc/socialnetwork/flickr/Flickr;

    invoke-virtual {v1}, Lcom/htc/socialnetwork/flickr/Flickr;->getParams()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "auth_token"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-eqz v1, :cond_1

    :try_start_1
    iget-object v1, p0, Lcom/htc/socialnetwork/flickr/FlickrClient;->mFlickr:Lcom/htc/socialnetwork/flickr/Flickr;

    invoke-virtual {v1}, Lcom/htc/socialnetwork/flickr/Flickr;->getGroups()Ljava/util/ArrayList;
    :try_end_1
    .catch Lcom/htc/socialnetwork/SocialNetworkException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Lcom/htc/socialnetwork/SocialNetworkException;->getErrorCode()I

    move-result v1

    const/16 v2, 0x7dd

    if-ne v1, v2, :cond_0

    new-instance v1, Lcom/htc/socialnetwork/AuthenticationException;

    invoke-direct {v1}, Lcom/htc/socialnetwork/AuthenticationException;-><init>()V

    throw v1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v2, 0x7d0

    const-string v3, "JSONException"

    invoke-direct {v1, v2, v3, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :try_start_3
    throw v0

    :cond_1
    iget-object v1, p0, Lcom/htc/socialnetwork/flickr/FlickrClient;->mFlickr:Lcom/htc/socialnetwork/flickr/Flickr;

    invoke-virtual {v1, p1}, Lcom/htc/socialnetwork/flickr/Flickr;->getPublicGroups(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v1

    goto :goto_0
.end method

.method protected findGroupInviteList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/GroupInvite;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7d9

    const-string v2, "API_NOT_SUPPORTEXCEPTION"

    invoke-direct {v0, v1, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method protected findMsgUpdate(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/Update;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7d9

    const-string v2, "API_NOT_SUPPORTEXCEPTION"

    invoke-direct {v0, v1, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public findPhotoById(Ljava/lang/String;)Lcom/htc/socialnetwork/Photo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    const/4 v3, -0x1

    const-string v1, "FlickrClient"

    const-string v2, "find photo by id"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mDisplayWidth:I

    if-eq v1, v3, :cond_0

    iget v1, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mDisplayHeight:I

    if-ne v1, v3, :cond_1

    :cond_0
    new-instance v1, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v2, 0x7dc

    invoke-direct {v1, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v1

    :cond_1
    iget v1, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mDisplayWidth:I

    iget v2, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mDisplayHeight:I

    invoke-static {v1, v2}, Lcom/htc/socialnetwork/flickr/Flickr;->setPhotoype(II)V

    :try_start_0
    iget-object v1, p0, Lcom/htc/socialnetwork/flickr/FlickrClient;->mFlickr:Lcom/htc/socialnetwork/flickr/Flickr;

    invoke-virtual {v1, p1}, Lcom/htc/socialnetwork/flickr/Flickr;->getPhotoInfo(Ljava/lang/String;)Lcom/htc/socialnetwork/Photo;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    new-instance v1, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v2, 0x7d7

    const-string v3, "MalformedURLException"

    invoke-direct {v1, v2, v3, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected findPhotoList(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/socialnetwork/flickr/FlickrClient;->mFlickr:Lcom/htc/socialnetwork/flickr/Flickr;

    invoke-virtual {v0, p1}, Lcom/htc/socialnetwork/flickr/Flickr;->getPhotoIdArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method protected findStatusList(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7d9

    const-string v2, "API_NOT_SUPPORTEXCEPTION"

    invoke-direct {v0, v1, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method protected findUpdatePhoto(Ljava/lang/String;J)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/socialnetwork/flickr/FlickrClient;->mFlickr:Lcom/htc/socialnetwork/flickr/Flickr;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/socialnetwork/flickr/Flickr;->getUpdatePhoto(Ljava/lang/String;J)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected findUpdatePhotos(Ljava/util/Collection;J)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;J)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/Photo;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/socialnetwork/flickr/FlickrClient;->mFlickr:Lcom/htc/socialnetwork/flickr/Flickr;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/socialnetwork/flickr/Flickr;->getUpdatePhotos(Ljava/util/Collection;J)Ljava/util/HashMap;

    move-result-object v0

    goto :goto_0
.end method

.method public findUserById(Ljava/lang/String;)Lcom/htc/socialnetwork/User;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    new-instance v0, Lcom/htc/socialnetwork/User;

    invoke-direct {v0, p0}, Lcom/htc/socialnetwork/User;-><init>(Lcom/htc/socialnetwork/SocialNetworkClient;)V

    iget-object v1, p0, Lcom/htc/socialnetwork/flickr/FlickrClient;->mFlickr:Lcom/htc/socialnetwork/flickr/Flickr;

    invoke-virtual {v1, p1, v0}, Lcom/htc/socialnetwork/flickr/Flickr;->getInfo(Ljava/lang/String;Lcom/htc/socialnetwork/User;)V

    return-object v0
.end method

.method protected findUserByIds(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/htc/socialnetwork/User;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/AuthenticationException;,
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/htc/socialnetwork/flickr/FlickrClient;->findUserById(Ljava/lang/String;)Lcom/htc/socialnetwork/User;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {p2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/htc/socialnetwork/SocialNetworkException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/htc/socialnetwork/SocialNetworkException;->getErrorCode()I

    move-result v4

    const/16 v5, 0x7dd

    if-ne v4, v5, :cond_1

    new-instance v4, Lcom/htc/socialnetwork/AuthenticationException;

    invoke-direct {v4}, Lcom/htc/socialnetwork/AuthenticationException;-><init>()V

    throw v4

    :cond_1
    const-string v4, "FlickrClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/htc/socialnetwork/SocialNetworkException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at findUserByIds"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    return-void
.end method

.method public findUserByName(Ljava/lang/String;)Lcom/htc/socialnetwork/User;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    :try_start_0
    new-instance v1, Lcom/htc/socialnetwork/User;

    invoke-direct {v1, p0}, Lcom/htc/socialnetwork/User;-><init>(Lcom/htc/socialnetwork/SocialNetworkClient;)V

    iget-object v2, p0, Lcom/htc/socialnetwork/flickr/FlickrClient;->mFlickr:Lcom/htc/socialnetwork/flickr/Flickr;

    invoke-virtual {v2, p1, v1}, Lcom/htc/socialnetwork/flickr/Flickr;->getUserByName(Ljava/lang/String;Lcom/htc/socialnetwork/User;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    new-instance v2, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v3, 0x7d0

    const-string v4, "JSONException"

    invoke-direct {v2, v3, v4, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getAccountType()Ljava/lang/String;
    .locals 1

    const-string v0, "com.htc.socialnetwork.flickr"

    return-object v0
.end method

.method public getAlbums(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/Album;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/socialnetwork/flickr/FlickrClient;->mFlickr:Lcom/htc/socialnetwork/flickr/Flickr;

    invoke-virtual {v0, p1}, Lcom/htc/socialnetwork/flickr/Flickr;->getAlbums(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getContactsPhotos(ZZ)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/Photo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/socialnetwork/flickr/FlickrClient;->mFlickr:Lcom/htc/socialnetwork/flickr/Flickr;

    invoke-virtual {v0, p1, p2}, Lcom/htc/socialnetwork/flickr/Flickr;->getContactsPhotos(ZZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFilePartName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    const-string v0, "photo"

    return-object v0
.end method

.method public getLoginURL()Ljava/net/URL;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/htc/socialnetwork/flickr/FlickrClient;->mFlickr:Lcom/htc/socialnetwork/flickr/Flickr;

    invoke-virtual {v1}, Lcom/htc/socialnetwork/flickr/Flickr;->getFrob()V

    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/htc/socialnetwork/flickr/FlickrClient;->mFlickr:Lcom/htc/socialnetwork/flickr/Flickr;

    invoke-virtual {v2}, Lcom/htc/socialnetwork/flickr/Flickr;->getAuthLink()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v2, 0x7d7

    const-string v3, "MalformedURLException"

    invoke-direct {v1, v2, v3, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getLoginUser()Lcom/htc/socialnetwork/User;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/socialnetwork/flickr/FlickrClient;->LoginUser:Lcom/htc/socialnetwork/User;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/socialnetwork/User;

    invoke-direct {v0, p0}, Lcom/htc/socialnetwork/User;-><init>(Lcom/htc/socialnetwork/SocialNetworkClient;)V

    iput-object v0, p0, Lcom/htc/socialnetwork/flickr/FlickrClient;->LoginUser:Lcom/htc/socialnetwork/User;

    :cond_0
    iget-object v0, p0, Lcom/htc/socialnetwork/flickr/FlickrClient;->mFlickr:Lcom/htc/socialnetwork/flickr/Flickr;

    iget-object v1, p0, Lcom/htc/socialnetwork/flickr/FlickrClient;->mFlickr:Lcom/htc/socialnetwork/flickr/Flickr;

    invoke-virtual {v1}, Lcom/htc/socialnetwork/flickr/Flickr;->getLoginUserId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/socialnetwork/flickr/FlickrClient;->LoginUser:Lcom/htc/socialnetwork/User;

    invoke-virtual {v0, v1, v2}, Lcom/htc/socialnetwork/flickr/Flickr;->getInfo(Ljava/lang/String;Lcom/htc/socialnetwork/User;)V

    iget-object v0, p0, Lcom/htc/socialnetwork/flickr/FlickrClient;->LoginUser:Lcom/htc/socialnetwork/User;

    return-object v0
.end method

.method public getPhotoComments(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/Comment;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/socialnetwork/flickr/FlickrClient;->mFlickr:Lcom/htc/socialnetwork/flickr/Flickr;

    invoke-virtual {v0, p1}, Lcom/htc/socialnetwork/flickr/Flickr;->getComments(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPhotoFavoriteList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/socialnetwork/flickr/FlickrClient;->mFlickr:Lcom/htc/socialnetwork/flickr/Flickr;

    invoke-virtual {v0, p1}, Lcom/htc/socialnetwork/flickr/Flickr;->getFavoriteList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPhotos(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/Photo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/socialnetwork/flickr/FlickrClient;->mFlickr:Lcom/htc/socialnetwork/flickr/Flickr;

    invoke-virtual {v0, p1}, Lcom/htc/socialnetwork/flickr/Flickr;->getPhotos(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRecentPhotos(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/Photo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/socialnetwork/flickr/FlickrClient;->mFlickr:Lcom/htc/socialnetwork/flickr/Flickr;

    invoke-virtual {v0, p1, p2}, Lcom/htc/socialnetwork/flickr/Flickr;->getRecentPhotos(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSessionToken()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    iget-object v1, p0, Lcom/htc/socialnetwork/flickr/FlickrClient;->mFlickr:Lcom/htc/socialnetwork/flickr/Flickr;

    invoke-virtual {v1}, Lcom/htc/socialnetwork/flickr/Flickr;->getParams()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/socialnetwork/flickr/FlickrClient;->mFlickr:Lcom/htc/socialnetwork/flickr/Flickr;

    invoke-virtual {v1}, Lcom/htc/socialnetwork/flickr/Flickr;->getParams()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "auth_token"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/socialnetwork/flickr/FlickrClient;->mFlickr:Lcom/htc/socialnetwork/flickr/Flickr;

    invoke-virtual {v1}, Lcom/htc/socialnetwork/flickr/Flickr;->getParams()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "auth_token"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUploadParameters(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/socialnetwork/flickr/FlickrClient;->mFlickr:Lcom/htc/socialnetwork/flickr/Flickr;

    invoke-virtual {v0}, Lcom/htc/socialnetwork/flickr/Flickr;->getParams()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "auth_token"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/socialnetwork/flickr/FlickrClient;->mFlickr:Lcom/htc/socialnetwork/flickr/Flickr;

    invoke-virtual {v0, p1}, Lcom/htc/socialnetwork/flickr/Flickr;->getUploadParameters(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    goto :goto_0
.end method

.method public getUploadResponseMsg(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/htc/socialnetwork/flickr/FlickrClient;->mFlickr:Lcom/htc/socialnetwork/flickr/Flickr;

    invoke-virtual {v1, p1}, Lcom/htc/socialnetwork/flickr/Flickr;->getUploadResponseMsg(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/htc/socialnetwork/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mDataHelper:Lcom/htc/socialnetwork/SocialNetworkDataHelper;

    invoke-virtual {v1}, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->removeActiveAccount()Z

    const-string v1, "err:8006"

    goto :goto_0
.end method

.method public getUploadUrl()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    const-string v0, "http://api.flickr.com/services/upload/"

    return-object v0
.end method

.method protected logout()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/htc/socialnetwork/flickr/FlickrClient;->mFlickr:Lcom/htc/socialnetwork/flickr/Flickr;

    invoke-virtual {v1}, Lcom/htc/socialnetwork/flickr/Flickr;->getParams()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "auth_token"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "auth_token"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected refreshData()V
    .locals 5

    :try_start_0
    iget-object v2, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mDataHelper:Lcom/htc/socialnetwork/SocialNetworkDataHelper;

    invoke-virtual {v2}, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/htc/socialnetwork/flickr/FlickrClient;->logout()Z

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/htc/socialnetwork/flickr/FlickrClient;->mFlickr:Lcom/htc/socialnetwork/flickr/Flickr;

    invoke-virtual {v2}, Lcom/htc/socialnetwork/flickr/Flickr;->getParams()Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "auth_token"

    iget-object v4, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mDataHelper:Lcom/htc/socialnetwork/SocialNetworkDataHelper;

    invoke-virtual {v4}, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->getSessionToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/htc/socialnetwork/SocialNetworkException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "FlickrClient"

    invoke-virtual {v1}, Lcom/htc/socialnetwork/SocialNetworkException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setPhotoFavorite(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/socialnetwork/flickr/FlickrClient;->mFlickr:Lcom/htc/socialnetwork/flickr/Flickr;

    invoke-virtual {v0, p1, p2}, Lcom/htc/socialnetwork/flickr/Flickr;->editFavorite(Ljava/lang/String;Z)V

    return-void
.end method

.method protected updateStatus(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/AuthenticationException;,
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7d9

    const-string v2, "API_NOT_SUPPORTEXCEPTION"

    invoke-direct {v0, v1, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v0
.end method
