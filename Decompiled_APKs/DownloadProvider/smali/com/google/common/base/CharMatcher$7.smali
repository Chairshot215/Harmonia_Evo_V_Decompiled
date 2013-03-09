.class final Lcom/google/common/base/CharMatcher$7;
.super Lcom/google/common/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 297
    invoke-direct {p0}, Lcom/google/common/base/CharMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public and(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;
    .locals 0
    .parameter "other"

    .prologue
    .line 346
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 297
    check-cast p1, Ljava/lang/Character;

    .end local p1
    invoke-super {p0, p1}, Lcom/google/common/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public collapseFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;
    .locals 1
    .parameter "sequence"
    .parameter "replacement"

    .prologue
    .line 336
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public countIn(Ljava/lang/CharSequence;)I
    .locals 1
    .parameter "sequence"

    .prologue
    .line 342
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    const/4 v0, 0x0

    return v0
.end method

.method public indexIn(Ljava/lang/CharSequence;)I
    .locals 1
    .parameter "sequence"

    .prologue
    .line 303
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    const/4 v0, -0x1

    return v0
.end method

.method public indexIn(Ljava/lang/CharSequence;I)I
    .locals 2
    .parameter "sequence"
    .parameter "start"

    .prologue
    .line 307
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 308
    .local v0, length:I
    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndex(II)I

    .line 309
    const/4 v1, -0x1

    return v1
.end method

.method public lastIndexIn(Ljava/lang/CharSequence;)I
    .locals 1
    .parameter "sequence"

    .prologue
    .line 312
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    const/4 v0, -0x1

    return v0
.end method

.method public matches(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 299
    const/4 v0, 0x0

    return v0
.end method

.method public matchesAllOf(Ljava/lang/CharSequence;)Z
    .locals 1
    .parameter "sequence"

    .prologue
    .line 316
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public matchesNoneOf(Ljava/lang/CharSequence;)Z
    .locals 1
    .parameter "sequence"

    .prologue
    .line 319
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    const/4 v0, 0x1

    return v0
.end method

.method public negate()Lcom/google/common/base/CharMatcher;
    .locals 1

    .prologue
    .line 353
    sget-object v0, Lcom/google/common/base/CharMatcher$7;->ANY:Lcom/google/common/base/CharMatcher;

    return-object v0
.end method

.method public or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;
    .locals 1
    .parameter "other"

    .prologue
    .line 350
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/CharMatcher;

    return-object v0
.end method

.method public precomputed()Lcom/google/common/base/CharMatcher;
    .locals 0

    .prologue
    .line 358
    return-object p0
.end method

.method public removeFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .parameter "sequence"

    .prologue
    .line 323
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public replaceFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;
    .locals 1
    .parameter "sequence"
    .parameter "replacement"

    .prologue
    .line 327
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public replaceFrom(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .parameter "sequence"
    .parameter "replacement"

    .prologue
    .line 331
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected setBits(Lcom/google/common/base/CharMatcher$LookupTable;)V
    .locals 0
    .parameter "table"

    .prologue
    .line 356
    return-void
.end method

.method public trimFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .parameter "sequence"

    .prologue
    .line 339
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
