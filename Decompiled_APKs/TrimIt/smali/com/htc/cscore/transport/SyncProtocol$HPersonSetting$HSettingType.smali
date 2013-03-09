.class public final enum Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;
.super Ljava/lang/Enum;
.source "SyncProtocol.java"

# interfaces
.implements Lcom/htc/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HSettingType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;",
        ">;",
        "Lcom/htc/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;

.field public static final enum SettingDate:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;

.field public static final enum SettingNumber:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;

.field public static final enum SettingString:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;

.field public static final enum SettingUnknown:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;

.field private static final VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;

.field private static internalValueMap:Lcom/htc/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;",
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

    .line 29342
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;

    const-string v1, "SettingUnknown"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;->SettingUnknown:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;

    .line 29343
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;

    const-string v1, "SettingDate"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;->SettingDate:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;

    .line 29344
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;

    const-string v1, "SettingString"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;->SettingString:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;

    .line 29345
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;

    const-string v1, "SettingNumber"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;->SettingNumber:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;

    .line 29340
    new-array v0, v6, [Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;->SettingUnknown:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;->SettingDate:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;->SettingString:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;->SettingNumber:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;->$VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;

    .line 29366
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType$1;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType$1;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;->internalValueMap:Lcom/htc/protobuf/Internal$EnumLiteMap;

    .line 29386
    new-array v0, v6, [Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;->SettingUnknown:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;->SettingDate:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;->SettingString:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;->SettingNumber:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;->VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;

    .line 29405
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 29406
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
    .line 29399
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29400
    iput p3, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;->index:I

    .line 29401
    iput p4, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;->value:I

    .line 29402
    return-void
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 29383
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

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
            "Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29363
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;->internalValueMap:Lcom/htc/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;
    .locals 1
    .parameter "value"

    .prologue
    .line 29352
    packed-switch p0, :pswitch_data_0

    .line 29357
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 29353
    :pswitch_0
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;->SettingUnknown:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;

    goto :goto_0

    .line 29354
    :pswitch_1
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;->SettingDate:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;

    goto :goto_0

    .line 29355
    :pswitch_2
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;->SettingString:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;

    goto :goto_0

    .line 29356
    :pswitch_3
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;->SettingNumber:Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;

    goto :goto_0

    .line 29352
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;)Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;
    .locals 2
    .parameter "desc"

    .prologue
    .line 29391
    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;->getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 29392
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29395
    :cond_0
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;->VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;

    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;
    .locals 1
    .parameter "name"

    .prologue
    .line 29340
    const-class v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;

    return-object v0
.end method

.method public static values()[Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;
    .locals 1

    .prologue
    .line 29340
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;->$VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;

    invoke-virtual {v0}, [Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/htc/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 29379
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;->getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 29349
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 29375
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;->getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting$HSettingType;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
