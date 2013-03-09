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
.method public matches(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 311
    const/4 v0, 0x0

    return v0
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

.method protected setBits(Lcom/google/android/common/base/CharMatcher$LookupTable;)V
    .locals 0
    .parameter "table"

    .prologue
    .line 368
    return-void
.end method
