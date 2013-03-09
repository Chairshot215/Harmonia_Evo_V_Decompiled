.class public final Lcom/google/common/base/Splitter;
.super Ljava/lang/Object;
.source "Splitter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/Splitter$6;,
        Lcom/google/common/base/Splitter$AbstractIterator;,
        Lcom/google/common/base/Splitter$SplittingIterator;,
        Lcom/google/common/base/Splitter$Strategy;
    }
.end annotation


# instance fields
.field private final omitEmptyStrings:Z

.field private final strategy:Lcom/google/common/base/Splitter$Strategy;

.field private final trimmer:Lcom/google/common/base/CharMatcher;


# direct methods
.method static synthetic access$000(Lcom/google/common/base/Splitter;)Lcom/google/common/base/Splitter$Strategy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/common/base/Splitter;->strategy:Lcom/google/common/base/Splitter$Strategy;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/common/base/Splitter;)Lcom/google/common/base/CharMatcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/common/base/Splitter;->trimmer:Lcom/google/common/base/CharMatcher;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/common/base/Splitter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/google/common/base/Splitter;->omitEmptyStrings:Z

    return v0
.end method
