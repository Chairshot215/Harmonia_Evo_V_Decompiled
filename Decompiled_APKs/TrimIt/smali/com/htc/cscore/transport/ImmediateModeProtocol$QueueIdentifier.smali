.class public final enum Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;
.super Ljava/lang/Enum;
.source "ImmediateModeProtocol.java"

# interfaces
.implements Lcom/htc/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/ImmediateModeProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "QueueIdentifier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;",
        ">;",
        "Lcom/htc/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;

.field public static final enum Default:Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;

.field public static final enum DefaultFullMerge:Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;

.field public static final enum SimpleSettings:Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;

.field private static final VALUES:[Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;

.field private static internalValueMap:Lcom/htc/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;",
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

    .line 12
    new-instance v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;

    const-string v1, "Default"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;->Default:Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;

    .line 13
    new-instance v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;

    const-string v1, "DefaultFullMerge"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;->DefaultFullMerge:Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;

    .line 14
    new-instance v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;

    const-string v1, "SimpleSettings"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;->SimpleSettings:Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;

    .line 10
    new-array v0, v5, [Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;

    sget-object v1, Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;->Default:Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;->DefaultFullMerge:Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;->SimpleSettings:Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;->$VALUES:[Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;

    .line 34
    new-instance v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier$1;

    invoke-direct {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier$1;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;->internalValueMap:Lcom/htc/protobuf/Internal$EnumLiteMap;

    .line 54
    new-array v0, v5, [Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;

    sget-object v1, Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;->Default:Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;->DefaultFullMerge:Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;->SimpleSettings:Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;->VALUES:[Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;

    .line 73
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 74
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
    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 68
    iput p3, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;->index:I

    .line 69
    iput p4, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;->value:I

    .line 70
    return-void
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 51
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->getEnumTypes()Ljava/util/List;

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
            "Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    sget-object v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;->internalValueMap:Lcom/htc/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;
    .locals 1
    .parameter "value"

    .prologue
    .line 21
    packed-switch p0, :pswitch_data_0

    .line 25
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 22
    :pswitch_0
    sget-object v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;->Default:Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;

    goto :goto_0

    .line 23
    :pswitch_1
    sget-object v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;->DefaultFullMerge:Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;

    goto :goto_0

    .line 24
    :pswitch_2
    sget-object v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;->SimpleSettings:Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;

    goto :goto_0

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;)Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;
    .locals 2
    .parameter "desc"

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;->getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    sget-object v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;->VALUES:[Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;

    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;
    .locals 1
    .parameter "name"

    .prologue
    .line 10
    const-class v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;

    return-object v0
.end method

.method public static values()[Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;->$VALUES:[Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;

    invoke-virtual {v0}, [Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/htc/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;->getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 43
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;->getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
