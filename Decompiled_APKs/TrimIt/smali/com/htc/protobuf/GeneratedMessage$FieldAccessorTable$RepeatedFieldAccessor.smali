.class Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedFieldAccessor;
.super Ljava/lang/Object;
.source "GeneratedMessage.java"

# interfaces
.implements Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RepeatedFieldAccessor"
.end annotation


# instance fields
.field protected final addRepeatedMethod:Ljava/lang/reflect/Method;

.field protected final clearMethod:Ljava/lang/reflect/Method;

.field protected final getCountMethod:Ljava/lang/reflect/Method;

.field protected final getMethod:Ljava/lang/reflect/Method;

.field protected final getRepeatedMethod:Ljava/lang/reflect/Method;

.field protected final setRepeatedMethod:Ljava/lang/reflect/Method;

.field protected final type:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 5
    .parameter "descriptor"
    .parameter "camelCaseName"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/htc/protobuf/GeneratedMessage;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/htc/protobuf/GeneratedMessage$Builder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, messageClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/htc/protobuf/GeneratedMessage;>;"
    .local p4, builderClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/htc/protobuf/GeneratedMessage$Builder;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "List"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Class;

    #calls: Lcom/htc/protobuf/GeneratedMessage;->getMethodOrDie(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    invoke-static {p3, v0, v1}, Lcom/htc/protobuf/GeneratedMessage;->access$1300(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedFieldAccessor;->getMethod:Ljava/lang/reflect/Method;

    .line 1104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v3

    #calls: Lcom/htc/protobuf/GeneratedMessage;->getMethodOrDie(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    invoke-static {p3, v0, v1}, Lcom/htc/protobuf/GeneratedMessage;->access$1300(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedFieldAccessor;->getRepeatedMethod:Ljava/lang/reflect/Method;

    .line 1106
    iget-object v0, p0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedFieldAccessor;->getRepeatedMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedFieldAccessor;->type:Ljava/lang/Class;

    .line 1107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedFieldAccessor;->type:Ljava/lang/Class;

    aput-object v2, v1, v4

    #calls: Lcom/htc/protobuf/GeneratedMessage;->getMethodOrDie(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    invoke-static {p4, v0, v1}, Lcom/htc/protobuf/GeneratedMessage;->access$1300(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedFieldAccessor;->setRepeatedMethod:Ljava/lang/reflect/Method;

    .line 1110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Class;

    iget-object v2, p0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedFieldAccessor;->type:Ljava/lang/Class;

    aput-object v2, v1, v3

    #calls: Lcom/htc/protobuf/GeneratedMessage;->getMethodOrDie(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    invoke-static {p4, v0, v1}, Lcom/htc/protobuf/GeneratedMessage;->access$1300(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedFieldAccessor;->addRepeatedMethod:Ljava/lang/reflect/Method;

    .line 1112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Count"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Class;

    #calls: Lcom/htc/protobuf/GeneratedMessage;->getMethodOrDie(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    invoke-static {p3, v0, v1}, Lcom/htc/protobuf/GeneratedMessage;->access$1300(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedFieldAccessor;->getCountMethod:Ljava/lang/reflect/Method;

    .line 1115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clear"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Class;

    #calls: Lcom/htc/protobuf/GeneratedMessage;->getMethodOrDie(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    invoke-static {p4, v0, v1}, Lcom/htc/protobuf/GeneratedMessage;->access$1300(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedFieldAccessor;->clearMethod:Ljava/lang/reflect/Method;

    .line 1116
    return-void
.end method


# virtual methods
.method public addRepeated(Lcom/htc/protobuf/GeneratedMessage$Builder;Ljava/lang/Object;)V
    .locals 3
    .parameter "builder"
    .parameter "value"

    .prologue
    .line 1148
    iget-object v0, p0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedFieldAccessor;->addRepeatedMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    #calls: Lcom/htc/protobuf/GeneratedMessage;->invokeOrDie(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v0, p1, v1}, Lcom/htc/protobuf/GeneratedMessage;->access$1400(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1149
    return-void
.end method

.method public clear(Lcom/htc/protobuf/GeneratedMessage$Builder;)V
    .locals 2
    .parameter "builder"

    .prologue
    .line 1158
    iget-object v0, p0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedFieldAccessor;->clearMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    #calls: Lcom/htc/protobuf/GeneratedMessage;->invokeOrDie(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v0, p1, v1}, Lcom/htc/protobuf/GeneratedMessage;->access$1400(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1159
    return-void
.end method

.method public get(Lcom/htc/protobuf/GeneratedMessage;)Ljava/lang/Object;
    .locals 2
    .parameter "message"

    .prologue
    .line 1127
    iget-object v0, p0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedFieldAccessor;->getMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    #calls: Lcom/htc/protobuf/GeneratedMessage;->invokeOrDie(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v0, p1, v1}, Lcom/htc/protobuf/GeneratedMessage;->access$1400(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getRepeated(Lcom/htc/protobuf/GeneratedMessage;I)Ljava/lang/Object;
    .locals 4
    .parameter "message"
    .parameter "index"

    .prologue
    .line 1141
    iget-object v0, p0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedFieldAccessor;->getRepeatedMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    #calls: Lcom/htc/protobuf/GeneratedMessage;->invokeOrDie(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v0, p1, v1}, Lcom/htc/protobuf/GeneratedMessage;->access$1400(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getRepeatedCount(Lcom/htc/protobuf/GeneratedMessage;)I
    .locals 2
    .parameter "message"

    .prologue
    .line 1155
    iget-object v0, p0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedFieldAccessor;->getCountMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    #calls: Lcom/htc/protobuf/GeneratedMessage;->invokeOrDie(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v0, p1, v1}, Lcom/htc/protobuf/GeneratedMessage;->access$1400(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public has(Lcom/htc/protobuf/GeneratedMessage;)Z
    .locals 2
    .parameter "message"

    .prologue
    .line 1151
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "hasField() called on a singular field."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public newBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 2

    .prologue
    .line 1161
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "newBuilderForField() called on a non-Message type."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(Lcom/htc/protobuf/GeneratedMessage$Builder;Ljava/lang/Object;)V
    .locals 3
    .parameter "builder"
    .parameter "value"

    .prologue
    .line 1134
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedFieldAccessor;->clear(Lcom/htc/protobuf/GeneratedMessage$Builder;)V

    .line 1135
    check-cast p2, Ljava/util/List;

    .end local p2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1136
    .local v0, element:Ljava/lang/Object;
    invoke-virtual {p0, p1, v0}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedFieldAccessor;->addRepeated(Lcom/htc/protobuf/GeneratedMessage$Builder;Ljava/lang/Object;)V

    goto :goto_0

    .line 1138
    .end local v0           #element:Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public setRepeated(Lcom/htc/protobuf/GeneratedMessage$Builder;ILjava/lang/Object;)V
    .locals 4
    .parameter "builder"
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedFieldAccessor;->setRepeatedMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    #calls: Lcom/htc/protobuf/GeneratedMessage;->invokeOrDie(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v0, p1, v1}, Lcom/htc/protobuf/GeneratedMessage;->access$1400(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1146
    return-void
.end method
