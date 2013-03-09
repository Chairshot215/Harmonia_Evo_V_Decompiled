.class public final enum Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;
.super Ljava/lang/Enum;
.source "PBHandsetPolicyPacket.java"

# interfaces
.implements Lcom/htc/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PolicyStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;",
        ">;",
        "Lcom/htc/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;

.field public static final enum NEW_POLICIES:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;

.field public static final enum UPDATE_TO_DATE:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;

.field private static final VALUES:[Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;

.field private static internalValueMap:Lcom/htc/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;",
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
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 408
    new-instance v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;

    const-string v1, "UPDATE_TO_DATE"

    const/16 v2, 0x64

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;->UPDATE_TO_DATE:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;

    .line 409
    new-instance v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;

    const-string v1, "NEW_POLICIES"

    const/16 v2, 0x65

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;->NEW_POLICIES:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;

    .line 406
    new-array v0, v5, [Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;

    sget-object v1, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;->UPDATE_TO_DATE:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;->NEW_POLICIES:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;->$VALUES:[Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;

    .line 428
    new-instance v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus$1;

    invoke-direct {v0}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus$1;-><init>()V

    sput-object v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;->internalValueMap:Lcom/htc/protobuf/Internal$EnumLiteMap;

    .line 448
    new-array v0, v5, [Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;

    sget-object v1, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;->UPDATE_TO_DATE:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;->NEW_POLICIES:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;->VALUES:[Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;

    .line 467
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 468
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
    .line 461
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 462
    iput p3, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;->index:I

    .line 463
    iput p4, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;->value:I

    .line 464
    return-void
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 445
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

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
            "Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 425
    sget-object v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;->internalValueMap:Lcom/htc/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;
    .locals 1
    .parameter "value"

    .prologue
    .line 416
    packed-switch p0, :pswitch_data_0

    .line 419
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 417
    :pswitch_0
    sget-object v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;->UPDATE_TO_DATE:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;

    goto :goto_0

    .line 418
    :pswitch_1
    sget-object v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;->NEW_POLICIES:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;

    goto :goto_0

    .line 416
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;
    .locals 2
    .parameter "desc"

    .prologue
    .line 453
    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;->getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 454
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 457
    :cond_0
    sget-object v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;->VALUES:[Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;

    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;
    .locals 1
    .parameter "name"

    .prologue
    .line 406
    const-class v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;

    return-object v0
.end method

.method public static values()[Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;
    .locals 1

    .prologue
    .line 406
    sget-object v0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;->$VALUES:[Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;

    invoke-virtual {v0}, [Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/htc/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 441
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;->getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 413
    iget v0, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 437
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;->getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT$PolicyStatus;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
