.class public Lcom/htc/album/processor/FileInfo;
.super Ljava/lang/Object;
.source "FileInfo.java"


# instance fields
.field public mNotSupported:Z

.field public mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field public mProcessedDateModified:J

.field public mProcessedPath:Ljava/lang/String;

.field public mProcessedSize:J

.field public mProcessedType:Ljava/lang/String;

.field public mProcessedUri:Landroid/net/Uri;

.field public mSourceDateModified:J

.field public mSourcePath:Ljava/lang/String;

.field public mSourceSize:J

.field public mSourceType:Ljava/lang/String;

.field public mSourceUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v1, p0, Lcom/htc/album/processor/FileInfo;->mSourcePath:Ljava/lang/String;

    .line 18
    iput-object v1, p0, Lcom/htc/album/processor/FileInfo;->mSourceType:Ljava/lang/String;

    .line 19
    iput-object v1, p0, Lcom/htc/album/processor/FileInfo;->mSourceUri:Landroid/net/Uri;

    .line 21
    iput-object v1, p0, Lcom/htc/album/processor/FileInfo;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 22
    iput-wide v2, p0, Lcom/htc/album/processor/FileInfo;->mSourceDateModified:J

    .line 23
    iput-wide v2, p0, Lcom/htc/album/processor/FileInfo;->mSourceSize:J

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/processor/FileInfo;->mNotSupported:Z

    .line 27
    iput-object v1, p0, Lcom/htc/album/processor/FileInfo;->mProcessedPath:Ljava/lang/String;

    .line 28
    const-string v0, "image/jpeg"

    iput-object v0, p0, Lcom/htc/album/processor/FileInfo;->mProcessedType:Ljava/lang/String;

    .line 29
    iput-object v1, p0, Lcom/htc/album/processor/FileInfo;->mProcessedUri:Landroid/net/Uri;

    .line 30
    iput-wide v2, p0, Lcom/htc/album/processor/FileInfo;->mProcessedDateModified:J

    .line 31
    iput-wide v2, p0, Lcom/htc/album/processor/FileInfo;->mProcessedSize:J

    return-void
.end method
