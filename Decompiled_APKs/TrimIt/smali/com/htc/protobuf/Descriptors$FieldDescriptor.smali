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

    .prologue
    .line 679
    invoke-static {}, Lcom/htc/protobuf/WireFormat$FieldType;->values()[Lcom/htc/protobuf/WireFormat$FieldType;

    move-result-object v0

    sput-object v0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->table:[Lcom/htc/protobuf/WireFormat$FieldType;

    .line 855
    invoke-static {}, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;->values()[Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v0

    array-length v0, v0

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->values()[Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    move-result-object v1

    array-length v1, v1

    if-eq v0, v1, :cond_0

    .line 856
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "descriptor.proto has a new declared type but Desrciptors.java wasn\'t updated."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 860
    :cond_0
    return-void
.end method

.method private constructor <init>(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Lcom/htc/protobuf/Descriptors$FileDescriptor;Lcom/htc/protobuf/Descriptors$Descriptor;IZ)V
    .locals 3
    .parameter "proto"
    .parameter "file"
    .parameter "parent"
    .parameter "index"
    .parameter "isExtension"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 889
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 890
    iput p4, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->index:I

    .line 891
    iput-object p1, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    .line 892
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/htc/protobuf/Descriptors;->computeFullName(Lcom/htc/protobuf/Descriptors$FileDescriptor;Lcom/htc/protobuf/Descriptors$Descriptor;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p2, p3, v0}, Lcom/htc/protobuf/Descriptors;->access$1400(Lcom/htc/protobuf/Descriptors$FileDescriptor;Lcom/htc/protobuf/Descriptors$Descriptor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->fullName:Ljava/lang/String;

    .line 893
    iput-object p2, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->file:Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 895
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 896
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getType()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;->valueOf(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;)Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->type:Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    .line 899
    :cond_0
    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v0

    if-gtz v0, :cond_1

    .line 900
    new-instance v0, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;

    const-string v1, "Field numbers must be positive integers."

    invoke-direct {v0, p0, v1, v2}, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/htc/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/htc/protobuf/Descriptors$1;)V

    throw v0

    .line 905
    :cond_1
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getOptions()Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->getPacked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 906
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

    .line 911
    :cond_2
    new-instance v0, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;

    const-string v1, "[packed = true] can only be specified for repeated primitive fields."

    invoke-direct {v0, p0, v1, v2}, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/htc/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/htc/protobuf/Descriptors$1;)V

    throw v0

    .line 917
    :cond_3
    if-eqz p5, :cond_6

    .line 918
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasExtendee()Z

    move-result v0

    if-nez v0, :cond_4

    .line 919
    new-instance v0, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;

    const-string v1, "FieldDescriptorProto.extendee not set for extension field."

    invoke-direct {v0, p0, v1, v2}, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/htc/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/htc/protobuf/Descriptors$1;)V

    throw v0

    .line 922
    :cond_4
    iput-object v2, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->containingType:Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 923
    if-eqz p3, :cond_5

    .line 924
    iput-object p3, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->extensionScope:Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 937
    :goto_0
    #getter for: Lcom/htc/protobuf/Descriptors$FileDescriptor;->pool:Lcom/htc/protobuf/Descriptors$DescriptorPool;
    invoke-static {p2}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->access$1200(Lcom/htc/protobuf/Descriptors$FileDescriptor;)Lcom/htc/protobuf/Descriptors$DescriptorPool;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/Descriptors$DescriptorPool;->addSymbol(Lcom/htc/protobuf/Descriptors$GenericDescriptor;)V

    .line 938
    return-void

    .line 926
    :cond_5
    iput-object v2, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->extensionScope:Lcom/htc/protobuf/Descriptors$Descriptor;

    goto :goto_0

    .line 929
    :cond_6
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasExtendee()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 930
    new-instance v0, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;

    const-string v1, "FieldDescriptorProto.extendee set for non-extension field."

    invoke-direct {v0, p0, v1, v2}, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/htc/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/htc/protobuf/Descriptors$1;)V

    throw v0

    .line 933
    :cond_7
    iput-object p3, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->containingType:Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 934
    iput-object v2, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->extensionScope:Lcom/htc/protobuf/Descriptors$Descriptor;

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Lcom/htc/protobuf/Descriptors$FileDescriptor;Lcom/htc/protobuf/Descriptors$Descriptor;IZLcom/htc/protobuf/Descriptors$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .prologue
    .line 631
    invoke-direct/range {p0 .. p5}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;-><init>(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Lcom/htc/protobuf/Descriptors$FileDescriptor;Lcom/htc/protobuf/Descriptors$Descriptor;IZ)V

    return-void
.end method

.method static synthetic access$1100(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 631
    invoke-direct {p0, p1}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->setProto(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;)V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)V
    .locals 0
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .prologue
    .line 631
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

    .prologue
    const/16 v8, 0x22

    const/4 v7, 0x0

    .line 942
    iget-object v4, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v4}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasExtendee()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 943
    iget-object v4, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->file:Lcom/htc/protobuf/Descriptors$FileDescriptor;

    #getter for: Lcom/htc/protobuf/Descriptors$FileDescriptor;->pool:Lcom/htc/protobuf/Descriptors$DescriptorPool;
    invoke-static {v4}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->access$1200(Lcom/htc/protobuf/Descriptors$FileDescriptor;)Lcom/htc/protobuf/Descriptors$DescriptorPool;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v5}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getExtendee()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p0}, Lcom/htc/protobuf/Descriptors$DescriptorPool;->lookupSymbol(Ljava/lang/String;Lcom/htc/protobuf/Descriptors$GenericDescriptor;)Lcom/htc/protobuf/Descriptors$GenericDescriptor;

    move-result-object v1

    .line 945
    .local v1, extendee:Lcom/htc/protobuf/Descriptors$GenericDescriptor;
    instance-of v4, v1, Lcom/htc/protobuf/Descriptors$Descriptor;

    if-nez v4, :cond_0

    .line 946
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

    .line 949
    :cond_0
    check-cast v1, Lcom/htc/protobuf/Descriptors$Descriptor;

    .end local v1           #extendee:Lcom/htc/protobuf/Descriptors$GenericDescriptor;
    iput-object v1, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->containingType:Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 951
    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/htc/protobuf/Descriptors$Descriptor;->isExtensionNumber(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 952
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

    .line 959
    :cond_1
    iget-object v4, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v4}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasTypeName()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 960
    iget-object v4, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->file:Lcom/htc/protobuf/Descriptors$FileDescriptor;

    #getter for: Lcom/htc/protobuf/Descriptors$FileDescriptor;->pool:Lcom/htc/protobuf/Descriptors$DescriptorPool;
    invoke-static {v4}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->access$1200(Lcom/htc/protobuf/Descriptors$FileDescriptor;)Lcom/htc/protobuf/Descriptors$DescriptorPool;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v5}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getTypeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p0}, Lcom/htc/protobuf/Descriptors$DescriptorPool;->lookupSymbol(Ljava/lang/String;Lcom/htc/protobuf/Descriptors$GenericDescriptor;)Lcom/htc/protobuf/Descriptors$GenericDescriptor;

    move-result-object v2

    .line 963
    .local v2, typeDescriptor:Lcom/htc/protobuf/Descriptors$GenericDescriptor;
    iget-object v4, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v4}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasType()Z

    move-result v4

    if-nez v4, :cond_2

    .line 965
    instance-of v4, v2, Lcom/htc/protobuf/Descriptors$Descriptor;

    if-eqz v4, :cond_3

    .line 966
    sget-object v4, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;->MESSAGE:Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    iput-object v4, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->type:Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    .line 975
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v4

    sget-object v5, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v4, v5, :cond_6

    .line 976
    instance-of v4, v2, Lcom/htc/protobuf/Descriptors$Descriptor;

    if-nez v4, :cond_5

    .line 977
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

    .line 967
    :cond_3
    instance-of v4, v2, Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    if-eqz v4, :cond_4

    .line 968
    sget-object v4, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;->ENUM:Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    iput-object v4, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->type:Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    goto :goto_0

    .line 970
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

    .line 980
    :cond_5
    check-cast v2, Lcom/htc/protobuf/Descriptors$Descriptor;

    .end local v2           #typeDescriptor:Lcom/htc/protobuf/Descriptors$GenericDescriptor;
    iput-object v2, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->messageType:Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 982
    iget-object v4, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v4}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasDefaultValue()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 983
    new-instance v4, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;

    const-string v5, "Messages can\'t have default values."

    invoke-direct {v4, p0, v5, v7}, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/htc/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/htc/protobuf/Descriptors$1;)V

    throw v4

    .line 986
    .restart local v2       #typeDescriptor:Lcom/htc/protobuf/Descriptors$GenericDescriptor;
    :cond_6
    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v4

    sget-object v5, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->ENUM:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v4, v5, :cond_9

    .line 987
    instance-of v4, v2, Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    if-nez v4, :cond_7

    .line 988
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

    .line 991
    :cond_7
    check-cast v2, Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    .end local v2           #typeDescriptor:Lcom/htc/protobuf/Descriptors$GenericDescriptor;
    iput-object v2, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->enumType:Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    .line 1006
    :cond_8
    iget-object v4, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v4}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasDefaultValue()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1007
    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1008
    new-instance v4, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;

    const-string v5, "Repeated fields cannot have default values."

    invoke-direct {v4, p0, v5, v7}, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/htc/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/htc/protobuf/Descriptors$1;)V

    throw v4

    .line 993
    .restart local v2       #typeDescriptor:Lcom/htc/protobuf/Descriptors$GenericDescriptor;
    :cond_9
    new-instance v4, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;

    const-string v5, "Field with primitive type has type_name."

    invoke-direct {v4, p0, v5, v7}, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/htc/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/htc/protobuf/Descriptors$1;)V

    throw v4

    .line 997
    .end local v2           #typeDescriptor:Lcom/htc/protobuf/Descriptors$GenericDescriptor;
    :cond_a
    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v4

    sget-object v5, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-eq v4, v5, :cond_b

    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v4

    sget-object v5, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->ENUM:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v4, v5, :cond_8

    .line 999
    :cond_b
    new-instance v4, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;

    const-string v5, "Field with message or enum type missing type_name."

    invoke-direct {v4, p0, v5, v7}, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/htc/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/htc/protobuf/Descriptors$1;)V

    throw v4

    .line 1013
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

    .line 1095
    :cond_d
    :goto_1
    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    move-result v4

    if-nez v4, :cond_e

    .line 1096
    iget-object v4, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->file:Lcom/htc/protobuf/Descriptors$FileDescriptor;

    #getter for: Lcom/htc/protobuf/Descriptors$FileDescriptor;->pool:Lcom/htc/protobuf/Descriptors$DescriptorPool;
    invoke-static {v4}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->access$1200(Lcom/htc/protobuf/Descriptors$FileDescriptor;)Lcom/htc/protobuf/Descriptors$DescriptorPool;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/htc/protobuf/Descriptors$DescriptorPool;->addFieldByNumber(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)V

    .line 1099
    :cond_e
    iget-object v4, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->containingType:Lcom/htc/protobuf/Descriptors$Descriptor;

    if-eqz v4, :cond_13

    iget-object v4, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->containingType:Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-virtual {v4}, Lcom/htc/protobuf/Descriptors$Descriptor;->getOptions()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->getMessageSetWireFormat()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1101
    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1102
    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->isOptional()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v4

    sget-object v5, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;->MESSAGE:Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    if-eq v4, v5, :cond_13

    .line 1103
    :cond_f
    new-instance v4, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;

    const-string v5, "Extensions of MessageSets must be optional messages."

    invoke-direct {v4, p0, v5, v7}, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/htc/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/htc/protobuf/Descriptors$1;)V

    throw v4

    .line 1017
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

    .line 1066
    :catch_0
    move-exception v0

    .line 1067
    .local v0, e:Ljava/lang/NumberFormatException;
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

    .line 1071
    .local v3, validationException:Lcom/htc/protobuf/Descriptors$DescriptorValidationException;
    invoke-virtual {v3, v0}, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1072
    throw v3

    .line 1021
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v3           #validationException:Lcom/htc/protobuf/Descriptors$DescriptorValidationException;
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

    .line 1026
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

    .line 1030
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

    .line 1033
    :pswitch_4
    iget-object v4, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v4}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->defaultValue:Ljava/lang/Object;

    goto/16 :goto_1

    .line 1036
    :pswitch_5
    iget-object v4, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v4}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->defaultValue:Ljava/lang/Object;

    goto/16 :goto_1

    .line 1039
    :pswitch_6
    iget-object v4, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v4}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->defaultValue:Ljava/lang/Object;

    goto/16 :goto_1

    .line 1042
    :pswitch_7
    iget-object v4, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v4}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->defaultValue:Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 1046
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

    .line 1048
    :catch_1
    move-exception v0

    .line 1049
    .local v0, e:Lcom/htc/protobuf/TextFormat$InvalidEscapeSequenceException;
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

    .line 1054
    .end local v0           #e:Lcom/htc/protobuf/TextFormat$InvalidEscapeSequenceException;
    :pswitch_9
    iget-object v4, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->enumType:Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    iget-object v5, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v5}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/protobuf/Descriptors$EnumDescriptor;->findValueByName(Ljava/lang/String;)Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->defaultValue:Ljava/lang/Object;

    .line 1055
    iget-object v4, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->defaultValue:Ljava/lang/Object;

    if-nez v4, :cond_d

    .line 1056
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

    .line 1063
    :pswitch_a
    new-instance v4, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;

    const-string v5, "Message type had default value."

    const/4 v6, 0x0

    invoke-direct {v4, p0, v5, v6}, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/htc/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/htc/protobuf/Descriptors$1;)V

    throw v4
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1076
    :cond_10
    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1077
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->defaultValue:Ljava/lang/Object;

    goto/16 :goto_1

    .line 1079
    :cond_11
    sget-object v4, Lcom/htc/protobuf/Descriptors$1;->$SwitchMap$com$htc$protobuf$Descriptors$FieldDescriptor$JavaType:[I

    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    .line 1089
    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v4

    #getter for: Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->defaultDefault:Ljava/lang/Object;
    invoke-static {v4}, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->access$1700(Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->defaultValue:Ljava/lang/Object;

    goto/16 :goto_1

    .line 1083
    :pswitch_b
    iget-object v4, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->enumType:Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    invoke-virtual {v4}, Lcom/htc/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->defaultValue:Ljava/lang/Object;

    goto/16 :goto_1

    .line 1086
    :pswitch_c
    iput-object v7, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->defaultValue:Ljava/lang/Object;

    goto/16 :goto_1

    .line 1107
    :cond_12
    new-instance v4, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;

    const-string v5, "MessageSets cannot have fields, only extensions."

    invoke-direct {v4, p0, v5, v7}, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/htc/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/htc/protobuf/Descriptors$1;)V

    throw v4

    .line 1111
    :cond_13
    return-void

    .line 1013
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

    .line 1079
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private setProto(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;)V
    .locals 0
    .parameter "proto"

    .prologue
    .line 1115
    iput-object p1, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    .line 1116
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)I
    .locals 2
    .parameter "other"

    .prologue
    .line 790
    iget-object v0, p1, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->containingType:Lcom/htc/protobuf/Descriptors$Descriptor;

    iget-object v1, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->containingType:Lcom/htc/protobuf/Descriptors$Descriptor;

    if-eq v0, v1, :cond_0

    .line 791
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "FieldDescriptors can only be compared to other FieldDescriptors for fields of the same message type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 795
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
    .parameter "x0"

    .prologue
    .line 631
    check-cast p1, Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->compareTo(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)I

    move-result v0

    return v0
