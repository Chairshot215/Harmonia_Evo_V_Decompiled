.class public final enum Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;
.super Ljava/lang/Enum;
.source "SyncProtocol.java"

# interfaces
.implements Lcom/htc/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HResyncStateType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;",
        ">;",
        "Lcom/htc/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;

.field public static final enum ResyncStateBeginHandshake:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;

.field public static final enum ResyncStateEndHandshake:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;

.field public static final enum ResyncStateInProgress:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;

.field public static final enum ResyncStateInSync:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;

.field public static final enum ResyncStatePending:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;

.field private static final VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;

.field private static internalValueMap:Lcom/htc/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;",
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

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39831
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;

    const-string v1, "ResyncStateInSync"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;->ResyncStateInSync:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;

    .line 39832
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;

    const-string v1, "ResyncStateBeginHandshake"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;->ResyncStateBeginHandshake:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;

    .line 39833
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;

    const-string v1, "ResyncStatePending"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;->ResyncStatePending:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;

    .line 39834
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;

    const-string v1, "ResyncStateInProgress"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;->ResyncStateInProgress:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;

    .line 39835
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;

    const-string v1, "ResyncStateEndHandshake"

    invoke-direct {v0, v1, v6, v6, v6}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;->ResyncStateEndHandshake:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;

    .line 39829
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;->ResyncStateInSync:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;->ResyncStateBeginHandshake:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;->ResyncStatePending:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;->ResyncStateInProgress:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;->ResyncStateEndHandshake:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;->$VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;

    .line 39857
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType$1;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType$1;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;->internalValueMap:Lcom/htc/protobuf/Internal$EnumLiteMap;

    .line 39877
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;->ResyncStateInSync:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;->ResyncStateBeginHandshake:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;->ResyncStatePending:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;->ResyncStateInProgress:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;->ResyncStateEndHandshake:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;->VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;

    .line 39896
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 39897
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
    .line 39890
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39891
    iput p3, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;->index:I

    .line 39892
    iput p4, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;->value:I

    .line 39893
    return-void
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 39874
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

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
            "Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39854
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;->internalValueMap:Lcom/htc/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;
    .locals 1
    .parameter "value"

    .prologue
    .line 39842
    packed-switch p0, :pswitch_data_0

    .line 39848
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 39843
    :pswitch_0
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;->ResyncStateInSync:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;

    goto :goto_0

    .line 39844
    :pswitch_1
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;->ResyncStateBeginHandshake:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;

    goto :goto_0

    .line 39845
    :pswitch_2
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;->ResyncStatePending:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;

    goto :goto_0

    .line 39846
    :pswitch_3
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;->ResyncStateInProgress:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;

    goto :goto_0

    .line 39847
    :pswitch_4
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;->ResyncStateEndHandshake:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;

    goto :goto_0

    .line 39842
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static valueOf(Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;
    .locals 2
    .parameter "desc"

    .prologue
    .line 39882
    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;->getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 39883
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39886
    :cond_0
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;->VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;

    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;
    .locals 1
    .parameter "name"

    .prologue
    .line 39829
    const-class v0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;

    return-object v0
.end method

.method public static values()[Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;
    .locals 1

    .prologue
    .line 39829
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;->$VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;

    invoke-virtual {v0}, [Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/htc/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 39870
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;->getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 39839
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 39866
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;->getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$HResyncStateType;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
