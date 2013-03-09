.class Lcom/google/android/common/base/CharMatcher$15;
.super Lcom/google/android/common/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/common/base/CharMatcher;->precomputedInternal()Lcom/google/android/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/common/base/CharMatcher;

.field final synthetic val$table:Lcom/google/android/common/base/CharMatcher$LookupTable;


# direct methods
.method constructor <init>(Lcom/google/android/common/base/CharMatcher;Lcom/google/android/common/base/CharMatcher$LookupTable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 662
    iput-object p1, p0, Lcom/google/android/common/base/CharMatcher$15;->this$0:Lcom/google/android/common/base/CharMatcher;

    iput-object p2, p0, Lcom/google/android/common/base/CharMatcher$15;->val$table:Lcom/google/android/common/base/CharMatcher$LookupTable;

    invoke-direct {p0}, Lcom/google/android/common/base/CharMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 662
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
    .line 664
    iget-object v0, p0, Lcom/google/android/common/base/CharMatcher$15;->val$table:Lcom/google/android/common/base/CharMatcher$LookupTable;

    invoke-virtual {v0, p1}, Lcom/google/android/common/base/CharMatcher$LookupTable;->get(C)Z

    move-result v0

    return v0
.end method

.method public precomputed()Lcom/google/android/common/base/CharMatcher;
    .locals 0

    .prologue
    .line 670
    return-object p0
.end method
