.class public final enum Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$QueueIdentifier;
.super Ljava/lang/Enum;
.source "StatusServerProtocol.java"

# interfaces
.implements Lcom/htc/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "QueueIdentifier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$QueueIdentifier;",
        ">;",
        "Lcom/htc/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$QueueIdentifier;

.field public static final enum Default:Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$QueueIdentifier;

.field public static final enum DefaultFullMerge:Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$QueueIdentifier;

.field public static final enum SimpleSettings:Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$QueueIdentifier;

.field private static final VALUES:[Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$QueueIdentifier;

.field private static internalValueMap:Lcom/htc/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$QueueIdentifier;",
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

    .line 307
    new-instance v0, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$QueueIdentifier;

    const-string v1, "Default"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$QueueIdentifier;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$QueueIdentifier;->Default:Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$QueueIdentifier;

    .line 308
    new-instance v0, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$QueueIdentifier;

    const-string v1, "DefaultFullMerge"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$QueueIdentifier;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$QueueIdentifier;->DefaultFullMerge:Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$QueueIdentifier;

    .line 309
    new-instance v0, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$QueueIdentifier;

    const-string v1, "SimpleSettings"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$QueueIdentifier;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$QueueIdentifier;->SimpleSettings:Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$QueueIdentifier;

    .line 305
    new-array v0, v5, [Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$QueueIdentifier;

    sget-object v1, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$QueueIdentifier;->Default:Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$QueueIdentifier;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$QueueIdentifier;->DefaultFullMerge:Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$QueueIdentifier;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$QueueIdentifier;->SimpleSettings:Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$QueueIdentifier;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$QueueIdentifier;->$VALUES:[Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$QueueIdentifier;

    .line 329
    new-instance v0, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$QueueIdentifier$1;

    invoke-direct {v0}, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$QueueIdentifier$1;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$QueueIdentifier;->internalValueMap:Lcom/htc/protobuf/Internal$EnumLiteMap;

    .line 349
    new-array v0, v5, [Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$QueueIdentifier;

    sget-object v1, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$QueueIdentifier;->Default:Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$QueueIdentifier;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$QueueIdentifier;->DefaultFullMerge:Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$QueueIdentifier;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$QueueIdentifier;->SimpleSettings:Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$QueueIdentifier;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$QueueIdentifier;->VALUES:[Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$QueueIdentifier;

    .line 368
    invoke-static {}, Lcom/htc/cscore/transport/StatusServerProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 369
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
    .line 362
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 363
    iput p3, p0, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$QueueIdentifier;->index:I

    .line 364
    iput p4, p0, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$QueueIdentifier;->value:I

    .line 365
    return-void
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 346
    invoke-static {}, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

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
            "Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$QueueIdentifier;",
            ">;"
        }
    .end annotation

    .prologue
    .line 326
    sget-object v0, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$QueueIdentifier;->internalValueMap:Lcom/htc/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$QueueIdentifier;
    .locals 1
    .parameter "value"

    .prologue
    .line 316
    packed-switch p0, :pswitch_data_0

    .line 320
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 317
    :pswitch_0
    sget-object v0, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$QueueIdentifier;->Default:Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$QueueIdentifier;

    goto :goto_0

    .line 318
    :pswitch_1
    sget-object v0, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$QueueIdentifier;->DefaultFullMerge:Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$QueueIdentifier;

    goto :goto_0

    .line 319
    :pswitch_2
    sget-object v0, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$QueueIdentifier;->SimpleSettings:Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$QueueIdentifier;

    goto :goto_0

    .line 316
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;)Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$QueueIdentifier;
    .locals 2
    .parameter "desc"

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$QueueIdentifier;->getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 355
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 358
    :cond_0
    sget-object v0, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$QueueIdentifier;->VALUES:[Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$QueueIdentifier;

    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$QueueIdentifier;
    .locals 1
    .parameter "name"

    .prologue
    .line 305
    const-class v0, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$QueueIdentifier;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$QueueIdentifier;

    return-object v0
.end method

.method public static values()[Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$QueueIdentifier;
    .locals 1

    .prologue
    .line 305
    sget-object v0, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$QueueIdentifier;->$VALUES:[Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$QueueIdentifier;

    invoke-virtual {v0}, [Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$QueueIdentifier;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$QueueIdentifier;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/htc/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 342
    invoke-static {}, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$QueueIdentifier;->getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 313
    iget v0, p0, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$QueueIdentifier;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 338
    invoke-static {}, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$QueueIdentifier;->getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/htc/cscore/transport/StatusServerProtocol$StatusResponse$QueueIdentifier;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
