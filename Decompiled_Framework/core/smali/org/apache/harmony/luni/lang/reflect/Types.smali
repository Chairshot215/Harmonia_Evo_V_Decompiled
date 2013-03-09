.class public Lorg/apache/harmony/luni/lang/reflect/Types;
.super Ljava/lang/Object;
.source "Types.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClonedTypeArray(Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;)[Ljava/lang/reflect/Type;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->getResolvedTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public static getType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1

    instance-of v0, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForType;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/apache/harmony/luni/lang/reflect/ImplForType;

    invoke-virtual {p0}, Lorg/apache/harmony/luni/lang/reflect/ImplForType;->getResolvedType()Ljava/lang/reflect/Type;

    move-result-object p0

    :cond_0
    return-object p0
.end method
