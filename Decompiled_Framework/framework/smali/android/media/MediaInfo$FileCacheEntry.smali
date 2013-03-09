.class Landroid/media/MediaInfo$FileCacheEntry;
.super Ljava/lang/Object;
.source "MediaInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileCacheEntry"
.end annotation


# instance fields
.field mLastModified:J

.field mLastModifiedChanged:Z

.field mPath:Ljava/lang/String;

.field mRowId:J

.field mSeenInFileSystem:Z

.field mTableUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/net/Uri;JLjava/lang/String;J)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/MediaInfo$FileCacheEntry;->mTableUri:Landroid/net/Uri;

    iput-wide p2, p0, Landroid/media/MediaInfo$FileCacheEntry;->mRowId:J

    iput-object p4, p0, Landroid/media/MediaInfo$FileCacheEntry;->mPath:Ljava/lang/String;

    iput-wide p5, p0, Landroid/media/MediaInfo$FileCacheEntry;->mLastModified:J

    iput-boolean v0, p0, Landroid/media/MediaInfo$FileCacheEntry;->mSeenInFileSystem:Z

    iput-boolean v0, p0, Landroid/media/MediaInfo$FileCacheEntry;->mLastModifiedChanged:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaInfo$FileCacheEntry;->mPath:Ljava/lang/String;

    return-object v0
.end method
