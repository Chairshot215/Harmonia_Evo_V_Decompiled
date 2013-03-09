.class public Lcom/android/org/bouncycastle/util/io/pem/PemWriter;
.super Ljava/io/BufferedWriter;
.source "PemWriter.java"


# static fields
.field private static final LINE_LENGTH:I = 0x40


# instance fields
.field private buf:[C

.field private final nlLength:I


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 2

    invoke-direct {p0, p1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    const/16 v1, 0x40

    new-array v1, v1, [C

    iput-object v1, p0, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->buf:[C

    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p0, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->nlLength:I

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->nlLength:I

    goto :goto_0
.end method

.method private writeEncoded([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/android/org/bouncycastle/util/encoders/Base64;->encode([B)[B

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_2

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->buf:[C

    array-length v2, v2

    if-eq v1, v2, :cond_0

    add-int v2, v0, v1

    array-length v3, p1

    if-lt v2, v3, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->buf:[C

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->write([CII)V

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->newLine()V

    iget-object v2, p0, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->buf:[C

    array-length v2, v2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->buf:[C

    add-int v3, v0, v1

    aget-byte v3, p1, v3

    int-to-char v3, v3

    aput-char v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private writePostEncapsulationBoundary(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-----END "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->newLine()V

    return-void
.end method

.method private writePreEncapsulationBoundary(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-----BEGIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->newLine()V

    return-void
.end method


# virtual methods
.method public getOutputSize(Lcom/android/org/bouncycastle/util/io/pem/PemObject;)I
    .locals 6

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/util/io/pem/PemObject;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0xa

    iget v5, p0, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->nlLength:I

    add-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x6

    add-int/lit8 v3, v4, 0x4

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/util/io/pem/PemObject;->getHeaders()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/util/io/pem/PemObject;->getHeaders()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, ": "

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->nlLength:I

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->nlLength:I

    add-int/2addr v3, v4

    :cond_1
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/util/io/pem/PemObject;->getContent()[B

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v4, v4, 0x2

    div-int/lit8 v4, v4, 0x3

    mul-int/lit8 v0, v4, 0x4

    add-int/lit8 v4, v0, 0x40

    add-int/lit8 v4, v4, -0x1

    div-int/lit8 v4, v4, 0x40

    iget v5, p0, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->nlLength:I

    mul-int/2addr v4, v5

    add-int/2addr v4, v0

    add-int/2addr v3, v4

    return v3
.end method

.method public writeObject(Lcom/android/org/bouncycastle/util/io/pem/PemObjectGenerator;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/android/org/bouncycastle/util/io/pem/PemObjectGenerator;->generate()Lcom/android/org/bouncycastle/util/io/pem/PemObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/util/io/pem/PemObject;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->writePreEncapsulationBoundary(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/util/io/pem/PemObject;->getHeaders()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/util/io/pem/PemObject;->getHeaders()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->write(Ljava/lang/String;)V

    const-string v3, ": "

    invoke-virtual {p0, v3}, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/util/io/pem/PemHeader;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->newLine()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->newLine()V

    :cond_1
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/util/io/pem/PemObject;->getContent()[B

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->writeEncoded([B)V

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/util/io/pem/PemObject;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->writePostEncapsulationBoundary(Ljava/lang/String;)V

    return-void
.end method
