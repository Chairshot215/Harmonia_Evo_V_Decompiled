.class Ljava/util/EnumMap$EnumMapEntrySet;
.super Ljava/util/AbstractSet;
.source "EnumMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/EnumMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EnumMapEntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<KT:",
        "Ljava/lang/Enum",
        "<TKT;>;VT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TKT;TVT;>;>;"
    }
.end annotation


# instance fields
.field private final enumMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<TKT;TVT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/EnumMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<TKT;TVT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    iput-object p1, p0, Ljava/util/EnumMap$EnumMapEntrySet;->enumMap:Ljava/util/EnumMap;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Ljava/util/EnumMap$EnumMapEntrySet;->enumMap:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 5

    const/4 v2, 0x0

    instance-of v4, p1, Ljava/util/Map$Entry;

    if-eqz v4, :cond_0

    move-object v4, p1

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    iget-object v4, p0, Ljava/util/EnumMap$EnumMapEntrySet;->enumMap:Ljava/util/EnumMap;

    invoke-virtual {v4, v0}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Ljava/util/EnumMap$EnumMapEntrySet;->enumMap:Ljava/util/EnumMap;

    invoke-virtual {v4, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    if-nez v1, :cond_1

    const/4 v2, 0x1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TKT;TVT;>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/EnumMap$EnumMapEntryIterator;

    new-instance v1, Ljava/util/EnumMap$EnumMapEntrySet$1;

    invoke-direct {v1, p0}, Ljava/util/EnumMap$EnumMapEntrySet$1;-><init>(Ljava/util/EnumMap$EnumMapEntrySet;)V

    iget-object v2, p0, Ljava/util/EnumMap$EnumMapEntrySet;->enumMap:Ljava/util/EnumMap;

    invoke-direct {v0, v1, v2}, Ljava/util/EnumMap$EnumMapEntryIterator;-><init>(Ljava/util/MapEntry$Type;Ljava/util/EnumMap;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    invoke-virtual {p0, p1}, Ljava/util/EnumMap$EnumMapEntrySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/util/EnumMap$EnumMapEntrySet;->enumMap:Ljava/util/EnumMap;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Ljava/util/EnumMap$EnumMapEntrySet;->enumMap:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    iget-object v1, p0, Ljava/util/EnumMap$EnumMapEntrySet;->enumMap:Ljava/util/EnumMap;

    invoke-virtual {v1}, Ljava/util/EnumMap;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/util/EnumMap$EnumMapEntrySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 9

    iget-object v6, p0, Ljava/util/EnumMap$EnumMapEntrySet;->enumMap:Ljava/util/EnumMap;

    invoke-virtual {v6}, Ljava/util/EnumMap;->size()I

    move-result v5

    const/4 v3, 0x0

    move-object v2, p1

    array-length v6, p1

    if-le v5, v6, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    move-object v2, v6

    check-cast v2, [Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0}, Ljava/util/EnumMap$EnumMapEntrySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    if-ge v3, v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    new-instance v6, Ljava/util/MapEntry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/util/MapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    array-length v6, p1

    if-ge v3, v6, :cond_2

    const/4 v6, 0x0

    aput-object v6, v2, v3

    :cond_2
    return-object v2
.end method
