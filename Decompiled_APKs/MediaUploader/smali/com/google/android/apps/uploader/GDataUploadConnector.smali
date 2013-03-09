.class public Lcom/google/android/apps/uploader/GDataUploadConnector;
.super Ljava/lang/Object;
.source "GDataUploadConnector.java"

# interfaces
.implements Lcom/google/android/apps/uploader/UploadConnector;
.implements Ljava/lang/Runnable;


# static fields
.field private static final GDATA_RESUMABLE_UPLOAD_CHUNK_SIZE:I = 0x80000

.field private static final RE_RANGE_HEADER:Ljava/util/regex/Pattern;


# instance fields
.field private authToken:Ljava/lang/String;

.field private authorizer:Lcom/google/android/apps/uploader/Authorizer;

.field private bis:Ljava/io/BufferedInputStream;

.field private buffer:[B

.field private canceled:Z

.field private final httpClient:Lorg/apache/http/client/HttpClient;

.field private listener:Lcom/google/android/apps/uploader/UploadConnector$UploadListener;

.field private uploadInfo:Lcom/google/android/apps/uploader/UploadInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-string v0, "bytes=(\\d+)-(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/uploader/GDataUploadConnector;->RE_RANGE_HEADER:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/client/HttpClient;)V
    .locals 1
    .parameter

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/high16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/apps/uploader/GDataUploadConnector;->buffer:[B

    .line 70
    iput-object p1, p0, Lcom/google/android/apps/uploader/GDataUploadConnector;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 71
    return-void
.end method

.method private consumeContentResponse(Lorg/apache/http/HttpResponse;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 316
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 317
    if-eqz v0, :cond_0

    .line 328
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 330
    :cond_0
    return-void
.end method

.method private executeWithAuthRetry(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 342
    iget-object v0, p0, Lcom/google/android/apps/uploader/GDataUploadConnector;->httpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 343
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    .line 345
    iget-object v2, p0, Lcom/google/android/apps/uploader/GDataUploadConnector;->authorizer:Lcom/google/android/apps/uploader/Authorizer;

    if-eqz v2, :cond_1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0x191

    if-eq v2, v3, :cond_0

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0x193

    if-ne v1, v2, :cond_1

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/GDataUploadConnector;->authorizer:Lcom/google/android/apps/uploader/Authorizer;

    iget-object v1, p0, Lcom/google/android/apps/uploader/GDataUploadConnector;->uploadInfo:Lcom/google/android/apps/uploader/UploadInfo;

    invoke-virtual {v1}, Lcom/google/android/apps/uploader/UploadInfo;->getAccount()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/uploader/GDataUploadConnector;->authToken:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/uploader/Authorizer;->getFreshAuthToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/GDataUploadConnector;->authToken:Ljava/lang/String;

    .line 349
    const-string v0, "Authorization"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GoogleLogin auth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/uploader/GDataUploadConnector;->authToken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lcom/google/android/apps/uploader/GDataUploadConnector;->httpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 352
    :cond_1
    return-object v0
.end method

.method static getInitialRequest(Landroid/net/Uri;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 252
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 256
    const-string v1, "\r\n\r\n"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 258
    if-lez v1, :cond_0

    .line 259
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 260
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    move-object v1, v4

    move-object v4, v7

    .line 266
    :goto_0
    invoke-static {v1}, Lcom/google/android/apps/uploader/UploadIntentConstants;->parseHeaders(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    .line 267
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 268
    invoke-virtual {v5, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 269
    invoke-virtual {v3, p0, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    move-object v4, v2

    move-object v1, p1

    .line 262
    goto :goto_0

    .line 273
    :cond_1
    if-eqz v4, :cond_2

    .line 274
    new-instance v1, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v1, v4}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    .line 275
    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    invoke-virtual {v1, p0}, Lorg/apache/http/entity/StringEntity;->setContentType(Ljava/lang/String;)V

    .line 276
    invoke-virtual {v3, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 279
    :cond_2
    return-object v3
.end method

.method static getResumeRequest(Landroid/net/Uri;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 3
    .parameter

    .prologue
    .line 286
    new-instance v0, Lorg/apache/http/client/methods/HttpPut;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .line 287
    const-string v1, "Content-Range"

    const-string v2, "bytes */*"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPut;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    return-object v0
.end method

.method static getUploadRequest(Landroid/net/Uri;Ljava/lang/String;JIJ[B)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 299
    new-instance v0, Lorg/apache/http/client/methods/HttpPut;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .line 300
    int-to-long v1, p4

    add-long/2addr v1, p2

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    .line 301
    const-string v3, "Content-Range"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bytes "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/apache/http/client/methods/HttpPut;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string v1, "Content-Type"

    invoke-virtual {v0, v1, p1}, Lorg/apache/http/client/methods/HttpPut;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const/4 v2, 0x0

    invoke-direct {v1, p7, v2, p4}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 305
    new-instance v2, Lorg/apache/http/entity/InputStreamEntity;

    int-to-long v3, p4

    invoke-direct {v2, v1, v3, v4}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .line 306
    const/4 p0, 0x0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v2, p0}, Lorg/apache/http/entity/InputStreamEntity;->setContentType(Ljava/lang/String;)V

    .line 307
    invoke-virtual {v0, v2}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 308
    return-object v0
.end method

.method private isIncompeteStatusCode(I)Z
    .locals 1
    .parameter

    .prologue
    .line 337
    const/16 v0, 0x134

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSuccessStatusCode(I)Z
    .locals 1
    .parameter

    .prologue
    .line 333
    const/16 v0, 0xc8

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc9

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseRangeHeaderLastByte(Ljava/lang/String;)J
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 232
    if-nez p1, :cond_0

    .line 233
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "range header was null; file="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/uploader/GDataUploadConnector;->uploadInfo:Lcom/google/android/apps/uploader/UploadInfo;

    invoke-virtual {v2}, Lcom/google/android/apps/uploader/UploadInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_0
    sget-object v0, Lcom/google/android/apps/uploader/GDataUploadConnector;->RE_RANGE_HEADER:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 236
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_1

    .line 237
    new-instance v0, Ljava/io/IOException;

    const-string v1, "malformed range header=%s; file=%s;"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/apps/uploader/GDataUploadConnector;->uploadInfo:Lcom/google/android/apps/uploader/UploadInfo;

    invoke-virtual {v4}, Lcom/google/android/apps/uploader/UploadInfo;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private resetUploadAndRetry()V
    .locals 3

    .prologue
    .line 244
    iget-object v0, p0, Lcom/google/android/apps/uploader/GDataUploadConnector;->uploadInfo:Lcom/google/android/apps/uploader/UploadInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/uploader/UploadInfo;->setUploadUri(Landroid/net/Uri;)V

    .line 246
    iget-object v0, p0, Lcom/google/android/apps/uploader/GDataUploadConnector;->listener:Lcom/google/android/apps/uploader/UploadConnector$UploadListener;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/uploader/UploadConnector$UploadListener;->onUploadProgress(J)V

    .line 247
    iget-object v0, p0, Lcom/google/android/apps/uploader/GDataUploadConnector;->listener:Lcom/google/android/apps/uploader/UploadConnector$UploadListener;

    invoke-interface {v0}, Lcom/google/android/apps/uploader/UploadConnector$UploadListener;->onUploadRetry()V

    .line 248
    return-void
.end method

.method private resume()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/apps/uploader/GDataUploadConnector;->uploadInfo:Lcom/google/android/apps/uploader/UploadInfo;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/UploadInfo;->getUploadUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/uploader/GDataUploadConnector;->getResumeRequest(Landroid/net/Uri;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    .line 130
    invoke-direct {p0, v0}, Lcom/google/android/apps/uploader/GDataUploadConnector;->executeWithAuthRetry(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 131
    invoke-direct {p0, v0}, Lcom/google/android/apps/uploader/GDataUploadConnector;->consumeContentResponse(Lorg/apache/http/HttpResponse;)V

    .line 132
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 133
    invoke-direct {p0, v1}, Lcom/google/android/apps/uploader/GDataUploadConnector;->isIncompeteStatusCode(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 135
    const-string v1, "range"

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 136
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/uploader/GDataUploadConnector;->parseRangeHeaderLastByte(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 137
    iget-object v2, p0, Lcom/google/android/apps/uploader/GDataUploadConnector;->bis:Ljava/io/BufferedInputStream;

    invoke-static {v2, v0, v1}, Lcom/google/android/apps/uploader/GDataUploadConnector;->skipHelper(Ljava/io/BufferedInputStream;J)J

    .line 138
    iget-object v2, p0, Lcom/google/android/apps/uploader/GDataUploadConnector;->bis:Ljava/io/BufferedInputStream;

    const/high16 v3, 0x8

    invoke-virtual {v2, v3}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 139
    iget-object v2, p0, Lcom/google/android/apps/uploader/GDataUploadConnector;->listener:Lcom/google/android/apps/uploader/UploadConnector$UploadListener;

    invoke-interface {v2, v0, v1}, Lcom/google/android/apps/uploader/UploadConnector$UploadListener;->onUploadProgress(J)V

    .line 140
    invoke-direct {p0}, Lcom/google/android/apps/uploader/GDataUploadConnector;->uploadChunks()V

    .line 152
    :goto_0
    return-void

    .line 142
    :cond_0
    invoke-direct {p0, v1}, Lcom/google/android/apps/uploader/GDataUploadConnector;->isSuccessStatusCode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    const-string v0, "MediaUploader"

    const-string v1, "nothing to resume, upload already completed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/google/android/apps/uploader/GDataUploadConnector;->listener:Lcom/google/android/apps/uploader/UploadConnector$UploadListener;

    iget-object v1, p0, Lcom/google/android/apps/uploader/GDataUploadConnector;->uploadInfo:Lcom/google/android/apps/uploader/UploadInfo;

    invoke-virtual {v1}, Lcom/google/android/apps/uploader/UploadInfo;->getBytesTotal()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/uploader/UploadConnector$UploadListener;->onUploadProgress(J)V

    .line 145
    iget-object v0, p0, Lcom/google/android/apps/uploader/GDataUploadConnector;->listener:Lcom/google/android/apps/uploader/UploadConnector$UploadListener;

    invoke-interface {v0}, Lcom/google/android/apps/uploader/UploadConnector$UploadListener;->onUploadSuccess()V

    goto :goto_0

    .line 148
    :cond_1
    const-string v0, "MediaUploader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected resume response "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const-string v0, "MediaUploader"

    const-string v1, "retrying with the new upload sesion"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-direct {p0}, Lcom/google/android/apps/uploader/GDataUploadConnector;->resetUploadAndRetry()V

    goto :goto_0
.end method

.method static skipHelper(Ljava/io/BufferedInputStream;J)J
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 214
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 215
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t skip negative amounts: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/io/BufferedInputStream;->skip(J)J

    move-result-wide v0

    .line 218
    cmp-long v2, v0, p1

    if-eqz v2, :cond_1

    .line 220
    new-instance v2, Ljava/io/IOException;

    const-string v3, "skip failed: actual=%d; requested=%d;"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 223
    :cond_1
    return-wide v0
.end method

.method private start(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    invoke-static {p1, p2}, Lcom/google/android/apps/uploader/GDataUploadConnector;->getInitialRequest(Landroid/net/Uri;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    .line 113
    invoke-direct {p0, v0}, Lcom/google/android/apps/uploader/GDataUploadConnector;->executeWithAuthRetry(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 114
    invoke-direct {p0, v0}, Lcom/google/android/apps/uploader/GDataUploadConnector;->consumeContentResponse(Lorg/apache/http/HttpResponse;)V

    .line 115
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 116
    invoke-direct {p0, v1}, Lcom/google/android/apps/uploader/GDataUploadConnector;->isSuccessStatusCode(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    const-string v1, "Location"

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lcom/google/android/apps/uploader/GDataUploadConnector;->uploadInfo:Lcom/google/android/apps/uploader/UploadInfo;

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/apps/uploader/UploadInfo;->setUploadUri(Landroid/net/Uri;)V

    .line 120
    iget-object v0, p0, Lcom/google/android/apps/uploader/GDataUploadConnector;->listener:Lcom/google/android/apps/uploader/UploadConnector$UploadListener;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/uploader/UploadConnector$UploadListener;->onUploadProgress(J)V

    .line 121
    invoke-direct {p0}, Lcom/google/android/apps/uploader/GDataUploadConnector;->uploadChunks()V

    .line 126
    return-void

    .line 123
    :cond_0
    const-string v0, "MediaUploader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GDataUploadConnector.start: unexpected initial response "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method private uploadChunks()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v8, 0x8

    .line 155
    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/GDataUploadConnector;->uploadInfo:Lcom/google/android/apps/uploader/UploadInfo;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/UploadInfo;->getBytesUploaded()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/apps/uploader/GDataUploadConnector;->uploadInfo:Lcom/google/android/apps/uploader/UploadInfo;

    invoke-virtual {v2}, Lcom/google/android/apps/uploader/UploadInfo;->getBytesTotal()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/google/android/apps/uploader/GDataUploadConnector;->uploadInfo:Lcom/google/android/apps/uploader/UploadInfo;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/UploadInfo;->getBytesUploaded()J

    move-result-wide v2

    .line 159
    iget-object v0, p0, Lcom/google/android/apps/uploader/GDataUploadConnector;->uploadInfo:Lcom/google/android/apps/uploader/UploadInfo;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/UploadInfo;->getBytesTotal()J

    move-result-wide v0

    sub-long/2addr v0, v2

    const-wide/32 v4, 0x80000

    cmp-long v0, v0, v4

    if-gez v0, :cond_5

    .line 160
    iget-object v0, p0, Lcom/google/android/apps/uploader/GDataUploadConnector;->uploadInfo:Lcom/google/android/apps/uploader/UploadInfo;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/UploadInfo;->getBytesTotal()J

    move-result-wide v0

    sub-long/2addr v0, v2

    long-to-int v0, v0

    move v4, v0

    .line 164
    :goto_1
    iget-object v0, p0, Lcom/google/android/apps/uploader/GDataUploadConnector;->bis:Ljava/io/BufferedInputStream;

    invoke-virtual {v0, v8}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 167
    iget-object v0, p0, Lcom/google/android/apps/uploader/GDataUploadConnector;->bis:Ljava/io/BufferedInputStream;

    iget-object v1, p0, Lcom/google/android/apps/uploader/GDataUploadConnector;->buffer:[B

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5, v4}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 170
    iget-object v0, p0, Lcom/google/android/apps/uploader/GDataUploadConnector;->uploadInfo:Lcom/google/android/apps/uploader/UploadInfo;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/UploadInfo;->getUploadUri()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/uploader/GDataUploadConnector;->uploadInfo:Lcom/google/android/apps/uploader/UploadInfo;

    invoke-virtual {v1}, Lcom/google/android/apps/uploader/UploadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/google/android/apps/uploader/GDataUploadConnector;->uploadInfo:Lcom/google/android/apps/uploader/UploadInfo;

    invoke-virtual {v5}, Lcom/google/android/apps/uploader/UploadInfo;->getBytesTotal()J

    move-result-wide v5

    iget-object v7, p0, Lcom/google/android/apps/uploader/GDataUploadConnector;->buffer:[B

    invoke-static/range {v0 .. v7}, Lcom/google/android/apps/uploader/GDataUploadConnector;->getUploadRequest(Landroid/net/Uri;Ljava/lang/String;JIJ[B)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    .line 177
    invoke-direct {p0, v0}, Lcom/google/android/apps/uploader/GDataUploadConnector;->executeWithAuthRetry(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 179
    iget-boolean v1, p0, Lcom/google/android/apps/uploader/GDataUploadConnector;->canceled:Z

    if-eqz v1, :cond_1

    .line 210
    :cond_0
    :goto_2
    return-void

    .line 184
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/android/apps/uploader/GDataUploadConnector;->consumeContentResponse(Lorg/apache/http/HttpResponse;)V

    .line 185
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 186
    invoke-direct {p0, v1}, Lcom/google/android/apps/uploader/GDataUploadConnector;->isSuccessStatusCode(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 188
    iget-object v0, p0, Lcom/google/android/apps/uploader/GDataUploadConnector;->listener:Lcom/google/android/apps/uploader/UploadConnector$UploadListener;

    iget-object v1, p0, Lcom/google/android/apps/uploader/GDataUploadConnector;->uploadInfo:Lcom/google/android/apps/uploader/UploadInfo;

    invoke-virtual {v1}, Lcom/google/android/apps/uploader/UploadInfo;->getBytesTotal()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/uploader/UploadConnector$UploadListener;->onUploadProgress(J)V

    .line 189
    iget-object v0, p0, Lcom/google/android/apps/uploader/GDataUploadConnector;->listener:Lcom/google/android/apps/uploader/UploadConnector$UploadListener;

    invoke-interface {v0}, Lcom/google/android/apps/uploader/UploadConnector$UploadListener;->onUploadSuccess()V

    goto :goto_2

    .line 192
    :cond_2
    invoke-direct {p0, v1}, Lcom/google/android/apps/uploader/GDataUploadConnector;->isIncompeteStatusCode(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 194
    const-string v1, "range"

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 195
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/uploader/GDataUploadConnector;->parseRangeHeaderLastByte(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v5, 0x1

    add-long/2addr v0, v5

    .line 196
    int-to-long v4, v4

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gez v2, :cond_3

    .line 198
    iget-object v2, p0, Lcom/google/android/apps/uploader/GDataUploadConnector;->bis:Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->reset()V

    .line 199
    iget-object v2, p0, Lcom/google/android/apps/uploader/GDataUploadConnector;->bis:Ljava/io/BufferedInputStream;

    invoke-static {v2, v0, v1}, Lcom/google/android/apps/uploader/GDataUploadConnector;->skipHelper(Ljava/io/BufferedInputStream;J)J

    .line 203
    :cond_3
    iget-object v2, p0, Lcom/google/android/apps/uploader/GDataUploadConnector;->listener:Lcom/google/android/apps/uploader/UploadConnector$UploadListener;

    invoke-interface {v2, v0, v1}, Lcom/google/android/apps/uploader/UploadConnector$UploadListener;->onUploadProgress(J)V

    goto/16 :goto_0

    .line 205
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GDataUploadConnector.chunkUpload: unexpected upload response "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 206
    const-string v1, "MediaUploader"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    move v4, v8

    goto/16 :goto_1
.end method


# virtual methods
.method public cancelCurrentUploadRequest()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/uploader/GDataUploadConnector;->canceled:Z

    .line 109
    return-void
.end method

.method public makeUploadRequest(Lcom/google/android/apps/uploader/UploadInfo;Ljava/io/InputStream;Lcom/google/android/apps/uploader/Authorizer;ZLcom/google/android/apps/uploader/UploadConnector$UploadListener;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/google/android/apps/uploader/GDataUploadConnector;->uploadInfo:Lcom/google/android/apps/uploader/UploadInfo;

    .line 76
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/GDataUploadConnector;->bis:Ljava/io/BufferedInputStream;

    .line 77
    iput-object p5, p0, Lcom/google/android/apps/uploader/GDataUploadConnector;->listener:Lcom/google/android/apps/uploader/UploadConnector$UploadListener;

    .line 78
    iput-object p3, p0, Lcom/google/android/apps/uploader/GDataUploadConnector;->authorizer:Lcom/google/android/apps/uploader/Authorizer;

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/uploader/GDataUploadConnector;->authToken:Ljava/lang/String;

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/uploader/GDataUploadConnector;->canceled:Z

    .line 82
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 83
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/apps/uploader/GDataUploadConnector;->authorizer:Lcom/google/android/apps/uploader/Authorizer;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/google/android/apps/uploader/GDataUploadConnector;->authorizer:Lcom/google/android/apps/uploader/Authorizer;

    iget-object v1, p0, Lcom/google/android/apps/uploader/GDataUploadConnector;->uploadInfo:Lcom/google/android/apps/uploader/UploadInfo;

    invoke-virtual {v1}, Lcom/google/android/apps/uploader/UploadInfo;->getAccount()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/uploader/Authorizer;->getAuthToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/GDataUploadConnector;->authToken:Ljava/lang/String;

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/GDataUploadConnector;->uploadInfo:Lcom/google/android/apps/uploader/UploadInfo;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/UploadInfo;->getRequestTemplate()Ljava/lang/String;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/google/android/apps/uploader/GDataUploadConnector;->authToken:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 91
    const-string v1, "%=_auth_token_=%"

    iget-object v2, p0, Lcom/google/android/apps/uploader/GDataUploadConnector;->authToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/uploader/GDataUploadConnector;->uploadInfo:Lcom/google/android/apps/uploader/UploadInfo;

    invoke-virtual {v1}, Lcom/google/android/apps/uploader/UploadInfo;->getUploadUri()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_2

    .line 96
    iget-object v1, p0, Lcom/google/android/apps/uploader/GDataUploadConnector;->uploadInfo:Lcom/google/android/apps/uploader/UploadInfo;

    invoke-virtual {v1}, Lcom/google/android/apps/uploader/UploadInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/google/android/apps/uploader/GDataUploadConnector;->start(Landroid/net/Uri;Ljava/lang/String;)V

    .line 105
    :goto_0
    return-void

    .line 98
    :cond_2
    invoke-direct {p0}, Lcom/google/android/apps/uploader/GDataUploadConnector;->resume()V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    iget-object v1, p0, Lcom/google/android/apps/uploader/GDataUploadConnector;->listener:Lcom/google/android/apps/uploader/UploadConnector$UploadListener;

    new-instance v2, Lcom/google/android/apps/uploader/ApplicationException;

    invoke-direct {v2, v0}, Lcom/google/android/apps/uploader/ApplicationException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lcom/google/android/apps/uploader/UploadConnector$UploadListener;->onUploadApplicationFailure(Lcom/google/android/apps/uploader/ApplicationException;)V

    goto :goto_0

    .line 102
    :catch_1
    move-exception v0

    .line 103
    iget-object v1, p0, Lcom/google/android/apps/uploader/GDataUploadConnector;->listener:Lcom/google/android/apps/uploader/UploadConnector$UploadListener;

    new-instance v2, Lcom/google/android/apps/uploader/NetworkException;

    invoke-direct {v2, v0}, Lcom/google/android/apps/uploader/NetworkException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lcom/google/android/apps/uploader/UploadConnector$UploadListener;->onUploadNetworkFailure(Lcom/google/android/apps/uploader/NetworkException;)V

    goto :goto_0
.end method
