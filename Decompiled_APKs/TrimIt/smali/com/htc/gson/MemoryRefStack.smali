.class final Lcom/htc/gson/MemoryRefStack;
.super Ljava/lang/Object;
.source "MemoryRefStack.java"


# instance fields
.field private final stack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/htc/gson/ObjectTypePair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/htc/gson/MemoryRefStack;->stack:Ljava/util/Stack;

    return-void
.end method


# virtual methods
.method public contains(Lcom/htc/gson/ObjectTypePair;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v2, 0x0

    .line 77
    if-nez p1, :cond_1

    .line 87
    :cond_0
    :goto_0
    return v2

    .line 81
    :cond_1
    iget-object v3, p0, Lcom/htc/gson/MemoryRefStack;->stack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/gson/ObjectTypePair;

    .line 82
    .local v1, stackObject:Lcom/htc/gson/ObjectTypePair;
    invoke-virtual {v1}, Lcom/htc/gson/ObjectTypePair;->getObject()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Lcom/htc/gson/ObjectTypePair;->getObject()Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_2

    invoke-virtual {v1}, Lcom/htc/gson/ObjectTypePair;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-virtual {p1}, Lcom/htc/gson/ObjectTypePair;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 84
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/gson/MemoryRefStack;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public peek()Lcom/htc/gson/ObjectTypePair;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/gson/MemoryRefStack;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/gson/ObjectTypePair;

    return-object v0
.end method

.method public pop()Lcom/htc/gson/ObjectTypePair;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/gson/MemoryRefStack;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/gson/ObjectTypePair;

    return-object v0
.end method

.method public push(Lcom/htc/gson/ObjectTypePair;)Lcom/htc/gson/ObjectTypePair;
    .locals 1
    .parameter "obj"

    .prologue
    .line 40
    invoke-static {p1}, Lcom/htc/gson/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 42
    iget-object v0, p0, Lcom/htc/gson/MemoryRefStack;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/gson/ObjectTypePair;

    return-object v0
.end method
