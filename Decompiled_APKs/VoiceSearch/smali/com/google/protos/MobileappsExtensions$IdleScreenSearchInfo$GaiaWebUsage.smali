.class public final enum Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;
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
    name = "GaiaWebUsage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;

.field public static final enum AUTO_LOGIN:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;

.field public static final enum OPT_LOGIN:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;

.field public static final enum REJECT_OPT_LOGIN:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;

.field public static final enum REJECT_REQ_LOGIN:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;

.field public static final enum REQ_LOGIN:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;

.field public static final enum SKIP_OPT_LOGIN:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;",
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

    .line 4263
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;

    const-string v1, "AUTO_LOGIN"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;->AUTO_LOGIN:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;

    .line 4264
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;

    const-string v1, "REQ_LOGIN"

    invoke-direct {v0, v1, v6, v6, v6}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;->REQ_LOGIN:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;

    .line 4265
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;

    const-string v1, "REJECT_REQ_LOGIN"

    invoke-direct {v0, v1, v7, v7, v7}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;->REJECT_REQ_LOGIN:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;

    .line 4266
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;

    const-string v1, "OPT_LOGIN"

    invoke-direct {v0, v1, v8, v8, v8}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;->OPT_LOGIN:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;

    .line 4267
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;

    const-string v1, "SKIP_OPT_LOGIN"

    invoke-direct {v0, v1, v9, v9, v9}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;->SKIP_OPT_LOGIN:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;

    .line 4268
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;

    const-string v1, "REJECT_OPT_LOGIN"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;->REJECT_OPT_LOGIN:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;

    .line 4261
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;

    sget-object v1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;->AUTO_LOGIN:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;->REQ_LOGIN:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;->REJECT_REQ_LOGIN:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;->OPT_LOGIN:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;->SKIP_OPT_LOGIN:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;->REJECT_OPT_LOGIN:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;->$VALUES:[Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;

    .line 4298
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage$1;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage$1;-><init>()V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 4307
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4308
    iput p4, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;->value:I

    .line 4309
    return-void
.end method

.method public static valueOf(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;
    .locals 1
    .parameter "value"

    .prologue
    .line 4282
    packed-switch p0, :pswitch_data_0

    .line 4289
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 4283
    :pswitch_0
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;->AUTO_LOGIN:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;

    goto :goto_0

    .line 4284
    :pswitch_1
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;->REQ_LOGIN:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;

    goto :goto_0

    .line 4285
    :pswitch_2
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;->REJECT_REQ_LOGIN:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;

    goto :goto_0

    .line 4286
    :pswitch_3
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;->OPT_LOGIN:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;

    goto :goto_0

    .line 4287
    :pswitch_4
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;->SKIP_OPT_LOGIN:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;

    goto :goto_0

    .line 4288
    :pswitch_5
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;->REJECT_OPT_LOGIN:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;

    goto :goto_0

    .line 4282
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

.method public static valueOf(Ljava/lang/String;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;
    .locals 1
    .parameter

    .prologue
    .line 4261
    const-class v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;

    return-object v0
.end method

.method public static values()[Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;
    .locals 1

    .prologue
    .line 4261
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;->$VALUES:[Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;

    invoke-virtual {v0}, [Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 4279
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$GaiaWebUsage;->value:I

    return v0
.end method
