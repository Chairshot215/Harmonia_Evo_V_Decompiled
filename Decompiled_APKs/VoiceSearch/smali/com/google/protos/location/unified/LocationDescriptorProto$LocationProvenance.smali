.class public final enum Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;
.super Ljava/lang/Enum;
.source "LocationDescriptorProto.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/location/unified/LocationDescriptorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LocationProvenance"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;

.field public static final enum GWS_MOBILE_CLIENT:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;

.field public static final enum LEGACY_MOBILE_FRONTEND_GLL_PARAM:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;

.field public static final enum LEGACY_MOBILE_FRONTEND_NEAR_PARAM:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;

.field public static final enum MAPS_FRONTEND_IL_DEBUG_IP:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;

.field public static final enum MOBILE_FE:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;

.field public static final enum TOOLBAR:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;

.field public static final enum UNREMARKABLE:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;",
            ">;"
        }
    .end annotation
.end field


# instance fields
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

    .line 218
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;

    const-string v1, "UNREMARKABLE"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;->UNREMARKABLE:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;

    .line 219
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;

    const-string v1, "TOOLBAR"

    invoke-direct {v0, v1, v6, v6, v6}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;->TOOLBAR:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;

    .line 220
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;

    const-string v1, "MOBILE_FE"

    invoke-direct {v0, v1, v7, v7, v7}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;->MOBILE_FE:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;

    .line 221
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;

    const-string v1, "LEGACY_MOBILE_FRONTEND_GLL_PARAM"

    invoke-direct {v0, v1, v8, v8, v8}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;->LEGACY_MOBILE_FRONTEND_GLL_PARAM:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;

    .line 222
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;

    const-string v1, "MAPS_FRONTEND_IL_DEBUG_IP"

    invoke-direct {v0, v1, v9, v9, v9}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;->MAPS_FRONTEND_IL_DEBUG_IP:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;

    .line 223
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;

    const-string v1, "LEGACY_MOBILE_FRONTEND_NEAR_PARAM"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;->LEGACY_MOBILE_FRONTEND_NEAR_PARAM:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;

    .line 224
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;

    const-string v1, "GWS_MOBILE_CLIENT"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;->GWS_MOBILE_CLIENT:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;

    .line 216
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;

    sget-object v1, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;->UNREMARKABLE:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;->TOOLBAR:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;->MOBILE_FE:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;->LEGACY_MOBILE_FRONTEND_GLL_PARAM:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;->MAPS_FRONTEND_IL_DEBUG_IP:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;->LEGACY_MOBILE_FRONTEND_NEAR_PARAM:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;->GWS_MOBILE_CLIENT:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;->$VALUES:[Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;

    .line 256
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance$1;

    invoke-direct {v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance$1;-><init>()V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 265
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 266
    iput p4, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;->value:I

    .line 267
    return-void
.end method

.method public static valueOf(I)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;
    .locals 1
    .parameter "value"

    .prologue
    .line 239
    packed-switch p0, :pswitch_data_0

    .line 247
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 240
    :pswitch_0
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;->UNREMARKABLE:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;

    goto :goto_0

    .line 241
    :pswitch_1
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;->TOOLBAR:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;

    goto :goto_0

    .line 242
    :pswitch_2
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;->MOBILE_FE:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;

    goto :goto_0

    .line 243
    :pswitch_3
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;->LEGACY_MOBILE_FRONTEND_GLL_PARAM:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;

    goto :goto_0

    .line 244
    :pswitch_4
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;->MAPS_FRONTEND_IL_DEBUG_IP:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;

    goto :goto_0

    .line 245
    :pswitch_5
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;->LEGACY_MOBILE_FRONTEND_NEAR_PARAM:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;

    goto :goto_0

    .line 246
    :pswitch_6
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;->GWS_MOBILE_CLIENT:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;

    goto :goto_0

    .line 239
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;
    .locals 1
    .parameter

    .prologue
    .line 216
    const-class v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;

    return-object v0
.end method

.method public static values()[Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;
    .locals 1

    .prologue
    .line 216
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;->$VALUES:[Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;

    invoke-virtual {v0}, [Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 236
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;->value:I

    return v0
.end method
