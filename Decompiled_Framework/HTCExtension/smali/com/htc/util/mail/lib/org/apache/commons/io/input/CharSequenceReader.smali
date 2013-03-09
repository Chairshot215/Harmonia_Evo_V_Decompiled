.class public Lcom/htc/util/mail/lib/org/apache/commons/io/input/CharSequenceReader;
.super Ljava/io/Reader;
.source "CharSequenceReader.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final charSequence:Ljava/lang/CharSequence;

.field private idx:I

.field private mark:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/CharSequenceReader;->charSequence:Ljava/lang/CharSequence;

    return-void

    :cond_0
    const-string p1, ""

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/CharSequenceReader;->idx:I

    iput v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/CharSequenceReader;->mark:I

    return-void
.end method

.method public mark(I)V
    .locals 1

    iget v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/CharSequenceReader;->idx:I

    iput v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/CharSequenceReader;->mark:I

    return-void
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 3

    iget v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/CharSequenceReader;->idx:I

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/CharSequenceReader;->charSequence:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/CharSequenceReader;->charSequence:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/CharSequenceReader;->idx:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/CharSequenceReader;->idx:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method public read([CII)I
    .locals 6

    const/4 v3, -0x1

    iget v4, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/CharSequenceReader;->idx:I

    iget-object v5, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/CharSequenceReader;->charSequence:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lt v4, v5, :cond_1

    move v1, v3

    :cond_0
    return v1

    :cond_1
    if-nez p1, :cond_2

    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Character array is missing"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    if-ltz p3, :cond_3

    add-int v4, p2, p3

    array-length v5, p1

    if-le v4, v5, :cond_4

    :cond_3
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Array Size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", offset="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", length="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p3, :cond_0

    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/input/CharSequenceReader;->read()I

    move-result v0

    if-eq v0, v3, :cond_0

    add-int v4, p2, v2

    int-to-char v5, v0

    aput-char v5, p1, v4

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    iget v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/CharSequenceReader;->mark:I

    iput v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/CharSequenceReader;->idx:I

    return-void
.end method

.method public skip(J)J
    .locals 6

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Number of characters to skip is less than zero: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/CharSequenceReader;->idx:I

    iget-object v3, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/CharSequenceReader;->charSequence:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lt v2, v3, :cond_1

    const-wide/16 v2, -0x1

    :goto_0
    return-wide v2

    :cond_1
    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/CharSequenceReader;->charSequence:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    int-to-long v2, v2

    iget v4, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/CharSequenceReader;->idx:I

    int-to-long v4, v4

    add-long/2addr v4, p1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v1, v2

    iget v2, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/CharSequenceReader;->idx:I

    sub-int v0, v1, v2

    iput v1, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/CharSequenceReader;->idx:I

    int-to-long v2, v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/input/CharSequenceReader;->charSequence:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
