.class final Lcom/htc/gson/TypeInfoCollection;
.super Ljava/lang/Object;
.source "TypeInfoCollection.java"


# instance fields
.field private final collectionType:Ljava/lang/reflect/ParameterizedType;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 3
    .parameter "collectionType"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    instance-of v1, p1, Ljava/lang/reflect/ParameterizedType;

    if-nez v1, :cond_0

    .line 36
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Collection objects need to be parameterized unless you use a custom serializer. Use the com.htc.gson.reflect.TypeToken to extract the ParameterizedType."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 40
    :cond_0
    new-instance v0, Lcom/htc/gson/TypeInfo;

    invoke-direct {v0, p1}, Lcom/htc/gson/TypeInfo;-><init>(Ljava/lang/reflect/Type;)V

    .line 41
    .local v0, rawType:Lcom/htc/gson/TypeInfo;
    const-class v1, Ljava/util/Collection;

    invoke-virtual {v0}, Lcom/htc/gson/TypeInfo;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    invoke-static {v1}, Lcom/htc/gson/Preconditions;->checkArgument(Z)V

    .line 42
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .end local p1
    iput-object p1, p0, Lcom/htc/gson/TypeInfoCollection;->collectionType:Ljava/lang/reflect/ParameterizedType;

    .line 43
    return-void
.end method


# virtual methods
.method public getElementType()Ljava/lang/reflect/Type;
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/htc/gson/TypeInfoCollection;->collectionType:Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method
