.class Ljava/util/TreeMap$Node;
.super Ljava/lang/Object;
.source "TreeMap.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Node"
.end annotation

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
.field height:I

.field final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field left:Ljava/util/TreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field parent:Ljava/util/TreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field right:Ljava/util/TreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap$Node",
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
.method constructor <init>(Ljava/util/TreeMap$Node;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;TK;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/TreeMap$Node;->parent:Ljava/util/TreeMap$Node;

    iput-object p2, p0, Ljava/util/TreeMap$Node;->key:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Ljava/util/TreeMap$Node;->height:I

    return-void
.end method


# virtual methods
.method copy(Ljava/util/TreeMap$Node;)Ljava/util/TreeMap$Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;)",
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/TreeMap$Node;

    iget-object v1, p0, Ljava/util/TreeMap$Node;->key:Ljava/lang/Object;

    invoke-direct {v0, p1, v1}, Ljava/util/TreeMap$Node;-><init>(Ljava/util/TreeMap$Node;Ljava/lang/Object;)V

    iget-object v1, p0, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap$Node;->copy(Ljava/util/TreeMap$Node;)Ljava/util/TreeMap$Node;

    move-result-object v1

    iput-object v1, v0, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    :cond_0
    iget-object v1, p0, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    if-eqz v1, :cond_1

    iget-object v1, p0, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap$Node;->copy(Ljava/util/TreeMap$Node;)Ljava/util/TreeMap$Node;

    move-result-object v1

    iput-object v1, v0, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    :cond_1
    iget-object v1, p0, Ljava/util/TreeMap$Node;->value:Ljava/lang/Object;

    iput-object v1, v0, Ljava/util/TreeMap$Node;->value:Ljava/lang/Object;

    iget v1, p0, Ljava/util/TreeMap$Node;->height:I

    iput v1, v0, Ljava/util/TreeMap$Node;->height:I

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    instance-of v2, p1, Ljava/util/Map$Entry;

    if-eqz v2, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v2, p0, Ljava/util/TreeMap$Node;->key:Ljava/lang/Object;

    if-nez v2, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    iget-object v2, p0, Ljava/util/TreeMap$Node;->value:Ljava/lang/Object;

    if-nez v2, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_1
    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    iget-object v2, p0, Ljava/util/TreeMap$Node;->key:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Ljava/util/TreeMap$Node;->value:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public first()Ljava/util/TreeMap$Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    move-object v1, p0

    iget-object v0, v1, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    :goto_0
    if-eqz v0, :cond_0

    move-object v1, v0

    iget-object v0, v1, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/TreeMap$Node;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/TreeMap$Node;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Ljava/util/TreeMap$Node;->key:Ljava/lang/Object;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Ljava/util/TreeMap$Node;->value:Ljava/lang/Object;

    if-nez v2, :cond_1

    :goto_1
    xor-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Ljava/util/TreeMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Ljava/util/TreeMap$Node;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public last()Ljava/util/TreeMap$Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    move-object v1, p0

    iget-object v0, v1, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    :goto_0
    if-eqz v0, :cond_0

    move-object v1, v0

    iget-object v0, v1, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method next()Ljava/util/TreeMap$Node;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v2, p0, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    invoke-virtual {v2}, Ljava/util/TreeMap$Node;->first()Ljava/util/TreeMap$Node;

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    move-object v0, p0

    iget-object v1, v0, Ljava/util/TreeMap$Node;->parent:Ljava/util/TreeMap$Node;

    :goto_1
    if-eqz v1, :cond_2

    iget-object v2, v1, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    if-eq v2, v0, :cond_0

    move-object v0, v1

    iget-object v1, v0, Ljava/util/TreeMap$Node;->parent:Ljava/util/TreeMap$Node;

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public prev()Ljava/util/TreeMap$Node;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v2, p0, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    invoke-virtual {v2}, Ljava/util/TreeMap$Node;->last()Ljava/util/TreeMap$Node;

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    move-object v0, p0

    iget-object v1, v0, Ljava/util/TreeMap$Node;->parent:Ljava/util/TreeMap$Node;

    :goto_1
    if-eqz v1, :cond_2

    iget-object v2, v1, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    if-eq v2, v0, :cond_0

    move-object v0, v1

    iget-object v1, v0, Ljava/util/TreeMap$Node;->parent:Ljava/util/TreeMap$Node;

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/TreeMap$Node;->value:Ljava/lang/Object;

    iput-object p1, p0, Ljava/util/TreeMap$Node;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljava/util/TreeMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/util/TreeMap$Node;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
