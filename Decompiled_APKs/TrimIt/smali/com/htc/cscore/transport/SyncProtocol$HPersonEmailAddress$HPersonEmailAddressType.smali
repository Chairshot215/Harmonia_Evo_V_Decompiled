.class public final enum Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;
.super Ljava/lang/Enum;
.source "SyncProtocol.java"

# interfaces
.implements Lcom/htc/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HPersonEmailAddressType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;",
        ">;",
        "Lcom/htc/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;

.field public static final enum EmailCustom:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;

.field public static final enum EmailHome:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;

.field public static final enum EmailOther:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;

.field public static final enum EmailWork:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;

.field private static final VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;

.field private static internalValueMap:Lcom/htc/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final index:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 27524
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;

    const-string v1, "EmailHome"

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;->EmailHome:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;

    .line 27525
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;

    const-string v1, "EmailWork"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;->EmailWork:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;

    .line 27526
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;

    const-string v1, "EmailOther"

    invoke-direct {v0, v1, v3, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;->EmailOther:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;

    .line 27527
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;

    const-string v1, "EmailCustom"

    invoke-direct {v0, v1, v4, v4, v6}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;->EmailCustom:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;

    .line 27522
    new-array v0, v6, [Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;->EmailHome:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;->EmailWork:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;->EmailOther:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;->EmailCustom:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;->$VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;

    .line 27548
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType$1;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType$1;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;->internalValueMap:Lcom/htc/protobuf/Internal$EnumLiteMap;

    .line 27568
    new-array v0, v6, [Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;->EmailHome:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;->EmailWork:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;->EmailOther:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;->EmailCustom:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;->VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;

    .line 27587
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 27588
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
    .line 27581
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27582
    iput p3, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;->index:I

    .line 27583
    iput p4, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;->value:I

    .line 27584
    return-void
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 27565
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

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
            "Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27545
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;->internalValueMap:Lcom/htc/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;
    .locals 1
    .parameter "value"

    .prologue
    .line 27534
    packed-switch p0, :pswitch_data_0

    .line 27539
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 27535
    :pswitch_0
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;->EmailHome:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;

    goto :goto_0

    .line 27536
    :pswitch_1
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;->EmailWork:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;

    goto :goto_0

    .line 27537
    :pswitch_2
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;->EmailOther:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;

    goto :goto_0

    .line 27538
    :pswitch_3
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;->EmailCustom:Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;

    goto :goto_0

    .line 27534
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;)Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;
    .locals 2
    .parameter "desc"

    .prologue
    .line 27573
    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;->getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 27574
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27577
    :cond_0
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;->VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;

    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;
    .locals 1
    .parameter "name"

    .prologue
    .line 27522
    const-class v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;

    return-object v0
.end method

.method public static values()[Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;
    .locals 1

    .prologue
    .line 27522
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;->$VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;

    invoke-virtual {v0}, [Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/htc/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 27561
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;->getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 27531
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 27557
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;->getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress$HPersonEmailAddressType;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
