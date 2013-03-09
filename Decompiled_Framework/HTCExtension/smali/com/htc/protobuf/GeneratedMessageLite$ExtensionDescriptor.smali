.class final Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;
.super Ljava/lang/Object;
.source "GeneratedMessageLite.java"

# interfaces
.implements Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ExtensionDescriptor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/protobuf/FieldSet$FieldDescriptorLite",
        "<",
        "Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field private final enumTypeMap:Lcom/htc/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/protobuf/Internal$EnumLiteMap",
            "<*>;"
        }
    .end annotation
.end field

.field private final isPacked:Z

.field private final isRepeated:Z

.field private final number:I

.field private final type:Lcom/htc/protobuf/WireFormat$FieldType;


# direct methods
.method private constructor <init>(Lcom/htc/protobuf/Internal$EnumLiteMap;ILcom/htc/protobuf/WireFormat$FieldType;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/protobuf/Internal$EnumLiteMap",
            "<*>;I",
            "Lcom/htc/protobuf/WireFormat$FieldType;",
            "ZZ)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;->enumTypeMap:Lcom/htc/protobuf/Internal$EnumLiteMap;

    iput p2, p0, Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    iput-object p3, p0, Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;->type:Lcom/htc/protobuf/WireFormat$FieldType;

    iput-boolean p4, p0, Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated:Z

    iput-boolean p5, p0, Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/protobuf/Internal$EnumLiteMap;ILcom/htc/protobuf/WireFormat$FieldType;ZZLcom/htc/protobuf/GeneratedMessageLite$1;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;-><init>(Lcom/htc/protobuf/Internal$EnumLiteMap;ILcom/htc/protobuf/WireFormat$FieldType;ZZ)V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;)I
    .locals 2

    iget v0, p0, Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    iget v1, p1, Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p0, p1}, Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;->compareTo(Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;)I

    move-result v0

    return v0
.end method

.method public getEnumType()Lcom/htc/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/htc/protobuf/Internal$EnumLiteMap",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;->enumTypeMap:Lcom/htc/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public getLiteJavaType()Lcom/htc/protobuf/WireFormat$JavaType;
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;->type:Lcom/htc/protobuf/WireFormat$FieldType;

    invoke-virtual {v0}, Lcom/htc/protobuf/WireFormat$FieldType;->getJavaType()Lcom/htc/protobuf/WireFormat$JavaType;

    move-result-object v0

    return-object v0
.end method

.method public getLiteType()Lcom/htc/protobuf/WireFormat$FieldType;
    .locals 1

    iget-object v0, p0, Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;->type:Lcom/htc/protobuf/WireFormat$FieldType;

    return-object v0
.end method

.method public getNumber()I
    .locals 1

    iget v0, p0, Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    return v0
.end method

.method public internalMergeFrom(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/MessageLite;)Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    check-cast p1, Lcom/htc/protobuf/GeneratedMessageLite$Builder;

    check-cast p2, Lcom/htc/protobuf/GeneratedMessageLite;

    invoke-virtual {p1, p2}, Lcom/htc/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/htc/protobuf/GeneratedMessageLite;)Lcom/htc/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public isPacked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked:Z

    return v0
.end method

.method public isRepeated()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated:Z

    return v0
.end method
