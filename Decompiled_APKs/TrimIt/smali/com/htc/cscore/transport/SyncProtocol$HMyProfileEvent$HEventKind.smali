.class public final enum Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;
.super Ljava/lang/Enum;
.source "SyncProtocol.java"

# interfaces
.implements Lcom/htc/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HEventKind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;",
        ">;",
        "Lcom/htc/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;

.field public static final enum Anniversary:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;

.field public static final enum Birthday:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;

.field public static final enum Other:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;

.field private static final VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;

.field private static internalValueMap:Lcom/htc/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;",
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

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 18194
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;

    const-string v1, "Birthday"

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;->Birthday:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;

    .line 18195
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;

    const-string v1, "Anniversary"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;->Anniversary:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;

    .line 18196
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;

    const-string v1, "Other"

    invoke-direct {v0, v1, v3, v3, v5}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;->Other:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;

    .line 18192
    new-array v0, v5, [Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;->Birthday:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;->Anniversary:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;->Other:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;->$VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;

    .line 18216
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind$1;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind$1;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;->internalValueMap:Lcom/htc/protobuf/Internal$EnumLiteMap;

    .line 18236
    new-array v0, v5, [Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;->Birthday:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;->Anniversary:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;->Other:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;->VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;

    .line 18255
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 18256
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
    .line 18249
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18250
    iput p3, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;->index:I

    .line 18251
    iput p4, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;->value:I

    .line 18252
    return-void
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 18233
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

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
            "Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18213
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;->internalValueMap:Lcom/htc/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;
    .locals 1
    .parameter "value"

    .prologue
    .line 18203
    packed-switch p0, :pswitch_data_0

    .line 18207
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 18204
    :pswitch_0
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;->Birthday:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;

    goto :goto_0

    .line 18205
    :pswitch_1
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;->Anniversary:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;

    goto :goto_0

    .line 18206
    :pswitch_2
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;->Other:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;

    goto :goto_0

    .line 18203
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;
    .locals 2
    .parameter "desc"

    .prologue
    .line 18241
    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;->getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 18242
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18245
    :cond_0
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;->VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;

    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;
    .locals 1
    .parameter "name"

    .prologue
    .line 18192
    const-class v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;

    return-object v0
.end method

.method public static values()[Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;
    .locals 1

    .prologue
    .line 18192
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;->$VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;

    invoke-virtual {v0}, [Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/htc/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 18229
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;->getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 18200
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 18225
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;->getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
