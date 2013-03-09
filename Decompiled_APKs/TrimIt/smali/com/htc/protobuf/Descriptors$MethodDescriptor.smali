.class public final Lcom/htc/protobuf/Descriptors$MethodDescriptor;
.super Ljava/lang/Object;
.source "Descriptors.java"

# interfaces
.implements Lcom/htc/protobuf/Descriptors$GenericDescriptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/Descriptors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MethodDescriptor"
.end annotation


# instance fields
.field private final file:Lcom/htc/protobuf/Descriptors$FileDescriptor;

.field private final fullName:Ljava/lang/String;

.field private final index:I

.field private inputType:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private outputType:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private proto:Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

.field private final service:Lcom/htc/protobuf/Descriptors$ServiceDescriptor;


# direct methods
.method private constructor <init>(Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;Lcom/htc/protobuf/Descriptors$FileDescriptor;Lcom/htc/protobuf/Descriptors$ServiceDescriptor;I)V
    .locals 2
    .parameter "proto"
    .parameter "file"
    .parameter "parent"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .prologue
    .line 1450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1451
    iput p4, p0, Lcom/htc/protobuf/Descriptors$MethodDescriptor;->index:I

    .line 1452
    iput-object p1, p0, Lcom/htc/protobuf/Descriptors$MethodDescriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    .line 1453
    iput-object p2, p0, Lcom/htc/protobuf/Descriptors$MethodDescriptor;->file:Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 1454
    iput-object p3, p0, Lcom/htc/protobuf/Descriptors$MethodDescriptor;->service:Lcom/htc/protobuf/Descriptors$ServiceDescriptor;

    .line 1456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/htc/protobuf/Descriptors$ServiceDescriptor;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/protobuf/Descriptors$MethodDescriptor;->fullName:Ljava/lang/String;

    .line 1458
    #getter for: Lcom/htc/protobuf/Descriptors$FileDescriptor;->pool:Lcom/htc/protobuf/Descriptors$DescriptorPool;
    invoke-static {p2}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->access$1200(Lcom/htc/protobuf/Descriptors$FileDescriptor;)Lcom/htc/protobuf/Descriptors$DescriptorPool;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/Descriptors$DescriptorPool;->addSymbol(Lcom/htc/protobuf/Descriptors$GenericDescriptor;)V

    .line 1459
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;Lcom/htc/protobuf/Descriptors$FileDescriptor;Lcom/htc/protobuf/Descriptors$ServiceDescriptor;ILcom/htc/protobuf/Descriptors$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .prologue
    .line 1400
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/protobuf/Descriptors$MethodDescriptor;-><init>(Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;Lcom/htc/protobuf/Descriptors$FileDescriptor;Lcom/htc/protobuf/Descriptors$ServiceDescriptor;I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/htc/protobuf/Descriptors$MethodDescriptor;)V
    .locals 0
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .prologue
    .line 1400
    invoke-direct {p0}, Lcom/htc/protobuf/Descriptors$MethodDescriptor;->crossLink()V

    return-void
.end method

