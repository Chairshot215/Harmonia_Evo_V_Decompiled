.class Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$CacheFile;
.super Ljava/io/File;
.source "FileClientSessionCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CacheFile"
.end annotation


# instance fields
.field lastModified:J

.field final name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$CacheFile;->lastModified:J

    iput-object p2, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$CacheFile;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/io/File;)I
    .locals 8

    const-wide/16 v6, 0x0

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$CacheFile;->lastModified()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    sub-long v0, v2, v4

    cmp-long v2, v0, v6

    if-nez v2, :cond_0

    invoke-super {p0, p1}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    move-result v2

    :goto_0
    return v2

    :cond_0
    cmp-long v2, v0, v6

    if-gez v2, :cond_1

    const/4 v2, -0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$CacheFile;->compareTo(Ljava/io/File;)I

    move-result v0

    return v0
.end method

.method public lastModified()J
    .locals 4

    iget-wide v0, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$CacheFile;->lastModified:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    invoke-super {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache$CacheFile;->lastModified:J

    :cond_0
    return-wide v0
.end method
