.class public final enum Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;
.super Ljava/lang/Enum;
.source "SyncProtocol.java"

# interfaces
.implements Lcom/htc/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HInsantMessagingType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;",
        ">;",
        "Lcom/htc/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;

.field public static final enum AIM:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;

.field public static final enum GoogleTalk:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;

.field public static final enum ICQ:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;

.field public static final enum Jabber:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;

.field public static final enum QQ:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;

.field private static final VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;

.field public static final enum WindowsLive:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;

.field public static final enum YahooOrSkype:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;

.field private static internalValueMap:Lcom/htc/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;",
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
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 19461
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;

    const-string v1, "AIM"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;->AIM:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;

    .line 19462
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;

    const-string v1, "WindowsLive"

    invoke-direct {v0, v1, v5, v5, v6}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;->WindowsLive:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;

    .line 19463
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;

    const-string v1, "YahooOrSkype"

    invoke-direct {v0, v1, v6, v6, v7}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;->YahooOrSkype:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;

    .line 19464
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;

    const-string v1, "QQ"

    invoke-direct {v0, v1, v7, v7, v8}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;->QQ:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;

    .line 19465
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;

    const-string v1, "GoogleTalk"

    invoke-direct {v0, v1, v8, v8, v9}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;->GoogleTalk:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;

    .line 19466
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;

    const-string v1, "ICQ"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;->ICQ:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;

    .line 19467
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;

    const-string v1, "Jabber"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;->Jabber:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;

    .line 19459
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;

    const/4 v1, 0x0

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;->AIM:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;->WindowsLive:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;->YahooOrSkype:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;->QQ:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;->GoogleTalk:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;->ICQ:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;->Jabber:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;->$VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;

    .line 19491
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType$1;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType$1;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;->internalValueMap:Lcom/htc/protobuf/Internal$EnumLiteMap;

    .line 19511
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;

    const/4 v1, 0x0

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;->AIM:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;->WindowsLive:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;->YahooOrSkype:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;->QQ:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;->GoogleTalk:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;->ICQ:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;->Jabber:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;->VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;

    .line 19530
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 19531
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
    .line 19524
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19525
    iput p3, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;->index:I

    .line 19526
    iput p4, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;->value:I

    .line 19527
    return-void
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 19508
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

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
            "Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19488
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;->internalValueMap:Lcom/htc/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;
    .locals 1
    .parameter "value"

    .prologue
    .line 19474
    packed-switch p0, :pswitch_data_0

    .line 19482
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 19475
    :pswitch_0
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;->AIM:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;

    goto :goto_0

    .line 19476
    :pswitch_1
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;->WindowsLive:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;

    goto :goto_0

    .line 19477
    :pswitch_2
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;->YahooOrSkype:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;

    goto :goto_0

    .line 19478
    :pswitch_3
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;->QQ:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;

    goto :goto_0

    .line 19479
    :pswitch_4
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;->GoogleTalk:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;

    goto :goto_0

    .line 19480
    :pswitch_5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;->ICQ:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;

    goto :goto_0

    .line 19481
    :pswitch_6
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;->Jabber:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;

    goto :goto_0

    .line 19474
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static valueOf(Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;
    .locals 2
    .parameter "desc"

    .prologue
    .line 19516
    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;->getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 19517
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19520
    :cond_0
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;->VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;

    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;
    .locals 1
    .parameter "name"

    .prologue
    .line 19459
    const-class v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;

    return-object v0
.end method

.method public static values()[Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;
    .locals 1

    .prologue
    .line 19459
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;->$VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;

    invoke-virtual {v0}, [Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/htc/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 19504
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;->getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 19471
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 19500
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;->getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$HInsantMessagingType;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
