.class public final enum Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;
.super Ljava/lang/Enum;
.source "ClientReportProto.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NetworkType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;

.field public static final enum CDMA:Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;

.field public static final enum CELLULAR:Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;

.field public static final enum EDGE:Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;

.field public static final enum GPRS:Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;

.field public static final enum THREE_G:Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;

.field public static final enum WIFI:Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;

.field public static final enum WIRED:Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;",
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
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 1398
    new-instance v0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;

    const-string v1, "WIFI"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;->WIFI:Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;

    .line 1399
    new-instance v0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;

    const-string v1, "EDGE"

    invoke-direct {v0, v1, v5, v5, v6}, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;->EDGE:Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;

    .line 1400
    new-instance v0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;

    const-string v1, "THREE_G"

    invoke-direct {v0, v1, v6, v6, v7}, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;->THREE_G:Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;

    .line 1401
    new-instance v0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;

    const-string v1, "GPRS"

    invoke-direct {v0, v1, v7, v7, v8}, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;->GPRS:Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;

    .line 1402
    new-instance v0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;

    const-string v1, "CDMA"

    invoke-direct {v0, v1, v8, v8, v9}, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;->CDMA:Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;

    .line 1403
    new-instance v0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;

    const-string v1, "CELLULAR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;->CELLULAR:Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;

    .line 1404
    new-instance v0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;

    const-string v1, "WIRED"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;->WIRED:Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;

    .line 1396
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;->WIFI:Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;->EDGE:Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;->THREE_G:Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;->GPRS:Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;->CDMA:Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;->CELLULAR:Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;->WIRED:Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;->$VALUES:[Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;

    .line 1436
    new-instance v0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 1445
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1446
    iput p4, p0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;->value:I

    .line 1447
    return-void
.end method

.method public static valueOf(I)Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;
    .locals 1
    .parameter "value"

    .prologue
    .line 1419
    packed-switch p0, :pswitch_data_0

    .line 1427
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1420
    :pswitch_0
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;->WIFI:Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;

    goto :goto_0

    .line 1421
    :pswitch_1
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;->EDGE:Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;

    goto :goto_0

    .line 1422
    :pswitch_2
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;->THREE_G:Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;

    goto :goto_0

    .line 1423
    :pswitch_3
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;->GPRS:Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;

    goto :goto_0

    .line 1424
    :pswitch_4
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;->CDMA:Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;

    goto :goto_0

    .line 1425
    :pswitch_5
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;->CELLULAR:Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;

    goto :goto_0

    .line 1426
    :pswitch_6
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;->WIRED:Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;

    goto :goto_0

    .line 1419
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

.method public static valueOf(Ljava/lang/String;)Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;
    .locals 1
    .parameter

    .prologue
    .line 1396
    const-class v0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;

    return-object v0
.end method

.method public static values()[Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;
    .locals 1

    .prologue
    .line 1396
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;->$VALUES:[Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;

    invoke-virtual {v0}, [Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 1416
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;->value:I

    return v0
.end method