.end method

.method public getContainingType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 730
    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->containingType:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getDefaultValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 711
    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v0, v1, :cond_0

    .line 712
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "FieldDescriptor.getDefaultValue() called on an embedded message field."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 716
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->defaultValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getEnumType()Lcom/htc/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 772
    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->ENUM:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-eq v0, v1, :cond_0

    .line 773
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This field is not of enum type."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 776
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->enumType:Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    return-object v0
.end method

.method public bridge synthetic getEnumType()Lcom/htc/protobuf/Internal$EnumLiteMap;
    .locals 1

    .prologue
    .line 631
    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getEnumType()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getExtensionScope()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 2

    .prologue
    .line 754
    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    move-result v0

    if-nez v0, :cond_0

    .line 755
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This field is not an extension."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 758
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->extensionScope:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getFile()Lcom/htc/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .prologue
    .line 667
    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->file:Lcom/htc/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 653
    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 638
    iget v0, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->index:I

    return v0
.end method

.method public getJavaType()Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;
    .locals 1

    .prologue
    .line 659
    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->type:Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;->getJavaType()Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    return-object v0
.end method

.method public getLiteJavaType()Lcom/htc/protobuf/WireFormat$JavaType;
    .locals 1

    .prologue
    .line 663
    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getLiteType()Lcom/htc/protobuf/WireFormat$FieldType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/WireFormat$FieldType;->getJavaType()Lcom/htc/protobuf/WireFormat$JavaType;

    move-result-object v0

    return-object v0
