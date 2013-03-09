.class public final enum Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$MessageType;
.super Ljava/lang/Enum;
.source "ImmediateModeProtocol.java"

# interfaces
.implements Lcom/htc/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$MessageType;",
        ">;",
        "Lcom/htc/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$MessageType;

.field public static final enum LocationResult:Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$MessageType;

.field public static final enum SetKeepAliveInterval:Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$MessageType;

.field private static final VALUES:[Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$MessageType;

.field private static internalValueMap:Lcom/htc/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$MessageType;",
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

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1542
    new-instance v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$MessageType;

    const-string v1, "SetKeepAliveInterval"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$MessageType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$MessageType;->SetKeepAliveInterval:Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$MessageType;

    .line 1543
    new-instance v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$MessageType;

    const-string v1, "LocationResult"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$MessageType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$MessageType;->LocationResult:Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$MessageType;

    .line 1540
    new-array v0, v4, [Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$MessageType;

    sget-object v1, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$MessageType;->SetKeepAliveInterval:Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$MessageType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$MessageType;->LocationResult:Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$MessageType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$MessageType;->$VALUES:[Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$MessageType;

    .line 1562
    new-instance v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$MessageType$1;

    invoke-direct {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$MessageType$1;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$MessageType;->internalValueMap:Lcom/htc/protobuf/Internal$EnumLiteMap;

    .line 1582
    new-array v0, v4, [Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$MessageType;

    sget-object v1, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$MessageType;->SetKeepAliveInterval:Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$MessageType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$MessageType;->LocationResult:Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$MessageType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$MessageType;->VALUES:[Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$MessageType;

    .line 1601
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 1602
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
    .line 1595
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1596
    iput p3, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$MessageType;->index:I

    .line 1597
    iput p4, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$MessageType;->value:I

    .line 1598
    return-void
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 1579
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

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
            "Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$MessageType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1559
    sget-object v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$MessageType;->internalValueMap:Lcom/htc/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$MessageType;
    .locals 1
    .parameter "value"

    .prologue
    .line 1550
    packed-switch p0, :pswitch_data_0

    .line 1553
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1551
    :pswitch_0
    sget-object v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$MessageType;->SetKeepAliveInterval:Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$MessageType;

    goto :goto_0

    .line 1552
    :pswitch_1
    sget-object v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$MessageType;->LocationResult:Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$MessageType;

    goto :goto_0

    .line 1550
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$MessageType;
    .locals 2
    .parameter "desc"

    .prologue
    .line 1587
    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$MessageType;->getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1588
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1591
    :cond_0
    sget-object v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$MessageType;->VALUES:[Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$MessageType;

    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$MessageType;
    .locals 1
    .parameter "name"

    .prologue
    .line 1540
    const-class v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$MessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$MessageType;

    return-object v0
.end method

.method public static values()[Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$MessageType;
    .locals 1

    .prologue
    .line 1540
    sget-object v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$MessageType;->$VALUES:[Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$MessageType;

    invoke-virtual {v0}, [Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$MessageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$MessageType;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/htc/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 1575
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$MessageType;->getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 1547
    iget v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$MessageType;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 1571
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$MessageType;->getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$MessageType;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
