.class public Lcom/google/android/common/http/MultipartEntity;
.super Lorg/apache/http/entity/AbstractHttpEntity;
.source "MultipartEntity.java"


# static fields
.field public static final MULTIPART_BOUNDARY:Ljava/lang/String; = "http.method.multipart.boundary"

.field private static MULTIPART_CHARS:[B = null

.field private static final MULTIPART_FORM_CONTENT_TYPE:Ljava/lang/String; = "multipart/form-data"


# instance fields
.field private contentConsumed:Z

.field private multipartBoundary:[B

.field private params:Lorg/apache/http/params/HttpParams;

.field protected parts:[Lcom/google/android/common/http/Part;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 102
    const-string v0, "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/common/http/MultipartEntity;->MULTIPART_CHARS:[B

    return-void
.end method

.method public constructor <init>([Lcom/google/android/common/http/Part;)V
    .locals 2
    .parameter

    .prologue
    .line 142
    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/common/http/MultipartEntity;->contentConsumed:Z

    .line 143
    const-string v0, "multipart/form-data"

    invoke-virtual {p0, v0}, Lcom/google/android/common/http/MultipartEntity;->setContentType(Ljava/lang/String;)V

    .line 144
    if-nez p1, :cond_0

    .line 145
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "parts cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_0
    iput-object p1, p0, Lcom/google/android/common/http/MultipartEntity;->parts:[Lcom/google/android/common/http/Part;

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/common/http/MultipartEntity;->params:Lorg/apache/http/params/HttpParams;

    .line 149
    return-void
.end method

.method public constructor <init>([Lcom/google/android/common/http/Part;Lorg/apache/http/params/HttpParams;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 131
    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/common/http/MultipartEntity;->contentConsumed:Z

    .line 132
    if-nez p1, :cond_0

    .line 133
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "parts cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_0
    if-nez p2, :cond_1

    .line 136
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "params cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_1
    iput-object p1, p0, Lcom/google/android/common/http/MultipartEntity;->parts:[Lcom/google/android/common/http/Part;

    .line 139
    iput-object p2, p0, Lcom/google/android/common/http/MultipartEntity;->params:Lorg/apache/http/params/HttpParams;

    .line 140
    return-void
.end method

.method private static generateMultipartBoundary()[B
    .locals 5

    .prologue
    .line 109
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 110
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1e

    new-array v1, v1, [B

    .line 111
    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 112
    sget-object v3, Lcom/google/android/common/http/MultipartEntity;->MULTIPART_CHARS:[B

    sget-object v4, Lcom/google/android/common/http/MultipartEntity;->MULTIPART_CHARS:[B

    array-length v4, v4

    invoke-virtual {v0, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    aget-byte v3, v3, v4

    aput-byte v3, v1, v2

    .line 111
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 114
    :cond_0
    return-object v1
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/google/android/common/http/MultipartEntity;->isRepeatable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/common/http/MultipartEntity;->contentConsumed:Z

    if-eqz v0, :cond_0

    .line 217
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Content has been consumed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/common/http/MultipartEntity;->contentConsumed:Z

    .line 221
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 222
    iget-object v1, p0, Lcom/google/android/common/http/MultipartEntity;->parts:[Lcom/google/android/common/http/Part;

    iget-object v2, p0, Lcom/google/android/common/http/MultipartEntity;->multipartBoundary:[B

    invoke-static {v0, v1, v2}, Lcom/google/android/common/http/Part;->sendParts(Ljava/io/OutputStream;[Lcom/google/android/common/http/Part;[B)V

    .line 223
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 224
    return-object v1
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 208
    :try_start_0
    iget-object v0, p0, Lcom/google/android/common/http/MultipartEntity;->parts:[Lcom/google/android/common/http/Part;

    invoke-virtual {p0}, Lcom/google/android/common/http/MultipartEntity;->getMultipartBoundary()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/common/http/Part;->getLengthOfParts([Lcom/google/android/common/http/Part;[B)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 211
    :goto_0
    return-wide v0

    .line 209
    :catch_0
    move-exception v0

    .line 211
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getContentType()Lorg/apache/http/Header;
    .locals 3

    .prologue
    .line 197
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "multipart/form-data"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 198
    const-string v1, "; boundary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 199
    invoke-virtual {p0}, Lcom/google/android/common/http/MultipartEntity;->getMultipartBoundary()[B

    move-result-object v1

    invoke-static {v1}, Lorg/apache/http/util/EncodingUtils;->getAsciiString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 200
    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string v2, "Content-Type"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method protected getMultipartBoundary()[B
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/android/common/http/MultipartEntity;->multipartBoundary:[B

    if-nez v0, :cond_1

    .line 162
    const/4 v0, 0x0

    .line 163
    iget-object v1, p0, Lcom/google/android/common/http/MultipartEntity;->params:Lorg/apache/http/params/HttpParams;

    if-eqz v1, :cond_0

    .line 164
    iget-object v0, p0, Lcom/google/android/common/http/MultipartEntity;->params:Lorg/apache/http/params/HttpParams;

    const-string v1, "http.method.multipart.boundary"

    invoke-interface {v0, v1}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 166
    :cond_0
    if-eqz v0, :cond_2

    .line 167
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/common/http/MultipartEntity;->multipartBoundary:[B

    .line 172
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/common/http/MultipartEntity;->multipartBoundary:[B

    return-object v0

    .line 169
    :cond_2
    invoke-static {}, Lcom/google/android/common/http/MultipartEntity;->generateMultipartBoundary()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/common/http/MultipartEntity;->multipartBoundary:[B

    goto :goto_0
.end method

.method public isRepeatable()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    move v0, v2

    .line 179
    :goto_0
    iget-object v1, p0, Lcom/google/android/common/http/MultipartEntity;->parts:[Lcom/google/android/common/http/Part;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 180
    iget-object v1, p0, Lcom/google/android/common/http/MultipartEntity;->parts:[Lcom/google/android/common/http/Part;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/google/android/common/http/Part;->isRepeatable()Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    .line 184
    :goto_1
    return v0

    .line 179
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 184
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public isStreaming()Z
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x0

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/android/common/http/MultipartEntity;->parts:[Lcom/google/android/common/http/Part;

    invoke-virtual {p0}, Lcom/google/android/common/http/MultipartEntity;->getMultipartBoundary()[B

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/common/http/Part;->sendParts(Ljava/io/OutputStream;[Lcom/google/android/common/http/Part;[B)V

    .line 191
    return-void
.end method
