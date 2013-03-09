.class public final enum Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;
.super Ljava/lang/Enum;
.source "SyncProtocol.java"

# interfaces
.implements Lcom/htc/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HFootprintImageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;",
        ">;",
        "Lcom/htc/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;

.field public static final enum Handset:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;

.field public static final enum Thumbnail:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;

.field private static final VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;

.field public static final enum Web:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;

.field private static internalValueMap:Lcom/htc/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;",
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

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;

    const-string v1, "Web"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;->Web:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;

    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;

    const-string v1, "Handset"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;->Handset:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;

    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;

    const-string v1, "Thumbnail"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;->Thumbnail:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;

    new-array v0, v5, [Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;->Web:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;->Handset:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;->Thumbnail:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;->$VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;

    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType$1;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType$1;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;->internalValueMap:Lcom/htc/protobuf/Internal$EnumLiteMap;

    new-array v0, v5, [Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;->Web:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;->Handset:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;->Thumbnail:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;->VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;->index:I

    iput p4, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;->value:I

    return-void
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

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
            "Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;->internalValueMap:Lcom/htc/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;->Web:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;->Handset:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;->Thumbnail:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;
    .locals 2

    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;->getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;->VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;

    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;
    .locals 1

    const-class v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;

    return-object v0
.end method

.method public static values()[Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;
    .locals 1

    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;->$VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;

    invoke-virtual {v0}, [Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/htc/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;->getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;->getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
