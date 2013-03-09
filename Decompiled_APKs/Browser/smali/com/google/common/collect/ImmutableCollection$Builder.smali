.class abstract Lcom/google/common/collect/ImmutableCollection$Builder;
.super Ljava/lang/Object;
.source "ImmutableCollection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 264
    .local p0, this:Lcom/google/common/collect/ImmutableCollection$Builder;,"Lcom/google/common/collect/ImmutableCollection$Builder<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/collect/ImmutableCollection$Builder",
            "<TE;>;"
        }
    .end annotation
.end method

.method public varargs add([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)",
            "Lcom/google/common/collect/ImmutableCollection$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 290
    .local p0, this:Lcom/google/common/collect/ImmutableCollection$Builder;,"Lcom/google/common/collect/ImmutableCollection$Builder<TE;>;"
    .local p1, elements:[Ljava/lang/Object;,"[TE;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/Object;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 292
    .local v1, element:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0, v1}, Lcom/google/common/collect/ImmutableCollection$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$Builder;

    .line 291
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 294
    .end local v1           #element:Ljava/lang/Object;,"TE;"
    :cond_0
    return-object p0
.end method

.method public addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Lcom/google/common/collect/ImmutableCollection$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 310
    .local p0, this:Lcom/google/common/collect/ImmutableCollection$Builder;,"Lcom/google/common/collect/ImmutableCollection$Builder<TE;>;"
    .local p1, elements:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TE;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 312
    .local v0, element:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableCollection$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$Builder;

    goto :goto_0

    .line 314
    .end local v0           #element:Ljava/lang/Object;,"TE;"
    :cond_0
    return-object p0
.end method

.method public addAll(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<+TE;>;)",
            "Lcom/google/common/collect/ImmutableCollection$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 330
    .local p0, this:Lcom/google/common/collect/ImmutableCollection$Builder;,"Lcom/google/common/collect/ImmutableCollection$Builder<TE;>;"
    .local p1, elements:Ljava/util/Iterator;,"Ljava/util/Iterator<+TE;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableCollection$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$Builder;

    goto :goto_0

    .line 334
    :cond_0
    return-object p0
.end method

.method public abstract build()Lcom/google/common/collect/ImmutableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableCollection",
            "<TE;>;"
        }
    .end annotation
.end method
