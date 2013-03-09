.class public final Lcom/htc/protobuf/Descriptors$FieldDescriptor;
.super Ljava/lang/Object;
.source "Descriptors.java"

# interfaces
.implements Lcom/htc/protobuf/Descriptors$GenericDescriptor;
.implements Ljava/lang/Comparable;
.implements Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/Descriptors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FieldDescriptor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;,
        Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/protobuf/Descriptors$GenericDescriptor;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/htc/protobuf/Descriptors$FieldDescriptor;",
        ">;",
        "Lcom/htc/protobuf/FieldSet$FieldDescriptorLite",
        "<",
        "Lcom/htc/protobuf/Descriptors$FieldDescriptor;",
        ">;"
    }
.end annotation


# static fields
.field private static final table:[Lcom/htc/protobuf/WireFormat$FieldType;


# instance fields
.field private containingType:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private defaultValue:Ljava/lang/Object;

.field private enumType:Lcom/htc/protobuf/Descriptors$EnumDescriptor;

.field private final extensionScope:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private final file:Lcom/htc/protobuf/Descriptors$FileDescriptor;

.field private final fullName:Ljava/lang/String;

.field private final index:I

.field private messageType:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private proto:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

.field private type:Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/htc/protobuf/WireFormat$FieldType;->values()[Lcom/htc/protobuf/WireFormat$FieldType;

    move-result-object v0

    sput-object v0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->table:[Lcom/htc/protobuf/WireFormat$FieldType;

    invoke-static {}, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;->values()[Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v0

    array-length v0, v0

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->values()[Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    move-result-object v1

    array-length v1, v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "descriptor.proto has a new declared type but Desrciptors.java wasn\'t updated."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private constructor <init>(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Lcom/htc/protobuf/Descriptors$FileDescriptor;Lcom/htc/protobuf/Descriptors$Descriptor;IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p4, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->index:I

    iput-object p1, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/htc/protobuf/Descriptors;->computeFullName(Lcom/htc/protobuf/Descriptors$FileDescriptor;Lcom/htc/protobuf/Descriptors$Descriptor;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p2, p3, v0}, Lcom/htc/protobuf/Descriptors;->access$1400(Lcom/htc/protobuf/Descriptors$FileDescriptor;Lcom/htc/protobuf/Descriptors$Descriptor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->fullName:Ljava/lang/String;

    iput-object p2, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->file:Lcom/htc/protobuf/Descriptors$FileDescriptor;

    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasType()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getType()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;->valueOf(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;)Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->type:Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    :cond_0
    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v0

    if-gtz v0, :cond_1

    new-instance v0, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;

    const-string v1, "Field numbers must be positive integers."

    invoke-direct {v0, p0, v1, v2}, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/htc/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/htc/protobuf/Descriptors$1;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getOptions()Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->getPacked()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getLabel()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    move-result-object v0

    sget-object v1, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->LABEL_REPEATED:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getType()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    move-result-object v0

    sget-object v1, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_STRING:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getType()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    move-result-object v0

    sget-object v1, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_GROUP:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getType()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    move-result-object v0

    sget-object v1, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_MESSAGE:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getType()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    move-result-object v0

    sget-object v1, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_BYTES:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    if-ne v0, v1, :cond_3

    :cond_2
    new-instance v0, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;

    const-string v1, "[packed = true] can only be specified for repeated primitive fields."

    invoke-direct {v0, p0, v1, v2}, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/htc/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/htc/protobuf/Descriptors$1;)V

    throw v0

    :cond_3
    if-eqz p5, :cond_6

    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasExtendee()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;

    const-string v1, "FieldDescriptorProto.extendee not set for extension field."

    invoke-direct {v0, p0, v1, v2}, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/htc/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/htc/protobuf/Descriptors$1;)V

    throw v0

    :cond_4
    iput-object v2, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->containingType:Lcom/htc/protobuf/Descriptors$Descriptor;

    if-eqz p3, :cond_5

    iput-object p3, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->extensionScope:Lcom/htc/protobuf/Descriptors$Descriptor;

    :goto_0
    #getter for: Lcom/htc/protobuf/Descriptors$FileDescriptor;->pool:Lcom/htc/protobuf/Descriptors$DescriptorPool;
    invoke-static {p2}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->access$1200(Lcom/htc/protobuf/Descriptors$FileDescriptor;)Lcom/htc/protobuf/Descriptors$DescriptorPool;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/Descriptors$DescriptorPool;->addSymbol(Lcom/htc/protobuf/Descriptors$GenericDescriptor;)V

    return-void

    :cond_5
    iput-object v2, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->extensionScope:Lcom/htc/protobuf/Descriptors$Descriptor;

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasExtendee()Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;

    const-string v1, "FieldDescriptorProto.extendee set for non-extension field."

    invoke-direct {v0, p0, v1, v2}, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/htc/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/htc/protobuf/Descriptors$1;)V

    throw v0

    :cond_7
    iput-object p3, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->containingType:Lcom/htc/protobuf/Descriptors$Descriptor;

    iput-object v2, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->extensionScope:Lcom/htc/protobuf/Descriptors$Descriptor;

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Lcom/htc/protobuf/Descriptors$FileDescriptor;Lcom/htc/protobuf/Descriptors$Descriptor;IZLcom/htc/protobuf/Descriptors$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;-><init>(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Lcom/htc/protobuf/Descriptors$FileDescriptor;Lcom/htc/protobuf/Descriptors$Descriptor;IZ)V

    return-void
.end method

.method static synthetic access$1100(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->setProto(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;)V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->crossLink()V

    return-void
.end method

.method private crossLink()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    const/16 v8, 0x22

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v4}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasExtendee()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->file:Lcom/htc/protobuf/Descriptors$FileDescriptor;

    #getter for: Lcom/htc/protobuf/Descriptors$FileDescriptor;->pool:Lcom/htc/protobuf/Descriptors$DescriptorPool;
    invoke-static {v4}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->access$1200(Lcom/htc/protobuf/Descriptors$FileDescriptor;)Lcom/htc/protobuf/Descriptors$DescriptorPool;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v5}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getExtendee()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p0}, Lcom/htc/protobuf/Descriptors$DescriptorPool;->lookupSymbol(Ljava/lang/String;Lcom/htc/protobuf/Descriptors$GenericDescriptor;)Lcom/htc/protobuf/Descriptors$GenericDescriptor;

    move-result-object v1

    instance-of v4, v1, Lcom/htc/protobuf/Descriptors$Descriptor;

    if-nez v4, :cond_0

    new-instance v4, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v6}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getExtendee()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" is not a message type."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5, v7}, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/htc/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/htc/protobuf/Descriptors$1;)V

    throw v4

    :cond_0
    check-cast v1, Lcom/htc/protobuf/Descriptors$Descriptor;

    iput-object v1, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->containingType:Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/htc/protobuf/Descriptors$Descriptor;->isExtensionNumber(I)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/protobuf/Descriptors$Descriptor;->getFullName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" does not declare "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " as an extension number."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5, v7}, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/htc/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/htc/protobuf/Descriptors$1;)V

    throw v4

    :cond_1
    iget-object v4, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v4}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasTypeName()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->file:Lcom/htc/protobuf/Descriptors$FileDescriptor;

    #getter for: Lcom/htc/protobuf/Descriptors$FileDescriptor;->pool:Lcom/htc/protobuf/Descriptors$DescriptorPool;
    invoke-static {v4}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->access$1200(Lcom/htc/protobuf/Descriptors$FileDescriptor;)Lcom/htc/protobuf/Descriptors$DescriptorPool;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v5}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getTypeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p0}, Lcom/htc/protobuf/Descriptors$DescriptorPool;->lookupSymbol(Ljava/lang/String;Lcom/htc/protobuf/Descriptors$GenericDescriptor;)Lcom/htc/protobuf/Descriptors$GenericDescriptor;

    move-result-object v2

    iget-object v4, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v4}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasType()Z

    move-result v4

    if-nez v4, :cond_2

    instance-of v4, v2, Lcom/htc/protobuf/Descriptors$Descriptor;

    if-eqz v4, :cond_3

    sget-object v4, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;->MESSAGE:Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    iput-object v4, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->type:Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v4

    sget-object v5, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v4, v5, :cond_6

    instance-of v4, v2, Lcom/htc/protobuf/Descriptors$Descriptor;

    if-nez v4, :cond_5

    new-instance v4, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v6}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getTypeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" is not a message type."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5, v7}, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/htc/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/htc/protobuf/Descriptors$1;)V

    throw v4

    :cond_3
    instance-of v4, v2, Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    if-eqz v4, :cond_4

    sget-object v4, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;->ENUM:Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    iput-object v4, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->type:Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    goto :goto_0

    :cond_4
    new-instance v4, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v6}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getTypeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" is not a type."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5, v7}, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/htc/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/htc/protobuf/Descriptors$1;)V

    throw v4

    :cond_5
    check-cast v2, Lcom/htc/protobuf/Descriptors$Descriptor;

    iput-object v2, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->messageType:Lcom/htc/protobuf/Descriptors$Descriptor;

    iget-object v4, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v4}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasDefaultValue()Z

    move-result v4

    if-eqz v4, :cond_8

    new-instance v4, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;

    const-string v5, "Messages can\'t have default values."

    invoke-direct {v4, p0, v5, v7}, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/htc/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/htc/protobuf/Descriptors$1;)V

    throw v4

    :cond_6
    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v4

    sget-object v5, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->ENUM:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v4, v5, :cond_9

    instance-of v4, v2, Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    if-nez v4, :cond_7

    new-instance v4, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v6}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getTypeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" is not an enum type."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5, v7}, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/htc/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/htc/protobuf/Descriptors$1;)V

    throw v4

    :cond_7
    check-cast v2, Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    iput-object v2, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->enumType:Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    :cond_8
    iget-object v4, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v4}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasDefaultValue()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v4

    if-eqz v4, :cond_c

    new-instance v4, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;

    const-string v5, "Repeated fields cannot have default values."

    invoke-direct {v4, p0, v5, v7}, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/htc/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/htc/protobuf/Descriptors$1;)V

    throw v4

    :cond_9
    new-instance v4, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;

    const-string v5, "Field with primitive type has type_name."

    invoke-direct {v4, p0, v5, v7}, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/htc/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/htc/protobuf/Descriptors$1;)V

    throw v4

    :cond_a
    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v4

    sget-object v5, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-eq v4, v5, :cond_b

    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v4

    sget-object v5, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->ENUM:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v4, v5, :cond_8

    :cond_b
    new-instance v4, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;

    const-string v5, "Field with message or enum type missing type_name."

    invoke-direct {v4, p0, v5, v7}, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/htc/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/htc/protobuf/Descriptors$1;)V

    throw v4

    :cond_c
    :try_start_0
    sget-object v4, Lcom/htc/protobuf/Descriptors$1;->$SwitchMap$com$htc$protobuf$Descriptors$FieldDescriptor$Type:[I

    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;->ordinal()I

    move-result v5

    aget v4, v4, v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v4, :pswitch_data_0

    :cond_d
    :goto_1
    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    move-result v4

    if-nez v4, :cond_e

    iget-object v4, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->file:Lcom/htc/protobuf/Descriptors$FileDescriptor;

    #getter for: Lcom/htc/protobuf/Descriptors$FileDescriptor;->pool:Lcom/htc/protobuf/Descriptors$DescriptorPool;
    invoke-static {v4}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->access$1200(Lcom/htc/protobuf/Descriptors$FileDescriptor;)Lcom/htc/protobuf/Descriptors$DescriptorPool;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/htc/protobuf/Descriptors$DescriptorPool;->addFieldByNumber(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)V

    :cond_e
    iget-object v4, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->containingType:Lcom/htc/protobuf/Descriptors$Descriptor;

    if-eqz v4, :cond_13

    iget-object v4, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->containingType:Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-virtual {v4}, Lcom/htc/protobuf/Descriptors$Descriptor;->getOptions()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->getMessageSetWireFormat()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->isOptional()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v4

    sget-object v5, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;->MESSAGE:Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    if-eq v4, v5, :cond_13

    :cond_f
    new-instance v4, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;

    const-string v5, "Extensions of MessageSets must be optional messages."

    invoke-direct {v4, p0, v5, v7}, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/htc/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/htc/protobuf/Descriptors$1;)V

    throw v4

    :pswitch_0
    :try_start_1
    iget-object v4, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v4}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/protobuf/TextFormat;->parseInt32(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->defaultValue:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v3, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not parse default value: \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v5}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4, v7}, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/htc/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/htc/protobuf/Descriptors$1;)V

    invoke-virtual {v3, v0}, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v3

    :pswitch_1
    :try_start_2
    iget-object v4, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v4}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/protobuf/TextFormat;->parseUInt32(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->defaultValue:Ljava/lang/Object;

    goto/16 :goto_1

    :pswitch_2
    iget-object v4, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v4}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/protobuf/TextFormat;->parseInt64(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->defaultValue:Ljava/lang/Object;

    goto/16 :goto_1

    :pswitch_3
    iget-object v4, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v4}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/protobuf/TextFormat;->parseUInt64(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->defaultValue:Ljava/lang/Object;

    goto/16 :goto_1

    :pswitch_4
    iget-object v4, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v4}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->defaultValue:Ljava/lang/Object;

    goto/16 :goto_1

    :pswitch_5
    iget-object v4, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v4}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->defaultValue:Ljava/lang/Object;

    goto/16 :goto_1

    :pswitch_6
    iget-object v4, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v4}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->defaultValue:Ljava/lang/Object;

    goto/16 :goto_1

    :pswitch_7
    iget-object v4, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v4}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->defaultValue:Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    :pswitch_8
    :try_start_3
    iget-object v4, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v4}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/protobuf/TextFormat;->unescapeBytes(Ljava/lang/CharSequence;)Lcom/htc/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->defaultValue:Ljava/lang/Object;
    :try_end_3
    .catch Lcom/htc/protobuf/TextFormat$InvalidEscapeSequenceException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    :catch_1
    move-exception v0

    :try_start_4
    new-instance v4, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t parse default value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/htc/protobuf/TextFormat$InvalidEscapeSequenceException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, p0, v5, v0, v6}, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/htc/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Ljava/lang/Throwable;Lcom/htc/protobuf/Descriptors$1;)V

    throw v4

    :pswitch_9
    iget-object v4, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->enumType:Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    iget-object v5, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v5}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/protobuf/Descriptors$EnumDescriptor;->findValueByName(Ljava/lang/String;)Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->defaultValue:Ljava/lang/Object;

    iget-object v4, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->defaultValue:Ljava/lang/Object;

    if-nez v4, :cond_d

    new-instance v4, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown enum default value: \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v6}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x22

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, p0, v5, v6}, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/htc/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/htc/protobuf/Descriptors$1;)V

    throw v4

    :pswitch_a
    new-instance v4, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;

    const-string v5, "Message type had default value."

    const/4 v6, 0x0

    invoke-direct {v4, p0, v5, v6}, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/htc/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/htc/protobuf/Descriptors$1;)V

    throw v4
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_10
    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->defaultValue:Ljava/lang/Object;

    goto/16 :goto_1

    :cond_11
    sget-object v4, Lcom/htc/protobuf/Descriptors$1;->$SwitchMap$com$htc$protobuf$Descriptors$FieldDescriptor$JavaType:[I

    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v4

    #getter for: Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->defaultDefault:Ljava/lang/Object;
    invoke-static {v4}, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->access$1700(Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->defaultValue:Ljava/lang/Object;

    goto/16 :goto_1

    :pswitch_b
    iget-object v4, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->enumType:Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    invoke-virtual {v4}, Lcom/htc/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->defaultValue:Ljava/lang/Object;

    goto/16 :goto_1

    :pswitch_c
    iput-object v7, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->defaultValue:Ljava/lang/Object;

    goto/16 :goto_1

    :cond_12
    new-instance v4, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;

    const-string v5, "MessageSets cannot have fields, only extensions."

    invoke-direct {v4, p0, v5, v7}, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/htc/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/htc/protobuf/Descriptors$1;)V

    throw v4

    :cond_13
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private setProto(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)I
    .locals 2

    iget-object v0, p1, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->containingType:Lcom/htc/protobuf/Descriptors$Descriptor;

    iget-object v1, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->containingType:Lcom/htc/protobuf/Descriptors$Descriptor;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "FieldDescriptors can only be compared to other FieldDescriptors for fields of the same message type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v0

    invoke-virtual {p1}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {p0, p1}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->compareTo(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)I

    move-result v0

    return v0
.end method

.method public getContainingType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->containingType:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getDefaultValue()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "FieldDescriptor.getDefaultValue() called on an embedded message field."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->defaultValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getEnumType()Lcom/htc/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->ENUM:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This field is not of enum type."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->enumType:Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    return-object v0
.end method

.method public bridge synthetic getEnumType()Lcom/htc/protobuf/Internal$EnumLiteMap;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getEnumType()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getExtensionScope()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 2

    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This field is not an extension."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->extensionScope:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getFile()Lcom/htc/protobuf/Descriptors$FileDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->file:Lcom/htc/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->index:I

    return v0
.end method

.method public getJavaType()Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->type:Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;->getJavaType()Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    return-object v0
.end method

.method public getLiteJavaType()Lcom/htc/protobuf/WireFormat$JavaType;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getLiteType()Lcom/htc/protobuf/WireFormat$FieldType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/WireFormat$FieldType;->getJavaType()Lcom/htc/protobuf/WireFormat$JavaType;

    move-result-object v0

    return-object v0
.end method

.method public getLiteType()Lcom/htc/protobuf/WireFormat$FieldType;
    .locals 2

    sget-object v0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->table:[Lcom/htc/protobuf/WireFormat$FieldType;

    iget-object v1, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->type:Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v1}, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getMessageType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 2

    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This field is not of message type."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->messageType:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumber()I
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getNumber()I

    move-result v0

    return v0
.end method

.method public getOptions()Lcom/htc/protobuf/DescriptorProtos$FieldOptions;
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getOptions()Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->type:Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    return-object v0
.end method

.method public hasDefaultValue()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasDefaultValue()Z

    move-result v0

    return v0
.end method

.method public internalMergeFrom(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/MessageLite;)Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    check-cast p1, Lcom/htc/protobuf/Message$Builder;

    check-cast p2, Lcom/htc/protobuf/Message;

    invoke-interface {p1, p2}, Lcom/htc/protobuf/Message$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;

    move-result-object v0

    return-object v0
.end method

.method public isExtension()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasExtendee()Z

    move-result v0

    return v0
.end method

.method public isOptional()Z
    .locals 2

    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getLabel()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    move-result-object v0

    sget-object v1, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->LABEL_OPTIONAL:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPacked()Z
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getOptions()Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->getPacked()Z

    move-result v0

    return v0
.end method

.method public isRepeated()Z
    .locals 2

    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getLabel()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    move-result-object v0

    sget-object v1, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->LABEL_REPEATED:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRequired()Z
    .locals 2

    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getLabel()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    move-result-object v0

    sget-object v1, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->LABEL_REQUIRED:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toProto()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    return-object v0
.end method

.method public bridge synthetic toProto()Lcom/htc/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->toProto()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method
