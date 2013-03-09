.class public final Lcom/google/android/common/base/Splitter;
.super Ljava/lang/Object;
.source "Splitter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/common/base/Splitter$Strategy;
    }
.end annotation


# instance fields
.field private final omitEmptyStrings:Z

.field private final strategy:Lcom/google/android/common/base/Splitter$Strategy;

.field private final trimmer:Lcom/google/android/common/base/CharMatcher;


# direct methods
.method private constructor <init>(Lcom/google/android/common/base/Splitter$Strategy;)V
    .locals 2
    .parameter "strategy"

    .prologue
    .line 99
    const/4 v0, 0x0

    sget-object v1, Lcom/google/android/common/base/CharMatcher;->NONE:Lcom/google/android/common/base/CharMatcher;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/common/base/Splitter;-><init>(Lcom/google/android/common/base/Splitter$Strategy;ZLcom/google/android/common/base/CharMatcher;)V

    .line 100
    return-void
.end method

.method private constructor <init>(Lcom/google/android/common/base/Splitter$Strategy;ZLcom/google/android/common/base/CharMatcher;)V
    .locals 0
    .parameter "strategy"
    .parameter "omitEmptyStrings"
    .parameter "trimmer"

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/google/android/common/base/Splitter;->strategy:Lcom/google/android/common/base/Splitter$Strategy;

    .line 105
    iput-boolean p2, p0, Lcom/google/android/common/base/Splitter;->omitEmptyStrings:Z

    .line 106
    iput-object p3, p0, Lcom/google/android/common/base/Splitter;->trimmer:Lcom/google/android/common/base/CharMatcher;

    .line 107
    return-void
.end method

.method public static on(C)Lcom/google/android/common/base/Splitter;
    .locals 1
    .parameter "separator"

    .prologue
    .line 118
    invoke-static {p0}, Lcom/google/android/common/base/CharMatcher;->is(C)Lcom/google/android/common/base/CharMatcher;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/common/base/Splitter;->on(Lcom/google/android/common/base/CharMatcher;)Lcom/google/android/common/base/Splitter;

    move-result-object v0

    return-object v0
.end method

.method public static on(Lcom/google/android/common/base/CharMatcher;)Lcom/google/android/common/base/Splitter;
    .locals 2
    .parameter "separatorMatcher"

    .prologue
    .line 132
    invoke-static {p0}, Lcom/google/android/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    new-instance v0, Lcom/google/android/common/base/Splitter;

    new-instance v1, Lcom/google/android/common/base/Splitter$1;

    invoke-direct {v1, p0}, Lcom/google/android/common/base/Splitter$1;-><init>(Lcom/google/android/common/base/CharMatcher;)V

    invoke-direct {v0, v1}, Lcom/google/android/common/base/Splitter;-><init>(Lcom/google/android/common/base/Splitter$Strategy;)V

    return-object v0
.end method


# virtual methods
.method public omitEmptyStrings()Lcom/google/android/common/base/Splitter;
    .locals 4

    .prologue
    .line 292
    new-instance v0, Lcom/google/android/common/base/Splitter;

    iget-object v1, p0, Lcom/google/android/common/base/Splitter;->strategy:Lcom/google/android/common/base/Splitter$Strategy;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/common/base/Splitter;->trimmer:Lcom/google/android/common/base/CharMatcher;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/common/base/Splitter;-><init>(Lcom/google/android/common/base/Splitter$Strategy;ZLcom/google/android/common/base/CharMatcher;)V

    return-object v0
.end method
