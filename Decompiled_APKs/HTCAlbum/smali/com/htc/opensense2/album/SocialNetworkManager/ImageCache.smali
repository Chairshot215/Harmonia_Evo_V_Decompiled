.class public Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
.super Ljava/lang/Object;
.source "ImageCache.java"

# interfaces
.implements Lcom/htc/opensense2/album/SocialNetworkManager/NotifyBaseData;


# static fields
.field public static final IMG_INTEGRITY_DLFAIL:I = -0x3

.field public static final IMG_INTEGRITY_DLING:I = -0x2

.field public static final IMG_INTEGRITY_DLING_FULL:I = -0x4

.field public static final IMG_INTEGRITY_EMPTY:I = -0x1

.field public static final IMG_INTEGRITY_FULLSIZE:I = 0x1

.field public static final IMG_INTEGRITY_THUMBNAIL:I


# instance fields
.field private mHandlerData:Landroid/os/Handler;

.field public mIndex:I

.field public mIntegrity:I

.field public mIsCandidate:Z

.field public mIsUri2MemCache:Z

.field public mIsUri2MemCacheThumb:Z

.field public mIsVideo:Z

.field public mTaskID:I

.field public mUID:Ljava/lang/String;

.field public mUri:Landroid/net/Uri;

.field public mUriThumb:Landroid/net/Uri;

.field public mUrl:Ljava/lang/String;

.field public mUrlThumb:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIndex:I

    .line 9
    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    .line 10
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUID:Ljava/lang/String;

    .line 11
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrl:Ljava/lang/String;

    .line 12
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    .line 13
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    .line 14
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    .line 15
    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsVideo:Z

    .line 16
    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsCandidate:Z

    .line 18
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mHandlerData:Landroid/os/Handler;

    .line 19
    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsUri2MemCache:Z

    .line 20
    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsUri2MemCacheThumb:Z

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    return-void
.end method


# virtual methods
.method public getDataHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mHandlerData:Landroid/os/Handler;

    return-object v0
.end method

.method public isCandidate()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsCandidate:Z

    return v0
.end method

.method public onDataUpdateNotify(ILjava/lang/Object;I)V
    .locals 4
    .parameter "nMessageID"
    .parameter "obj"
    .parameter "delayMillis"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mHandlerData:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mHandlerData:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mHandlerData:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 44
    :cond_0
    return-void
.end method

.method public setCandidate(Z)V
    .locals 0
    .parameter "bCandidate"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIsCandidate:Z

    .line 53
    return-void
.end method

.method public setDataHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "hHandler"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mHandlerData:Landroid/os/Handler;

    .line 49
    return-void
.end method
