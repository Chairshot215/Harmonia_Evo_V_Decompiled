.class final Lcom/google/android/common/base/CharMatcher$8;
.super Lcom/google/android/common/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/common/base/CharMatcher;->is(C)Lcom/google/android/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$match:C


# direct methods
.method constructor <init>(C)V
    .locals 0
    .parameter

    .prologue
    .line 380
    iput-char p1, p0, Lcom/google/android/common/base/CharMatcher$8;->val$match:C

    invoke-direct {p0}, Lcom/google/android/common/base/CharMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 380
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
    .line 382
    iget-char v0, p0, Lcom/google/android/common/base/CharMatcher$8;->val$match:C

    if-ne p1, v0, :cond_0

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
    .line 396
    iget-char v0, p0, Lcom/google/android/common/base/CharMatcher$8;->val$match:C

    invoke-static {v0}, Lcom/google/android/common/base/CharMatcher$8;->isNot(C)Lcom/google/android/common/base/CharMatcher;

    move-result-object v0

    return-object v0
.end method

.method public or(Lcom/google/android/common/base/CharMatcher;)Lcom/google/android/common/base/CharMatcher;
    .locals 1
    .parameter "other"

    .prologue
    .line 393
    iget-char v0, p0, Lcom/google/android/common/base/CharMatcher$8;->val$match:C

    invoke-virtual {p1, v0}, Lcom/google/android/common/base/CharMatcher;->matches(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/common/base/CharMatcher;->or(Lcom/google/android/common/base/CharMatcher;)Lcom/google/android/common/base/CharMatcher;

    move-result-object p1

    goto :goto_0
.end method

.method public precomputed()Lcom/google/android/common/base/CharMatcher;
    .locals 0

    .prologue
    .line 402
    return-object p0
.end method

.method public replaceFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;
    .locals 2
    .parameter "sequence"
    .parameter "replacement"

    .prologue
    .line 387
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-char v1, p0, Lcom/google/android/common/base/CharMatcher$8;->val$match:C

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected setBits(Lcom/google/android/common/base/CharMatcher$LookupTable;)V
    .locals 1
    .parameter "table"

    .prologue
    .line 399
    iget-char v0, p0, Lcom/google/android/common/base/CharMatcher$8;->val$match:C

    invoke-virtual {p1, v0}, Lcom/google/android/common/base/CharMatcher$LookupTable;->set(C)V

    .line 400
    return-void
.end method
