.class public Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;
.super Ljava/lang/Object;
.source "WbxmlSerializer.java"

# interfaces
.implements Lorg/xmlpull/v1/XmlSerializer;


# instance fields
.field private attrPage:I

.field attrStartTable:Ljava/util/Hashtable;

.field attrValueTable:Ljava/util/Hashtable;

.field attributes:Ljava/util/Vector;

.field buf:Ljava/io/ByteArrayOutputStream;

.field depth:I

.field private encoding:Ljava/lang/String;

.field name:Ljava/lang/String;

.field namespace:Ljava/lang/String;

.field out:Ljava/io/OutputStream;

.field pending:Ljava/lang/String;

.field stringTable:Ljava/util/Hashtable;

.field stringTableBuf:Ljava/io/ByteArrayOutputStream;

.field private tagPage:I

.field tagTable:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->stringTable:Ljava/util/Hashtable;

    .line 46
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    .line 47
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->stringTableBuf:Ljava/io/ByteArrayOutputStream;

    .line 53
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->attributes:Ljava/util/Vector;

    .line 55
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->attrStartTable:Ljava/util/Hashtable;

    .line 56
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->attrValueTable:Ljava/util/Hashtable;

    .line 57
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->tagTable:Ljava/util/Hashtable;

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->encoding:Ljava/lang/String;

    return-void
.end method