.end method

.method public getLiteType()Lcom/htc/protobuf/WireFormat$FieldType;
    .locals 2

    .prologue
    .line 674
    sget-object v0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->table:[Lcom/htc/protobuf/WireFormat$FieldType;

    iget-object v1, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->type:Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v1}, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getMessageType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 2

    .prologue
    .line 763
    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-eq v0, v1, :cond_0

    .line 764
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This field is not of message type."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 767
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->messageType:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumber()I
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getNumber()I

    move-result v0

    return v0
.end method

.method public getOptions()Lcom/htc/protobuf/DescriptorProtos$FieldOptions;
    .locals 1

    .prologue
    .line 720
    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getOptions()Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;
    .locals 1

    .prologue
    .line 670
    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->type:Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    return-object v0
.end method

.method public hasDefaultValue()Z
    .locals 1

    .prologue
    .line 703
    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasDefaultValue()Z

    move-result v0

    return v0
.end method

.method public internalMergeFrom(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/MessageLite;)Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1
    .parameter "to"
    .parameter "from"

    .prologue
    .line 1126
    check-cast p1, Lcom/htc/protobuf/Message$Builder;

    .end local p1
    check-cast p2, Lcom/htc/protobuf/Message;

    .end local p2
    invoke-interface {p1, p2}, Lcom/htc/protobuf/Message$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;

    move-result-object v0

    return-object v0
.end method

.method public isExtension()Z
    .locals 1

    .prologue
    .line 723
    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasExtendee()Z

    move-result v0

    return v0
.end method

.method public isOptional()Z
    .locals 2

    .prologue
    .line 689
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

    .prologue
    .line 699
    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getOptions()Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->getPacked()Z

    move-result v0

    return v0
.end method

.method public isRepeated()Z
    .locals 2

    .prologue
    .line 694
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

    .prologue
    .line 684
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

    .prologue
    .line 641
    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    return-object v0
.end method

.method public bridge synthetic toProto()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 631
    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->toProto()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method
