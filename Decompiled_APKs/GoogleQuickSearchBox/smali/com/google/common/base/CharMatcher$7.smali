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

.method public matches(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 299
    const/4 v0, 0x0

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
