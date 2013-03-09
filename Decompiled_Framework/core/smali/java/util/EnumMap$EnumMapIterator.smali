.class Ljava/util/EnumMap$EnumMapIterator;
.super Ljava/lang/Object;
.source "EnumMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/EnumMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EnumMapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        "KT:",
        "Ljava/lang/Enum",
        "<TKT;>;VT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final enumMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<TKT;TVT;>;"
        }
    .end annotation
.end field

.field position:I

.field prePosition:I

.field final type:Ljava/util/MapEntry$Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/MapEntry$Type",
            "<TE;TKT;TVT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/MapEntry$Type;Ljava/util/EnumMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/MapEntry$Type",
            "<TE;TKT;TVT;>;",
            "Ljava/util/EnumMap",
            "<TKT;TVT;>;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ljava/util/EnumMap$EnumMapIterator;->position:I

    const/4 v0, -0x1

    iput v0, p0, Ljava/util/EnumMap$EnumMapIterator;->prePosition:I

    iput-object p2, p0, Ljava/util/EnumMap$EnumMapIterator;->enumMap:Ljava/util/EnumMap;

    iput-object p1, p0, Ljava/util/EnumMap$EnumMapIterator;->type:Ljava/util/MapEntry$Type;

    return-void
.end method

.method private checkStatus()V
    .locals 2

    const/4 v0, -0x1

    iget v1, p0, Ljava/util/EnumMap$EnumMapIterator;->prePosition:I

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    iget-object v1, p0, Ljava/util/EnumMap$EnumMapIterator;->enumMap:Ljava/util/EnumMap;

    iget v0, v1, Ljava/util/EnumMap;->enumSize:I

    :goto_0
    iget v1, p0, Ljava/util/EnumMap$EnumMapIterator;->position:I

    if-ge v1, v0, :cond_0

    iget-object v1, p0, Ljava/util/EnumMap$EnumMapIterator;->enumMap:Ljava/util/EnumMap;

    iget-object v1, v1, Ljava/util/EnumMap;->hasMapping:[Z

    iget v2, p0, Ljava/util/EnumMap$EnumMapIterator;->position:I

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_1

    :cond_0
    iget v1, p0, Ljava/util/EnumMap$EnumMapIterator;->position:I

    if-eq v1, v0, :cond_2

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_1
    iget v1, p0, Ljava/util/EnumMap$EnumMapIterator;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/EnumMap$EnumMapIterator;->position:I

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public next()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/EnumMap$EnumMapIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Ljava/util/EnumMap$EnumMapIterator;->position:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljava/util/EnumMap$EnumMapIterator;->position:I

    iput v0, p0, Ljava/util/EnumMap$EnumMapIterator;->prePosition:I

    iget-object v0, p0, Ljava/util/EnumMap$EnumMapIterator;->type:Ljava/util/MapEntry$Type;

    new-instance v1, Ljava/util/MapEntry;

    iget-object v2, p0, Ljava/util/EnumMap$EnumMapIterator;->enumMap:Ljava/util/EnumMap;

    iget-object v2, v2, Ljava/util/EnumMap;->keys:[Ljava/lang/Enum;

    iget v3, p0, Ljava/util/EnumMap$EnumMapIterator;->prePosition:I

    aget-object v2, v2, v3

    iget-object v3, p0, Ljava/util/EnumMap$EnumMapIterator;->enumMap:Ljava/util/EnumMap;

    iget-object v3, v3, Ljava/util/EnumMap;->values:[Ljava/lang/Object;

    iget v4, p0, Ljava/util/EnumMap$EnumMapIterator;->prePosition:I

    aget-object v3, v3, v4

    invoke-direct {v1, v2, v3}, Ljava/util/MapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/MapEntry$Type;->get(Ljava/util/MapEntry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 3

    invoke-direct {p0}, Ljava/util/EnumMap$EnumMapIterator;->checkStatus()V

    iget-object v0, p0, Ljava/util/EnumMap$EnumMapIterator;->enumMap:Ljava/util/EnumMap;

    iget-object v0, v0, Ljava/util/EnumMap;->hasMapping:[Z

    iget v1, p0, Ljava/util/EnumMap$EnumMapIterator;->prePosition:I

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/util/EnumMap$EnumMapIterator;->enumMap:Ljava/util/EnumMap;

    iget-object v1, p0, Ljava/util/EnumMap$EnumMapIterator;->enumMap:Ljava/util/EnumMap;

    iget-object v1, v1, Ljava/util/EnumMap;->keys:[Ljava/lang/Enum;

    iget v2, p0, Ljava/util/EnumMap$EnumMapIterator;->prePosition:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/EnumMap$EnumMapIterator;->prePosition:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const/4 v0, -0x1

    iget v1, p0, Ljava/util/EnumMap$EnumMapIterator;->prePosition:I

    if-ne v0, v1, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/util/EnumMap$EnumMapIterator;->type:Ljava/util/MapEntry$Type;

    new-instance v1, Ljava/util/MapEntry;

    iget-object v2, p0, Ljava/util/EnumMap$EnumMapIterator;->enumMap:Ljava/util/EnumMap;

    iget-object v2, v2, Ljava/util/EnumMap;->keys:[Ljava/lang/Enum;

    iget v3, p0, Ljava/util/EnumMap$EnumMapIterator;->prePosition:I

    aget-object v2, v2, v3

    iget-object v3, p0, Ljava/util/EnumMap$EnumMapIterator;->enumMap:Ljava/util/EnumMap;

    iget-object v3, v3, Ljava/util/EnumMap;->values:[Ljava/lang/Object;

    iget v4, p0, Ljava/util/EnumMap$EnumMapIterator;->prePosition:I

    aget-object v3, v3, v4

    invoke-direct {v1, v2, v3}, Ljava/util/MapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/MapEntry$Type;->get(Ljava/util/MapEntry;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
