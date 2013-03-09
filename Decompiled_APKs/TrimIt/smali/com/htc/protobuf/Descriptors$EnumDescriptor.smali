.class public final Lcom/htc/protobuf/Descriptors$EnumDescriptor;
.super Ljava/lang/Object;
.source "Descriptors.java"

# interfaces
.implements Lcom/htc/protobuf/Descriptors$GenericDescriptor;
.implements Lcom/htc/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/Descriptors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EnumDescriptor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/protobuf/Descriptors$GenericDescriptor;",
        "Lcom/htc/protobuf/Internal$EnumLiteMap",
        "<",
        "Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field private final containingType:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private final file:Lcom/htc/protobuf/Descriptors$FileDescriptor;

.field private final fullName:Ljava/lang/String;

.field private final index:I

.field private proto:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

.field private values:[Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;


# direct methods
.method private constructor <init>(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;Lcom/htc/protobuf/Descriptors$FileDescriptor;Lcom/htc/protobuf/Descriptors$Descriptor;I)V
    .locals 7
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
    const/4 v5, 0x0

    .line 1204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1205
    iput p4, p0, Lcom/htc/protobuf/Descriptors$EnumDescriptor;->index:I

    .line 1206
    iput-object p1, p0, Lcom/htc/protobuf/Descriptors$EnumDescriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    .line 1207
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/htc/protobuf/Descriptors;->computeFullName(Lcom/htc/protobuf/Descriptors$FileDescriptor;Lcom/htc/protobuf/Descriptors$Descriptor;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p2, p3, v0}, Lcom/htc/protobuf/Descriptors;->access$1400(Lcom/htc/protobuf/Descriptors$FileDescriptor;Lcom/htc/protobuf/Descriptors$Descriptor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/protobuf/Descriptors$EnumDescriptor;->fullName:Ljava/lang/String;

    .line 1208
    iput-object p2, p0, Lcom/htc/protobuf/Descriptors$EnumDescriptor;->file:Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 1209
    iput-object p3, p0, Lcom/htc/protobuf/Descriptors$EnumDescriptor;->containingType:Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 1211
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->getValueCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1214
    new-instance v0, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;

    const-string v1, "Enums must contain at least one value."

    invoke-direct {v0, p0, v1, v5}, Lcom/htc/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/htc/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/htc/protobuf/Descriptors$1;)V

    throw v0

    .line 1218
    :cond_0
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->getValueCount()I

    move-result v0

    new-array v0, v0, [Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;

    iput-object v0, p0, Lcom/htc/protobuf/Descriptors$EnumDescriptor;->values:[Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;

    .line 1219
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->getValueCount()I

    move-result v0

    if-ge v4, v0, :cond_1

    .line 1220
    iget-object v6, p0, Lcom/htc/protobuf/Descriptors$EnumDescriptor;->values:[Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;

    new-instance v0, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;

    invoke-virtual {p1, v4}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->getValue(I)Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object v1

    move-object v2, p2

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;-><init>(Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;Lcom/htc/protobuf/Descriptors$FileDescriptor;Lcom/htc/protobuf/Descriptors$EnumDescriptor;ILcom/htc/protobuf/Descriptors$1;)V

    aput-object v0, v6, v4

    .line 1219
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1224
    :cond_1
    #getter for: Lcom/htc/protobuf/Descriptors$FileDescriptor;->pool:Lcom/htc/protobuf/Descriptors$DescriptorPool;
    invoke-static {p2}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->access$1200(Lcom/htc/protobuf/Descriptors$FileDescriptor;)Lcom/htc/protobuf/Descriptors$DescriptorPool;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/Descriptors$DescriptorPool;->addSymbol(Lcom/htc/protobuf/Descriptors$GenericDescriptor;)V

    .line 1225
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;Lcom/htc/protobuf/Descriptors$FileDescriptor;Lcom/htc/protobuf/Descriptors$Descriptor;ILcom/htc/protobuf/Descriptors$1;)V
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
    .line 1133
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/protobuf/Descriptors$EnumDescriptor;-><init>(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;Lcom/htc/protobuf/Descriptors$FileDescriptor;Lcom/htc/protobuf/Descriptors$Descriptor;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/protobuf/Descriptors$EnumDescriptor;Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1133
    invoke-direct {p0, p1}, Lcom/htc/protobuf/Descriptors$EnumDescriptor;->setProto(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;)V

    return-void
.end method

.method private setProto(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;)V
    .locals 3
    .parameter "proto"

    .prologue
    .line 1229
    iput-object p1, p0, Lcom/htc/protobuf/Descriptors$EnumDescriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    .line 1231
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/protobuf/Descriptors$EnumDescriptor;->values:[Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1232
    iget-object v1, p0, Lcom/htc/protobuf/Descriptors$EnumDescriptor;->values:[Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;

    aget-object v1, v1, v0

    invoke-virtual {p1, v0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->getValue(I)Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object v2

    #calls: Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;->setProto(Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;)V
    invoke-static {v1, v2}, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;->access$2000(Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;)V

    .line 1231
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1234
    :cond_0
    return-void
.end method


# virtual methods
.method public findValueByName(Ljava/lang/String;)Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;
    .locals 4
    .parameter "name"

    .prologue
    .line 1173
    iget-object v1, p0, Lcom/htc/protobuf/Descriptors$EnumDescriptor;->file:Lcom/htc/protobuf/Descriptors$FileDescriptor;

    #getter for: Lcom/htc/protobuf/Descriptors$FileDescriptor;->pool:Lcom/htc/protobuf/Descriptors$DescriptorPool;
    invoke-static {v1}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->access$1200(Lcom/htc/protobuf/Descriptors$FileDescriptor;)Lcom/htc/protobuf/Descriptors$DescriptorPool;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/protobuf/Descriptors$EnumDescriptor;->fullName:Ljava/lang/String;

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

    .line 1175
    .local v0, result:Lcom/htc/protobuf/Descriptors$GenericDescriptor;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;

    if-eqz v1, :cond_0

    .line 1176
    check-cast v0, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;

    .line 1178
    .end local v0           #result:Lcom/htc/protobuf/Descriptors$GenericDescriptor;
    :goto_0
    return-object v0

    .restart local v0       #result:Lcom/htc/protobuf/Descriptors$GenericDescriptor;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findValueByNumber(I)Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2
    .parameter "number"

    .prologue
    .line 1189
    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$EnumDescriptor;->file:Lcom/htc/protobuf/Descriptors$FileDescriptor;

    #getter for: Lcom/htc/protobuf/Descriptors$FileDescriptor;->pool:Lcom/htc/protobuf/Descriptors$DescriptorPool;
    invoke-static {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->access$1200(Lcom/htc/protobuf/Descriptors$FileDescriptor;)Lcom/htc/protobuf/Descriptors$DescriptorPool;

    move-result-object v0

    #getter for: Lcom/htc/protobuf/Descriptors$DescriptorPool;->enumValuesByNumber:Ljava/util/Map;
    invoke-static {v0}, Lcom/htc/protobuf/Descriptors$DescriptorPool;->access$1800(Lcom/htc/protobuf/Descriptors$DescriptorPool;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/htc/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;

    invoke-direct {v1, p0, p1}, Lcom/htc/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;-><init>(Lcom/htc/protobuf/Descriptors$GenericDescriptor;I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method

.method public bridge synthetic findValueByNumber(I)Lcom/htc/protobuf/Internal$EnumLite;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1133
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/Descriptors$EnumDescriptor;->findValueByNumber(I)Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getContainingType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1157
    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$EnumDescriptor;->containingType:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getFile()Lcom/htc/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .prologue
    .line 1154
    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$EnumDescriptor;->file:Lcom/htc/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1151
    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$EnumDescriptor;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 1139
    iget v0, p0, Lcom/htc/protobuf/Descriptors$EnumDescriptor;->index:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$EnumDescriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOptions()Lcom/htc/protobuf/DescriptorProtos$EnumOptions;
    .locals 1

    .prologue
    .line 1160
    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$EnumDescriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->getOptions()Lcom/htc/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public getValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1164
    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$EnumDescriptor;->values:[Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toProto()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;
    .locals 1

    .prologue
    .line 1142
    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$EnumDescriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    return-object v0
.end method

.method public bridge synthetic toProto()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 1133
    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$EnumDescriptor;->toProto()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method
