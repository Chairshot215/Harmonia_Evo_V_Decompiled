.class final Lcom/htc/gson/ParameterizedTypeImpl;
.super Ljava/lang/Object;
.source "ParameterizedTypeImpl.java"

# interfaces
.implements Ljava/lang/reflect/ParameterizedType;


# instance fields
.field private final actualTypeArguments:[Ljava/lang/reflect/Type;

.field private final owner:Ljava/lang/reflect/Type;

.field private final rawType:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V
    .locals 0
    .parameter "rawType"
    .parameter "actualTypeArguments"
    .parameter "owner"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/htc/gson/ParameterizedTypeImpl;->rawType:Ljava/lang/reflect/Type;

    .line 53
    iput-object p2, p0, Lcom/htc/gson/ParameterizedTypeImpl;->actualTypeArguments:[Ljava/lang/reflect/Type;

    .line 54
    iput-object p3, p0, Lcom/htc/gson/ParameterizedTypeImpl;->owner:Ljava/lang/reflect/Type;

    .line 55
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "o"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 71
    instance-of v5, p1, Ljava/lang/reflect/ParameterizedType;

    if-nez v5, :cond_1

    move v3, v4

    .line 82
    :cond_0
    :goto_0
    return v3

    :cond_1
    move-object v0, p1

    .line 75
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 76
    .local v0, that:Ljava/lang/reflect/ParameterizedType;
    if-eq p0, v0, :cond_0

    .line 79
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 80
    .local v1, thatOwner:Ljava/lang/reflect/Type;
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 82
    .local v2, thatRawType:Ljava/lang/reflect/Type;
    iget-object v5, p0, Lcom/htc/gson/ParameterizedTypeImpl;->owner:Ljava/lang/reflect/Type;

    if-nez v5, :cond_3

    if-nez v1, :cond_2

    :goto_1
    iget-object v5, p0, Lcom/htc/gson/ParameterizedTypeImpl;->rawType:Ljava/lang/reflect/Type;

    if-nez v5, :cond_4

    if-nez v2, :cond_2

    :goto_2
    iget-object v5, p0, Lcom/htc/gson/ParameterizedTypeImpl;->actualTypeArguments:[Ljava/lang/reflect/Type;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_2
    move v3, v4

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/htc/gson/ParameterizedTypeImpl;->owner:Ljava/lang/reflect/Type;

    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/htc/gson/ParameterizedTypeImpl;->rawType:Ljava/lang/reflect/Type;

    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2
.end method

.method public getActualTypeArguments()[Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/htc/gson/ParameterizedTypeImpl;->actualTypeArguments:[Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getOwnerType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/gson/ParameterizedTypeImpl;->owner:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getRawType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/htc/gson/ParameterizedTypeImpl;->rawType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 90
    iget-object v0, p0, Lcom/htc/gson/ParameterizedTypeImpl;->actualTypeArguments:[Ljava/lang/reflect/Type;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    iget-object v0, p0, Lcom/htc/gson/ParameterizedTypeImpl;->owner:Ljava/lang/reflect/Type;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    xor-int/2addr v0, v2

    iget-object v2, p0, Lcom/htc/gson/ParameterizedTypeImpl;->rawType:Ljava/lang/reflect/Type;

    if-nez v2, :cond_1

    :goto_1
    xor-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/gson/ParameterizedTypeImpl;->owner:Ljava/lang/reflect/Type;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/htc/gson/ParameterizedTypeImpl;->rawType:Ljava/lang/reflect/Type;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1
.end method
