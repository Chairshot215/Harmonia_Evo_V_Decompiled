.class public Lcom/htc/dlnamiddlelayer/DownloadItemInfo;
.super Ljava/lang/Object;
.source "DownloadItemInfo.java"


# instance fields
.field public cookie:I

.field public mGroupID:I

.field public mIcon:Landroid/graphics/Bitmap;

.field public mImagePath:Ljava/lang/String;

.field public mImageReturned:Lcom/htc/dlnamiddlelayer/GlobalDataStore$ImageReturnType;

.field public mIsForce:Z

.field public mItemID:Ljava/lang/String;

.field public mItemUrl:Ljava/lang/String;

.field public mServerID:Ljava/lang/String;

.field public mThumbReturned:Lcom/htc/dlnamiddlelayer/GlobalDataStore$ThumbnailReturnType;


# direct methods
.method public constructor <init>(ILcom/htc/dlnamiddlelayer/GlobalDataStore$ImageReturnType;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .parameter "itemcookie"
    .parameter "returned"
    .parameter "serverid"
    .parameter "itemid"
    .parameter "force"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput v1, p0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->cookie:I

    .line 13
    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mItemID:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mItemUrl:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mImagePath:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mServerID:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mIcon:Landroid/graphics/Bitmap;

    .line 18
    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mThumbReturned:Lcom/htc/dlnamiddlelayer/GlobalDataStore$ThumbnailReturnType;

    .line 19
    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mImageReturned:Lcom/htc/dlnamiddlelayer/GlobalDataStore$ImageReturnType;

    .line 20
    iput v1, p0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mGroupID:I

    .line 21
    iput-boolean v1, p0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mIsForce:Z

    .line 45
    iput p1, p0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->cookie:I

    .line 46
    iput-object p2, p0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mImageReturned:Lcom/htc/dlnamiddlelayer/GlobalDataStore$ImageReturnType;

    .line 47
    iput-object p3, p0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mServerID:Ljava/lang/String;

    .line 48
    iput-object p4, p0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mItemID:Ljava/lang/String;

    .line 49
    iput-boolean p5, p0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mIsForce:Z

    .line 50
    return-void
.end method

.method public constructor <init>(ILcom/htc/dlnamiddlelayer/GlobalDataStore$ThumbnailReturnType;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .parameter "itemcookie"
    .parameter "returned"
    .parameter "serverid"
    .parameter "itemid"
    .parameter "group"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput v1, p0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->cookie:I

    .line 13
    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mItemID:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mItemUrl:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mImagePath:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mServerID:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mIcon:Landroid/graphics/Bitmap;

    .line 18
    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mThumbReturned:Lcom/htc/dlnamiddlelayer/GlobalDataStore$ThumbnailReturnType;

    .line 19
    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mImageReturned:Lcom/htc/dlnamiddlelayer/GlobalDataStore$ImageReturnType;

    .line 20
    iput v1, p0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mGroupID:I

    .line 21
    iput-boolean v1, p0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mIsForce:Z

    .line 36
    iput p1, p0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->cookie:I

    .line 37
    iput-object p2, p0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mThumbReturned:Lcom/htc/dlnamiddlelayer/GlobalDataStore$ThumbnailReturnType;

    .line 38
    iput-object p3, p0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mServerID:Ljava/lang/String;

    .line 39
    iput-object p4, p0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mItemID:Ljava/lang/String;

    .line 40
    iput p5, p0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mGroupID:I

    .line 41
    return-void
.end method

.method public constructor <init>(ILcom/htc/dlnamiddlelayer/GlobalDataStore$ThumbnailReturnType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .parameter "itemcookie"
    .parameter "returned"
    .parameter "serverid"
    .parameter "itemid"
    .parameter "itemurl"
    .parameter "group"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput v1, p0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->cookie:I

    .line 13
    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mItemID:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mItemUrl:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mImagePath:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mServerID:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mIcon:Landroid/graphics/Bitmap;

    .line 18
    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mThumbReturned:Lcom/htc/dlnamiddlelayer/GlobalDataStore$ThumbnailReturnType;

    .line 19
    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mImageReturned:Lcom/htc/dlnamiddlelayer/GlobalDataStore$ImageReturnType;

    .line 20
    iput v1, p0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mGroupID:I

    .line 21
    iput-boolean v1, p0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mIsForce:Z

    .line 25
    iput p1, p0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->cookie:I

    .line 26
    iput-object p2, p0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mThumbReturned:Lcom/htc/dlnamiddlelayer/GlobalDataStore$ThumbnailReturnType;

    .line 27
    iput-object p4, p0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mItemID:Ljava/lang/String;

    .line 28
    iput-object p5, p0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mItemUrl:Ljava/lang/String;

    .line 29
    const-string v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    iput-object p3, p0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mServerID:Ljava/lang/String;

    .line 31
    :cond_0
    iput p6, p0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mGroupID:I

    .line 32
    return-void
.end method
