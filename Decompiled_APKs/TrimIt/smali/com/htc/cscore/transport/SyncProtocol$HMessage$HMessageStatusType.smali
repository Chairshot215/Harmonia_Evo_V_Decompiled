.class public final enum Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;
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
    name = "HMessageStatusType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;",
        ">;",
        "Lcom/htc/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;

.field public static final enum MessagePendingSend:Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;

.field public static final enum MessageReceived:Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;

.field public static final enum MessageSendFailed:Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;

.field public static final enum MessageSendPartialSuccess:Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;

.field public static final enum MessageSendSuccess:Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;

.field public static final enum MessageUnknownStatus:Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;

.field public static final enum MessageWaitingForAttachment:Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;

.field private static final VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;

.field private static internalValueMap:Lcom/htc/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final index:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 11425
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;

    const-string v1, "MessageUnknownStatus"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;->MessageUnknownStatus:Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;

    .line 11426
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;

    const-string v1, "MessagePendingSend"

    invoke-direct {v0, v1, v6, v6, v6}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;->MessagePendingSend:Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;

    .line 11427
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;

    const-string v1, "MessageSendSuccess"

    invoke-direct {v0, v1, v7, v7, v7}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;->MessageSendSuccess:Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;

    .line 11428
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;

    const-string v1, "MessageSendFailed"

    invoke-direct {v0, v1, v8, v8, v8}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;->MessageSendFailed:Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;

    .line 11429
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;

    const-string v1, "MessageReceived"

    invoke-direct {v0, v1, v9, v9, v9}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;->MessageReceived:Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;

    .line 11430
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;

    const-string v1, "MessageSendPartialSuccess"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;->MessageSendPartialSuccess:Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;

    .line 11431
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;

    const-string v1, "MessageWaitingForAttachment"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;->MessageWaitingForAttachment:Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;

    .line 11423
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;->MessageUnknownStatus:Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;->MessagePendingSend:Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;->MessageSendSuccess:Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;->MessageSendFailed:Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;->MessageReceived:Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;->MessageSendPartialSuccess:Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;->MessageWaitingForAttachment:Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;->$VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;

    .line 11455
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType$1;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType$1;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;->internalValueMap:Lcom/htc/protobuf/Internal$EnumLiteMap;

    .line 11475
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;->MessageUnknownStatus:Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;->MessagePendingSend:Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;->MessageSendSuccess:Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;->MessageSendFailed:Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;->MessageReceived:Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;->MessageSendPartialSuccess:Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;->MessageWaitingForAttachment:Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;->VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;

    .line 11494
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 11495
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
    .line 11488
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11489
    iput p3, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;->index:I

    .line 11490
    iput p4, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;->value:I

    .line 11491
    return-void
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 11472
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

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
            "Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 11452
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;->internalValueMap:Lcom/htc/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;
    .locals 1
    .parameter "value"

    .prologue
    .line 11438
    packed-switch p0, :pswitch_data_0

    .line 11446
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 11439
    :pswitch_0
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;->MessageUnknownStatus:Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;

    goto :goto_0

    .line 11440
    :pswitch_1
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;->MessagePendingSend:Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;

    goto :goto_0

    .line 11441
    :pswitch_2
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;->MessageSendSuccess:Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;

    goto :goto_0

    .line 11442
    :pswitch_3
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;->MessageSendFailed:Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;

    goto :goto_0

    .line 11443
    :pswitch_4
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;->MessageReceived:Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;

    goto :goto_0

    .line 11444
    :pswitch_5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;->MessageSendPartialSuccess:Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;

    goto :goto_0

    .line 11445
    :pswitch_6
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;->MessageWaitingForAttachment:Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;

    goto :goto_0

    .line 11438
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static valueOf(Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;
    .locals 2
    .parameter "desc"

    .prologue
    .line 11480
    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;->getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 11481
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11484
    :cond_0
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;->VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;

    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;
    .locals 1
    .parameter "name"

    .prologue
    .line 11423
    const-class v0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;

    return-object v0
.end method

.method public static values()[Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;
    .locals 1

    .prologue
    .line 11423
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;->$VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;

    invoke-virtual {v0}, [Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/htc/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 11468
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;->getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 11435
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 11464
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;->getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessage$HMessageStatusType;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
