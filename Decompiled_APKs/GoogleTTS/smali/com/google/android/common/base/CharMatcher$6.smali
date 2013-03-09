.class final Lcom/google/android/common/base/CharMatcher$6;
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
    .line 242
    invoke-direct {p0}, Lcom/google/android/common/base/CharMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 242
    check-cast p1, Ljava/lang/Character;

    .end local p1
    invoke-super {p0, p1}, Lcom/google/android/common/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public indexIn(Ljava/lang/CharSequence;)I
    .locals 1
    .parameter "sequence"

    .prologue
    .line 248
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public indexIn(Ljava/lang/CharSequence;I)I
    .locals 1
    .parameter "sequence"
    .parameter "start"

    .prologue
    .line 251
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 252
    .local v0, length:I
    invoke-static {p2, v0}, Lcom/google/android/common/base/Preconditions;->checkPositionIndex(II)I

    .line 253
    if-ne p2, v0, :cond_0

    const/4 p2, -0x1

    .end local p2
    :cond_0
    return p2
.end method

.method public matches(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 244
    const/4 v0, 0x1

    return v0
.end method

.method public matchesAllOf(Ljava/lang/CharSequence;)Z
    .locals 1
    .parameter "sequence"

    .prologue
    .line 259
    invoke-static {p1}, Lcom/google/android/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    const/4 v0, 0x1

    return v0
.end method

.method public matchesNoneOf(Ljava/lang/CharSequence;)Z
    .locals 1
    .parameter "sequence"

    .prologue
    .line 263
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

.method public negate()Lcom/google/android/common/base/CharMatcher;
    .locals 1

    .prologue
    .line 301
    sget-object v0, Lcom/google/android/common/base/CharMatcher$6;->NONE:Lcom/google/android/common/base/CharMatcher;

    return-object v0
.end method

.method public or(Lcom/google/android/common/base/CharMatcher;)Lcom/google/android/common/base/CharMatcher;
    .locals 0
    .parameter "other"

    .prologue
    .line 297
    invoke-static {p1}, Lcom/google/android/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    return-object p0
.end method

.method public precomputed()Lcom/google/android/common/base/CharMatcher;
    .locals 0

    .prologue
    .line 304
    return-object p0
.end method
