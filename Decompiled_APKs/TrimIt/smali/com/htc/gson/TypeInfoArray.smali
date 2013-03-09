.class final Lcom/htc/gson/TypeInfoArray;
.super Lcom/htc/gson/TypeInfo;
.source "TypeInfoArray.java"


# instance fields
.field private final componentRawType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final secondLevel:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 3
    .parameter "type"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/htc/gson/TypeInfo;-><init>(Ljava/lang/reflect/Type;)V

    .line 36
    iget-object v0, p0, Lcom/htc/gson/TypeInfoArray;->rawClass:Ljava/lang/Class;

    .line 37
    .local v0, rootComponentType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 40
    :cond_0
    iput-object v0, p0, Lcom/htc/gson/TypeInfoArray;->componentRawType:Ljava/lang/Class;

    .line 41
    iget-object v1, p0, Lcom/htc/gson/TypeInfoArray;->actualType:Ljava/lang/reflect/Type;

    iget-object v2, p0, Lcom/htc/gson/TypeInfoArray;->rawClass:Ljava/lang/Class;

    invoke-static {v1, v2}, Lcom/htc/gson/TypeInfoArray;->extractSecondLevelType(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/gson/TypeInfoArray;->secondLevel:Ljava/lang/reflect/Type;

    .line 42
    return-void
.end method

.method private static extractSecondLevelType(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 2
    .parameter "actualType"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, rawClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    instance-of v1, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v1, :cond_0

    move-object v0, p0

    .line 46
    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    .line 47
    .local v0, castedType:Ljava/lang/reflect/GenericArrayType;
    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 49
    .end local v0           #castedType:Ljava/lang/reflect/GenericArrayType;
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public getComponentRawType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/htc/gson/TypeInfoArray;->componentRawType:Ljava/lang/Class;

    return-object v0
.end method

.method public getSecondLevelType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/htc/gson/TypeInfoArray;->secondLevel:Ljava/lang/reflect/Type;

    return-object v0
.end method
