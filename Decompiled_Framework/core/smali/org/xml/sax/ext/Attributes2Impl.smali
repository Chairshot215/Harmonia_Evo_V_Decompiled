.class public Lorg/xml/sax/ext/Attributes2Impl;
.super Lorg/xml/sax/helpers/AttributesImpl;
.source "Attributes2Impl.java"

# interfaces
.implements Lorg/xml/sax/ext/Attributes2;


# instance fields
.field private declared:[Z

.field private specified:[Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    sget-object v0, Llibcore/util/EmptyArray;->BOOLEAN:[Z

    iput-object v0, p0, Lorg/xml/sax/ext/Attributes2Impl;->declared:[Z

    sget-object v0, Llibcore/util/EmptyArray;->BOOLEAN:[Z

    iput-object v0, p0, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/Attributes;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/xml/sax/helpers/AttributesImpl;-><init>(Lorg/xml/sax/Attributes;)V

    return-void
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-super/range {p0 .. p5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/xml/sax/ext/Attributes2Impl;->getLength()I

    move-result v0

    iget-object v4, p0, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    array-length v4, v4

    if-le v0, v4, :cond_0

    new-array v1, v0, [Z

    iget-object v4, p0, Lorg/xml/sax/ext/Attributes2Impl;->declared:[Z

    iget-object v5, p0, Lorg/xml/sax/ext/Attributes2Impl;->declared:[Z

    array-length v5, v5

    invoke-static {v4, v3, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lorg/xml/sax/ext/Attributes2Impl;->declared:[Z

    new-array v1, v0, [Z

    iget-object v4, p0, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    iget-object v5, p0, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    array-length v5, v5

    invoke-static {v4, v3, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    :cond_0
    iget-object v4, p0, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    add-int/lit8 v5, v0, -0x1

    aput-boolean v2, v4, v5

    iget-object v4, p0, Lorg/xml/sax/ext/Attributes2Impl;->declared:[Z

    add-int/lit8 v5, v0, -0x1

    const-string v6, "CDATA"

    invoke-virtual {v6, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    :goto_0
    aput-boolean v2, v4, v5

    return-void

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method public isDeclared(I)Z
    .locals 3

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/xml/sax/ext/Attributes2Impl;->getLength()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No attribute at index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/xml/sax/ext/Attributes2Impl;->declared:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method public isDeclared(Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p0, p1}, Lorg/xml/sax/ext/Attributes2Impl;->getIndex(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No such attribute: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lorg/xml/sax/ext/Attributes2Impl;->declared:[Z

    aget-boolean v1, v1, v0

    return v1
.end method

.method public isDeclared(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p0, p1, p2}, Lorg/xml/sax/ext/Attributes2Impl;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No such attribute: local="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", namespace="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lorg/xml/sax/ext/Attributes2Impl;->declared:[Z

    aget-boolean v1, v1, v0

    return v1
.end method

.method public isSpecified(I)Z
    .locals 3

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/xml/sax/ext/Attributes2Impl;->getLength()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No attribute at index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method public isSpecified(Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p0, p1}, Lorg/xml/sax/ext/Attributes2Impl;->getIndex(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No such attribute: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    aget-boolean v1, v1, v0

    return v1
.end method

.method public isSpecified(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p0, p1, p2}, Lorg/xml/sax/ext/Attributes2Impl;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No such attribute: local="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", namespace="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    aget-boolean v1, v1, v0

    return v1
.end method

.method public removeAttribute(I)V
    .locals 5

    invoke-virtual {p0}, Lorg/xml/sax/ext/Attributes2Impl;->getLength()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    invoke-super {p0, p1}, Lorg/xml/sax/helpers/AttributesImpl;->removeAttribute(I)V

    if-eq p1, v0, :cond_0

    iget-object v1, p0, Lorg/xml/sax/ext/Attributes2Impl;->declared:[Z

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lorg/xml/sax/ext/Attributes2Impl;->declared:[Z

    sub-int v4, v0, p1

    invoke-static {v1, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    sub-int v4, v0, p1

    invoke-static {v1, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-void
.end method

.method public setAttributes(Lorg/xml/sax/Attributes;)V
    .locals 7

    const/4 v4, 0x1

    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    invoke-super {p0, p1}, Lorg/xml/sax/helpers/AttributesImpl;->setAttributes(Lorg/xml/sax/Attributes;)V

    new-array v3, v2, [Z

    iput-object v3, p0, Lorg/xml/sax/ext/Attributes2Impl;->declared:[Z

    new-array v3, v2, [Z

    iput-object v3, p0, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    instance-of v3, p1, Lorg/xml/sax/ext/Attributes2;

    if-eqz v3, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/xml/sax/ext/Attributes2;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    iget-object v3, p0, Lorg/xml/sax/ext/Attributes2Impl;->declared:[Z

    invoke-interface {v0, v1}, Lorg/xml/sax/ext/Attributes2;->isDeclared(I)Z

    move-result v4

    aput-boolean v4, v3, v1

    iget-object v3, p0, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    invoke-interface {v0, v1}, Lorg/xml/sax/ext/Attributes2;->isSpecified(I)Z

    move-result v4

    aput-boolean v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_2

    iget-object v5, p0, Lorg/xml/sax/ext/Attributes2Impl;->declared:[Z

    const-string v3, "CDATA"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v4

    :goto_2
    aput-boolean v3, v5, v1

    iget-object v3, p0, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    aput-boolean v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    return-void
.end method

.method public setDeclared(IZ)V
    .locals 3

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/xml/sax/ext/Attributes2Impl;->getLength()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No attribute at index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/xml/sax/ext/Attributes2Impl;->declared:[Z

    aput-boolean p2, v0, p1

    return-void
.end method

.method public setSpecified(IZ)V
    .locals 3

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/xml/sax/ext/Attributes2Impl;->getLength()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No attribute at index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/xml/sax/ext/Attributes2Impl;->specified:[Z

    aput-boolean p2, v0, p1

    return-void
.end method
