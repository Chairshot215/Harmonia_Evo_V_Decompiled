.class public Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;
.super Ljava/lang/Object;
.source "HTCCommentsCacher.java"


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private mCacheItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/htc/opensense/album/SocialNetworkManager/WrapperComment;",
            ">;"
        }
    .end annotation
.end field

.field private mComments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/album/SocialNetworkManager/WrapperComment;",
            ">;"
        }
    .end annotation
.end field

.field private mIsUpdating:Z

.field private mLoaderItem:Lcom/htc/opensense/album/SocialNetworkManager/WrapperComment;

.field private mMediumOp:Lcom/htc/opensense/social/MediumOp;

.field private mPhotoID:Ljava/lang/String;

.field private mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

.field private mUserInfo:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->mComments:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->mCacheItems:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->mUserInfo:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->mPhotoID:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->mMediumOp:Lcom/htc/opensense/social/MediumOp;

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->mIsUpdating:Z

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->mLoaderItem:Lcom/htc/opensense/album/SocialNetworkManager/WrapperComment;

    check-cast p2, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    iput-object p2, p0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    return-void
.end method


# virtual methods
.method public UnInitialize()V
    .locals 0

    return-void
.end method

.method public clearAllCache()V
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->mComments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->mCacheItems:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->mUserInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public clearCommentCache()V
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->mComments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->mCacheItems:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public clearUserCache()V
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->mUserInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public getCount()I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->mIsUpdating:Z

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->mCacheItems:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->mCacheItems:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->mIsUpdating:Z

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->mLoaderItem:Lcom/htc/opensense/album/SocialNetworkManager/WrapperComment;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->mCacheItems:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->mComments:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->mCacheItems:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getUser(Ljava/lang/String;)Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->mUserInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;

    return-object v0
.end method

.method public isEnabled(I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->mIsUpdating:Z

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public isUpdating()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->mIsUpdating:Z

    return v0
.end method

.method public refreshCommentList()Z
    .locals 6

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v3}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->getCachedComments()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->mComments:Ljava/util/List;

    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][comments:HTCCommentsCacher][refreshCommentList]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->mComments:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->mComments:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->mComments:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->mComments:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense/album/SocialNetworkManager/WrapperComment;

    if-nez v1, :cond_0

    sget-object v3, Lcom/htc/opensense/album/util/SeparatorTag;->SEPARABLE_BREAKTOP:Lcom/htc/opensense/album/util/SeparatorTag;

    invoke-virtual {v2, v3}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperComment;->setSeparatorInfo(Lcom/htc/opensense/album/util/SeparatorTag;)V

    :cond_0
    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->mCacheItems:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->mIsUpdating:Z

    return v0
.end method

.method public requestCommentList()Z
    .locals 2

    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->clearCommentCache()V

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->mMediumOp:Lcom/htc/opensense/social/MediumOp;

    invoke-virtual {v0, v1}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->getCommentList(Lcom/htc/opensense/social/MediumOp;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public setCommentLoader()V
    .locals 2

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->mLoaderItem:Lcom/htc/opensense/album/SocialNetworkManager/WrapperComment;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperComment;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperComment;-><init>(Lcom/htc/opensense/social/data/Comment;)V

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->mLoaderItem:Lcom/htc/opensense/album/SocialNetworkManager/WrapperComment;

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->mLoaderItem:Lcom/htc/opensense/album/SocialNetworkManager/WrapperComment;

    sget-object v1, Lcom/htc/opensense/album/util/SeparatorTag;->SEPARABLE_LOADER:Lcom/htc/opensense/album/util/SeparatorTag;

    invoke-virtual {v0, v1}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperComment;->setSeparatorInfo(Lcom/htc/opensense/album/util/SeparatorTag;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->mIsUpdating:Z

    return-void
.end method

.method public setCommentPhoto(Lcom/htc/opensense/social/MediumOp;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->mMediumOp:Lcom/htc/opensense/social/MediumOp;

    return-void
.end method

.method public setUser(Ljava/lang/String;Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->mUserInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
