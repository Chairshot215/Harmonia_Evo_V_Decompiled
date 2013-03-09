.class final Lcom/google/gson/TypeInfoMap;
.super Ljava/lang/Object;
.source "TypeInfoMap.java"


# instance fields
.field private final keyType:Ljava/lang/reflect/Type;

.field private final valueType:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 4
    .parameter "mapType"

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    instance-of v2, p1, Ljava/lang/Class;

    if-eqz v2, :cond_0

    const-class v3, Ljava/util/Properties;

    move-object v2, p1

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 36
    const-class v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/google/gson/TypeInfoMap;->keyType:Ljava/lang/reflect/Type;

    .line 37
    const-class v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/google/gson/TypeInfoMap;->valueType:Ljava/lang/reflect/Type;

    .line 49
    :goto_0
    return-void

    .line 38
    :cond_0
    instance-of v2, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_1

    .line 39
    new-instance v1, Lcom/google/gson/TypeInfo;

    invoke-direct {v1, p1}, Lcom/google/gson/TypeInfo;-><init>(Ljava/lang/reflect/Type;)V

    .line 40
    .local v1, rawType:Lcom/google/gson/TypeInfo;
    const-class v2, Ljava/util/Map;

    invoke-virtual {v1}, Lcom/google/gson/TypeInfo;->getRawClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    invoke-static {v2}, Lcom/google/gson/Preconditions;->checkArgument(Z)V

    move-object v0, p1

    .line 41
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 42
    .local v0, paramType:Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/google/gson/TypeInfoMap;->keyType:Ljava/lang/reflect/Type;

    .line 43
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/google/gson/TypeInfoMap;->valueType:Ljava/lang/reflect/Type;

    goto :goto_0

    .line 45
    .end local v0           #paramType:Ljava/lang/reflect/ParameterizedType;
    .end local v1           #rawType:Lcom/google/gson/TypeInfo;
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Map objects need to be parameterized unless you use a custom serializer. Use the com.google.gson.reflect.TypeToken to extract the ParameterizedType."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public getKeyType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/gson/TypeInfoMap;->keyType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getValueType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/gson/TypeInfoMap;->valueType:Ljava/lang/reflect/Type;

    return-object v0
.end method
