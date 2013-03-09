.class public final Lorg/apache/harmony/luni/lang/reflect/ImplForWildcard;
.super Ljava/lang/Object;
.source "ImplForWildcard.java"

# interfaces
.implements Ljava/lang/reflect/WildcardType;


# instance fields
.field private final extendsBound:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

.field private final superBound:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;


# direct methods
.method public constructor <init>(Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForWildcard;->extendsBound:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    iput-object p2, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForWildcard;->superBound:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    instance-of v2, p1, Ljava/lang/reflect/WildcardType;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/ImplForWildcard;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/ImplForWildcard;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getLowerBounds()[Ljava/lang/reflect/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/TypeNotPresentException;,
            Ljava/lang/reflect/MalformedParameterizedTypeException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForWildcard;->superBound:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->getResolvedTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getUpperBounds()[Ljava/lang/reflect/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/TypeNotPresentException;,
            Ljava/lang/reflect/MalformedParameterizedTypeException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForWildcard;->extendsBound:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->getResolvedTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/ImplForWildcard;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/ImplForWildcard;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "?"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForWildcard;->extendsBound:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    invoke-virtual {v1}, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->length()I

    move-result v1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForWildcard;->extendsBound:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    invoke-virtual {v1}, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->getResolvedTypes()[Ljava/lang/reflect/Type;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const-class v2, Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForWildcard;->extendsBound:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    invoke-virtual {v1}, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->length()I

    move-result v1

    if-le v1, v3, :cond_3

    :cond_1
    const-string v1, " extends "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForWildcard;->extendsBound:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_3
    iget-object v1, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForWildcard;->superBound:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    invoke-virtual {v1}, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->length()I

    move-result v1

    if-lez v1, :cond_2

    const-string v1, " super "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForWildcard;->superBound:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
