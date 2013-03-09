.class Lcom/google/gson/TypeInfo;
.super Ljava/lang/Object;
.source "TypeInfo.java"


# instance fields
.field protected final actualType:Ljava/lang/reflect/Type;

.field protected final rawClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 1
    .parameter "actualType"

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/google/gson/TypeInfo;->actualType:Ljava/lang/reflect/Type;

    .line 34
    invoke-static {p1}, Lcom/google/gson/TypeUtils;->toRawClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/TypeInfo;->rawClass:Ljava/lang/Class;

    .line 35
    return-void
.end method


# virtual methods
.method public final getActualType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/gson/TypeInfo;->actualType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public final getRawClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/gson/TypeInfo;->rawClass:Ljava/lang/Class;

    return-object v0
.end method

.method public final getWrappedClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/gson/TypeInfo;->rawClass:Ljava/lang/Class;

    invoke-static {v0}, Lcom/google/gson/Primitives;->wrap(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final isArray()Z
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/gson/TypeInfo;->rawClass:Ljava/lang/Class;

    invoke-static {v0}, Lcom/google/gson/TypeUtils;->isArray(Ljava/lang/reflect/Type;)Z

    move-result v0

    return v0
.end method

.method public final isCollectionOrArray()Z
    .locals 2

    .prologue
    .line 62
    const-class v0, Ljava/util/Collection;

    iget-object v1, p0, Lcom/google/gson/TypeInfo;->rawClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/gson/TypeInfo;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isEnum()Z
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/gson/TypeInfo;->rawClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    return v0
.end method

.method public final isPrimitive()Z
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/gson/TypeInfo;->rawClass:Ljava/lang/Class;

    invoke-static {v0}, Lcom/google/gson/Primitives;->wrap(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/gson/Primitives;->isWrapperType(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method