.method static writeInt(Ljava/io/OutputStream;I)V
    .locals 4
    .parameter "out"
    .parameter "i"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 333
    const/4 v3, 0x5

    new-array v0, v3, [B

    .line 334
    .local v0, buf:[B
    const/4 v1, 0x0

    .line 337
    .local v1, idx:I
    :goto_0
    add-int/lit8 v2, v1, 0x1

    .end local v1           #idx:I
    .local v2, idx:I
    and-int/lit8 v3, p1, 0x7f

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 338
    shr-int/lit8 p1, p1, 0x7

    .line 340
    if-nez p1, :cond_1

    move v1, v2

    .line 342
    .end local v2           #idx:I
    .restart local v1       #idx:I
    :goto_1
    const/4 v3, 0x1

    if-le v1, v3, :cond_0

    .line 343
    add-int/lit8 v1, v1, -0x1

    aget-byte v3, v0, v1

    or-int/lit16 v3, v3, 0x80

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1

    .line 345
    :cond_0
    const/4 v3, 0x0

    aget-byte v3, v0, v3

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write(I)V

    .line 346
    return-void

    .end local v1           #idx:I
    .restart local v2       #idx:I
    :cond_1
    move v1, v2

    .end local v2           #idx:I
    .restart local v1       #idx:I
    goto :goto_0
.end method

.method static writeStrI(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2
    .parameter "out"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 349
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 350
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 349
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 352
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 353
    return-void
.end method


# virtual methods
.method public attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .parameter "namespace"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->attributes:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 67
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->attributes:Ljava/util/Vector;

    invoke-virtual {v0, p3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 68
    return-object p0
.end method

.method public cdsect(Ljava/lang/String;)V
    .locals 0
    .parameter "cdsect"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 74
    return-void
.end method

.method public checkPending(Z)V
    .locals 8
    .parameter "degenerated"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 148
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->pending:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 216
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->attributes:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    .line 153
    .local v2, len:I
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->tagTable:Ljava/util/Hashtable;

    iget-object v5, p0, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->pending:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    move-object v1, v3

    check-cast v1, [I

    .line 156
    .local v1, idx:[I
    if-nez v1, :cond_4

    .line 157
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    if-nez v2, :cond_2

    if-eqz p1, :cond_1

    move v3, v4

    :goto_1
    invoke-virtual {v5, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 162
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->pending:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->writeStrT(Ljava/lang/String;)V

    .line 180
    :goto_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    if-ge v0, v2, :cond_d

    .line 181
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->attrStartTable:Ljava/util/Hashtable;

    iget-object v5, p0, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->attributes:Ljava/util/Vector;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    move-object v1, v3

    check-cast v1, [I

    .line 183
    if-nez v1, :cond_9

    .line 184
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 185
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->attributes:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->writeStrT(Ljava/lang/String;)V

    .line 195
    :goto_4
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->attrValueTable:Ljava/util/Hashtable;

    iget-object v5, p0, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->attributes:Ljava/util/Vector;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v5, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    move-object v1, v3

    check-cast v1, [I

    .line 196
    if-nez v1, :cond_b

    .line 197
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 198
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->attributes:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v5, v3}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->writeStrI(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 208
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 157
    .end local v0           #i:I
    :cond_1
    const/16 v3, 0x44

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    const/16 v3, 0x84

    goto :goto_1

    :cond_3
    const/16 v3, 0xc4

    goto :goto_1

    .line 165
    :cond_4
    aget v3, v1, v7

    iget v5, p0, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->tagPage:I

    if-eq v3, v5, :cond_5

    .line 166
    aget v3, v1, v7

    iput v3, p0, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->tagPage:I

    .line 167
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 168
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    iget v5, p0, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->tagPage:I

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 171
    :cond_5
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    if-nez v2, :cond_7

    if-eqz p1, :cond_6

    aget v3, v1, v6

    :goto_6
    invoke-virtual {v5, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    :cond_6
    aget v3, v1, v6

    or-int/lit8 v3, v3, 0x40

    goto :goto_6

    :cond_7
    if-eqz p1, :cond_8

    aget v3, v1, v6

    or-int/lit16 v3, v3, 0x80

    goto :goto_6

    :cond_8
    aget v3, v1, v6

    or-int/lit16 v3, v3, 0xc0

    goto :goto_6

    .line 188
    .restart local v0       #i:I
    :cond_9
    aget v3, v1, v7

    iget v5, p0, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->attrPage:I

    if-eq v3, v5, :cond_a

    .line 189
    aget v3, v1, v6

    iput v3, p0, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->attrPage:I

    .line 190
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 191
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    iget v5, p0, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->attrPage:I

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 193
    :cond_a
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    aget v5, v1, v6

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_4

    .line 201
    :cond_b
    aget v3, v1, v7

    iget v5, p0, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->attrPage:I

    if-eq v3, v5, :cond_c

    .line 202
    aget v3, v1, v6

    iput v3, p0, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->attrPage:I

    .line 203
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 204
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    iget v5, p0, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->attrPage:I

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 206
    :cond_c
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    aget v5, v1, v6

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_5

    .line 211
    :cond_d
    if-lez v2, :cond_e

    .line 212
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 214
    :cond_e
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->pending:Ljava/lang/String;

    .line 215
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->attributes:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->removeAllElements()V

    goto/16 :goto_0
.end method

.method public comment(Ljava/lang/String;)V
    .locals 0
    .parameter "comment"

    .prologue
    .line 81
    return-void
.end method

.method public docdecl(Ljava/lang/String;)V
    .locals 2
    .parameter "docdecl"

    .prologue
    .line 85
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot write docdecl for WBXML"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public endDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->stringTableBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->writeInt(Ljava/io/OutputStream;I)V

    .line 128
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->stringTableBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 132
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 136
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 137
    return-void
.end method

.method public endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 2
    .parameter "namespace"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 315
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->pending:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 316
    invoke-virtual {p0, v1}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->checkPending(Z)V

    .line 320
    :goto_0
    iget v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->depth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->depth:I

    .line 322
    return-object p0

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0
.end method

.method public entityRef(Ljava/lang/String;)V
    .locals 2
    .parameter "er"

    .prologue
    .line 90
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "EntityReference not supported for WBXML"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 144
    return-void
.end method

.method public getDepth()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->depth:I

    return v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 107
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NYI"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 2

    .prologue
    .line 103
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NYI"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPrefix(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .parameter "nsp"
    .parameter "create"

    .prologue
    .line 111
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NYI"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "name"

    .prologue
    .line 116
    const/4 v0, 0x0

    return-object v0
.end method

.method public ignorableWhitespace(Ljava/lang/String;)V
    .locals 0
    .parameter "sp"

    .prologue
    .line 120
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;)V
    .locals 2
    .parameter "pi"

    .prologue
    .line 220
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "PI NYI"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAttrStartTable(I[Ljava/lang/String;)V
    .locals 4
    .parameter "page"
    .parameter "attrStartTable"

    .prologue
    .line 405
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_1

    .line 406
    aget-object v2, p2, v0

    if-eqz v2, :cond_0

    .line 407
    const/4 v2, 0x2

    new-array v1, v2, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    add-int/lit8 v3, v0, 0x5

    aput v3, v1, v2

    .line 408
    .local v1, idx:[I
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->attrStartTable:Ljava/util/Hashtable;

    aget-object v3, p2, v0

    invoke-virtual {v2, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    .end local v1           #idx:[I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 411
    :cond_1
    return-void
.end method

.method public setAttrValueTable(I[Ljava/lang/String;)V
    .locals 4
    .parameter "page"
    .parameter "attrValueTable"

    .prologue
    .line 420
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_1

    .line 421
    aget-object v2, p2, v0

    if-eqz v2, :cond_0

    .line 422
    const/4 v2, 0x2

    new-array v1, v2, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    add-int/lit16 v3, v0, 0x85

    aput v3, v1, v2

    .line 423
    .local v1, idx:[I
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->attrValueTable:Ljava/util/Hashtable;

    aget-object v3, p2, v0

    invoke-virtual {v2, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    .end local v1           #idx:[I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 426
    :cond_1
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 3
    .parameter "name"
    .parameter "value"

    .prologue
    .line 225
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown feature "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2
    .parameter "out"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "encoding not yet supported for WBXML"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_0
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->out:Ljava/io/OutputStream;

    .line 240
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    .line 241
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->stringTableBuf:Ljava/io/ByteArrayOutputStream;

    .line 244
    return-void
.end method

.method public setOutput(Ljava/io/Writer;)V
    .locals 2
    .parameter "writer"

    .prologue
    .line 231
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Wbxml requires an OutputStream!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "prefix"
    .parameter "nsp"

    .prologue
    .line 248
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NYI"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .parameter "property"
    .parameter "value"

    .prologue
    .line 252
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTagTable(I[Ljava/lang/String;)V
    .locals 4
    .parameter "page"
    .parameter "tagTable"

    .prologue
    .line 387
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_1

    .line 388
    aget-object v2, p2, v0

    if-eqz v2, :cond_0

    .line 389
    const/4 v2, 0x2

    new-array v1, v2, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    add-int/lit8 v3, v0, 0x5

    aput v3, v1, v2

    .line 390
    .local v1, idx:[I
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->tagTable:Ljava/util/Hashtable;

    aget-object v3, p2, v0

    invoke-virtual {v2, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    .end local v1           #idx:[I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 393
    :cond_1
    return-void
.end method

.method public startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 5
    .parameter "s"
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 257
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->out:Ljava/io/OutputStream;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 259
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write(I)V

    .line 262
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "UTF-8"

    aput-object v1, v0, v4

    const-string v1, "ISO-8859-1"

    aput-object v1, v0, v3

    .line 263
    .local v0, encodings:[Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    aget-object v2, v0, v4

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 264
    :cond_0
    aget-object v1, v0, v4

    iput-object v1, p0, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->encoding:Ljava/lang/String;

    .line 265
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->out:Ljava/io/OutputStream;

    const/16 v2, 0x6a

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 272
    :goto_0
    return-void

    .line 266
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v3, v1, :cond_2

    .line 267
    aget-object v1, v0, v3

    iput-object v1, p0, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->encoding:Ljava/lang/String;

    .line 268
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->out:Ljava/io/OutputStream;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 270
    :cond_2
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, p1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 2
    .parameter "namespace"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 277
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NSP NYI"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->checkPending(Z)V

    .line 283
    iput-object p2, p0, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->pending:Ljava/lang/String;

    .line 284
    iget v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->depth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->depth:I

    .line 286
    return-object p0
.end method

.method public text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 2
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 301
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->checkPending(Z)V

    .line 303
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 304
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-static {v0, p1}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->writeStrI(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 306
    return-object p0
.end method

.method public text([CII)Lorg/xmlpull/v1/XmlSerializer;
    .locals 2
    .parameter "chars"
    .parameter "start"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 291
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->checkPending(Z)V

    .line 293
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 294
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->writeStrI(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 296
    return-object p0
.end method

.method public writeLegacy(ILjava/lang/String;)V
    .locals 0
    .parameter "type"
    .parameter "data"

    .prologue
    .line 328
    return-void
.end method

.method writeStrT(Ljava/lang/String;)V
    .locals 3
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 357
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->stringTable:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 359
    .local v0, idx:Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 360
    new-instance v0, Ljava/lang/Integer;

    .end local v0           #idx:Ljava/lang/Integer;
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->stringTableBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 361
    .restart local v0       #idx:Ljava/lang/Integer;
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->stringTable:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->stringTableBuf:Ljava/io/ByteArrayOutputStream;

    invoke-static {v1, p1}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->writeStrI(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 363
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->stringTableBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 366
    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/eassvc/core/WbxmlSerializer;->writeInt(Ljava/io/OutputStream;I)V

    .line 367
    return-void
.end method
