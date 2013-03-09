.class public final Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;
.super Ljava/lang/Object;
.source "Descriptors.java"

# interfaces
.implements Lcom/htc/protobuf/Descriptors$GenericDescriptor;
.implements Lcom/htc/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/Descriptors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EnumValueDescriptor"
.end annotation


# instance fields
.field private final file:Lcom/htc/protobuf/Descriptors$FileDescriptor;

.field private final fullName:Ljava/lang/String;

.field private final index:I

.field private proto:Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

.field private final type:Lcom/htc/protobuf/Descriptors$EnumDescriptor;


# direct methods
.method private constructor <init>(Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;Lcom/htc/protobuf/Descriptors$FileDescriptor;Lcom/htc/protobuf/Descriptors$EnumDescriptor;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p4, p0, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;->index:I

    iput-object p1, p0, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    iput-object p2, p0, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;->file:Lcom/htc/protobuf/Descriptors$FileDescriptor;

    iput-object p3, p0, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;->type:Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/htc/protobuf/Descriptors$EnumDescriptor;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;->fullName:Ljava/lang/String;

    #getter for: Lcom/htc/protobuf/Descriptors$FileDescriptor;->pool:Lcom/htc/protobuf/Descriptors$DescriptorPool;
    invoke-static {p2}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->access$1200(Lcom/htc/protobuf/Descriptors$FileDescriptor;)Lcom/htc/protobuf/Descriptors$DescriptorPool;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/Descriptors$DescriptorPool;->addSymbol(Lcom/htc/protobuf/Descriptors$GenericDescriptor;)V

    #getter for: Lcom/htc/protobuf/Descriptors$FileDescriptor;->pool:Lcom/htc/protobuf/Descriptors$DescriptorPool;
    invoke-static {p2}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->access$1200(Lcom/htc/protobuf/Descriptors$FileDescriptor;)Lcom/htc/protobuf/Descriptors$DescriptorPool;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/Descriptors$DescriptorPool;->addEnumValueByNumber(Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;Lcom/htc/protobuf/Descriptors$FileDescriptor;Lcom/htc/protobuf/Descriptors$EnumDescriptor;ILcom/htc/protobuf/Descriptors$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;-><init>(Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;Lcom/htc/protobuf/Descriptors$FileDescriptor;Lcom/htc/protobuf/Descriptors$EnumDescriptor;I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;->setProto(Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;)V

    return-void
.end method

.method private setProto(Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    return-void
.end method


# virtual methods
.method public getFile()Lcom/htc/protobuf/Descriptors$FileDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;->file:Lcom/htc/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;->index:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumber()I
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getNumber()I

    move-result v0

    return v0
.end method

.method public getOptions()Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getOptions()Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/htc/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;->type:Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    return-object v0
.end method

.method public toProto()Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    return-object v0
.end method

.method public bridge synthetic toProto()Lcom/htc/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;->toProto()Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object v0

    return-object v0
.end method
