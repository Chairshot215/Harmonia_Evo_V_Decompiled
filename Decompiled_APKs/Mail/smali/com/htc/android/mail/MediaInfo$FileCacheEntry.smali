.class Lcom/htc/android/mail/MediaInfo$FileCacheEntry;
.super Ljava/lang/Object;
.source "MediaInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/MediaInfo;
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
    .parameter "tableUri"
    .parameter "rowId"
    .parameter "path"
    .parameter "lastModified"

    .prologue
    const/4 v0, 0x0

    .line 225
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 226
    iput-object p1, p0, Lcom/htc/android/mail/MediaInfo$FileCacheEntry;->mTableUri:Landroid/net/Uri;

    .line 227
    iput-wide p2, p0, Lcom/htc/android/mail/MediaInfo$FileCacheEntry;->mRowId:J

    .line 228
    iput-object p4, p0, Lcom/htc/android/mail/MediaInfo$FileCacheEntry;->mPath:Ljava/lang/String;

    .line 229
    iput-wide p5, p0, Lcom/htc/android/mail/MediaInfo$FileCacheEntry;->mLastModified:J

    .line 230
    iput-boolean v0, p0, Lcom/htc/android/mail/MediaInfo$FileCacheEntry;->mSeenInFileSystem:Z

    .line 231
    iput-boolean v0, p0, Lcom/htc/android/mail/MediaInfo$FileCacheEntry;->mLastModifiedChanged:Z

    .line 232
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/htc/android/mail/MediaInfo$FileCacheEntry;->mPath:Ljava/lang/String;

    return-object v0
.end method
