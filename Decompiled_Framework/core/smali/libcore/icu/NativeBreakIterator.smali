.class public final Llibcore/icu/NativeBreakIterator;
.super Ljava/lang/Object;
.source "NativeBreakIterator.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final BI_CHAR_INSTANCE:I = 0x1

.field private static final BI_LINE_INSTANCE:I = 0x3

.field private static final BI_SENT_INSTANCE:I = 0x4

.field private static final BI_WORD_INSTANCE:I = 0x2


# instance fields
.field private final address:I

.field private charIter:Ljava/text/CharacterIterator;

.field private final type:I


# direct methods
.method private constructor <init>(II)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Llibcore/icu/NativeBreakIterator;->address:I

    iput p2, p0, Llibcore/icu/NativeBreakIterator;->type:I

    new-instance v0, Ljava/text/StringCharacterIterator;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Llibcore/icu/NativeBreakIterator;->charIter:Ljava/text/CharacterIterator;

    return-void
.end method

.method private static native cloneImpl(I)I
.end method

.method private static native closeBreakIteratorImpl(I)V
.end method

.method private static native currentImpl(I)I
.end method

.method private static native firstImpl(I)I
.end method

.method private static native followingImpl(II)I
.end method

.method public static getCharacterInstance(Ljava/util/Locale;)Llibcore/icu/NativeBreakIterator;
    .locals 3

    new-instance v0, Llibcore/icu/NativeBreakIterator;

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Llibcore/icu/NativeBreakIterator;->getCharacterInstanceImpl(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Llibcore/icu/NativeBreakIterator;-><init>(II)V

    return-object v0
.end method

.method private static native getCharacterInstanceImpl(Ljava/lang/String;)I
.end method

.method public static getLineInstance(Ljava/util/Locale;)Llibcore/icu/NativeBreakIterator;
    .locals 3

    new-instance v0, Llibcore/icu/NativeBreakIterator;

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Llibcore/icu/NativeBreakIterator;->getLineInstanceImpl(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Llibcore/icu/NativeBreakIterator;-><init>(II)V

    return-object v0
.end method

.method private static native getLineInstanceImpl(Ljava/lang/String;)I
.end method

.method public static getSentenceInstance(Ljava/util/Locale;)Llibcore/icu/NativeBreakIterator;
    .locals 3

    new-instance v0, Llibcore/icu/NativeBreakIterator;

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Llibcore/icu/NativeBreakIterator;->getSentenceInstanceImpl(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Llibcore/icu/NativeBreakIterator;-><init>(II)V

    return-object v0
.end method

.method private static native getSentenceInstanceImpl(Ljava/lang/String;)I
.end method

.method public static getWordInstance(Ljava/util/Locale;)Llibcore/icu/NativeBreakIterator;
    .locals 3

    new-instance v0, Llibcore/icu/NativeBreakIterator;

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Llibcore/icu/NativeBreakIterator;->getWordInstanceImpl(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Llibcore/icu/NativeBreakIterator;-><init>(II)V

    return-object v0
.end method

.method private static native getWordInstanceImpl(Ljava/lang/String;)I
.end method

.method private static native isBoundaryImpl(II)Z
.end method

.method private static native lastImpl(I)I
.end method

.method private static native nextImpl(II)I
.end method

.method private static native precedingImpl(II)I
.end method

.method private static native previousImpl(I)I
.end method

.method private setText(Ljava/lang/String;Ljava/text/CharacterIterator;)V
    .locals 1

    iput-object p2, p0, Llibcore/icu/NativeBreakIterator;->charIter:Ljava/text/CharacterIterator;

    iget v0, p0, Llibcore/icu/NativeBreakIterator;->address:I

    invoke-static {v0, p1}, Llibcore/icu/NativeBreakIterator;->setTextImpl(ILjava/lang/String;)V

    return-void
.end method

.method private static native setTextImpl(ILjava/lang/String;)V
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    iget v2, p0, Llibcore/icu/NativeBreakIterator;->address:I

    invoke-static {v2}, Llibcore/icu/NativeBreakIterator;->cloneImpl(I)I

    move-result v1

    new-instance v0, Llibcore/icu/NativeBreakIterator;

    iget v2, p0, Llibcore/icu/NativeBreakIterator;->type:I

    invoke-direct {v0, v1, v2}, Llibcore/icu/NativeBreakIterator;-><init>(II)V

    iget-object v2, p0, Llibcore/icu/NativeBreakIterator;->charIter:Ljava/text/CharacterIterator;

    iput-object v2, v0, Llibcore/icu/NativeBreakIterator;->charIter:Ljava/text/CharacterIterator;

    return-object v0
.end method

.method public current()I
    .locals 1

    iget v0, p0, Llibcore/icu/NativeBreakIterator;->address:I

    invoke-static {v0}, Llibcore/icu/NativeBreakIterator;->currentImpl(I)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    instance-of v3, p1, Llibcore/icu/NativeBreakIterator;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    check-cast v0, Llibcore/icu/NativeBreakIterator;

    iget v3, p0, Llibcore/icu/NativeBreakIterator;->type:I

    iget v4, v0, Llibcore/icu/NativeBreakIterator;->type:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Llibcore/icu/NativeBreakIterator;->charIter:Ljava/text/CharacterIterator;

    iget-object v4, v0, Llibcore/icu/NativeBreakIterator;->charIter:Ljava/text/CharacterIterator;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget v0, p0, Llibcore/icu/NativeBreakIterator;->address:I

    invoke-static {v0}, Llibcore/icu/NativeBreakIterator;->closeBreakIteratorImpl(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public first()I
    .locals 1

    iget v0, p0, Llibcore/icu/NativeBreakIterator;->address:I

    invoke-static {v0}, Llibcore/icu/NativeBreakIterator;->firstImpl(I)I

    move-result v0

    return v0
.end method

.method public following(I)I
    .locals 1

    iget v0, p0, Llibcore/icu/NativeBreakIterator;->address:I

    invoke-static {v0, p1}, Llibcore/icu/NativeBreakIterator;->followingImpl(II)I

    move-result v0

    return v0
.end method

.method public getText()Ljava/text/CharacterIterator;
    .locals 2

    iget v1, p0, Llibcore/icu/NativeBreakIterator;->address:I

    invoke-static {v1}, Llibcore/icu/NativeBreakIterator;->currentImpl(I)I

    move-result v0

    iget-object v1, p0, Llibcore/icu/NativeBreakIterator;->charIter:Ljava/text/CharacterIterator;

    invoke-interface {v1, v0}, Ljava/text/CharacterIterator;->setIndex(I)C

    iget-object v1, p0, Llibcore/icu/NativeBreakIterator;->charIter:Ljava/text/CharacterIterator;

    return-object v1
.end method

.method public hashCode()I
    .locals 1

    const/16 v0, 0x2a

    return v0
.end method

.method public isBoundary(I)Z
    .locals 1

    iget v0, p0, Llibcore/icu/NativeBreakIterator;->address:I

    invoke-static {v0, p1}, Llibcore/icu/NativeBreakIterator;->isBoundaryImpl(II)Z

    move-result v0

    return v0
.end method

.method public last()I
    .locals 1

    iget v0, p0, Llibcore/icu/NativeBreakIterator;->address:I

    invoke-static {v0}, Llibcore/icu/NativeBreakIterator;->lastImpl(I)I

    move-result v0

    return v0
.end method

.method public next()I
    .locals 2

    iget v0, p0, Llibcore/icu/NativeBreakIterator;->address:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Llibcore/icu/NativeBreakIterator;->nextImpl(II)I

    move-result v0

    return v0
.end method

.method public next(I)I
    .locals 1

    iget v0, p0, Llibcore/icu/NativeBreakIterator;->address:I

    invoke-static {v0, p1}, Llibcore/icu/NativeBreakIterator;->nextImpl(II)I

    move-result v0

    return v0
.end method

.method public preceding(I)I
    .locals 1

    iget v0, p0, Llibcore/icu/NativeBreakIterator;->address:I

    invoke-static {v0, p1}, Llibcore/icu/NativeBreakIterator;->precedingImpl(II)I

    move-result v0

    return v0
.end method

.method public previous()I
    .locals 1

    iget v0, p0, Llibcore/icu/NativeBreakIterator;->address:I

    invoke-static {v0}, Llibcore/icu/NativeBreakIterator;->previousImpl(I)I

    move-result v0

    return v0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/text/StringCharacterIterator;

    invoke-direct {v0, p1}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Llibcore/icu/NativeBreakIterator;->setText(Ljava/lang/String;Ljava/text/CharacterIterator;)V

    return-void
.end method

.method public setText(Ljava/text/CharacterIterator;)V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/text/CharacterIterator;->first()C

    move-result v0

    :goto_0
    const v2, 0xffff

    if-eq v0, v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/text/CharacterIterator;->next()C

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Llibcore/icu/NativeBreakIterator;->setText(Ljava/lang/String;Ljava/text/CharacterIterator;)V

    return-void
.end method
