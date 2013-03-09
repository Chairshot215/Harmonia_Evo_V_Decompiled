.class public final Lorg/apache/harmony/luni/lang/reflect/ImplForArray;
.super Ljava/lang/Object;
.source "ImplForArray.java"

# interfaces
.implements Ljava/lang/reflect/GenericArrayType;


# instance fields
.field private final componentType:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForArray;->componentType:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public getGenericComponentType()Ljava/lang/reflect/Type;
    .locals 2

    :try_start_0
    iget-object v1, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForArray;->componentType:Ljava/lang/reflect/Type;

    check-cast v1, Lorg/apache/harmony/luni/lang/reflect/ImplForType;

    invoke-virtual {v1}, Lorg/apache/harmony/luni/lang/reflect/ImplForType;->getResolvedType()Ljava/lang/reflect/Type;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForArray;->componentType:Ljava/lang/reflect/Type;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/harmony/luni/lang/reflect/ImplForArray;->componentType:Ljava/lang/reflect/Type;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
