.class public Lgnu/kawa/util/HashNode;
.super Ljava/lang/Object;
.source "HashNode.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field hash:I

.field key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field public next:Lgnu/kawa/util/HashNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgnu/kawa/util/HashNode",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, this:Lgnu/kawa/util/HashNode;,"Lgnu/kawa/util/HashNode<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lgnu/kawa/util/HashNode;->key:Ljava/lang/Object;

    .line 57
    iput-object p2, p0, Lgnu/kawa/util/HashNode;->value:Ljava/lang/Object;

    .line 59
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    .local p0, this:Lgnu/kawa/util/HashNode;,"Lgnu/kawa/util/HashNode<TK;TV;>;"
    const/4 v4, 0x0

    .line 72
    instance-of v2, p1, Lgnu/kawa/util/HashNode;

    if-nez v2, :cond_0

    move v2, v4

    .line 78
    :goto_0
    return v2

    .line 77
    :cond_0
    move-object v0, p1

    check-cast v0, Lgnu/kawa/util/HashNode;

    move-object v1, v0

    .line 78
    .local v1, h2:Lgnu/kawa/util/HashNode;
    iget-object v2, p0, Lgnu/kawa/util/HashNode;->key:Ljava/lang/Object;

    if-nez v2, :cond_2

    iget-object v2, v1, Lgnu/kawa/util/HashNode;->key:Ljava/lang/Object;

    if-nez v2, :cond_3

    :cond_1
    iget-object v2, p0, Lgnu/kawa/util/HashNode;->value:Ljava/lang/Object;

    if-nez v2, :cond_4

    iget-object v2, v1, Lgnu/kawa/util/HashNode;->value:Ljava/lang/Object;

    if-nez v2, :cond_3

    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lgnu/kawa/util/HashNode;->key:Ljava/lang/Object;

    iget-object v3, v1, Lgnu/kawa/util/HashNode;->key:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_3
    move v2, v4

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lgnu/kawa/util/HashNode;->value:Ljava/lang/Object;

    iget-object v3, v1, Lgnu/kawa/util/HashNode;->value:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, this:Lgnu/kawa/util/HashNode;,"Lgnu/kawa/util/HashNode<TK;TV;>;"
    .local p1, defaultValue:Ljava/lang/Object;,"TV;"
    invoke-virtual {p0}, Lgnu/kawa/util/HashNode;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, this:Lgnu/kawa/util/HashNode;,"Lgnu/kawa/util/HashNode<TK;TV;>;"
    iget-object v0, p0, Lgnu/kawa/util/HashNode;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, this:Lgnu/kawa/util/HashNode;,"Lgnu/kawa/util/HashNode<TK;TV;>;"
    iget-object v0, p0, Lgnu/kawa/util/HashNode;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .local p0, this:Lgnu/kawa/util/HashNode;,"Lgnu/kawa/util/HashNode<TK;TV;>;"
    const/4 v2, 0x0

    .line 46
    iget-object v0, p0, Lgnu/kawa/util/HashNode;->key:Ljava/lang/Object;

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    iget-object v1, p0, Lgnu/kawa/util/HashNode;->value:Ljava/lang/Object;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    xor-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lgnu/kawa/util/HashNode;->key:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lgnu/kawa/util/HashNode;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, this:Lgnu/kawa/util/HashNode;,"Lgnu/kawa/util/HashNode<TK;TV;>;"
    .local p1, value:Ljava/lang/Object;,"TV;"
    iget-object v0, p0, Lgnu/kawa/util/HashNode;->value:Ljava/lang/Object;

    .line 37
    .local v0, old:Ljava/lang/Object;,"TV;"
    iput-object p1, p0, Lgnu/kawa/util/HashNode;->value:Ljava/lang/Object;

    .line 38
    return-object v0
.end method
