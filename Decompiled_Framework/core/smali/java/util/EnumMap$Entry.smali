.class Ljava/util/EnumMap$Entry;
.super Ljava/util/MapEntry;
.source "EnumMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/EnumMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<KT:",
        "Ljava/lang/Enum",
        "<TKT;>;VT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/MapEntry",
        "<TKT;TVT;>;"
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

.field private final ordinal:I


# direct methods
.method constructor <init>(Ljava/lang/Enum;Ljava/lang/Object;Ljava/util/EnumMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKT;TVT;",
            "Ljava/util/EnumMap",
            "<TKT;TVT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/util/MapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p3, p0, Ljava/util/EnumMap$Entry;->enumMap:Ljava/util/EnumMap;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Ljava/util/EnumMap$Entry;->ordinal:I

    return-void
.end method

.method private checkEntryStatus()V
    .locals 2

    iget-object v0, p0, Ljava/util/EnumMap$Entry;->enumMap:Ljava/util/EnumMap;

    iget-object v0, v0, Ljava/util/EnumMap;->hasMapping:[Z

    iget v1, p0, Ljava/util/EnumMap$Entry;->ordinal:I

    aget-boolean v0, v0, v1

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v5, 0x0

    iget-object v4, p0, Ljava/util/EnumMap$Entry;->enumMap:Ljava/util/EnumMap;

    iget-object v4, v4, Ljava/util/EnumMap;->hasMapping:[Z

    iget v6, p0, Ljava/util/EnumMap$Entry;->ordinal:I

    aget-boolean v4, v4, v6

    if-nez v4, :cond_0

    :goto_0
    return v5

    :cond_0
    const/4 v2, 0x0

    instance-of v4, p1, Ljava/util/Map$Entry;

    if-eqz v4, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iget-object v4, p0, Ljava/util/MapEntry;->key:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Enum;

    invoke-virtual {v4, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Ljava/util/EnumMap$Entry;->enumMap:Ljava/util/EnumMap;

    iget-object v4, v4, Ljava/util/EnumMap;->values:[Ljava/lang/Object;

    iget v6, p0, Ljava/util/EnumMap$Entry;->ordinal:I

    aget-object v4, v4, v6

    if-nez v4, :cond_3

    if-nez v3, :cond_2

    const/4 v2, 0x1

    :cond_1
    :goto_1
    move v5, v2

    goto :goto_0

    :cond_2
    move v2, v5

    goto :goto_1

    :cond_3
    iget-object v4, p0, Ljava/util/EnumMap$Entry;->enumMap:Ljava/util/EnumMap;

    iget-object v4, v4, Ljava/util/EnumMap;->values:[Ljava/lang/Object;

    iget v5, p0, Ljava/util/EnumMap$Entry;->ordinal:I

    aget-object v4, v4, v5

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1
.end method

.method public getKey()Ljava/lang/Enum;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TKT;"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/EnumMap$Entry;->checkEntryStatus()V

    iget-object v0, p0, Ljava/util/EnumMap$Entry;->enumMap:Ljava/util/EnumMap;

    iget-object v0, v0, Ljava/util/EnumMap;->keys:[Ljava/lang/Enum;

    iget v1, p0, Ljava/util/EnumMap$Entry;->ordinal:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public bridge synthetic getKey()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljava/util/EnumMap$Entry;->getKey()Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TVT;"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/EnumMap$Entry;->checkEntryStatus()V

    iget-object v0, p0, Ljava/util/EnumMap$Entry;->enumMap:Ljava/util/EnumMap;

    iget-object v0, v0, Ljava/util/EnumMap;->values:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/EnumMap$Entry;->ordinal:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Ljava/util/EnumMap$Entry;->enumMap:Ljava/util/EnumMap;

    iget-object v0, v0, Ljava/util/EnumMap;->keys:[Ljava/lang/Enum;

    iget v2, p0, Ljava/util/EnumMap$Entry;->ordinal:I

    aget-object v0, v0, v2

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Ljava/util/EnumMap$Entry;->enumMap:Ljava/util/EnumMap;

    iget-object v2, v2, Ljava/util/EnumMap;->values:[Ljava/lang/Object;

    iget v3, p0, Ljava/util/EnumMap$Entry;->ordinal:I

    aget-object v2, v2, v3

    if-nez v2, :cond_1

    :goto_1
    xor-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Ljava/util/EnumMap$Entry;->enumMap:Ljava/util/EnumMap;

    iget-object v0, v0, Ljava/util/EnumMap;->keys:[Ljava/lang/Enum;

    iget v2, p0, Ljava/util/EnumMap$Entry;->ordinal:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Ljava/util/EnumMap$Entry;->enumMap:Ljava/util/EnumMap;

    iget-object v1, v1, Ljava/util/EnumMap;->values:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/EnumMap$Entry;->ordinal:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVT;)TVT;"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/EnumMap$Entry;->checkEntryStatus()V

    iget-object v0, p0, Ljava/util/EnumMap$Entry;->enumMap:Ljava/util/EnumMap;

    iget-object v1, p0, Ljava/util/EnumMap$Entry;->enumMap:Ljava/util/EnumMap;

    iget-object v1, v1, Ljava/util/EnumMap;->keys:[Ljava/lang/Enum;

    iget v2, p0, Ljava/util/EnumMap$Entry;->ordinal:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1, p1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/util/EnumMap$Entry;->enumMap:Ljava/util/EnumMap;

    iget-object v1, v1, Ljava/util/EnumMap;->keys:[Ljava/lang/Enum;

    iget v2, p0, Ljava/util/EnumMap$Entry;->ordinal:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/util/EnumMap$Entry;->enumMap:Ljava/util/EnumMap;

    iget-object v1, v1, Ljava/util/EnumMap;->values:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/EnumMap$Entry;->ordinal:I

    aget-object v1, v1, v2

    if-nez v1, :cond_0

    const-string v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    iget-object v1, p0, Ljava/util/EnumMap$Entry;->enumMap:Ljava/util/EnumMap;

    iget-object v1, v1, Ljava/util/EnumMap;->values:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/EnumMap$Entry;->ordinal:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
