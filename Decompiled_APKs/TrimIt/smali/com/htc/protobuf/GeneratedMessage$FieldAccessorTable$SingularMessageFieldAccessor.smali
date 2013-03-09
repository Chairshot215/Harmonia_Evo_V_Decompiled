.class final Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$SingularMessageFieldAccessor;
.super Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$SingularFieldAccessor;
.source "GeneratedMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SingularMessageFieldAccessor"
.end annotation


# instance fields
.field private final newBuilderMethod:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 3
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
    .line 1247
    .local p3, messageClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/htc/protobuf/GeneratedMessage;>;"
    .local p4, builderClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/htc/protobuf/GeneratedMessage$Builder;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$SingularFieldAccessor;-><init>(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 1249
    iget-object v0, p0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$SingularMessageFieldAccessor;->type:Ljava/lang/Class;

    const-string v1, "newBuilder"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    #calls: Lcom/htc/protobuf/GeneratedMessage;->getMethodOrDie(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    invoke-static {v0, v1, v2}, Lcom/htc/protobuf/GeneratedMessage;->access$1300(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$SingularMessageFieldAccessor;->newBuilderMethod:Ljava/lang/reflect/Method;

    .line 1250
    return-void
.end method

.method private coerceType(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "value"

    .prologue
    .line 1255
    iget-object v0, p0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$SingularMessageFieldAccessor;->type:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1262
    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$SingularMessageFieldAccessor;->newBuilderMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    #calls: Lcom/htc/protobuf/GeneratedMessage;->invokeOrDie(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v0, v1, v2}, Lcom/htc/protobuf/GeneratedMessage;->access$1400(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Message$Builder;

    check-cast p1, Lcom/htc/protobuf/Message;

    .end local p1
    invoke-interface {v0, p1}, Lcom/htc/protobuf/Message$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/protobuf/Message$Builder;->build()Lcom/htc/protobuf/Message;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public newBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 3

    .prologue
    .line 1273
    iget-object v0, p0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$SingularMessageFieldAccessor;->newBuilderMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    #calls: Lcom/htc/protobuf/GeneratedMessage;->invokeOrDie(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v0, v1, v2}, Lcom/htc/protobuf/GeneratedMessage;->access$1400(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Message$Builder;

    return-object v0
.end method

.method public set(Lcom/htc/protobuf/GeneratedMessage$Builder;Ljava/lang/Object;)V
    .locals 1
    .parameter "builder"
    .parameter "value"

    .prologue
    .line 1269
    invoke-direct {p0, p2}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$SingularMessageFieldAccessor;->coerceType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, p1, v0}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable$SingularFieldAccessor;->set(Lcom/htc/protobuf/GeneratedMessage$Builder;Ljava/lang/Object;)V

    .line 1270
    return-void
.end method
