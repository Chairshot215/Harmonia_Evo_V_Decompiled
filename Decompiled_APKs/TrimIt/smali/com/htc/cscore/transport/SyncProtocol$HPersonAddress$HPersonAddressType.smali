.class public final enum Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;
.super Ljava/lang/Enum;
.source "SyncProtocol.java"

# interfaces
.implements Lcom/htc/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HPersonAddressType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;",
        ">;",
        "Lcom/htc/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;

.field public static final enum AddressHome:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;

.field public static final enum AddressOther:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;

.field public static final enum AddressWork:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;

.field private static final VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;

.field private static internalValueMap:Lcom/htc/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;",
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

    .line 26677
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;

    const-string v1, "AddressWork"

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;->AddressWork:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;

    .line 26678
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;

    const-string v1, "AddressHome"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;->AddressHome:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;

    .line 26679
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;

    const-string v1, "AddressOther"

    invoke-direct {v0, v1, v3, v3, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;->AddressOther:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;

    .line 26675
    new-array v0, v5, [Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;->AddressWork:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;->AddressHome:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;->AddressOther:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;->$VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;

    .line 26699
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType$1;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType$1;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;->internalValueMap:Lcom/htc/protobuf/Internal$EnumLiteMap;

    .line 26719
    new-array v0, v5, [Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;->AddressWork:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;->AddressHome:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;->AddressOther:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;->VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;

    .line 26738
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 26739
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
    .line 26732
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26733
    iput p3, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;->index:I

    .line 26734
    iput p4, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;->value:I

    .line 26735
    return-void
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 26716
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

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
            "Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26696
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;->internalValueMap:Lcom/htc/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;
    .locals 1
    .parameter "value"

    .prologue
    .line 26686
    packed-switch p0, :pswitch_data_0

    .line 26690
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 26687
    :pswitch_0
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;->AddressWork:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;

    goto :goto_0

    .line 26688
    :pswitch_1
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;->AddressHome:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;

    goto :goto_0

    .line 26689
    :pswitch_2
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;->AddressOther:Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;

    goto :goto_0

    .line 26686
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;
    .locals 2
    .parameter "desc"

    .prologue
    .line 26724
    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;->getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 26725
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26728
    :cond_0
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;->VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;

    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;
    .locals 1
    .parameter "name"

    .prologue
    .line 26675
    const-class v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;

    return-object v0
.end method

.method public static values()[Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;
    .locals 1

    .prologue
    .line 26675
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;->$VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;

    invoke-virtual {v0}, [Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/htc/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 26712
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;->getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 26683
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 26708
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;->getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress$HPersonAddressType;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
