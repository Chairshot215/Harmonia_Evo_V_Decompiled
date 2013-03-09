.class public final enum Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;
.super Ljava/lang/Enum;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/htc/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Label"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;",
        ">;",
        "Lcom/htc/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

.field public static final enum LABEL_OPTIONAL:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

.field public static final enum LABEL_REPEATED:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

.field public static final enum LABEL_REQUIRED:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

.field private static final VALUES:[Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

.field private static internalValueMap:Lcom/htc/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final index:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 2346
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    const-string v1, "LABEL_OPTIONAL"

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->LABEL_OPTIONAL:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    .line 2347
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    const-string v1, "LABEL_REQUIRED"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->LABEL_REQUIRED:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    .line 2348
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    const-string v1, "LABEL_REPEATED"

    invoke-direct {v0, v1, v3, v3, v5}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->LABEL_REPEATED:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    .line 2344
    new-array v0, v5, [Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    sget-object v1, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->LABEL_OPTIONAL:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->LABEL_REQUIRED:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->LABEL_REPEATED:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->$VALUES:[Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    .line 2368
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label$1;

    invoke-direct {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label$1;-><init>()V

    sput-object v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->internalValueMap:Lcom/htc/protobuf/Internal$EnumLiteMap;

    .line 2388
    new-array v0, v5, [Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    sget-object v1, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->LABEL_OPTIONAL:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->LABEL_REQUIRED:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->LABEL_REPEATED:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->VALUES:[Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    .line 2407
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 2408
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
    .line 2401
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2402
    iput p3, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->index:I

    .line 2403
    iput p4, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->value:I

    .line 2404
    return-void
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 2385
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$Descriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

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
            "Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2365
    sget-object v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->internalValueMap:Lcom/htc/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;
    .locals 1
    .parameter "value"

    .prologue
    .line 2355
    packed-switch p0, :pswitch_data_0

    .line 2359
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 2356
    :pswitch_0
    sget-object v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->LABEL_OPTIONAL:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    goto :goto_0

    .line 2357
    :pswitch_1
    sget-object v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->LABEL_REQUIRED:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    goto :goto_0

    .line 2358
    :pswitch_2
    sget-object v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->LABEL_REPEATED:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    goto :goto_0

    .line 2355
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;
    .locals 2
    .parameter "desc"

    .prologue
    .line 2393
    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2394
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2397
    :cond_0
    sget-object v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->VALUES:[Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;
    .locals 1
    .parameter "name"

    .prologue
    .line 2344
    const-class v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    return-object v0
.end method

.method public static values()[Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;
    .locals 1

    .prologue
    .line 2344
    sget-object v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->$VALUES:[Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    invoke-virtual {v0}, [Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/htc/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 2381
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 2352
    iget v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 2377
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
