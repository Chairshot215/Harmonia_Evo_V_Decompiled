.class Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;
.super Ljava/io/InputStream;
.source "X509CertFactoryImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RestoringInputStream"
.end annotation


# static fields
.field private static final BUFF_SIZE:I = 0x20


# instance fields
.field private bar:I

.field private final buff:[I

.field private end:I

.field private final inStream:Ljava/io/InputStream;

.field private pos:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/16 v0, 0x40

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->buff:[I

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->pos:I

    iput v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->bar:I

    iput v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->end:I

    iput-object p1, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->inStream:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->bar:I

    iget v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->pos:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->inStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->inStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public mark(I)V
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->pos:I

    if-gez v0, :cond_0

    iput v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->pos:I

    iput v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->bar:I

    const/16 v0, 0x1f

    iput v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->end:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->pos:I

    add-int/lit8 v0, v0, 0x20

    add-int/lit8 v0, v0, -0x1

    rem-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->end:I

    goto :goto_0
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->pos:I

    if-ltz v1, :cond_2

    iget v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->pos:I

    rem-int/lit8 v0, v1, 0x20

    iget v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->bar:I

    if-ge v0, v1, :cond_0

    iget v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->pos:I

    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->buff:[I

    aget v1, v1, v0

    :goto_0
    return v1

    :cond_0
    iget v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->end:I

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->buff:[I

    iget-object v2, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->inStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->bar:I

    iget v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->pos:I

    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->buff:[I

    aget v1, v1, v0

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->pos:I

    :cond_2
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->inStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    goto :goto_0
.end method

.method public read([BII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, -0x1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    invoke-virtual {p0}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->read()I

    move-result v1

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    move v0, v2

    :cond_0
    return v0

    :cond_1
    add-int v3, p2, v0

    int-to-byte v4, v1

    aput-byte v4, p1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->pos:I

    if-ltz v0, :cond_0

    iget v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->end:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->pos:I

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Could not reset the stream: position became invalid or stream has not been marked"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
