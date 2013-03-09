.class public final enum Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;
.super Ljava/lang/Enum;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/htc/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/DescriptorProtos$FieldOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;",
        ">;",
        "Lcom/htc/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;

.field public static final enum CORD:Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;

.field public static final enum STRING_PIECE:Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;

.field private static final VALUES:[Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;

.field private static internalValueMap:Lcom/htc/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final index:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 5622
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;

    const-string v1, "CORD"

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;->CORD:Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;

    .line 5623
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;

    const-string v1, "STRING_PIECE"

    invoke-direct {v0, v1, v2, v2, v4}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;->STRING_PIECE:Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;

    .line 5620
    new-array v0, v4, [Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;

    sget-object v1, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;->CORD:Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;->STRING_PIECE:Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;->$VALUES:[Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;

    .line 5642
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType$1;

    invoke-direct {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType$1;-><init>()V

    sput-object v0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;->internalValueMap:Lcom/htc/protobuf/Internal$EnumLiteMap;

    .line 5662
    new-array v0, v4, [Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;

    sget-object v1, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;->CORD:Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;->STRING_PIECE:Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;->VALUES:[Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;

    .line 5681
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 5682
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .parameter
    .parameter
    .parameter "index"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 5675
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 5676
    iput p3, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;->index:I

    .line 5677
    iput p4, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;->value:I

    .line 5678
    return-void
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 5659
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$Descriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    return-object v0
.end method

.method public static internalGetValueMap()Lcom/htc/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/htc/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5639
    sget-object v0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;->internalValueMap:Lcom/htc/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;
    .locals 1
    .parameter "value"

    .prologue
    .line 5630
    packed-switch p0, :pswitch_data_0

    .line 5633
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 5631
    :pswitch_0
    sget-object v0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;->CORD:Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;

    goto :goto_0

    .line 5632
    :pswitch_1
    sget-object v0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;->STRING_PIECE:Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;

    goto :goto_0

    .line 5630
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;
    .locals 2
    .parameter "desc"

    .prologue
    .line 5667
    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;->getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 5668
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5671
    :cond_0
    sget-object v0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;->VALUES:[Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;

    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;
    .locals 1
    .parameter "name"

    .prologue
    .line 5620
    const-class v0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;

    return-object v0
.end method

.method public static values()[Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;
    .locals 1

    .prologue
    .line 5620
    sget-object v0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;->$VALUES:[Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;

    invoke-virtual {v0}, [Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/htc/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 5655
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;->getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 5627
    iget v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 5651
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;->getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$CType;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
