.class final Lcom/google/android/common/base/CharMatcher$7;
.super Lcom/google/android/common/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 309
    invoke-direct {p0}, Lcom/google/android/common/base/CharMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 309
    check-cast p1, Ljava/lang/Character;

    .end local p1
    invoke-super {p0, p1}, Lcom/google/android/common/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public collapseFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;
    .locals 1
    .parameter "sequence"
    .parameter "replacement"

    .prologue
    .line 348
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public indexIn(Ljava/lang/CharSequence;)I
    .locals 1
    .parameter "sequence"

    .prologue
    .line 315
    invoke-static {p1}, Lcom/google/android/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    const/4 v0, -0x1

    return v0
.end method

.method public indexIn(Ljava/lang/CharSequence;I)I
    .locals 2
    .parameter "sequence"
    .parameter "start"

    .prologue
    .line 319
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 320
    .local v0, length:I
    invoke-static {p2, v0}, Lcom/google/android/common/base/Preconditions;->checkPositionIndex(II)I

    .line 321
    const/4 v1, -0x1

    return v1
.end method

.method public matches(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 311
    const/4 v0, 0x0

    return v0
.end method

.method public negate()Lcom/google/android/common/base/CharMatcher;
    .locals 1

    .prologue
    .line 365
    sget-object v0, Lcom/google/android/common/base/CharMatcher$7;->ANY:Lcom/google/android/common/base/CharMatcher;

    return-object v0
.end method

.method public or(Lcom/google/android/common/base/CharMatcher;)Lcom/google/android/common/base/CharMatcher;
    .locals 1
    .parameter "other"

    .prologue
    .line 362
    invoke-static {p1}, Lcom/google/android/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/common/base/CharMatcher;

    return-object v0
.end method

.method public precomputed()Lcom/google/android/common/base/CharMatcher;
    .locals 0

    .prologue
    .line 370
    return-object p0
.end method

.method public removeFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .parameter "sequence"

    .prologue
    .line 335
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public replaceFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;
    .locals 1
    .parameter "sequence"
    .parameter "replacement"

    .prologue
    .line 339
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public replaceFrom(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .parameter "sequence"
    .parameter "replacement"

    .prologue
    .line 343
    invoke-static {p2}, Lcom/google/android/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected setBits(Lcom/google/android/common/base/CharMatcher$LookupTable;)V
    .locals 0
    .parameter "table"

    .prologue
    .line 368
    return-void
.end method

.method public trimFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .parameter "sequence"

    .prologue
    .line 351
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
