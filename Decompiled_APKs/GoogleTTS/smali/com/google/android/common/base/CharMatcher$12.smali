.class final Lcom/google/android/common/base/CharMatcher$12;
.super Lcom/google/android/common/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/common/base/CharMatcher;->inRange(CC)Lcom/google/android/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$endInclusive:C

.field final synthetic val$startInclusive:C


# direct methods
.method constructor <init>(CC)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 491
    iput-char p1, p0, Lcom/google/android/common/base/CharMatcher$12;->val$startInclusive:C

    iput-char p2, p0, Lcom/google/android/common/base/CharMatcher$12;->val$endInclusive:C

    invoke-direct {p0}, Lcom/google/android/common/base/CharMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 491
    check-cast p1, Ljava/lang/Character;

    .end local p1
    invoke-super {p0, p1}, Lcom/google/android/common/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public matches(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 493
    iget-char v0, p0, Lcom/google/android/common/base/CharMatcher$12;->val$startInclusive:C

    if-gt v0, p1, :cond_0

    iget-char v0, p0, Lcom/google/android/common/base/CharMatcher$12;->val$endInclusive:C

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public precomputed()Lcom/google/android/common/base/CharMatcher;
    .locals 0

    .prologue
    .line 505
    return-object p0
.end method

.method protected setBits(Lcom/google/android/common/base/CharMatcher$LookupTable;)V
    .locals 3
    .parameter "table"

    .prologue
    .line 496
    iget-char v0, p0, Lcom/google/android/common/base/CharMatcher$12;->val$startInclusive:C

    .line 498
    .local v0, c:C
    :goto_0
    invoke-virtual {p1, v0}, Lcom/google/android/common/base/CharMatcher$LookupTable;->set(C)V

    .line 499
    add-int/lit8 v2, v0, 0x1

    int-to-char v1, v2

    .end local v0           #c:C
    .local v1, c:C
    iget-char v2, p0, Lcom/google/android/common/base/CharMatcher$12;->val$endInclusive:C

    if-ne v0, v2, :cond_0

    .line 503
    return-void

    :cond_0
    move v0, v1

    .end local v1           #c:C
    .restart local v0       #c:C
    goto :goto_0
.end method
