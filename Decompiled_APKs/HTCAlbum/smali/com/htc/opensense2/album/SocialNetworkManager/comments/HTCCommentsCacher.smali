.class public Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;
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
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;",
            ">;"
        }
    .end annotation
.end field

.field private mComments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;",
            ">;"
        }
    .end annotation
.end field

.field private mIsUpdating:Z

.field private mLoaderItem:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;

.field private mMediumOp:Lcom/htc/opensense/social/MediumOp;

.field private mPhotoID:Ljava/lang/String;

.field private mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

.field private mUserInfo:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;",
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
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-class v0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->LOG_TAG:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mComments:Ljava/util/List;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mCacheItems:Ljava/util/Map;

    .line 37
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mUserInfo:Ljava/util/concurrent/ConcurrentHashMap;

    .line 39
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mPhotoID:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mMediumOp:Lcom/htc/opensense/social/MediumOp;

    .line 41
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mIsUpdating:Z

    .line 43
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mLoaderItem:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;

    .line 48
    check-cast p2, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    .end local p2
    iput-object p2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

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
    .line 112
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mComments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 113
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mCacheItems:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 115
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mUserInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 116
    return-void
.end method

.method public clearCommentCache()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mComments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 125
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mCacheItems:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 126
    return-void
.end method

.method public clearUserCache()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mUserInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 121
    return-void
.end method

.method public getCommentSize()I
    .locals 2

    .prologue
    .line 60
    const/4 v0, 0x0

    .line 61
    .local v0, nSize:I
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mComments:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mComments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 63
    :cond_0
    return v0
.end method

.method public getCount()I
    .locals 3

    .prologue
    .line 68
    const/4 v0, 0x0

    .line 70
    .local v0, nCount:I
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mIsUpdating:Z

    if-ne v1, v2, :cond_1

    .line 72
    const/4 v0, 0x1

    .line 81
    :cond_0
    :goto_0
    return v0

    .line 76
    :cond_1
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mCacheItems:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mCacheItems:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .parameter "nIndex"

    .prologue
    .line 87
    const/4 v0, 0x0

    .line 89
    .local v0, object:Ljava/lang/Object;
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mIsUpdating:Z

    if-ne v1, v2, :cond_1

    .line 91
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mLoaderItem:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;

    .line 102
    .end local v0           #object:Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v0

    .line 95
    .restart local v0       #object:Ljava/lang/Object;
    :cond_1
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mCacheItems:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mComments:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mCacheItems:Ljava/util/Map;

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
    .line 108
    int-to-long v0, p1

    return-wide v0
.end method

.method public getUser(Ljava/lang/String;)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    .locals 2
    .parameter "szUserID"

    .prologue
    .line 197
    const/4 v0, 0x0

    .line 199
    .local v0, aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mUserInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .line 201
    .restart local v0       #aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    return-object v0
.end method

.method public isEnabled(I)Z
    .locals 3
    .parameter "nPos"

    .prologue
    .line 210
    const/4 v0, 0x1

    .line 212
    .local v0, bResult:Z
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mIsUpdating:Z

    if-ne v1, v2, :cond_0

    .line 213
    const/4 v0, 0x0

    .line 215
    :cond_0
    return v0
.end method

.method public isUpdating()Z
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mIsUpdating:Z

    return v0
.end method

.method public refreshCommentList()Z
    .locals 6

    .prologue
    .line 140
    const/4 v0, 0x0

    .line 142
    .local v0, bResult:Z
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getCachedComments()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mComments:Ljava/util/List;

    .line 144
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][comments:HTCCommentsCacher][refreshCommentList]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mComments:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const/4 v2, 0x0

    .line 148
    .local v2, wrapperComment:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;
    const/4 v1, 0x0

    .line 152
    .local v1, nIndex:I
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mComments:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 154
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mComments:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 156
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mComments:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #wrapperComment:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;
    check-cast v2, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;

    .line 157
    .restart local v2       #wrapperComment:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;
    if-eqz v1, :cond_0

    .line 159
    sget-object v3, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V

    .line 165
    :goto_1
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mCacheItems:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 163
    :cond_0
    sget-object v3, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_BREAKTOP:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V

    goto :goto_1

    .line 170
    :cond_1
    new-instance v2, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;

    .end local v2           #wrapperComment:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;
    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;-><init>(Lcom/htc/opensense/social/data/Comment;)V

    .line 171
    .restart local v2       #wrapperComment:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;
    sget-object v3, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_EMPTY:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V

    .line 172
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mCacheItems:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    :cond_2
    const/4 v0, 0x1

    .line 176
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mIsUpdating:Z

    .line 177
    return v0
.end method

.method public requestCommentList()Z
    .locals 2

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->clearCommentCache()V

    .line 134
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mMediumOp:Lcom/htc/opensense/social/MediumOp;

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getCommentList(Lcom/htc/opensense/social/MediumOp;)Z

    .line 136
    const/4 v0, 0x1

    return v0
.end method

.method public setCommentLoader()V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mLoaderItem:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;

    if-nez v0, :cond_0

    .line 183
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;-><init>(Lcom/htc/opensense/social/data/Comment;)V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mLoaderItem:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;

    .line 184
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mLoaderItem:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;

    sget-object v1, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_LOADER:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V

    .line 186
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mIsUpdating:Z

    .line 187
    return-void
.end method

.method public setCommentPhoto(Lcom/htc/opensense/social/MediumOp;)V
    .locals 0
    .parameter "mediumOp"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mMediumOp:Lcom/htc/opensense/social/MediumOp;

    .line 53
    return-void
.end method

.method public setUser(Ljava/lang/String;Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;)V
    .locals 1
    .parameter "szUserID"
    .parameter "aPerson"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->mUserInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    return-void
.end method
