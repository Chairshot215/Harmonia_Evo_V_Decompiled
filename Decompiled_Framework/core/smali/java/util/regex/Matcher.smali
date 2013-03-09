.class public final Ljava/util/regex/Matcher;
.super Ljava/lang/Object;
.source "Matcher.java"

# interfaces
.implements Ljava/util/regex/MatchResult;


# instance fields
.field private address:I

.field private anchoringBounds:Z

.field private appendPos:I

.field private findPos:I

.field private input:Ljava/lang/String;

.field private matchFound:Z

.field private matchOffsets:[I

.field private pattern:Ljava/util/regex/Pattern;

.field private regionEnd:I

.field private regionStart:I

.field private transparentBounds:Z


# direct methods
.method constructor <init>(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/regex/Matcher;->anchoringBounds:Z

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    invoke-virtual {p0, p2}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    return-void
.end method

.method private appendEvaluated(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x5c

    if-ne v0, v4, :cond_0

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/16 v4, 0x24

    if-ne v0, v4, :cond_1

    if-nez v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/16 v4, 0x30

    if-lt v0, v4, :cond_2

    const/16 v4, 0x39

    if-gt v0, v4, :cond_2

    if-eqz v1, :cond_2

    add-int/lit8 v4, v0, -0x30

    invoke-virtual {p0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v4

    :cond_4
    return-void
.end method

.method private static native closeImpl(I)V
.end method

.method private ensureMatch()V
    .locals 2

    iget-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No successful match so far"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private static native findImpl(ILjava/lang/String;I[I)Z
.end method

.method private static native findNextImpl(ILjava/lang/String;[I)Z
.end method

.method private static native groupCountImpl(I)I
.end method

.method private static native hitEndImpl(I)Z
.end method

.method private static native lookingAtImpl(ILjava/lang/String;[I)Z
.end method

.method private static native matchesImpl(ILjava/lang/String;[I)Z
.end method

.method private static native openImpl(I)I
.end method

.method public static quoteReplacement(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/16 v4, 0x5c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v4, :cond_0

    const/16 v3, 0x24

    if-ne v0, v3, :cond_1

    :cond_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static native requireEndImpl(I)Z
.end method

.method private reset(Ljava/lang/CharSequence;II)Ljava/util/regex/Matcher;
    .locals 2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p2, v0, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p3, v0, :cond_1

    if-le p2, p3, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    iput p2, p0, Ljava/util/regex/Matcher;->regionStart:I

    iput p3, p0, Ljava/util/regex/Matcher;->regionEnd:I

    invoke-direct {p0}, Ljava/util/regex/Matcher;->resetForInput()V

    iput-boolean v1, p0, Ljava/util/regex/Matcher;->matchFound:Z

    iget v0, p0, Ljava/util/regex/Matcher;->regionStart:I

    iput v0, p0, Ljava/util/regex/Matcher;->findPos:I

    iput v1, p0, Ljava/util/regex/Matcher;->appendPos:I

    return-object p0
.end method

.method private resetForInput()V
    .locals 4

    iget v0, p0, Ljava/util/regex/Matcher;->address:I

    iget-object v1, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    iget v2, p0, Ljava/util/regex/Matcher;->regionStart:I

    iget v3, p0, Ljava/util/regex/Matcher;->regionEnd:I

    invoke-static {v0, v1, v2, v3}, Ljava/util/regex/Matcher;->setInputImpl(ILjava/lang/String;II)V

    iget v0, p0, Ljava/util/regex/Matcher;->address:I

    iget-boolean v1, p0, Ljava/util/regex/Matcher;->anchoringBounds:Z

    invoke-static {v0, v1}, Ljava/util/regex/Matcher;->useAnchoringBoundsImpl(IZ)V

    iget v0, p0, Ljava/util/regex/Matcher;->address:I

    iget-boolean v1, p0, Ljava/util/regex/Matcher;->transparentBounds:Z

    invoke-static {v0, v1}, Ljava/util/regex/Matcher;->useTransparentBoundsImpl(IZ)V

    return-void
.end method

.method private static native setInputImpl(ILjava/lang/String;II)V
.end method

.method private static native useAnchoringBoundsImpl(IZ)V
.end method

.method private static native useTransparentBoundsImpl(IZ)V
.end method


# virtual methods
.method public appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;
    .locals 3

    iget-object v0, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    iget v1, p0, Ljava/util/regex/Matcher;->appendPos:I

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0, p1, p2}, Ljava/util/regex/Matcher;->appendEvaluated(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    iput v0, p0, Ljava/util/regex/Matcher;->appendPos:I

    return-object p0
.end method

.method public appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 3

    iget v0, p0, Ljava/util/regex/Matcher;->appendPos:I

    iget v1, p0, Ljava/util/regex/Matcher;->regionEnd:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    iget v1, p0, Ljava/util/regex/Matcher;->appendPos:I

    iget v2, p0, Ljava/util/regex/Matcher;->regionEnd:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    return-object p1
.end method

.method public end()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->end(I)I

    move-result v0

    return v0
.end method

.method public end(I)I
    .locals 2

    invoke-direct {p0}, Ljava/util/regex/Matcher;->ensureMatch()V

    iget-object v0, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget v0, p0, Ljava/util/regex/Matcher;->address:I

    invoke-static {v0}, Ljava/util/regex/Matcher;->closeImpl(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public find()Z
    .locals 3

    iget v0, p0, Ljava/util/regex/Matcher;->address:I

    iget-object v1, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    iget-object v2, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    invoke-static {v0, v1, v2}, Ljava/util/regex/Matcher;->findNextImpl(ILjava/lang/String;[I)Z

    move-result v0

    iput-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    iget-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Ljava/util/regex/Matcher;->findPos:I

    :cond_0
    iget-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    return v0
.end method

.method public find(I)Z
    .locals 4

    const/4 v0, 0x0

    iput p1, p0, Ljava/util/regex/Matcher;->findPos:I

    iget v1, p0, Ljava/util/regex/Matcher;->findPos:I

    iget v2, p0, Ljava/util/regex/Matcher;->regionStart:I

    if-ge v1, v2, :cond_2

    iget v0, p0, Ljava/util/regex/Matcher;->regionStart:I

    iput v0, p0, Ljava/util/regex/Matcher;->findPos:I

    :cond_0
    iget v0, p0, Ljava/util/regex/Matcher;->address:I

    iget-object v1, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    iget v2, p0, Ljava/util/regex/Matcher;->findPos:I

    iget-object v3, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    invoke-static {v0, v1, v2, v3}, Ljava/util/regex/Matcher;->findImpl(ILjava/lang/String;I[I)Z

    move-result v0

    iput-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    iget-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Ljava/util/regex/Matcher;->findPos:I

    :cond_1
    iget-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    :goto_0
    return v0

    :cond_2
    iget v1, p0, Ljava/util/regex/Matcher;->findPos:I

    iget v2, p0, Ljava/util/regex/Matcher;->regionEnd:I

    if-lt v1, v2, :cond_0

    iput-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    goto :goto_0
.end method

.method public group()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public group(I)Ljava/lang/String;
    .locals 5

    const/4 v4, -0x1

    invoke-direct {p0}, Ljava/util/regex/Matcher;->ensureMatch()V

    iget-object v2, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    mul-int/lit8 v3, p1, 0x2

    aget v0, v2, v3

    iget-object v2, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    mul-int/lit8 v3, p1, 0x2

    add-int/lit8 v3, v3, 0x1

    aget v1, v2, v3

    if-eq v0, v4, :cond_0

    if-ne v1, v4, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_1
    iget-object v2, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public groupCount()I
    .locals 1

    iget v0, p0, Ljava/util/regex/Matcher;->address:I

    invoke-static {v0}, Ljava/util/regex/Matcher;->groupCountImpl(I)I

    move-result v0

    return v0
.end method

.method public hasAnchoringBounds()Z
    .locals 1

    iget-boolean v0, p0, Ljava/util/regex/Matcher;->anchoringBounds:Z

    return v0
.end method

.method public hasTransparentBounds()Z
    .locals 1

    iget-boolean v0, p0, Ljava/util/regex/Matcher;->transparentBounds:Z

    return v0
.end method

.method public hitEnd()Z
    .locals 1

    iget v0, p0, Ljava/util/regex/Matcher;->address:I

    invoke-static {v0}, Ljava/util/regex/Matcher;->hitEndImpl(I)Z

    move-result v0

    return v0
.end method

.method public lookingAt()Z
    .locals 3

    iget v0, p0, Ljava/util/regex/Matcher;->address:I

    iget-object v1, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    iget-object v2, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    invoke-static {v0, v1, v2}, Ljava/util/regex/Matcher;->lookingAtImpl(ILjava/lang/String;[I)Z

    move-result v0

    iput-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    iget-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Ljava/util/regex/Matcher;->findPos:I

    :cond_0
    iget-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    return v0
.end method

.method public matches()Z
    .locals 3

    iget v0, p0, Ljava/util/regex/Matcher;->address:I

    iget-object v1, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    iget-object v2, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    invoke-static {v0, v1, v2}, Ljava/util/regex/Matcher;->matchesImpl(ILjava/lang/String;[I)Z

    move-result v0

    iput-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    iget-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Ljava/util/regex/Matcher;->findPos:I

    :cond_0
    iget-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    return v0
.end method

.method public pattern()Ljava/util/regex/Pattern;
    .locals 1

    iget-object v0, p0, Ljava/util/regex/Matcher;->pattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public region(II)Ljava/util/regex/Matcher;
    .locals 1

    iget-object v0, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;II)Ljava/util/regex/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public regionEnd()I
    .locals 1

    iget v0, p0, Ljava/util/regex/Matcher;->regionEnd:I

    return v0
.end method

.method public regionStart()I
    .locals 1

    iget v0, p0, Ljava/util/regex/Matcher;->regionStart:I

    return v0
.end method

.method public replaceAll(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->reset()Ljava/util/regex/Matcher;

    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, p1}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public replaceFirst(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->reset()Ljava/util/regex/Matcher;

    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, p1}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public requireEnd()Z
    .locals 1

    iget v0, p0, Ljava/util/regex/Matcher;->address:I

    invoke-static {v0}, Ljava/util/regex/Matcher;->requireEndImpl(I)Z

    move-result v0

    return v0
.end method

.method public reset()Ljava/util/regex/Matcher;
    .locals 3

    iget-object v0, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;II)Ljava/util/regex/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
    .locals 2

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;II)Ljava/util/regex/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public start()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->start(I)I

    move-result v0

    return v0
.end method

.method public start(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/regex/Matcher;->ensureMatch()V

    iget-object v0, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    mul-int/lit8 v1, p1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public toMatchResult()Ljava/util/regex/MatchResult;
    .locals 3

    invoke-direct {p0}, Ljava/util/regex/Matcher;->ensureMatch()V

    new-instance v0, Ljava/util/regex/MatchResultImpl;

    iget-object v1, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    iget-object v2, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    invoke-direct {v0, v1, v2}, Ljava/util/regex/MatchResultImpl;-><init>(Ljava/lang/String;[I)V

    return-object v0
.end method

.method public useAnchoringBounds(Z)Ljava/util/regex/Matcher;
    .locals 1

    iput-boolean p1, p0, Ljava/util/regex/Matcher;->anchoringBounds:Z

    iget v0, p0, Ljava/util/regex/Matcher;->address:I

    invoke-static {v0, p1}, Ljava/util/regex/Matcher;->useAnchoringBoundsImpl(IZ)V

    return-object p0
.end method

.method public usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;
    .locals 2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Ljava/util/regex/Matcher;->pattern:Ljava/util/regex/Pattern;

    iget v0, p0, Ljava/util/regex/Matcher;->address:I

    if-eqz v0, :cond_1

    iget v0, p0, Ljava/util/regex/Matcher;->address:I

    invoke-static {v0}, Ljava/util/regex/Matcher;->closeImpl(I)V

    iput v1, p0, Ljava/util/regex/Matcher;->address:I

    :cond_1
    iget v0, p1, Ljava/util/regex/Pattern;->address:I

    invoke-static {v0}, Ljava/util/regex/Matcher;->openImpl(I)I

    move-result v0

    iput v0, p0, Ljava/util/regex/Matcher;->address:I

    iget-object v0, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Ljava/util/regex/Matcher;->resetForInput()V

    :cond_2
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    iput-boolean v1, p0, Ljava/util/regex/Matcher;->matchFound:Z

    return-object p0
.end method

.method public useTransparentBounds(Z)Ljava/util/regex/Matcher;
    .locals 1

    iput-boolean p1, p0, Ljava/util/regex/Matcher;->transparentBounds:Z

    iget v0, p0, Ljava/util/regex/Matcher;->address:I

    invoke-static {v0, p1}, Ljava/util/regex/Matcher;->useTransparentBoundsImpl(IZ)V

    return-object p0
.end method
