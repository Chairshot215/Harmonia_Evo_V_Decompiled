.class public Landroid/media/MediaInfo$MediaTag;
.super Ljava/lang/Object;
.source "MediaInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MediaTag"
.end annotation


# instance fields
.field public mAlbum:Ljava/lang/String;

.field public mAlbumArt:Ljava/lang/String;

.field public mAlbumArtist:Ljava/lang/String;

.field public mArtist:Ljava/lang/String;

.field public mComposer:Ljava/lang/String;

.field public mDrmType:I

.field public mDuration:I

.field public mFileSize:J

.field public mFileType:I

.field public mFilename:Ljava/lang/String;

.field public mGenre:Ljava/lang/String;

.field public mLastModified:J

.field public mMimeType:Ljava/lang/String;

.field public mPath:Ljava/lang/String;

.field public mTitle:Ljava/lang/String;

.field public mTrack:I

.field public mYear:I

.field final synthetic this$0:Landroid/media/MediaInfo;


# direct methods
.method public constructor <init>(Landroid/media/MediaInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/media/MediaInfo$MediaTag;->this$0:Landroid/media/MediaInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    iput-object p3, p0, Landroid/media/MediaInfo$MediaTag;->mAlbum:Ljava/lang/String;

    iput-object p4, p0, Landroid/media/MediaInfo$MediaTag;->mArtist:Ljava/lang/String;

    iput-object p5, p0, Landroid/media/MediaInfo$MediaTag;->mFilename:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/media/MediaInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 0

    iput-object p1, p0, Landroid/media/MediaInfo$MediaTag;->this$0:Landroid/media/MediaInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/media/MediaInfo$MediaTag;->mTitle:Ljava/lang/String;

    iput-object p3, p0, Landroid/media/MediaInfo$MediaTag;->mAlbum:Ljava/lang/String;

    iput-object p4, p0, Landroid/media/MediaInfo$MediaTag;->mArtist:Ljava/lang/String;

    iput-object p5, p0, Landroid/media/MediaInfo$MediaTag;->mPath:Ljava/lang/String;

    iput-wide p6, p0, Landroid/media/MediaInfo$MediaTag;->mLastModified:J

    iput-wide p8, p0, Landroid/media/MediaInfo$MediaTag;->mFileSize:J

    return-void
.end method
