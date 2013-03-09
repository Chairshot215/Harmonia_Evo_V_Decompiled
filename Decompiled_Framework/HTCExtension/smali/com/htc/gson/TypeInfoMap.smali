.class final Lcom/htc/gson/TypeInfoMap;
.super Ljava/lang/Object;
.source "TypeInfoMap.java"


# instance fields
.field private final keyType:Ljava/lang/reflect/Type;

.field private final valueType:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 4

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    instance-of v2, p1, Ljava/lang/Class;

    if-eqz v2, :cond_0

    const-class v3, Ljava/util/Properties;

    move-object v2, p1

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-class v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/gson/TypeInfoMap;->keyType:Ljava/lang/reflect/Type;

    const-class v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/gson/TypeInfoMap;->valueType:Ljava/lang/reflect/Type;

    :goto_0
    return-void

    :cond_0
    instance-of v2, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_1

    new-instance v1, Lcom/htc/gson/TypeInfo;

    invoke-direct {v1, p1}, Lcom/htc/gson/TypeInfo;-><init>(Ljava/lang/reflect/Type;)V

    const-class v2, Ljava/util/Map;

    invoke-virtual {v1}, Lcom/htc/gson/TypeInfo;->getRawClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    invoke-static {v2}, Lcom/htc/gson/Preconditions;->checkArgument(Z)V

    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/htc/gson/TypeInfoMap;->keyType:Ljava/lang/reflect/Type;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/htc/gson/TypeInfoMap;->valueType:Ljava/lang/reflect/Type;

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Map objects need to be parameterized unless you use a custom serializer. Use the com.htc.gson.reflect.TypeToken to extract the ParameterizedType."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public getKeyType()Ljava/lang/reflect/Type;
    .locals 1

    iget-object v0, p0, Lcom/htc/gson/TypeInfoMap;->keyType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getValueType()Ljava/lang/reflect/Type;
    .locals 1

    iget-object v0, p0, Lcom/htc/gson/TypeInfoMap;->valueType:Ljava/lang/reflect/Type;

    return-object v0
.end method
