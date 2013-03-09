.class public final enum Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;
.super Ljava/lang/Enum;
.source "ReliableMessaging.java"

# interfaces
.implements Lcom/htc/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;",
        ">;",
        "Lcom/htc/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;

.field public static final enum CreateSequenceRequest:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;

.field public static final enum CreateSequenceResponse:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;

.field public static final enum EndOfQueue:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;

.field public static final enum Payload:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;

.field public static final enum PayloadAck:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;

.field public static final enum RepositionSequenceFailure:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;

.field public static final enum RepositionSequenceRequest:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;

.field public static final enum SeqFault:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;

.field public static final enum StorePanic:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;

.field private static final VALUES:[Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;

.field private static internalValueMap:Lcom/htc/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;",
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

    .line 36
    new-instance v0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;

    const-string v1, "Payload"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;->Payload:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;

    .line 37
    new-instance v0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;

    const-string v1, "PayloadAck"

    invoke-direct {v0, v1, v6, v6, v6}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;->PayloadAck:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;

    .line 38
    new-instance v0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;

    const-string v1, "EndOfQueue"

    invoke-direct {v0, v1, v7, v7, v7}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;->EndOfQueue:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;

    .line 39
    new-instance v0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;

    const-string v1, "CreateSequenceRequest"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v8, v8, v2}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;->CreateSequenceRequest:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;

    .line 40
    new-instance v0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;

    const-string v1, "CreateSequenceResponse"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;->CreateSequenceResponse:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;

    .line 41
    new-instance v0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;

    const-string v1, "RepositionSequenceRequest"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/16 v4, 0xf

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;->RepositionSequenceRequest:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;

    .line 42
    new-instance v0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;

    const-string v1, "RepositionSequenceFailure"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/16 v4, 0x10

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;->RepositionSequenceFailure:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;

    .line 43
    new-instance v0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;

    const-string v1, "SeqFault"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/16 v4, 0x64

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;->SeqFault:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;

    .line 44
    new-instance v0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;

    const-string v1, "StorePanic"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x65

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;->StorePanic:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;

    .line 34
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;

    sget-object v1, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;->Payload:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;->PayloadAck:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;->EndOfQueue:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;->CreateSequenceRequest:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;->CreateSequenceResponse:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;->RepositionSequenceRequest:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;->RepositionSequenceFailure:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;->SeqFault:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;->StorePanic:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;->$VALUES:[Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;

    .line 70
    new-instance v0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType$1;

    invoke-direct {v0}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType$1;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;->internalValueMap:Lcom/htc/protobuf/Internal$EnumLiteMap;

    .line 90
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;

    sget-object v1, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;->Payload:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;->PayloadAck:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;->EndOfQueue:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;->CreateSequenceRequest:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;->CreateSequenceResponse:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;->RepositionSequenceRequest:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;->RepositionSequenceFailure:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;->SeqFault:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;->StorePanic:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;->VALUES:[Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;

    .line 109
    invoke-static {}, Lcom/htc/cscore/transport/ReliableMessaging;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 110
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
    .line 103
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 104
    iput p3, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;->index:I

    .line 105
    iput p4, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;->value:I

    .line 106
    return-void
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 87
    invoke-static {}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

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
            "Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    sget-object v0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;->internalValueMap:Lcom/htc/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;
    .locals 1
    .parameter "value"

    .prologue
    .line 51
    sparse-switch p0, :sswitch_data_0

    .line 61
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 52
    :sswitch_0
    sget-object v0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;->Payload:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;

    goto :goto_0

    .line 53
    :sswitch_1
    sget-object v0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;->PayloadAck:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;

    goto :goto_0

    .line 54
    :sswitch_2
    sget-object v0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;->EndOfQueue:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;

    goto :goto_0

    .line 55
    :sswitch_3
    sget-object v0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;->CreateSequenceRequest:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;

    goto :goto_0

    .line 56
    :sswitch_4
    sget-object v0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;->CreateSequenceResponse:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;

    goto :goto_0

    .line 57
    :sswitch_5
    sget-object v0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;->RepositionSequenceRequest:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;

    goto :goto_0

    .line 58
    :sswitch_6
    sget-object v0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;->RepositionSequenceFailure:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;

    goto :goto_0

    .line 59
    :sswitch_7
    sget-object v0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;->SeqFault:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;

    goto :goto_0

    .line 60
    :sswitch_8
    sget-object v0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;->StorePanic:Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;

    goto :goto_0

    .line 51
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0xa -> :sswitch_3
        0xb -> :sswitch_4
        0xf -> :sswitch_5
        0x10 -> :sswitch_6
        0x64 -> :sswitch_7
        0x65 -> :sswitch_8
    .end sparse-switch
.end method

.method public static valueOf(Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;
    .locals 2
    .parameter "desc"

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;->getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_0
    sget-object v0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;->VALUES:[Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;

    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;
    .locals 1
    .parameter "name"

    .prologue
    .line 34
    const-class v0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;

    return-object v0
.end method

.method public static values()[Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;->$VALUES:[Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;

    invoke-virtual {v0}, [Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/htc/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 83
    invoke-static {}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;->getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 79
    invoke-static {}, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;->getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/htc/cscore/transport/ReliableMessaging$PbReliableMessage$MessageType;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
