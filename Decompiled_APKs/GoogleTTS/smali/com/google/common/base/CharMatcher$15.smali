.class Lcom/google/common/base/CharMatcher$15;
.super Lcom/google/common/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$table:Lcom/google/common/base/CharMatcher$LookupTable;


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 650
    check-cast p1, Ljava/lang/Character;

    .end local p1
    invoke-super {p0, p1}, Lcom/google/common/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public matches(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 652
    iget-object v0, p0, Lcom/google/common/base/CharMatcher$15;->val$table:Lcom/google/common/base/CharMatcher$LookupTable;

    invoke-virtual {v0, p1}, Lcom/google/common/base/CharMatcher$LookupTable;->get(C)Z

    move-result v0

    return v0
.end method
