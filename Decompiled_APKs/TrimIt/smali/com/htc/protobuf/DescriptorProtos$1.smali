.class final Lcom/htc/protobuf/DescriptorProtos$1;
.super Ljava/lang/Object;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/htc/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 8470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public assignDescriptors(Lcom/htc/protobuf/Descriptors$FileDescriptor;)Lcom/htc/protobuf/ExtensionRegistry;
    .locals 10
    .parameter "root"

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 8473
    invoke-static {p1}, Lcom/htc/protobuf/DescriptorProtos;->access$19702(Lcom/htc/protobuf/Descriptors$FileDescriptor;)Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 8474
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos;->access$002(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 8476
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->access$000()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "File"

    aput-object v3, v2, v5

    const-class v3, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet;

    const-class v4, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorSet$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos;->access$102(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 8482
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos;->access$602(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 8484
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->access$600()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Name"

    aput-object v3, v2, v5

    const-string v3, "Package"

    aput-object v3, v2, v6

    const-string v3, "Dependency"

    aput-object v3, v2, v7

    const-string v3, "MessageType"

    aput-object v3, v2, v8

    const-string v3, "EnumType"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Service"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Extension"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "Options"

    aput-object v4, v2, v3

    const-class v3, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    const-class v4, Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos;->access$702(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 8490
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos;->access$2202(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 8492
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->access$2200()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Name"

    aput-object v3, v2, v5

    const-string v3, "Field"

    aput-object v3, v2, v6

    const-string v3, "Extension"

    aput-object v3, v2, v7

    const-string v3, "NestedType"

    aput-object v3, v2, v8

    const-string v3, "EnumType"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "ExtensionRange"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Options"

    aput-object v4, v2, v3

    const-class v3, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    const-class v4, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos;->access$2302(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 8498
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->access$2200()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos;->access$2402(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 8500
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->access$2400()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "Start"

    aput-object v3, v2, v5

    const-string v3, "End"

    aput-object v3, v2, v6

    const-class v3, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    const-class v4, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos;->access$2502(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 8506
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos;->access$4502(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 8508
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->access$4500()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Name"

    aput-object v3, v2, v5

    const-string v3, "Number"

    aput-object v3, v2, v6

    const-string v3, "Label"

    aput-object v3, v2, v7

    const-string v3, "Type"

    aput-object v3, v2, v8

    const-string v3, "TypeName"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Extendee"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "DefaultValue"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "Options"

    aput-object v4, v2, v3

    const-class v3, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    const-class v4, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos;->access$4602(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 8514
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos;->access$6602(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 8516
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->access$6600()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "Name"

    aput-object v3, v2, v5

    const-string v3, "Value"

    aput-object v3, v2, v6

    const-string v3, "Options"

    aput-object v3, v2, v7

    const-class v3, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    const-class v4, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos;->access$6702(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 8522
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos;->access$7602(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 8524
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->access$7600()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "Name"

    aput-object v3, v2, v5

    const-string v3, "Number"

    aput-object v3, v2, v6

    const-string v3, "Options"

    aput-object v3, v2, v7

    const-class v3, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    const-class v4, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos;->access$7702(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 8530
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos;->access$8702(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 8532
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->access$8700()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "Name"

    aput-object v3, v2, v5

    const-string v3, "Method"

    aput-object v3, v2, v6

    const-string v3, "Options"

    aput-object v3, v2, v7

    const-class v3, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    const-class v4, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos;->access$8802(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 8538
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos;->access$9702(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 8540
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->access$9700()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "Name"

    aput-object v3, v2, v5

    const-string v3, "InputType"

    aput-object v3, v2, v6

    const-string v3, "OutputType"

    aput-object v3, v2, v7

    const-string v3, "Options"

    aput-object v3, v2, v8

    const-class v3, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    const-class v4, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos;->access$9802(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 8546
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos;->access$11002(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 8548
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->access$11000()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "JavaPackage"

    aput-object v3, v2, v5

    const-string v3, "JavaOuterClassname"

    aput-object v3, v2, v6

    const-string v3, "JavaMultipleFiles"

    aput-object v3, v2, v7

    const-string v3, "OptimizeFor"

    aput-object v3, v2, v8

    const-string v3, "UninterpretedOption"

    aput-object v3, v2, v9

    const-class v3, Lcom/htc/protobuf/DescriptorProtos$FileOptions;

    const-class v4, Lcom/htc/protobuf/DescriptorProtos$FileOptions$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos;->access$11102(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 8554
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos;->access$12402(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 8556
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->access$12400()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "MessageSetWireFormat"

    aput-object v3, v2, v5

    const-string v3, "NoStandardDescriptorAccessor"

    aput-object v3, v2, v6

    const-string v3, "UninterpretedOption"

    aput-object v3, v2, v7

    const-class v3, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    const-class v4, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos;->access$12502(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 8562
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos;->access$13402(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 8564
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->access$13400()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Ctype"

    aput-object v3, v2, v5

    const-string v3, "Packed"

    aput-object v3, v2, v6

    const-string v3, "Deprecated"

    aput-object v3, v2, v7

    const-string v3, "ExperimentalMapKey"

    aput-object v3, v2, v8

    const-string v3, "UninterpretedOption"

    aput-object v3, v2, v9

    const-class v3, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    const-class v4, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos;->access$13502(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 8570
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xb

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos;->access$14802(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 8572
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->access$14800()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "UninterpretedOption"

    aput-object v3, v2, v5

    const-class v3, Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    const-class v4, Lcom/htc/protobuf/DescriptorProtos$EnumOptions$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos;->access$14902(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 8578
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xc

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos;->access$15402(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 8580
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->access$15400()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "UninterpretedOption"

    aput-object v3, v2, v5

    const-class v3, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;

    const-class v4, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos;->access$15502(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 8586
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xd

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos;->access$16002(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 8588
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->access$16000()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "UninterpretedOption"

    aput-object v3, v2, v5

    const-class v3, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    const-class v4, Lcom/htc/protobuf/DescriptorProtos$ServiceOptions$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos;->access$16102(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 8594
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xe

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos;->access$16602(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 8596
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->access$16600()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "UninterpretedOption"

    aput-object v3, v2, v5

    const-class v3, Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    const-class v4, Lcom/htc/protobuf/DescriptorProtos$MethodOptions$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos;->access$16702(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 8602
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xf

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos;->access$17202(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 8604
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->access$17200()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Name"

    aput-object v3, v2, v5

    const-string v3, "IdentifierValue"

    aput-object v3, v2, v6

    const-string v3, "PositiveIntValue"

    aput-object v3, v2, v7

    const-string v3, "NegativeIntValue"

    aput-object v3, v2, v8

    const-string v3, "DoubleValue"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "StringValue"

    aput-object v4, v2, v3

    const-class v3, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption;

    const-class v4, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos;->access$17302(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 8610
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->access$17200()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos;->access$17402(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 8612
    new-instance v0, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->access$17400()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "NamePart"

    aput-object v3, v2, v5

    const-string v3, "IsExtension"

    aput-object v3, v2, v6

    const-class v3, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    const-class v4, Lcom/htc/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos;->access$17502(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 8618
    const/4 v0, 0x0

    return-object v0
.end method
