.class public final enum Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;
.super Ljava/lang/Enum;
.source "SyncProtocol.java"

# interfaces
.implements Lcom/htc/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HFriendRequestStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;",
        ">;",
        "Lcom/htc/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;

.field public static final enum Blocked:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;

.field public static final enum Friends:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;

.field public static final enum Invite:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;

.field public static final enum Pending:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;

.field public static final enum Potential:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;

.field public static final enum Unknown:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;

.field private static final VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;

.field private static internalValueMap:Lcom/htc/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;",
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

    .line 10863
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;

    const-string v1, "Unknown"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;->Unknown:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;

    .line 10864
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;

    const-string v1, "Potential"

    invoke-direct {v0, v1, v6, v6, v6}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;->Potential:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;

    .line 10865
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;

    const-string v1, "Pending"

    invoke-direct {v0, v1, v7, v7, v7}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;->Pending:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;

    .line 10866
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;

    const-string v1, "Friends"

    invoke-direct {v0, v1, v8, v8, v8}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;->Friends:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;

    .line 10867
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;

    const-string v1, "Blocked"

    invoke-direct {v0, v1, v9, v9, v9}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;->Blocked:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;

    .line 10868
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;

    const-string v1, "Invite"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;->Invite:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;

    .line 10861
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;->Unknown:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;->Potential:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;->Pending:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;

    aput-object v1, v0, v7

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;->Friends:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;

    aput-object v1, v0, v8

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;->Blocked:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;->Invite:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;->$VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;

    .line 10891
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus$1;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus$1;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;->internalValueMap:Lcom/htc/protobuf/Internal$EnumLiteMap;

    .line 10911
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;->Unknown:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;->Potential:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;->Pending:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;

    aput-object v1, v0, v7

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;->Friends:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;

    aput-object v1, v0, v8

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;->Blocked:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;->Invite:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;->VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;

    .line 10930
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 10931
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
    .line 10924
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 10925
    iput p3, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;->index:I

    .line 10926
    iput p4, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;->value:I

    .line 10927
    return-void
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 10908
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

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
            "Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 10888
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;->internalValueMap:Lcom/htc/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;
    .locals 1
    .parameter "value"

    .prologue
    .line 10875
    packed-switch p0, :pswitch_data_0

    .line 10882
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 10876
    :pswitch_0
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;->Unknown:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;

    goto :goto_0

    .line 10877
    :pswitch_1
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;->Potential:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;

    goto :goto_0

    .line 10878
    :pswitch_2
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;->Pending:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;

    goto :goto_0

    .line 10879
    :pswitch_3
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;->Friends:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;

    goto :goto_0

    .line 10880
    :pswitch_4
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;->Blocked:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;

    goto :goto_0

    .line 10881
    :pswitch_5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;->Invite:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;

    goto :goto_0

    .line 10875
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static valueOf(Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;)Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;
    .locals 2
    .parameter "desc"

    .prologue
    .line 10916
    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;->getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 10917
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10920
    :cond_0
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;->VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;

    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;
    .locals 1
    .parameter "name"

    .prologue
    .line 10861
    const-class v0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;

    return-object v0
.end method

.method public static values()[Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;
    .locals 1

    .prologue
    .line 10861
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;->$VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;

    invoke-virtual {v0}, [Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/htc/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 10904
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;->getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 10872
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 10900
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;->getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
