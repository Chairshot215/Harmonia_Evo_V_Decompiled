.class Lcom/google/android/common/base/CharEscapers$FallThroughCharEscaper;
.super Lcom/google/android/common/base/CharEscaper;
.source "CharEscapers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/common/base/CharEscapers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FallThroughCharEscaper"
.end annotation


# instance fields
.field private final primary:Lcom/google/android/common/base/CharEscaper;

.field private final secondary:Lcom/google/android/common/base/CharEscaper;


# virtual methods
.method protected escape(C)[C
    .locals 2
    .parameter "c"

    .prologue
    .line 1080
    iget-object v1, p0, Lcom/google/android/common/base/CharEscapers$FallThroughCharEscaper;->primary:Lcom/google/android/common/base/CharEscaper;

    invoke-virtual {v1, p1}, Lcom/google/android/common/base/CharEscaper;->escape(C)[C

    move-result-object v0

    .line 1081
    .local v0, result:[C
    if-nez v0, :cond_0

    .line 1082
    iget-object v1, p0, Lcom/google/android/common/base/CharEscapers$FallThroughCharEscaper;->secondary:Lcom/google/android/common/base/CharEscaper;

    invoke-virtual {v1, p1}, Lcom/google/android/common/base/CharEscaper;->escape(C)[C

    move-result-object v0

    .line 1084
    :cond_0
    return-object v0
.end method
