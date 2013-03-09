.class public final enum Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;
.super Ljava/lang/Enum;
.source "SyncProtocol.java"

# interfaces
.implements Lcom/htc/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HProfileOrganizationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;",
        ">;",
        "Lcom/htc/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;

.field public static final enum Other:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;

.field private static final VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;

.field public static final enum Work:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;

.field private static internalValueMap:Lcom/htc/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final index:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 20535
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;

    const-string v1, "Work"

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;->Work:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;

    .line 20536
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;

    const-string v1, "Other"

    invoke-direct {v0, v1, v2, v2, v4}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;->Other:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;

    .line 20533
    new-array v0, v4, [Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;->Work:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;->Other:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;->$VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;

    .line 20555
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType$1;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType$1;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;->internalValueMap:Lcom/htc/protobuf/Internal$EnumLiteMap;

    .line 20575
    new-array v0, v4, [Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;->Work:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;->Other:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;->VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;

    .line 20594
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 20595
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
    .line 20588
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20589
    iput p3, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;->index:I

    .line 20590
    iput p4, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;->value:I

    .line 20591
    return-void
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 20572
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

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
            "Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20552
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;->internalValueMap:Lcom/htc/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;
    .locals 1
    .parameter "value"

    .prologue
    .line 20543
    packed-switch p0, :pswitch_data_0

    .line 20546
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 20544
    :pswitch_0
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;->Work:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;

    goto :goto_0

    .line 20545
    :pswitch_1
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;->Other:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;

    goto :goto_0

    .line 20543
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;
    .locals 2
    .parameter "desc"

    .prologue
    .line 20580
    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;->getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 20581
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20584
    :cond_0
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;->VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;

    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;
    .locals 1
    .parameter "name"

    .prologue
    .line 20533
    const-class v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;

    return-object v0
.end method

.method public static values()[Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;
    .locals 1

    .prologue
    .line 20533
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;->$VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;

    invoke-virtual {v0}, [Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/htc/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 20568
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;->getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 20540
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 20564
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;->getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
