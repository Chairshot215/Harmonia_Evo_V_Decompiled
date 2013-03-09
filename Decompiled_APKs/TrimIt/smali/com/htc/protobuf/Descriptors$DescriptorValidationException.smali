.class public Lcom/htc/protobuf/Descriptors$DescriptorValidationException;
.super Ljava/lang/Exception;
.source "Descriptors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/Descriptors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DescriptorValidationException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4fccd5afd98283ccL


# instance fields
.field private final description:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final proto:Lcom/htc/protobuf/Message;


# direct methods
.method private constructor <init>(Lcom/htc/protobuf/Descriptors$FileDescriptor;Ljava/lang/String;)V
    .locals 2
    .parameter "problemDescriptor"
    .parameter "description"

    .prologue
    .line 1559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1564
    invoke-virtual {p1}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;->name:Ljava/lang/String;

    .line 1565
    invoke-virtual {p1}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->toProto()Lcom/htc/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;->proto:Lcom/htc/protobuf/Message;

    .line 1566
    iput-object p2, p0, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;->description:Ljava/lang/String;

    .line 1567
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/protobuf/Descriptors$FileDescriptor;Ljava/lang/String;Lcom/htc/protobuf/Descriptors$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 1516
    invoke-direct {p0, p1, p2}, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/htc/protobuf/Descriptors$FileDescriptor;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/htc/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;)V
    .locals 1
    .parameter "problemDescriptor"
    .parameter "description"

    .prologue
    .line 1539
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/htc/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1540
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/htc/protobuf/Descriptors$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 1516
    invoke-direct {p0, p1, p2}, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/htc/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/htc/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "problemDescriptor"
    .parameter "description"
    .parameter "cause"

    .prologue
    .line 1546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/htc/protobuf/Descriptors$GenericDescriptor;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1551
    invoke-interface {p1}, Lcom/htc/protobuf/Descriptors$GenericDescriptor;->getFullName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;->name:Ljava/lang/String;

    .line 1552
    invoke-interface {p1}, Lcom/htc/protobuf/Descriptors$GenericDescriptor;->toProto()Lcom/htc/protobuf/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;->proto:Lcom/htc/protobuf/Message;

    .line 1553
    iput-object p2, p0, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;->description:Ljava/lang/String;

    .line 1554
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Ljava/lang/Throwable;Lcom/htc/protobuf/Descriptors$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 1516
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/htc/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1530
    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getProblemProto()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 1525
    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;->proto:Lcom/htc/protobuf/Message;

    return-object v0
.end method

.method public getProblemSymbolName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1520
    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;->name:Ljava/lang/String;

    return-object v0
.end method
