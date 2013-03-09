.class public Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;
.super Ljava/lang/Object;
.source "TwoKeyHashMap.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/luni/util/TwoKeyHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/String;",
        "TV;>;"
    }
.end annotation


# instance fields
.field hash:I

.field key1:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field key2:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field next:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry",
            "<TE;TK;TV;>;"
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
.method public constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;TK;TV;",
            "Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry",
            "<TE;TK;TV;>;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->hash:I

    iput-object p2, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->key1:Ljava/lang/Object;

    iput-object p3, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->key2:Ljava/lang/Object;

    iput-object p4, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->value:Ljava/lang/Object;

    iput-object p5, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->next:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v4, 0x0

    instance-of v5, p1, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->getKey1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->getKey2()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    iget-object v5, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->key1:Ljava/lang/Object;

    if-nez v5, :cond_2

    if-nez v1, :cond_0

    :cond_2
    iget-object v5, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->key2:Ljava/lang/Object;

    if-nez v5, :cond_3

    if-nez v2, :cond_0

    :cond_3
    iget-object v5, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->value:Ljava/lang/Object;

    if-nez v5, :cond_4

    if-nez v3, :cond_0

    :cond_4
    iget-object v5, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->key1:Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->getKey1()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->key2:Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->getKey2()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0
.end method

.method public bridge synthetic getKey()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->key1:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->key2:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKey1()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->key1:Ljava/lang/Object;

    return-object v0
.end method

.method public getKey2()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->key2:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->key1:Ljava/lang/Object;

    if-nez v3, :cond_0

    move v0, v2

    :goto_0
    iget-object v3, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->key2:Ljava/lang/Object;

    if-nez v3, :cond_1

    move v1, v2

    :goto_1
    add-int v3, v0, v1

    iget-object v4, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->value:Ljava/lang/Object;

    if-nez v4, :cond_2

    :goto_2
    xor-int/2addr v2, v3

    return v2

    :cond_0
    iget-object v3, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->key1:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->key2:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->value:Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->value:Ljava/lang/Object;

    return-object v0
.end method
