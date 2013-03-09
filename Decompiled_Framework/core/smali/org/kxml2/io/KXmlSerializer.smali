.class public Lorg/kxml2/io/KXmlSerializer;
.super Ljava/lang/Object;
.source "KXmlSerializer.java"

# interfaces
.implements Lorg/xmlpull/v1/XmlSerializer;


# static fields
.field private static final WRITE_BUFFER_SIZE:I = 0x1f4


# instance fields
.field private auto:I

.field private depth:I

.field private elementStack:[Ljava/lang/String;

.field private encoding:Ljava/lang/String;

.field private indent:[Z

.field private nspCounts:[I

.field private nspStack:[Ljava/lang/String;

.field private pending:Z

.field private unicode:Z

.field private writer:Ljava/io/BufferedWriter;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x4

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    new-array v0, v1, [I

    iput-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    new-array v0, v1, [Z

    iput-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->indent:[Z

    return-void
.end method

.method private final check(Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v7, 0x22

    const/4 v6, 0x0

    iget-boolean v2, p0, Lorg/kxml2/io/KXmlSerializer;->pending:Z

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v2, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    iput-boolean v6, p0, Lorg/kxml2/io/KXmlSerializer;->pending:Z

    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->indent:[Z

    array-length v2, v2

    iget v3, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    if-gt v2, v3, :cond_1

    iget v2, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    add-int/lit8 v2, v2, 0x4

    new-array v0, v2, [Z

    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->indent:[Z

    iget v3, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    invoke-static {v2, v6, v0, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->indent:[Z

    :cond_1
    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->indent:[Z

    iget v3, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    iget-object v4, p0, Lorg/kxml2/io/KXmlSerializer;->indent:[Z

    iget v5, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    add-int/lit8 v5, v5, -0x1

    aget-boolean v4, v4, v5

    aput-boolean v4, v2, v3

    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    iget v3, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    add-int/lit8 v3, v3, -0x1

    aget v1, v2, v3

    :goto_1
    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    iget v3, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    aget v2, v2, v3

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(I)V

    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    const-string v3, "xmlns"

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    mul-int/lit8 v3, v1, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(I)V

    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    iget-object v3, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    mul-int/lit8 v4, v1, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    const-string v3, "=\""

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-object v2, v2, v3

    invoke-direct {p0, v2, v7}, Lorg/kxml2/io/KXmlSerializer;->writeEscaped(Ljava/lang/String;I)V

    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v2, v7}, Ljava/io/BufferedWriter;->write(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lorg/kxml2/io/KXmlSerializer;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot set default namespace for elements in no namespace"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    array-length v2, v2

    iget v3, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    add-int/lit8 v3, v3, 0x1

    if-gt v2, v3, :cond_5

    iget v2, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    add-int/lit8 v2, v2, 0x8

    new-array v0, v2, [I

    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    iget v3, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v6, v0, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    :cond_5
    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    iget v3, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    iget v5, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    aget v4, v4, v5

    aput v4, v2, v3

    iget-object v3, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    if-eqz p1, :cond_6

    const-string v2, " />"

    :goto_2
    invoke-virtual {v3, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const-string v2, ">"

    goto :goto_2
.end method

.method private final getPrefix(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    iget v6, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    add-int/lit8 v6, v6, 0x1

    aget v5, v5, v6

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v1, v5, -0x2

    :goto_0
    if-ltz v1, :cond_4

    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    add-int/lit8 v6, v1, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-nez p2, :cond_0

    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    :cond_0
    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    aget-object v0, v5, v1

    add-int/lit8 v2, v1, 0x2

    :goto_1
    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    iget v6, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    add-int/lit8 v6, v6, 0x1

    aget v5, v5, v6

    mul-int/lit8 v5, v5, 0x2

    if-ge v2, v5, :cond_1

    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v0, 0x0

    :cond_1
    if-eqz v0, :cond_3

    :goto_2
    return-object v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, -0x2

    goto :goto_0

    :cond_4
    if-nez p3, :cond_5

    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v4, ""

    :goto_3
    iget-boolean v3, p0, Lorg/kxml2/io/KXmlSerializer;->pending:Z

    const/4 v5, 0x0

    iput-boolean v5, p0, Lorg/kxml2/io/KXmlSerializer;->pending:Z

    invoke-virtual {p0, v4, p1}, Lorg/kxml2/io/KXmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, p0, Lorg/kxml2/io/KXmlSerializer;->pending:Z

    move-object v0, v4

    goto :goto_2

    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lorg/kxml2/io/KXmlSerializer;->auto:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/kxml2/io/KXmlSerializer;->auto:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    iget v6, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    add-int/lit8 v6, v6, 0x1

    aget v5, v5, v6

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v1, v5, -0x2

    :goto_4
    if-ltz v1, :cond_7

    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v4, 0x0

    :cond_7
    if-eqz v4, :cond_6

    goto :goto_3

    :cond_8
    add-int/lit8 v1, v1, -0x2

    goto :goto_4
.end method

.method private static reportInvalidCharacter(C)V
    .locals 3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal character ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final writeEscaped(Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_9

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    if-ne v0, p2, :cond_2

    iget-object v4, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    const/16 v3, 0x22

    if-ne v0, v3, :cond_1

    const-string v3, "&quot;"

    :goto_1
    invoke-virtual {v4, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :sswitch_0
    const/4 v3, -0x1

    if-ne p2, v3, :cond_0

    iget-object v3, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(I)V

    goto :goto_2

    :cond_0
    iget-object v3, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "&#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3b

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_2

    :sswitch_1
    iget-object v3, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    const-string v4, "&amp;"

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_2

    :sswitch_2
    iget-object v3, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    const-string v4, "&gt;"

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_2

    :sswitch_3
    iget-object v3, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    const-string v4, "&lt;"

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    const-string v3, "&apos;"

    goto :goto_1

    :cond_2
    const/16 v3, 0x20

    if-lt v0, v3, :cond_3

    const v3, 0xd7ff

    if-le v0, v3, :cond_4

    :cond_3
    const v3, 0xe000

    if-lt v0, v3, :cond_7

    const v3, 0xfffd

    if-gt v0, v3, :cond_7

    :cond_4
    const/4 v2, 0x1

    :goto_3
    if-nez v2, :cond_5

    invoke-static {v0}, Lorg/kxml2/io/KXmlSerializer;->reportInvalidCharacter(C)V

    :cond_5
    iget-boolean v3, p0, Lorg/kxml2/io/KXmlSerializer;->unicode:Z

    if-nez v3, :cond_6

    const/16 v3, 0x7f

    if-ge v0, v3, :cond_8

    :cond_6
    iget-object v3, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(I)V

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    goto :goto_3

    :cond_8
    iget-object v3, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "&#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_9
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x26 -> :sswitch_1
        0x3c -> :sswitch_3
        0x3e -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v1, 0x22

    iget-boolean v2, p0, Lorg/kxml2/io/KXmlSerializer;->pending:Z

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "illegal position for attribute"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v0, ""

    :goto_0
    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(I)V

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(I)V

    :cond_2
    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v2, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(I)V

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    :goto_1
    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v2, v1}, Ljava/io/BufferedWriter;->write(I)V

    invoke-direct {p0, p3, v1}, Lorg/kxml2/io/KXmlSerializer;->writeEscaped(Ljava/lang/String;I)V

    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v2, v1}, Ljava/io/BufferedWriter;->write(I)V

    return-object p0

    :cond_3
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, p1, v2, v3}, Lorg/kxml2/io/KXmlSerializer;->getPrefix(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/16 v1, 0x27

    goto :goto_1
.end method

.method public cdsect(Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lorg/kxml2/io/KXmlSerializer;->check(Z)V

    const-string v7, "]]>"

    const-string v8, "]]]]><![CDATA[>"

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    move-object v0, v2

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_4

    aget-char v1, v0, v3

    const/16 v7, 0x20

    if-lt v1, v7, :cond_0

    const v7, 0xd7ff

    if-le v1, v7, :cond_1

    :cond_0
    const/16 v7, 0x9

    if-eq v1, v7, :cond_1

    const/16 v7, 0xa

    if-eq v1, v7, :cond_1

    const/16 v7, 0xd

    if-eq v1, v7, :cond_1

    const v7, 0xe000

    if-lt v1, v7, :cond_3

    const v7, 0xfffd

    if-gt v1, v7, :cond_3

    :cond_1
    const/4 v5, 0x1

    :goto_1
    if-nez v5, :cond_2

    invoke-static {v1}, Lorg/kxml2/io/KXmlSerializer;->reportInvalidCharacter(C)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    move v5, v6

    goto :goto_1

    :cond_4
    iget-object v7, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    const-string v8, "<![CDATA["

    invoke-virtual {v7, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v7, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    array-length v8, v2

    invoke-virtual {v7, v2, v6, v8}, Ljava/io/BufferedWriter;->write([CII)V

    iget-object v6, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    const-string v7, "]]>"

    invoke-virtual {v6, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method public comment(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->check(Z)V

    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    const-string v1, "<!--"

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    const-string v1, "-->"

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method public docdecl(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    const-string v1, "<!DOCTYPE"

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method public endDocument()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget v0, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    iget v1, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, -0x3

    aget-object v0, v0, v1

    iget-object v1, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    iget v2, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    mul-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/kxml2/io/KXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/kxml2/io/KXmlSerializer;->flush()V

    return-void
.end method

.method public endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v2, p0, Lorg/kxml2/io/KXmlSerializer;->pending:Z

    if-nez v2, :cond_0

    iget v2, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    :cond_0
    if-nez p1, :cond_1

    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    iget v3, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    mul-int/lit8 v3, v3, 0x3

    aget-object v2, v2, v3

    if-nez v2, :cond_3

    :cond_1
    if-eqz p1, :cond_2

    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    iget v3, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    mul-int/lit8 v3, v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    iget v3, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    mul-int/lit8 v3, v3, 0x3

    add-int/lit8 v3, v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "</{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> does not match start"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    iget-boolean v2, p0, Lorg/kxml2/io/KXmlSerializer;->pending:Z

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlSerializer;->check(Z)V

    iget v2, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    :goto_0
    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    iget v3, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    iget v5, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    aget v4, v4, v5

    aput v4, v2, v3

    return-object p0

    :cond_5
    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->indent:[Z

    iget v3, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    add-int/lit8 v3, v3, 0x1

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_6

    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    if-ge v0, v2, :cond_6

    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    const-string v3, "</"

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    iget v3, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    mul-int/lit8 v3, v3, 0x3

    add-int/lit8 v3, v3, 0x1

    aget-object v1, v2, v3

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(I)V

    :cond_7
    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v2, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    const/16 v3, 0x3e

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(I)V

    goto :goto_0
.end method

.method public entityRef(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->check(Z)V

    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(I)V

    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(I)V

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->check(Z)V

    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    return-void
.end method

.method public getDepth()I
    .locals 1

    iget-boolean v0, p0, Lorg/kxml2/io/KXmlSerializer;->pending:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    goto :goto_0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->indent:[Z

    iget v1, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    aget-boolean v0, v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/kxml2/io/KXmlSerializer;->getDepth()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    invoke-virtual {p0}, Lorg/kxml2/io/KXmlSerializer;->getDepth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/kxml2/io/KXmlSerializer;->getDepth()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    invoke-virtual {p0}, Lorg/kxml2/io/KXmlSerializer;->getDepth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, -0x3

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getPrefix(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, v1, p2}, Lorg/kxml2/io/KXmlSerializer;->getPrefix(Ljava/lang/String;ZZ)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unsupported property"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ignorableWhitespace(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/kxml2/io/KXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public processingInstruction(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->check(Z)V

    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    const-string v1, "<?"

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    const-string v1, "?>"

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->indent:[Z

    iget v1, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    aput-boolean p2, v0, v1

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unsupported Feature"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    if-nez p2, :cond_2

    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    :goto_0
    invoke-virtual {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->setOutput(Ljava/io/Writer;)V

    iput-object p2, p0, Lorg/kxml2/io/KXmlSerializer;->encoding:Ljava/lang/String;

    if-eqz p2, :cond_1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "utf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/kxml2/io/KXmlSerializer;->unicode:Z

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setOutput(Ljava/io/Writer;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    instance-of v0, p1, Ljava/io/BufferedWriter;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/io/BufferedWriter;

    iput-object p1, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    :goto_0
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    aput v2, v0, v3

    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    aput v2, v0, v4

    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v4

    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    const-string v1, "xml"

    aput-object v1, v0, v2

    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    const/4 v1, 0x3

    const-string v2, "http://www.w3.org/XML/1998/namespace"

    aput-object v2, v0, v1

    iput-boolean v3, p0, Lorg/kxml2/io/KXmlSerializer;->pending:Z

    iput v3, p0, Lorg/kxml2/io/KXmlSerializer;->auto:I

    iput v3, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    iput-boolean v3, p0, Lorg/kxml2/io/KXmlSerializer;->unicode:Z

    return-void

    :cond_0
    new-instance v0, Ljava/io/BufferedWriter;

    const/16 v1, 0x1f4

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    iput-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    goto :goto_0
.end method

.method public setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlSerializer;->check(Z)V

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    if-nez p2, :cond_1

    const-string p2, ""

    :cond_1
    const/4 v4, 0x1

    invoke-direct {p0, p2, v4, v8}, Lorg/kxml2/io/KXmlSerializer;->getPrefix(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_0
    return-void

    :cond_2
    iget-object v4, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    iget v5, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    add-int/lit8 v5, v5, 0x1

    aget v6, v4, v5

    add-int/lit8 v7, v6, 0x1

    aput v7, v4, v5

    shl-int/lit8 v2, v6, 0x1

    iget-object v4, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v5, v2, 0x1

    if-ge v4, v5, :cond_3

    iget-object v4, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v4, v4, 0x10

    new-array v1, v4, [Ljava/lang/String;

    iget-object v4, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    invoke-static {v4, v8, v1, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    :cond_3
    iget-object v4, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    add-int/lit8 v3, v2, 0x1

    aput-object p1, v4, v2

    iget-object v4, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    aput-object p2, v4, v3

    goto :goto_0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported Property:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    const-string v1, "<?xml version=\'1.0\' "

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/kxml2/io/KXmlSerializer;->encoding:Ljava/lang/String;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "utf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/kxml2/io/KXmlSerializer;->unicode:Z

    :cond_0
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->encoding:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    const-string v1, "encoding=\'"

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    iget-object v1, p0, Lorg/kxml2/io/KXmlSerializer;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    const-string v1, "\' "

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    const-string v1, "standalone=\'"

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "yes"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    const-string v1, "\' "

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    const-string v1, "?>"

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    return-void

    :cond_3
    const-string v0, "no"

    goto :goto_0
.end method

.method public startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lorg/kxml2/io/KXmlSerializer;->check(Z)V

    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->indent:[Z

    iget v6, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    aget-boolean v5, v5, v6

    if-eqz v5, :cond_0

    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_0
    iget v5, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    if-ge v3, v5, :cond_0

    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget v5, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    mul-int/lit8 v0, v5, 0x3

    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    array-length v5, v5

    add-int/lit8 v6, v0, 0x3

    if-ge v5, v6, :cond_1

    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    array-length v5, v5

    add-int/lit8 v5, v5, 0xc

    new-array v2, v5, [Ljava/lang/String;

    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    invoke-static {v5, v7, v2, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    :cond_1
    if-nez p1, :cond_2

    const-string v4, ""

    :goto_1
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    iget v6, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    aget v3, v5, v6

    :goto_2
    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    iget v6, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    add-int/lit8 v6, v6, 0x1

    aget v5, v5, v6

    if-ge v3, v5, :cond_4

    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    mul-int/lit8 v6, v3, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    mul-int/lit8 v6, v3, 0x2

    add-int/lit8 v6, v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Cannot set default namespace for elements in no namespace"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    invoke-direct {p0, p1, v8, v8}, Lorg/kxml2/io/KXmlSerializer;->getPrefix(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    add-int/lit8 v1, v0, 0x1

    aput-object p1, v5, v0

    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    add-int/lit8 v0, v1, 0x1

    aput-object v4, v5, v1

    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    aput-object p2, v5, v0

    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    const/16 v6, 0x3c

    invoke-virtual {v5, v6}, Ljava/io/BufferedWriter;->write(I)V

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v5, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/io/BufferedWriter;->write(I)V

    :cond_5
    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v5, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iput-boolean v8, p0, Lorg/kxml2/io/KXmlSerializer;->pending:Z

    return-object p0
.end method

.method public text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlSerializer;->check(Z)V

    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->indent:[Z

    iget v1, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    aput-boolean v2, v0, v1

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lorg/kxml2/io/KXmlSerializer;->writeEscaped(Ljava/lang/String;I)V

    return-object p0
.end method

.method public text([CII)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-object p0
.end method
