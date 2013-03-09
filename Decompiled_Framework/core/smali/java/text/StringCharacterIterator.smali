.class public final Ljava/text/StringCharacterIterator;
.super Ljava/lang/Object;
.source "StringCharacterIterator.java"

# interfaces
.implements Ljava/text/CharacterIterator;


# instance fields
.field end:I

.field offset:I

.field start:I

.field string:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/text/StringCharacterIterator;->string:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Ljava/text/StringCharacterIterator;->offset:I

    iput v0, p0, Ljava/text/StringCharacterIterator;->start:I

    iget-object v0, p0, Ljava/text/StringCharacterIterator;->string:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Ljava/text/StringCharacterIterator;->end:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/text/StringCharacterIterator;->string:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Ljava/text/StringCharacterIterator;->start:I

    iget-object v0, p0, Ljava/text/StringCharacterIterator;->string:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Ljava/text/StringCharacterIterator;->end:I

    if-ltz p2, :cond_0

    iget v0, p0, Ljava/text/StringCharacterIterator;->end:I

    if-le p2, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iput p2, p0, Ljava/text/StringCharacterIterator;->offset:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/text/StringCharacterIterator;->string:Ljava/lang/String;

    if-ltz p2, :cond_0

    iget-object v0, p0, Ljava/text/StringCharacterIterator;->string:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p3, v0, :cond_0

    if-gt p2, p3, :cond_0

    if-lt p4, p2, :cond_0

    if-le p4, p3, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iput p2, p0, Ljava/text/StringCharacterIterator;->start:I

    iput p3, p0, Ljava/text/StringCharacterIterator;->end:I

    iput p4, p0, Ljava/text/StringCharacterIterator;->offset:I

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public current()C
    .locals 2

    iget v0, p0, Ljava/text/StringCharacterIterator;->offset:I

    iget v1, p0, Ljava/text/StringCharacterIterator;->end:I

    if-ne v0, v1, :cond_0

    const v0, 0xffff

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ljava/text/StringCharacterIterator;->string:Ljava/lang/String;

    iget v1, p0, Ljava/text/StringCharacterIterator;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    instance-of v2, p1, Ljava/text/StringCharacterIterator;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Ljava/text/StringCharacterIterator;

    iget-object v2, p0, Ljava/text/StringCharacterIterator;->string:Ljava/lang/String;

    iget-object v3, v0, Ljava/text/StringCharacterIterator;->string:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Ljava/text/StringCharacterIterator;->start:I

    iget v3, v0, Ljava/text/StringCharacterIterator;->start:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Ljava/text/StringCharacterIterator;->end:I

    iget v3, v0, Ljava/text/StringCharacterIterator;->end:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Ljava/text/StringCharacterIterator;->offset:I

    iget v3, v0, Ljava/text/StringCharacterIterator;->offset:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public first()C
    .locals 2

    iget v0, p0, Ljava/text/StringCharacterIterator;->start:I

    iget v1, p0, Ljava/text/StringCharacterIterator;->end:I

    if-ne v0, v1, :cond_0

    const v0, 0xffff

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Ljava/text/StringCharacterIterator;->start:I

    iput v0, p0, Ljava/text/StringCharacterIterator;->offset:I

    iget-object v0, p0, Ljava/text/StringCharacterIterator;->string:Ljava/lang/String;

    iget v1, p0, Ljava/text/StringCharacterIterator;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method public getBeginIndex()I
    .locals 1

    iget v0, p0, Ljava/text/StringCharacterIterator;->start:I

    return v0
.end method

.method public getEndIndex()I
    .locals 1

    iget v0, p0, Ljava/text/StringCharacterIterator;->end:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Ljava/text/StringCharacterIterator;->offset:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Ljava/text/StringCharacterIterator;->string:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Ljava/text/StringCharacterIterator;->start:I

    add-int/2addr v0, v1

    iget v1, p0, Ljava/text/StringCharacterIterator;->end:I

    add-int/2addr v0, v1

    iget v1, p0, Ljava/text/StringCharacterIterator;->offset:I

    add-int/2addr v0, v1

    return v0
.end method

.method public last()C
    .locals 2

    iget v0, p0, Ljava/text/StringCharacterIterator;->start:I

    iget v1, p0, Ljava/text/StringCharacterIterator;->end:I

    if-ne v0, v1, :cond_0

    const v0, 0xffff

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Ljava/text/StringCharacterIterator;->end:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljava/text/StringCharacterIterator;->offset:I

    iget-object v0, p0, Ljava/text/StringCharacterIterator;->string:Ljava/lang/String;

    iget v1, p0, Ljava/text/StringCharacterIterator;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method public next()C
    .locals 2

    iget v0, p0, Ljava/text/StringCharacterIterator;->offset:I

    iget v1, p0, Ljava/text/StringCharacterIterator;->end:I

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_0

    iget v0, p0, Ljava/text/StringCharacterIterator;->end:I

    iput v0, p0, Ljava/text/StringCharacterIterator;->offset:I

    const v0, 0xffff

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ljava/text/StringCharacterIterator;->string:Ljava/lang/String;

    iget v1, p0, Ljava/text/StringCharacterIterator;->offset:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/text/StringCharacterIterator;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method public previous()C
    .locals 2

    iget v0, p0, Ljava/text/StringCharacterIterator;->offset:I

    iget v1, p0, Ljava/text/StringCharacterIterator;->start:I

    if-ne v0, v1, :cond_0

    const v0, 0xffff

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ljava/text/StringCharacterIterator;->string:Ljava/lang/String;

    iget v1, p0, Ljava/text/StringCharacterIterator;->offset:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava/text/StringCharacterIterator;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method public setIndex(I)C
    .locals 2

    iget v0, p0, Ljava/text/StringCharacterIterator;->start:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Ljava/text/StringCharacterIterator;->end:I

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iput p1, p0, Ljava/text/StringCharacterIterator;->offset:I

    iget v0, p0, Ljava/text/StringCharacterIterator;->offset:I

    iget v1, p0, Ljava/text/StringCharacterIterator;->end:I

    if-ne v0, v1, :cond_2

    const v0, 0xffff

    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Ljava/text/StringCharacterIterator;->string:Ljava/lang/String;

    iget v1, p0, Ljava/text/StringCharacterIterator;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Ljava/text/StringCharacterIterator;->string:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Ljava/text/StringCharacterIterator;->offset:I

    iput v0, p0, Ljava/text/StringCharacterIterator;->start:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Ljava/text/StringCharacterIterator;->end:I

    return-void
.end method
