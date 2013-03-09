.class final Lcom/htc/gson/GenericArrayTypeImpl;
.super Ljava/lang/Object;
.source "GenericArrayTypeImpl.java"

# interfaces
.implements Ljava/lang/reflect/GenericArrayType;


# instance fields
.field private final genericComponentType:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 0
    .parameter "genericComponentType"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/htc/gson/GenericArrayTypeImpl;->genericComponentType:Ljava/lang/reflect/Type;

    .line 51
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v2, 0x0

    .line 59
    instance-of v3, p1, Ljava/lang/reflect/GenericArrayType;

    if-nez v3, :cond_1

    .line 64
    :cond_0
    :goto_0
    return v2

    :cond_1
    move-object v0, p1

    .line 62
    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    .line 63
    .local v0, that:Ljava/lang/reflect/GenericArrayType;
    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 64
    .local v1, thatComponentType:Ljava/lang/reflect/Type;
    iget-object v3, p0, Lcom/htc/gson/GenericArrayTypeImpl;->genericComponentType:Ljava/lang/reflect/Type;

    if-nez v3, :cond_2

    if-nez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/htc/gson/GenericArrayTypeImpl;->genericComponentType:Ljava/lang/reflect/Type;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public getGenericComponentType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/gson/GenericArrayTypeImpl;->genericComponentType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/gson/GenericArrayTypeImpl;->genericComponentType:Ljava/lang/reflect/Type;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/gson/GenericArrayTypeImpl;->genericComponentType:Ljava/lang/reflect/Type;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method
