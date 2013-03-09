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

    invoke-direct {p0, p1}, Lcom/htc/gson/TypeInfo;-><init>(Ljava/lang/reflect/Type;)V

    iget-object v0, p0, Lcom/htc/gson/TypeInfo;->rawClass:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/htc/gson/TypeInfoArray;->componentRawType:Ljava/lang/Class;

    iget-object v1, p0, Lcom/htc/gson/TypeInfo;->actualType:Ljava/lang/reflect/Type;

    iget-object v2, p0, Lcom/htc/gson/TypeInfo;->rawClass:Ljava/lang/Class;

    invoke-static {v1, v2}, Lcom/htc/gson/TypeInfoArray;->extractSecondLevelType(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/gson/TypeInfoArray;->secondLevel:Ljava/lang/reflect/Type;

    return-void
.end method

.method private static extractSecondLevelType(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    instance-of v1, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v1, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v1

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

    iget-object v0, p0, Lcom/htc/gson/TypeInfoArray;->componentRawType:Ljava/lang/Class;

    return-object v0
.end method

.method public getSecondLevelType()Ljava/lang/reflect/Type;
    .locals 1

    iget-object v0, p0, Lcom/htc/gson/TypeInfoArray;->secondLevel:Ljava/lang/reflect/Type;

    return-object v0
.end method