.method static synthetic access$2300(Lcom/htc/protobuf/Descriptors$MethodDescriptor;Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1400
    invoke-direct {p0, p1}, Lcom/htc/protobuf/Descriptors$MethodDescriptor;->setProto(Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;)V

    return-void
.end method

.method private crossLink()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x22

    .line 1462
    iget-object v2, p0, Lcom/htc/protobuf/Descriptors$MethodDescriptor;->file:Lcom/htc/protobuf/Descriptors$FileDescriptor;

    #getter for: Lcom/htc/protobuf/Descriptors$FileDescriptor;->pool:Lcom/htc/protobuf/Descriptors$DescriptorPool;
    invoke-static {v2}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->access$1200(Lcom/htc/protobuf/Descriptors$FileDescriptor;)Lcom/htc/protobuf/Descriptors$DescriptorPool;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/protobuf/Descriptors$MethodDescriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-virtual {v3}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->getInputType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p0}, Lcom/htc/protobuf/Descriptors$DescriptorPool;->lookupSymbol(Ljava/lang/String;Lcom/htc/protobuf/Descriptors$GenericDescriptor;)Lcom/htc/protobuf/Descriptors$GenericDescriptor;

    move-result-object v0

    .line 1464
    .local v0, input:Lcom/htc/protobuf/Descriptors$GenericDescriptor;
    instance-of v2, v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    if-nez v2, :cond_0

    .line 1465
    new-instance v2, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/protobuf/Descriptors$MethodDescriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-virtual {v4}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->getInputType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" is not a message type."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3, v5}, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/htc/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/htc/protobuf/Descriptors$1;)V

    throw v2

    .line 1468
    :cond_0
    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    .end local v0           #input:Lcom/htc/protobuf/Descriptors$GenericDescriptor;
    iput-object v0, p0, Lcom/htc/protobuf/Descriptors$MethodDescriptor;->inputType:Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 1470
    iget-object v2, p0, Lcom/htc/protobuf/Descriptors$MethodDescriptor;->file:Lcom/htc/protobuf/Descriptors$FileDescriptor;

    #getter for: Lcom/htc/protobuf/Descriptors$FileDescriptor;->pool:Lcom/htc/protobuf/Descriptors$DescriptorPool;
    invoke-static {v2}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->access$1200(Lcom/htc/protobuf/Descriptors$FileDescriptor;)Lcom/htc/protobuf/Descriptors$DescriptorPool;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/protobuf/Descriptors$MethodDescriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-virtual {v3}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->getOutputType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p0}, Lcom/htc/protobuf/Descriptors$DescriptorPool;->lookupSymbol(Ljava/lang/String;Lcom/htc/protobuf/Descriptors$GenericDescriptor;)Lcom/htc/protobuf/Descriptors$GenericDescriptor;

    move-result-object v1

    .line 1472
    .local v1, output:Lcom/htc/protobuf/Descriptors$GenericDescriptor;
    instance-of v2, v1, Lcom/htc/protobuf/Descriptors$Descriptor;

    if-nez v2, :cond_1

    .line 1473
    new-instance v2, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/protobuf/Descriptors$MethodDescriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-virtual {v4}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->getOutputType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" is not a message type."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3, v5}, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/htc/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/htc/protobuf/Descriptors$1;)V

    throw v2

    .line 1476
    :cond_1
    check-cast v1, Lcom/htc/protobuf/Descriptors$Descriptor;

    .end local v1           #output:Lcom/htc/protobuf/Descriptors$GenericDescriptor;
    iput-object v1, p0, Lcom/htc/protobuf/Descriptors$MethodDescriptor;->outputType:Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 1477
    return-void
.end method

.method private setProto(Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;)V
    .locals 0
    .parameter "proto"

    .prologue
    .line 1481
    iput-object p1, p0, Lcom/htc/protobuf/Descriptors$MethodDescriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    .line 1482
    return-void
.end method


# virtual methods
.method public getFile()Lcom/htc/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .prologue
    .line 1420
    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$MethodDescriptor;->file:Lcom/htc/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1417
    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$MethodDescriptor;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 1405
    iget v0, p0, Lcom/htc/protobuf/Descriptors$MethodDescriptor;->index:I

    return v0
.end method

.method public getInputType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1426
    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$MethodDescriptor;->inputType:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1411
    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$MethodDescriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOptions()Lcom/htc/protobuf/DescriptorProtos$MethodOptions;
    .locals 1

    .prologue
    .line 1434
    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$MethodDescriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;->getOptions()Lcom/htc/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public getOutputType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1429
    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$MethodDescriptor;->outputType:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getService()Lcom/htc/protobuf/Descriptors$ServiceDescriptor;
    .locals 1

    .prologue
    .line 1423
    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$MethodDescriptor;->service:Lcom/htc/protobuf/Descriptors$ServiceDescriptor;

    return-object v0
.end method

.method public toProto()Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;
    .locals 1

    .prologue
    .line 1408
    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$MethodDescriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    return-object v0
.end method

.method public bridge synthetic toProto()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 1400
    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$MethodDescriptor;->toProto()Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method
