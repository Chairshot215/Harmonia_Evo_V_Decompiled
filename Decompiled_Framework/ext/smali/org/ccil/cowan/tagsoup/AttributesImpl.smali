.class public Lorg/ccil/cowan/tagsoup/AttributesImpl;
.super Ljava/lang/Object;
.source "AttributesImpl.java"

# interfaces
.implements Lorg/xml/sax/Attributes;


# instance fields
.field data:[Ljava/lang/String;

.field length:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/Attributes;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lorg/ccil/cowan/tagsoup/AttributesImpl;->setAttributes(Lorg/xml/sax/Attributes;)V

    return-void
.end method

.method private badIndex(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempt to modify attribute at illegal index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private ensureCapacity(I)V
    .locals 5

    const/4 v4, 0x0

    if-gtz p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    array-length v2, v2

    if-nez v2, :cond_3

    :cond_2
    const/16 v0, 0x19

    :goto_1
    mul-int/lit8 v2, p1, 0x5

    if-ge v0, v2, :cond_4

    mul-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    array-length v2, v2

    mul-int/lit8 v3, p1, 0x5

    if-ge v2, v3, :cond_0

    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    array-length v0, v2

    goto :goto_1

    :cond_4
    new-array v1, v0, [Ljava/lang/String;

    iget v2, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    if-lez v2, :cond_5

    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    iget v3, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    mul-int/lit8 v3, v3, 0x5

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    iput-object v1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lorg/ccil/cowan/tagsoup/AttributesImpl;->ensureCapacity(I)V

    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    iget v1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    mul-int/lit8 v1, v1, 0x5

    aput-object p1, v0, v1

    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    iget v1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    mul-int/lit8 v1, v1, 0x5

    add-int/lit8 v1, v1, 0x1

    aput-object p2, v0, v1

    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    iget v1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    mul-int/lit8 v1, v1, 0x5

    add-int/lit8 v1, v1, 0x2

    aput-object p3, v0, v1

    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    iget v1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    mul-int/lit8 v1, v1, 0x5

    add-int/lit8 v1, v1, 0x3

    aput-object p4, v0, v1

    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    iget v1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    mul-int/lit8 v1, v1, 0x5

    add-int/lit8 v1, v1, 0x4

    aput-object p5, v0, v1

    iget v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    return-void
.end method

.method public clear()V
    .locals 3

    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    mul-int/lit8 v1, v1, 0x5

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    return-void
.end method

.method public getIndex(Ljava/lang/String;)I
    .locals 4

    iget v2, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    mul-int/lit8 v1, v2, 0x5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    div-int/lit8 v2, v0, 0x5

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x5

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public getIndex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    iget v2, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    mul-int/lit8 v1, v2, 0x5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    div-int/lit8 v2, v0, 0x5

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x5

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public getLength()I
    .locals 1

    iget v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    return v0
.end method

.method public getLocalName(I)Ljava/lang/String;
    .locals 2

    if-ltz p1, :cond_0

    iget v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getQName(I)Ljava/lang/String;
    .locals 2

    if-ltz p1, :cond_0

    iget v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x2

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getType(I)Ljava/lang/String;
    .locals 2

    if-ltz p1, :cond_0

    iget v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x3

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getType(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget v2, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    mul-int/lit8 v1, v2, 0x5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x3

    aget-object v2, v2, v3

    :goto_1
    return-object v2

    :cond_0
    add-int/lit8 v0, v0, 0x5

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget v2, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    mul-int/lit8 v1, v2, 0x5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x3

    aget-object v2, v2, v3

    :goto_1
    return-object v2

    :cond_0
    add-int/lit8 v0, v0, 0x5

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getURI(I)Ljava/lang/String;
    .locals 2

    if-ltz p1, :cond_0

    iget v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getValue(I)Ljava/lang/String;
    .locals 2

    if-ltz p1, :cond_0

    iget v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x4

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget v2, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    mul-int/lit8 v1, v2, 0x5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x4

    aget-object v2, v2, v3

    :goto_1
    return-object v2

    :cond_0
    add-int/lit8 v0, v0, 0x5

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget v2, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    mul-int/lit8 v1, v2, 0x5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x4

    aget-object v2, v2, v3

    :goto_1
    return-object v2

    :cond_0
    add-int/lit8 v0, v0, 0x5

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public removeAttribute(I)V
    .locals 7

    const/4 v6, 0x0

    if-ltz p1, :cond_1

    iget v1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    if-ge p1, v1, :cond_1

    iget v1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    add-int/lit8 v1, v1, -0x1

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 v2, p1, 0x1

    mul-int/lit8 v2, v2, 0x5

    iget-object v3, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v4, p1, 0x5

    iget v5, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    sub-int/2addr v5, p1

    add-int/lit8 v5, v5, -0x1

    mul-int/lit8 v5, v5, 0x5

    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget v1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    add-int/lit8 v1, v1, -0x1

    mul-int/lit8 p1, v1, 0x5

    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 v0, p1, 0x1

    aput-object v6, v1, p1

    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 p1, v0, 0x1

    aput-object v6, v1, v0

    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 v0, p1, 0x1

    aput-object v6, v1, p1

    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    add-int/lit8 p1, v0, 0x1

    aput-object v6, v1, v0

    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    aput-object v6, v1, p1

    iget v1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lorg/ccil/cowan/tagsoup/AttributesImpl;->badIndex(I)V

    goto :goto_0
.end method

.method public setAttribute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-ltz p1, :cond_0

    iget v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    aput-object p2, v0, v1

    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x1

    aput-object p3, v0, v1

    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x2

    aput-object p4, v0, v1

    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x3

    aput-object p5, v0, v1

    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x4

    aput-object p6, v0, v1

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lorg/ccil/cowan/tagsoup/AttributesImpl;->badIndex(I)V

    goto :goto_0
.end method

.method public setAttributes(Lorg/xml/sax/Attributes;)V
    .locals 4

    invoke-virtual {p0}, Lorg/ccil/cowan/tagsoup/AttributesImpl;->clear()V

    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    iput v1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    iget v1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    if-lez v1, :cond_0

    iget v1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    mul-int/lit8 v1, v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v2, v0, 0x5

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v2, v0, 0x5

    add-int/lit8 v2, v2, 0x1

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v2, v0, 0x5

    add-int/lit8 v2, v2, 0x2

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v2, v0, 0x5

    add-int/lit8 v2, v2, 0x3

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v2, v0, 0x5

    add-int/lit8 v2, v2, 0x4

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setLocalName(ILjava/lang/String;)V
    .locals 2

    if-ltz p1, :cond_0

    iget v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x1

    aput-object p2, v0, v1

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lorg/ccil/cowan/tagsoup/AttributesImpl;->badIndex(I)V

    goto :goto_0
.end method

.method public setQName(ILjava/lang/String;)V
    .locals 2

    if-ltz p1, :cond_0

    iget v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x2

    aput-object p2, v0, v1

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lorg/ccil/cowan/tagsoup/AttributesImpl;->badIndex(I)V

    goto :goto_0
.end method

.method public setType(ILjava/lang/String;)V
    .locals 2

    if-ltz p1, :cond_0

    iget v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x3

    aput-object p2, v0, v1

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lorg/ccil/cowan/tagsoup/AttributesImpl;->badIndex(I)V

    goto :goto_0
.end method

.method public setURI(ILjava/lang/String;)V
    .locals 2

    if-ltz p1, :cond_0

    iget v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    aput-object p2, v0, v1

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lorg/ccil/cowan/tagsoup/AttributesImpl;->badIndex(I)V

    goto :goto_0
.end method

.method public setValue(ILjava/lang/String;)V
    .locals 2

    if-ltz p1, :cond_0

    iget v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->length:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/AttributesImpl;->data:[Ljava/lang/String;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x4

    aput-object p2, v0, v1

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lorg/ccil/cowan/tagsoup/AttributesImpl;->badIndex(I)V

    goto :goto_0
.end method
