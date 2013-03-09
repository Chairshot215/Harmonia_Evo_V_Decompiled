.class public final enum Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;
.super Ljava/lang/Enum;
.source "MobileappsExtensions.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeviceOrientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;

.field public static final enum LANDSCAPE:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;

.field public static final enum PORTRAIT:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4222
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;

    const-string v1, "PORTRAIT"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;->PORTRAIT:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;

    .line 4223
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;

    const-string v1, "LANDSCAPE"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;->LANDSCAPE:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;

    .line 4220
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;

    sget-object v1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;->PORTRAIT:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;->LANDSCAPE:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;->$VALUES:[Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;

    .line 4245
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation$1;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation$1;-><init>()V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 4254
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4255
    iput p4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;->value:I

    .line 4256
    return-void
.end method

.method public static valueOf(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;
    .locals 1
    .parameter "value"

    .prologue
    .line 4233
    packed-switch p0, :pswitch_data_0

    .line 4236
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 4234
    :pswitch_0
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;->PORTRAIT:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;

    goto :goto_0

    .line 4235
    :pswitch_1
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;->LANDSCAPE:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;

    goto :goto_0

    .line 4233
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;
    .locals 1
    .parameter

    .prologue
    .line 4220
    const-class v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;

    return-object v0
.end method

.method public static values()[Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;
    .locals 1

    .prologue
    .line 4220
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;->$VALUES:[Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;

    invoke-virtual {v0}, [Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 4230
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$DeviceOrientation;->value:I

    return v0
.end method
