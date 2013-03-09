.class final Lcom/google/android/common/base/Splitter$4;
.super Ljava/lang/Object;
.source "Splitter.java"

# interfaces
.implements Lcom/google/android/common/base/Splitter$Strategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/common/base/Splitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$length:I


# virtual methods
.method public iterator(Lcom/google/android/common/base/Splitter;Ljava/lang/CharSequence;)Lcom/google/android/common/base/Splitter$SplittingIterator;
    .locals 1
    .parameter "splitter"
    .parameter "toSplit"

    .prologue
    .line 259
    new-instance v0, Lcom/google/android/common/base/Splitter$4$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/common/base/Splitter$4$1;-><init>(Lcom/google/android/common/base/Splitter$4;Lcom/google/android/common/base/Splitter;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public bridge synthetic iterator(Lcom/google/android/common/base/Splitter;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 256
    invoke-virtual {p0, p1, p2}, Lcom/google/android/common/base/Splitter$4;->iterator(Lcom/google/android/common/base/Splitter;Ljava/lang/CharSequence;)Lcom/google/android/common/base/Splitter$SplittingIterator;

    move-result-object v0

    return-object v0
.end method
