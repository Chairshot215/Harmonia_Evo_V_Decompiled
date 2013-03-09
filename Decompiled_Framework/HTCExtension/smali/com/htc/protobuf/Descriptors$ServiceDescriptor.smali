.class public final Lcom/htc/protobuf/Descriptors$ServiceDescriptor;
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
    name = "ServiceDescriptor"
.end annotation


# instance fields
.field private final file:Lcom/htc/protobuf/Descriptors$FileDescriptor;

.field private final fullName:Ljava/lang/String;

.field private final index:I

.field private methods:[Lcom/htc/protobuf/Descriptors$MethodDescriptor;

.field private proto:Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;


# direct methods
.method private constructor <init>(Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;Lcom/htc/protobuf/Descriptors$FileDescriptor;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    const/4 v5, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lcom/htc/protobuf/Descriptors$ServiceDescriptor;->index:I

    iput-object p1, p0, Lcom/htc/protobuf/Descriptors$ServiceDescriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/htc/protobuf/Descriptors;->computeFullName(Lcom/htc/protobuf/Descriptors$FileDescriptor;Lcom/htc/protobuf/Descriptors$Descriptor;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p2, v5, v0}, Lcom/htc/protobuf/Descriptors;->access$1400(Lcom/htc/protobuf/Descriptors$FileDescriptor;Lcom/htc/protobuf/Descriptors$Descriptor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/protobuf/Descriptors$ServiceDescriptor;->fullName:Ljava/lang/String;

    iput-object p2, p0, Lcom/htc/protobuf/Descriptors$ServiceDescriptor;->file:Lcom/htc/protobuf/Descriptors$FileDescriptor;

    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->getMethodCount()I

    move-result v0

    new-array v0, v0, [Lcom/htc/protobuf/Descriptors$MethodDescriptor;

    iput-object v0, p0, Lcom/htc/protobuf/Descriptors$ServiceDescriptor;->methods:[Lcom/htc/protobuf/Descriptors$MethodDescriptor;

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->getMethodCount()I

    move-result v0

    if-ge v4, v0, :cond_0

    iget-object v6, p0, Lcom/htc/protobuf/Descriptors$ServiceDescriptor;->methods:[Lcom/htc/protobuf/Descriptors$MethodDescriptor;

    new-instance v0, Lcom/htc/protobuf/Descriptors$MethodDescriptor;

    invoke-virtual {p1, v4}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->getMethod(I)Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v1

    move-object v2, p2

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/protobuf/Descriptors$MethodDescriptor;-><init>(Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;Lcom/htc/protobuf/Descriptors$FileDescriptor;Lcom/htc/protobuf/Descriptors$ServiceDescriptor;ILcom/htc/protobuf/Descriptors$1;)V

    aput-object v0, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    #getter for: Lcom/htc/protobuf/Descriptors$FileDescriptor;->pool:Lcom/htc/protobuf/Descriptors$DescriptorPool;
    invoke-static {p2}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->access$1200(Lcom/htc/protobuf/Descriptors$FileDescriptor;)Lcom/htc/protobuf/Descriptors$DescriptorPool;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/Descriptors$DescriptorPool;->addSymbol(Lcom/htc/protobuf/Descriptors$GenericDescriptor;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;Lcom/htc/protobuf/Descriptors$FileDescriptor;ILcom/htc/protobuf/Descriptors$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/protobuf/Descriptors$ServiceDescriptor;-><init>(Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;Lcom/htc/protobuf/Descriptors$FileDescriptor;I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/protobuf/Descriptors$ServiceDescriptor;Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/protobuf/Descriptors$ServiceDescriptor;->setProto(Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/protobuf/Descriptors$ServiceDescriptor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/htc/protobuf/Descriptors$ServiceDescriptor;->crossLink()V

    return-void
.end method

.method private crossLink()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$ServiceDescriptor;->methods:[Lcom/htc/protobuf/Descriptors$MethodDescriptor;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    #calls: Lcom/htc/protobuf/Descriptors$MethodDescriptor;->crossLink()V
    invoke-static {v3}, Lcom/htc/protobuf/Descriptors$MethodDescriptor;->access$2200(Lcom/htc/protobuf/Descriptors$MethodDescriptor;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setProto(Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;)V
    .locals 3

    iput-object p1, p0, Lcom/htc/protobuf/Descriptors$ServiceDescriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/htc/protobuf/Descriptors$ServiceDescriptor;->methods:[Lcom/htc/protobuf/Descriptors$MethodDescriptor;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/htc/protobuf/Descriptors$ServiceDescriptor;->methods:[Lcom/htc/protobuf/Descriptors$MethodDescriptor;

    aget-object v1, v1, v0

    invoke-virtual {p1, v0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->getMethod(I)Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v2

    #calls: Lcom/htc/protobuf/Descriptors$MethodDescriptor;->setProto(Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;)V
    invoke-static {v1, v2}, Lcom/htc/protobuf/Descriptors$MethodDescriptor;->access$2300(Lcom/htc/protobuf/Descriptors$MethodDescriptor;Lcom/htc/protobuf/DescriptorProtos$MethodDescriptorProto;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public findMethodByName(Ljava/lang/String;)Lcom/htc/protobuf/Descriptors$MethodDescriptor;
    .locals 4

    iget-object v1, p0, Lcom/htc/protobuf/Descriptors$ServiceDescriptor;->file:Lcom/htc/protobuf/Descriptors$FileDescriptor;

    #getter for: Lcom/htc/protobuf/Descriptors$FileDescriptor;->pool:Lcom/htc/protobuf/Descriptors$DescriptorPool;
    invoke-static {v1}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->access$1200(Lcom/htc/protobuf/Descriptors$FileDescriptor;)Lcom/htc/protobuf/Descriptors$DescriptorPool;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/protobuf/Descriptors$ServiceDescriptor;->fullName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/protobuf/Descriptors$DescriptorPool;->findSymbol(Ljava/lang/String;)Lcom/htc/protobuf/Descriptors$GenericDescriptor;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/protobuf/Descriptors$MethodDescriptor;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/htc/protobuf/Descriptors$MethodDescriptor;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFile()Lcom/htc/protobuf/Descriptors$FileDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$ServiceDescriptor;->file:Lcom/htc/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$ServiceDescriptor;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lcom/htc/protobuf/Descriptors$ServiceDescriptor;->index:I

    return v0
.end method

.method public getMethods()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/protobuf/Descriptors$MethodDescriptor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$ServiceDescriptor;->methods:[Lcom/htc/protobuf/Descriptors$MethodDescriptor;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$ServiceDescriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOptions()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$ServiceDescriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;->getOptions()Lcom/htc/protobuf/DescriptorProtos$ServiceOptions;

    move-result-object v0

    return-object v0
.end method

.method public toProto()Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$ServiceDescriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    return-object v0
.end method

.method public bridge synthetic toProto()Lcom/htc/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$ServiceDescriptor;->toProto()Lcom/htc/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object v0

    return-object v0
.end method
