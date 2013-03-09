.class public Lcom/htc/util/mail/lib/org/apache/james/mime4j/MimeBoundaryInputStream;
.super Ljava/io/InputStream;
.source "MimeBoundaryInputStream.java"


# instance fields
.field private boundary:[B

.field private eof:Z

.field private first:Z

.field private moreParts:Z

.field private parenteof:Z

.field private s:Ljava/io/PushbackInputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/MimeBoundaryInputStream;->s:Ljava/io/PushbackInputStream;

    iput-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/MimeBoundaryInputStream;->boundary:[B

    iput-boolean v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/MimeBoundaryInputStream;->first:Z

    iput-boolean v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/MimeBoundaryInputStream;->eof:Z

    iput-boolean v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/MimeBoundaryInputStream;->parenteof:Z

    iput-boolean v3, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/MimeBoundaryInputStream;->moreParts:Z

    new-instance v2, Ljava/io/PushbackInputStream;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    invoke-direct {v2, p1, v3}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/MimeBoundaryInputStream;->s:Ljava/io/PushbackInputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/MimeBoundaryInputStream;->boundary:[B

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/MimeBoundaryInputStream;->boundary:[B

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/MimeBoundaryInputStream;->boundary:[B

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/MimeBoundaryInputStream;->read()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/MimeBoundaryInputStream;->s:Ljava/io/PushbackInputStream;

    invoke-virtual {v2, v0}, Ljava/io/PushbackInputStream;->unread(I)V

    :cond_1
    return-void
.end method

.method private matchBoundary()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v9, 0x2d

    const/4 v6, 0x0

    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v2, 0x0

    :goto_0
    iget-object v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/MimeBoundaryInputStream;->boundary:[B

    array-length v5, v5

    if-ge v2, v5, :cond_2

    iget-object v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/MimeBoundaryInputStream;->s:Ljava/io/PushbackInputStream;

    invoke-virtual {v5}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    iget-object v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/MimeBoundaryInputStream;->boundary:[B

    aget-byte v5, v5, v2

    if-eq v0, v5, :cond_1

    if-eq v0, v8, :cond_0

    iget-object v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/MimeBoundaryInputStream;->s:Ljava/io/PushbackInputStream;

    invoke-virtual {v5, v0}, Ljava/io/PushbackInputStream;->unread(I)V

    :cond_0
    add-int/lit8 v3, v2, -0x1

    :goto_1
    if-ltz v3, :cond_6

    iget-object v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/MimeBoundaryInputStream;->s:Ljava/io/PushbackInputStream;

    iget-object v7, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/MimeBoundaryInputStream;->boundary:[B

    aget-byte v7, v7, v3

    invoke-virtual {v5, v7}, Ljava/io/PushbackInputStream;->unread(I)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/MimeBoundaryInputStream;->s:Ljava/io/PushbackInputStream;

    invoke-virtual {v5}, Ljava/io/PushbackInputStream;->read()I

    move-result v4

    iget-object v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/MimeBoundaryInputStream;->s:Ljava/io/PushbackInputStream;

    invoke-virtual {v5}, Ljava/io/PushbackInputStream;->read()I

    move-result v1

    if-ne v4, v9, :cond_3

    if-eq v1, v9, :cond_7

    :cond_3
    move v5, v7

    :goto_2
    iput-boolean v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/MimeBoundaryInputStream;->moreParts:Z

    :cond_4
    const/16 v5, 0xa

    if-ne v1, v5, :cond_8

    const/16 v5, 0xd

    if-ne v4, v5, :cond_8

    :goto_3
    if-ne v1, v8, :cond_5

    iput-boolean v6, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/MimeBoundaryInputStream;->moreParts:Z

    iput-boolean v7, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/MimeBoundaryInputStream;->parenteof:Z

    :cond_5
    iput-boolean v7, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/MimeBoundaryInputStream;->eof:Z

    move v6, v7

    :cond_6
    return v6

    :cond_7
    move v5, v6

    goto :goto_2

    :cond_8
    move v4, v1

    iget-object v5, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/MimeBoundaryInputStream;->s:Ljava/io/PushbackInputStream;

    invoke-virtual {v5}, Ljava/io/PushbackInputStream;->read()I

    move-result v1

    if-ne v1, v8, :cond_4

    goto :goto_3
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/MimeBoundaryInputStream;->s:Ljava/io/PushbackInputStream;

    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->close()V

    return-void
.end method

.method public consume()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/MimeBoundaryInputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void
.end method

.method public hasMoreParts()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/MimeBoundaryInputStream;->moreParts:Z

    return v0
.end method

.method public parentEOF()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/MimeBoundaryInputStream;->parenteof:Z

    return v0
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, -0x1

    iget-boolean v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/MimeBoundaryInputStream;->eof:Z

    if-eqz v4, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    iget-boolean v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/MimeBoundaryInputStream;->first:Z

    if-eqz v4, :cond_1

    iput-boolean v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/MimeBoundaryInputStream;->first:Z

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/MimeBoundaryInputStream;->matchBoundary()Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/MimeBoundaryInputStream;->s:Ljava/io/PushbackInputStream;

    invoke-virtual {v4}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/MimeBoundaryInputStream;->s:Ljava/io/PushbackInputStream;

    invoke-virtual {v4}, Ljava/io/PushbackInputStream;->read()I

    move-result v1

    const/16 v4, 0xd

    if-ne v0, v4, :cond_2

    const/16 v4, 0xa

    if-ne v1, v4, :cond_2

    invoke-direct {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/MimeBoundaryInputStream;->matchBoundary()Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    if-eq v1, v3, :cond_3

    iget-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/MimeBoundaryInputStream;->s:Ljava/io/PushbackInputStream;

    invoke-virtual {v4, v1}, Ljava/io/PushbackInputStream;->unread(I)V

    :cond_3
    if-ne v0, v3, :cond_4

    const/4 v2, 0x1

    :cond_4
    iput-boolean v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/MimeBoundaryInputStream;->parenteof:Z

    iget-boolean v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/MimeBoundaryInputStream;->parenteof:Z

    iput-boolean v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/MimeBoundaryInputStream;->eof:Z

    goto :goto_0
.end method
