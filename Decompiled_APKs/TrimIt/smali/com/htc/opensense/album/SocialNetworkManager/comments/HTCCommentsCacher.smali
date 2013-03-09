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
    .parameter "context"
    .parameter "obj1"

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-class v0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->LOG_TAG:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->mComments:Ljava/util/List;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->mCacheItems:Ljava/util/Map;

    .line 37
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->mUserInfo:Ljava/util/concurrent/ConcurrentHashMap;

    .line 39
    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->mPhotoID:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->mMediumOp:Lcom/htc/opensense/social/MediumOp;

    .line 41
    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->mIsUpdating:Z

    .line 43
    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->mLoaderItem:Lcom/htc/opensense/album/SocialNetworkManager/WrapperComment;

    .line 48
    check-cast p2, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    .end local p2
    iput-object p2, p0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    .line 49
    return-void
.end method


# virtual methods
.method public UnInitialize()V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

.method public clearAllCache()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->mComments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 106
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->mCacheItems:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 108
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->mUserInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 109
    return-void
.end method

.method public clearCommentCache()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->mComments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 118
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->mCacheItems:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 119
    return-void
.end method

.method public clearUserCache()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->mUserInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 114
    return-void
.end method

.method public getCount()I
    .locals 3

    .prologue
    .line 61
    const/4 v0, 0x0

    .line 63
    .local v0, nCount:I
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->mIsUpdating:Z

    if-ne v1, v2, :cond_1

    .line 65
    const/4 v0, 0x1

    .line 74
    :cond_0
    :goto_0
    return v0

    .line 69
    :cond_1
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->mCacheItems:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->mCacheItems:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .parameter "nIndex"

    .prologue
    .line 80
    const/4 v0, 0x0

    .line 82
    .local v0, object:Ljava/lang/Object;
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->mIsUpdating:Z

    if-ne v1, v2, :cond_1

    .line 84
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->mLoaderItem:Lcom/htc/opensense/album/SocialNetworkManager/WrapperComment;

    .line 95
    .end local v0           #object:Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v0

    .line 88
    .restart local v0       #object:Ljava/lang/Object;
    :cond_1
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->mCacheItems:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->mComments:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->mCacheItems:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 101
    int-to-long v0, p1

    return-wide v0
.end method

.method public getUser(Ljava/lang/String;)Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;
    .locals 2
    .parameter "szUserID"

    .prologue
    .line 181
    const/4 v0, 0x0

    .line 183
    .local v0, aPerson:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->mUserInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #aPerson:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;
    check-cast v0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;

    .line 185
    .restart local v0       #aPerson:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;
    return-object v0
.end method

.method public isEnabled(I)Z
    .locals 3
    .parameter "nPos"

    .prologue
    .line 194
    const/4 v0, 0x1

    .line 196
    .local v0, bResult:Z
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->mIsUpdating:Z

    if-ne v1, v2, :cond_0

    .line 197
    const/4 v0, 0x0

    .line 199
    :cond_0
    return v0
.end method

.method public isUpdating()Z
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->mIsUpdating:Z

    return v0
.end method

.method public refreshCommentList()Z
    .locals 6

    .prologue
    .line 133
    const/4 v0, 0x0

    .line 135
    .local v0, bResult:Z
    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v3}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->getCachedComments()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->mComments:Ljava/util/List;

    .line 137
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

    .line 140
    const/4 v2, 0x0

    .line 141
    .local v2, wrapperComment:Lcom/htc/opensense/album/SocialNetworkManager/WrapperComment;
    const/4 v1, 0x0

    .line 145
    .local v1, nIndex:I
    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->mComments:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 147
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->mComments:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 149
    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->mComments:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #wrapperComment:Lcom/htc/opensense/album/SocialNetworkManager/WrapperComment;
    check-cast v2, Lcom/htc/opensense/album/SocialNetworkManager/WrapperComment;

    .line 151
    .restart local v2       #wrapperComment:Lcom/htc/opensense/album/SocialNetworkManager/WrapperComment;
    if-nez v1, :cond_0

    .line 153
    sget-object v3, Lcom/htc/opensense/album/util/SeparatorTag;->SEPARABLE_BREAKTOP:Lcom/htc/opensense/album/util/SeparatorTag;

    invoke-virtual {v2, v3}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperComment;->setSeparatorInfo(Lcom/htc/opensense/album/util/SeparatorTag;)V

    .line 155
    :cond_0
    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->mCacheItems:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 159
    :cond_1
    const/4 v0, 0x1

    .line 160
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->mIsUpdating:Z

    .line 161
    return v0
.end method

.method public requestCommentList()Z
    .locals 2

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->clearCommentCache()V

    .line 127
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->mMediumOp:Lcom/htc/opensense/social/MediumOp;

    invoke-virtual {v0, v1}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->getCommentList(Lcom/htc/opensense/social/MediumOp;)Z

    .line 129
    const/4 v0, 0x1

    return v0
.end method

.method public setCommentLoader()V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->mLoaderItem:Lcom/htc/opensense/album/SocialNetworkManager/WrapperComment;

    if-nez v0, :cond_0

    .line 167
    new-instance v0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperComment;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperComment;-><init>(Lcom/htc/opensense/social/data/Comment;)V

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->mLoaderItem:Lcom/htc/opensense/album/SocialNetworkManager/WrapperComment;

    .line 168
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->mLoaderItem:Lcom/htc/opensense/album/SocialNetworkManager/WrapperComment;

    sget-object v1, Lcom/htc/opensense/album/util/SeparatorTag;->SEPARABLE_LOADER:Lcom/htc/opensense/album/util/SeparatorTag;

    invoke-virtual {v0, v1}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperComment;->setSeparatorInfo(Lcom/htc/opensense/album/util/SeparatorTag;)V

    .line 170
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->mIsUpdating:Z

    .line 171
    return-void
.end method

.method public setCommentPhoto(Lcom/htc/opensense/social/MediumOp;)V
    .locals 0
    .parameter "mediumOp"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->mMediumOp:Lcom/htc/opensense/social/MediumOp;

    .line 53
    return-void
.end method

.method public setUser(Ljava/lang/String;Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;)V
    .locals 1
    .parameter "szUserID"
    .parameter "aPerson"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/comments/HTCCommentsCacher;->mUserInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    return-void
.end method
