.class public final Lcom/google/protobuf/Descriptors$MethodDescriptor;
.super Ljava/lang/Object;
.source "Descriptors.java"

# interfaces
.implements Lcom/google/protobuf/Descriptors$GenericDescriptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Descriptors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MethodDescriptor"
.end annotation


# instance fields
.field private final file:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private final fullName:Ljava/lang/String;

.field private final index:I

.field private inputType:Lcom/google/protobuf/Descriptors$Descriptor;

.field private outputType:Lcom/google/protobuf/Descriptors$Descriptor;

.field private proto:Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

.field private final service:Lcom/google/protobuf/Descriptors$ServiceDescriptor;


# direct methods
.method private constructor <init>(Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$ServiceDescriptor;I)V
    .locals 2
    .parameter "proto"
    .parameter "file"
    .parameter "parent"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .prologue
    .line 1457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1458
    iput p4, p0, Lcom/google/protobuf/Descriptors$MethodDescriptor;->index:I

    .line 1459
    iput-object p1, p0, Lcom/google/protobuf/Descriptors$MethodDescriptor;->proto:Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    .line 1460
    iput-object p2, p0, Lcom/google/protobuf/Descriptors$MethodDescriptor;->file:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 1461
    iput-object p3, p0, Lcom/google/protobuf/Descriptors$MethodDescriptor;->service:Lcom/google/protobuf/Descriptors$ServiceDescriptor;

    .line 1463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/google/protobuf/Descriptors$ServiceDescriptor;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$MethodDescriptor;->fullName:Ljava/lang/String;

    .line 1465
    #getter for: Lcom/google/protobuf/Descriptors$FileDescriptor;->pool:Lcom/google/protobuf/Descriptors$DescriptorPool;
    invoke-static {p2}, Lcom/google/protobuf/Descriptors$FileDescriptor;->access$1200(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$DescriptorPool;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/Descriptors$DescriptorPool;->addSymbol(Lcom/google/protobuf/Descriptors$GenericDescriptor;)V

    .line 1466
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$ServiceDescriptor;ILcom/google/protobuf/Descriptors$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .prologue
    .line 1407
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/protobuf/Descriptors$MethodDescriptor;-><init>(Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$ServiceDescriptor;I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/protobuf/Descriptors$MethodDescriptor;)V
    .locals 0
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .prologue
    .line 1407
    invoke-direct {p0}, Lcom/google/protobuf/Descriptors$MethodDescriptor;->crossLink()V

    return-void
.end method

.method static synthetic access$2300(Lcom/google/protobuf/Descriptors$MethodDescriptor;Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1407
    invoke-direct {p0, p1}, Lcom/google/protobuf/Descriptors$MethodDescriptor;->setProto(Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;)V

    return-void
.end method

.method private crossLink()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x22

    .line 1469
    iget-object v2, p0, Lcom/google/protobuf/Descriptors$MethodDescriptor;->file:Lcom/google/protobuf/Descriptors$FileDescriptor;

    #getter for: Lcom/google/protobuf/Descriptors$FileDescriptor;->pool:Lcom/google/protobuf/Descriptors$DescriptorPool;
    invoke-static {v2}, Lcom/google/protobuf/Descriptors$FileDescriptor;->access$1200(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$DescriptorPool;

    move-result-object v2

    iget-object v3, p0, Lcom/google/protobuf/Descriptors$MethodDescriptor;->proto:Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-virtual {v3}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->getInputType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p0}, Lcom/google/protobuf/Descriptors$DescriptorPool;->lookupSymbol(Ljava/lang/String;Lcom/google/protobuf/Descriptors$GenericDescriptor;)Lcom/google/protobuf/Descriptors$GenericDescriptor;

    move-result-object v0

    .line 1471
    .local v0, input:Lcom/google/protobuf/Descriptors$GenericDescriptor;
    instance-of v2, v0, Lcom/google/protobuf/Descriptors$Descriptor;

    if-nez v2, :cond_0

    .line 1472
    new-instance v2, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/protobuf/Descriptors$MethodDescriptor;->proto:Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-virtual {v4}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->getInputType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" is not a message type."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3, v5}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/google/protobuf/Descriptors$1;)V

    throw v2

    .line 1475
    :cond_0
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .end local v0           #input:Lcom/google/protobuf/Descriptors$GenericDescriptor;
    iput-object v0, p0, Lcom/google/protobuf/Descriptors$MethodDescriptor;->inputType:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 1477
    iget-object v2, p0, Lcom/google/protobuf/Descriptors$MethodDescriptor;->file:Lcom/google/protobuf/Descriptors$FileDescriptor;

    #getter for: Lcom/google/protobuf/Descriptors$FileDescriptor;->pool:Lcom/google/protobuf/Descriptors$DescriptorPool;
    invoke-static {v2}, Lcom/google/protobuf/Descriptors$FileDescriptor;->access$1200(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$DescriptorPool;

    move-result-object v2

    iget-object v3, p0, Lcom/google/protobuf/Descriptors$MethodDescriptor;->proto:Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-virtual {v3}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->getOutputType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p0}, Lcom/google/protobuf/Descriptors$DescriptorPool;->lookupSymbol(Ljava/lang/String;Lcom/google/protobuf/Descriptors$GenericDescriptor;)Lcom/google/protobuf/Descriptors$GenericDescriptor;

    move-result-object v1

    .line 1479
    .local v1, output:Lcom/google/protobuf/Descriptors$GenericDescriptor;
    instance-of v2, v1, Lcom/google/protobuf/Descriptors$Descriptor;

    if-nez v2, :cond_1

    .line 1480
    new-instance v2, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/protobuf/Descriptors$MethodDescriptor;->proto:Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-virtual {v4}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->getOutputType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" is not a message type."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3, v5}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/google/protobuf/Descriptors$1;)V

    throw v2

    .line 1483
    :cond_1
    check-cast v1, Lcom/google/protobuf/Descriptors$Descriptor;

    .end local v1           #output:Lcom/google/protobuf/Descriptors$GenericDescriptor;
    iput-object v1, p0, Lcom/google/protobuf/Descriptors$MethodDescriptor;->outputType:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 1484
    return-void
.end method

.method private setProto(Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;)V
    .locals 0
    .parameter "proto"

    .prologue
    .line 1488
    iput-object p1, p0, Lcom/google/protobuf/Descriptors$MethodDescriptor;->proto:Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    .line 1489
    return-void
.end method


# virtual methods
.method public getFile()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .prologue
    .line 1427
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$MethodDescriptor;->file:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1424
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$MethodDescriptor;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 1412
    iget v0, p0, Lcom/google/protobuf/Descriptors$MethodDescriptor;->index:I

    return v0
.end method

.method public getInputType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1433
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$MethodDescriptor;->inputType:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1418
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$MethodDescriptor;->proto:Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOptions()Lcom/google/protobuf/DescriptorProtos$MethodOptions;
    .locals 1

    .prologue
    .line 1441
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$MethodDescriptor;->proto:Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->getOptions()Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public getOutputType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1436
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$MethodDescriptor;->outputType:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getService()Lcom/google/protobuf/Descriptors$ServiceDescriptor;
    .locals 1

    .prologue
    .line 1430
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$MethodDescriptor;->service:Lcom/google/protobuf/Descriptors$ServiceDescriptor;

    return-object v0
.end method

.method public toProto()Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;
    .locals 1

    .prologue
    .line 1415
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$MethodDescriptor;->proto:Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    return-object v0
.end method

.method public bridge synthetic toProto()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1407
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$MethodDescriptor;->toProto()Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method
