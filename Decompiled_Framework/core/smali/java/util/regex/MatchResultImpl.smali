.class Ljava/util/regex/MatchResultImpl;
.super Ljava/lang/Object;
.source "MatchResultImpl.java"

# interfaces
.implements Ljava/util/regex/MatchResult;


# instance fields
.field private offsets:[I

.field private text:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;[I)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/regex/MatchResultImpl;->text:Ljava/lang/String;

    invoke-virtual {p2}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Ljava/util/regex/MatchResultImpl;->offsets:[I

    return-void
.end method


# virtual methods
.method public end()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/regex/MatchResultImpl;->end(I)I

    move-result v0

    return v0
.end method

.method public end(I)I
    .locals 2

    iget-object v0, p0, Ljava/util/regex/MatchResultImpl;->offsets:[I

    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public group()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Ljava/util/regex/MatchResultImpl;->text:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/util/regex/MatchResultImpl;->start()I

    move-result v1

    invoke-virtual {p0}, Ljava/util/regex/MatchResultImpl;->end()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public group(I)Ljava/lang/String;
    .locals 5

    const/4 v4, -0x1

    iget-object v2, p0, Ljava/util/regex/MatchResultImpl;->offsets:[I

    mul-int/lit8 v3, p1, 0x2

    aget v0, v2, v3

    iget-object v2, p0, Ljava/util/regex/MatchResultImpl;->offsets:[I

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
    iget-object v2, p0, Ljava/util/regex/MatchResultImpl;->text:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public groupCount()I
    .locals 1

    iget-object v0, p0, Ljava/util/regex/MatchResultImpl;->offsets:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public start()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/regex/MatchResultImpl;->start(I)I

    move-result v0

    return v0
.end method

.method public start(I)I
    .locals 2

    iget-object v0, p0, Ljava/util/regex/MatchResultImpl;->offsets:[I

    mul-int/lit8 v1, p1, 0x2

    aget v0, v0, v1

    return v0
.end method
