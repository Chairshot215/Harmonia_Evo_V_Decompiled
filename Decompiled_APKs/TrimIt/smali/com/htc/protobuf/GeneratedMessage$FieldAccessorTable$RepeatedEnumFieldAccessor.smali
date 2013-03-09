.class final Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedEnumFieldAccessor;
.super Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedFieldAccessor;
.source "GeneratedMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RepeatedEnumFieldAccessor"
.end annotation


# instance fields
.field private final getValueDescriptorMethod:Ljava/lang/reflect/Method;

.field private final valueOfMethod:Ljava/lang/reflect/Method;


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
    const/4 v4, 0x0

    .line 1201
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedFieldAccessor;-><init>(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 1203
    iget-object v0, p0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedEnumFieldAccessor;->type:Ljava/lang/Class;

    const-string v1, "valueOf"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;

    aput-object v3, v2, v4

    #calls: Lcom/htc/protobuf/GeneratedMessage;->getMethodOrDie(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    invoke-static {v0, v1, v2}, Lcom/htc/protobuf/GeneratedMessage;->access$1300(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedEnumFieldAccessor;->valueOfMethod:Ljava/lang/reflect/Method;

    .line 1205
    iget-object v0, p0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedEnumFieldAccessor;->type:Ljava/lang/Class;

    const-string v1, "getValueDescriptor"

    new-array v2, v4, [Ljava/lang/Class;

    #calls: Lcom/htc/protobuf/GeneratedMessage;->getMethodOrDie(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    invoke-static {v0, v1, v2}, Lcom/htc/protobuf/GeneratedMessage;->access$1300(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedEnumFieldAccessor;->getValueDescriptorMethod:Ljava/lang/reflect/Method;

    .line 1207
    return-void
.end method


# virtual methods
.method public addRepeated(Lcom/htc/protobuf/GeneratedMessage$Builder;Ljava/lang/Object;)V
    .locals 4
    .parameter "builder"
    .parameter "value"

    .prologue
    .line 1235
    iget-object v0, p0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedEnumFieldAccessor;->valueOfMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    #calls: Lcom/htc/protobuf/GeneratedMessage;->invokeOrDie(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v0, v1, v2}, Lcom/htc/protobuf/GeneratedMessage;->access$1400(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, p1, v0}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedFieldAccessor;->addRepeated(Lcom/htc/protobuf/GeneratedMessage$Builder;Ljava/lang/Object;)V

    .line 1236
    return-void
.end method

.method public get(Lcom/htc/protobuf/GeneratedMessage;)Ljava/lang/Object;
    .locals 5
    .parameter "message"

    .prologue
    .line 1215
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1216
    .local v2, newList:Ljava/util/List;
    invoke-super {p0, p1}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedFieldAccessor;->get(Lcom/htc/protobuf/GeneratedMessage;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1217
    .local v0, element:Ljava/lang/Object;
    iget-object v3, p0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedEnumFieldAccessor;->getValueDescriptorMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    #calls: Lcom/htc/protobuf/GeneratedMessage;->invokeOrDie(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v3, v0, v4}, Lcom/htc/protobuf/GeneratedMessage;->access$1400(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1219
    .end local v0           #element:Ljava/lang/Object;
    :cond_0
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method public getRepeated(Lcom/htc/protobuf/GeneratedMessage;I)Ljava/lang/Object;
    .locals 3
    .parameter "message"
    .parameter "index"

    .prologue
    .line 1224
    iget-object v0, p0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedEnumFieldAccessor;->getValueDescriptorMethod:Ljava/lang/reflect/Method;

    invoke-super {p0, p1, p2}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedFieldAccessor;->getRepeated(Lcom/htc/protobuf/GeneratedMessage;I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    #calls: Lcom/htc/protobuf/GeneratedMessage;->invokeOrDie(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v0, v1, v2}, Lcom/htc/protobuf/GeneratedMessage;->access$1400(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setRepeated(Lcom/htc/protobuf/GeneratedMessage$Builder;ILjava/lang/Object;)V
    .locals 4
    .parameter "builder"
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1230
    iget-object v0, p0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedEnumFieldAccessor;->valueOfMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    #calls: Lcom/htc/protobuf/GeneratedMessage;->invokeOrDie(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v0, v1, v2}, Lcom/htc/protobuf/GeneratedMessage;->access$1400(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, p1, p2, v0}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedFieldAccessor;->setRepeated(Lcom/htc/protobuf/GeneratedMessage$Builder;ILjava/lang/Object;)V

    .line 1232
    return-void
.end method
