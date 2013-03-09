.class Ljava/util/EnumMap$EnumMapValueCollection;
.super Ljava/util/AbstractCollection;
.source "EnumMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/EnumMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EnumMapValueCollection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<KT:",
        "Ljava/lang/Enum",
        "<TKT;>;VT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection",
        "<TVT;>;"
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

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p1, p0, Ljava/util/EnumMap$EnumMapValueCollection;->enumMap:Ljava/util/EnumMap;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Ljava/util/EnumMap$EnumMapValueCollection;->enumMap:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Ljava/util/EnumMap$EnumMapValueCollection;->enumMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3

    new-instance v0, Ljava/util/EnumMap$EnumMapIterator;

    new-instance v1, Ljava/util/EnumMap$EnumMapValueCollection$1;

    invoke-direct {v1, p0}, Ljava/util/EnumMap$EnumMapValueCollection$1;-><init>(Ljava/util/EnumMap$EnumMapValueCollection;)V

    iget-object v2, p0, Ljava/util/EnumMap$EnumMapValueCollection;->enumMap:Ljava/util/EnumMap;

    invoke-direct {v0, v1, v2}, Ljava/util/EnumMap$EnumMapIterator;-><init>(Ljava/util/MapEntry$Type;Ljava/util/EnumMap;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x1

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Ljava/util/EnumMap$EnumMapValueCollection;->enumMap:Ljava/util/EnumMap;

    iget v2, v2, Ljava/util/EnumMap;->enumSize:I

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Ljava/util/EnumMap$EnumMapValueCollection;->enumMap:Ljava/util/EnumMap;

    iget-object v2, v2, Ljava/util/EnumMap;->hasMapping:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljava/util/EnumMap$EnumMapValueCollection;->enumMap:Ljava/util/EnumMap;

    iget-object v2, v2, Ljava/util/EnumMap;->values:[Ljava/lang/Object;

    aget-object v2, v2, v0

    if-nez v2, :cond_0

    iget-object v2, p0, Ljava/util/EnumMap$EnumMapValueCollection;->enumMap:Ljava/util/EnumMap;

    iget-object v3, p0, Ljava/util/EnumMap$EnumMapValueCollection;->enumMap:Ljava/util/EnumMap;

    iget-object v3, v3, Ljava/util/EnumMap;->keys:[Ljava/lang/Enum;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/util/EnumMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Ljava/util/EnumMap$EnumMapValueCollection;->enumMap:Ljava/util/EnumMap;

    iget v2, v2, Ljava/util/EnumMap;->enumSize:I

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Ljava/util/EnumMap$EnumMapValueCollection;->enumMap:Ljava/util/EnumMap;

    iget-object v2, v2, Ljava/util/EnumMap;->hasMapping:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_2

    iget-object v2, p0, Ljava/util/EnumMap$EnumMapValueCollection;->enumMap:Ljava/util/EnumMap;

    iget-object v2, v2, Ljava/util/EnumMap;->values:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Ljava/util/EnumMap$EnumMapValueCollection;->enumMap:Ljava/util/EnumMap;

    iget-object v3, p0, Ljava/util/EnumMap$EnumMapValueCollection;->enumMap:Ljava/util/EnumMap;

    iget-object v3, v3, Ljava/util/EnumMap;->keys:[Ljava/lang/Enum;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/util/EnumMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Ljava/util/EnumMap$EnumMapValueCollection;->enumMap:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->size()I

    move-result v0

    return v0
.end method
