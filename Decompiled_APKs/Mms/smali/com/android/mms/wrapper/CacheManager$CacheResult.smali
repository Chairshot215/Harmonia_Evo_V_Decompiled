.class public Lcom/android/mms/wrapper/CacheManager$CacheResult;
.super Ljava/lang/Object;
.source "CacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/wrapper/CacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CacheResult"
.end annotation


# instance fields
.field charSet:Ljava/lang/String;

.field encoding:Ljava/lang/String;

.field etag:Ljava/lang/String;

.field expires:J

.field hitCount:I

.field hitCountWhileDeleted:I

.field httpStatusCode:I

.field lastModified:Ljava/lang/String;

.field localPath:J

.field mimeType:Ljava/lang/String;

.field stream:Ljava/io/ByteArrayOutputStream;

.field updateTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/mms/wrapper/CacheManager$CacheResult;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getExpires()J
    .locals 2

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/android/mms/wrapper/CacheManager$CacheResult;->expires:J

    return-wide v0
.end method

.method public getHttpStatusCode()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/android/mms/wrapper/CacheManager$CacheResult;->httpStatusCode:I

    return v0
.end method

.method public getLastModified()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/mms/wrapper/CacheManager$CacheResult;->lastModified:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/mms/wrapper/CacheManager$CacheResult;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getStream()Ljava/io/ByteArrayOutputStream;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/mms/wrapper/CacheManager$CacheResult;->stream:Ljava/io/ByteArrayOutputStream;

    return-object v0
.end method

.method public getUpdateTime()J
    .locals 2

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/android/mms/wrapper/CacheManager$CacheResult;->updateTime:J

    return-wide v0
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0
    .parameter "encoding"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/mms/wrapper/CacheManager$CacheResult;->encoding:Ljava/lang/String;

    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0
    .parameter "mimeType"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/mms/wrapper/CacheManager$CacheResult;->mimeType:Ljava/lang/String;

    return-void
.end method
