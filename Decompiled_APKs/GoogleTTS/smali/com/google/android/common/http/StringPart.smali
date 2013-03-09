.class public Lcom/google/android/common/http/StringPart;
.super Lcom/google/android/common/http/PartBase;
.source "StringPart.java"


# instance fields
.field private content:[B

.field private value:Ljava/lang/String;


# direct methods
.method private getContent()[B
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/common/http/StringPart;->content:[B

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/google/android/common/http/StringPart;->value:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/common/http/StringPart;->getCharSet()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/http/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/common/http/StringPart;->content:[B

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/google/android/common/http/StringPart;->content:[B

    return-object v0
.end method


# virtual methods
.method protected lengthOfData()J
    .locals 2

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/google/android/common/http/StringPart;->getContent()[B

    move-result-object v0

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method protected sendData(Ljava/io/OutputStream;)V
    .locals 1
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/google/android/common/http/StringPart;->getContent()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 128
    return-void
.end method
