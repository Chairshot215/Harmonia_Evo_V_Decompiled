.class public Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryPhoto;
.super Ljava/lang/Object;
.source "LiveGalleryPhoto.java"


# instance fields
.field private mDescription:Ljava/lang/String;

.field private mPhotoPath:Ljava/lang/String;

.field private mPhotoUri:Ljava/lang/String;

.field private mPublishTime:J

.field private mThumbnailPath:Ljava/lang/String;

.field private mThumbnailUri:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mUpdateTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public GetDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryPhoto;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public GetPhotoPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryPhoto;->mPhotoPath:Ljava/lang/String;

    return-object v0
.end method

.method public GetPhotoUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryPhoto;->mPhotoUri:Ljava/lang/String;

    return-object v0
.end method

.method public GetThumbnailPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryPhoto;->mThumbnailPath:Ljava/lang/String;

    return-object v0
.end method

.method public GetThumbnailUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryPhoto;->mThumbnailUri:Ljava/lang/String;

    return-object v0
.end method

.method public GetTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryPhoto;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public SetDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryPhoto;->mDescription:Ljava/lang/String;

    return-void
.end method

.method public SetPhotoPath(Ljava/lang/String;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryPhoto;->mPhotoPath:Ljava/lang/String;

    return-void
.end method

.method public SetPhotoUri(Ljava/lang/String;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 15
    iput-object p1, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryPhoto;->mPhotoUri:Ljava/lang/String;

    return-void
.end method

.method public SetThumbnailUri(Ljava/lang/String;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryPhoto;->mThumbnailUri:Ljava/lang/String;

    return-void
.end method

.method public SetThumnailPath(Ljava/lang/String;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryPhoto;->mThumbnailPath:Ljava/lang/String;

    return-void
.end method

.method public SetTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 16
    iput-object p1, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryPhoto;->mTitle:Ljava/lang/String;

    return-void
.end method
