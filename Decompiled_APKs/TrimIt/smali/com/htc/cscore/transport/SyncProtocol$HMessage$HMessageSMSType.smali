.class public final enum Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;
.super Ljava/lang/Enum;
.source "SyncProtocol.java"

# interfaces
.implements Lcom/htc/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$HMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HMessageSMSType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;",
        ">;",
        "Lcom/htc/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;

.field public static final enum MessageMMS:Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;

.field public static final enum MessageSMS:Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;

.field public static final enum MessageUnknownType:Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;

.field private static final VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;

.field private static internalValueMap:Lcom/htc/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;",
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

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11500
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;

    const-string v1, "MessageUnknownType"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;->MessageUnknownType:Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;

    .line 11501
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;

    const-string v1, "MessageSMS"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;->MessageSMS:Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;

    .line 11502
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;

    const-string v1, "MessageMMS"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;->MessageMMS:Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;

    .line 11498
    new-array v0, v5, [Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;->MessageUnknownType:Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;->MessageSMS:Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;->MessageMMS:Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;->$VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;

    .line 11522
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType$1;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType$1;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;->internalValueMap:Lcom/htc/protobuf/Internal$EnumLiteMap;

    .line 11542
    new-array v0, v5, [Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;->MessageUnknownType:Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;->MessageSMS:Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;->MessageMMS:Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;->VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;

    .line 11561
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 11562
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
    .line 11555
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11556
    iput p3, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;->index:I

    .line 11557
    iput p4, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;->value:I

    .line 11558
    return-void
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 11539
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

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
            "Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 11519
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;->internalValueMap:Lcom/htc/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;
    .locals 1
    .parameter "value"

    .prologue
    .line 11509
    packed-switch p0, :pswitch_data_0

    .line 11513
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 11510
    :pswitch_0
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;->MessageUnknownType:Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;

    goto :goto_0

    .line 11511
    :pswitch_1
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;->MessageSMS:Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;

    goto :goto_0

    .line 11512
    :pswitch_2
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;->MessageMMS:Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;

    goto :goto_0

    .line 11509
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;
    .locals 2
    .parameter "desc"

    .prologue
    .line 11547
    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;->getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 11548
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11551
    :cond_0
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;->VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;

    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;
    .locals 1
    .parameter "name"

    .prologue
    .line 11498
    const-class v0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;

    return-object v0
.end method

.method public static values()[Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;
    .locals 1

    .prologue
    .line 11498
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;->$VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;

    invoke-virtual {v0}, [Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/htc/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 11535
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;->getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 11506
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 11531
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;->getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageSMSType;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
