.class public final enum Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$CellIdStatus;
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
    name = "CellIdStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$CellIdStatus;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$CellIdStatus;

.field public static final enum CHANGED:Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$CellIdStatus;

.field public static final enum SAME:Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$CellIdStatus;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$CellIdStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1357
    new-instance v0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$CellIdStatus;

    const-string v1, "SAME"

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$CellIdStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$CellIdStatus;->SAME:Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$CellIdStatus;

    .line 1358
    new-instance v0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$CellIdStatus;

    const-string v1, "CHANGED"

    invoke-direct {v0, v1, v2, v2, v4}, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$CellIdStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$CellIdStatus;->CHANGED:Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$CellIdStatus;

    .line 1355
    new-array v0, v4, [Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$CellIdStatus;

    sget-object v1, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$CellIdStatus;->SAME:Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$CellIdStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$CellIdStatus;->CHANGED:Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$CellIdStatus;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$CellIdStatus;->$VALUES:[Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$CellIdStatus;

    .line 1380
    new-instance v0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$CellIdStatus$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$CellIdStatus$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$CellIdStatus;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 1389
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1390
    iput p4, p0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$CellIdStatus;->value:I

    .line 1391
    return-void
.end method

.method public static valueOf(I)Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$CellIdStatus;
    .locals 1
    .parameter "value"

    .prologue
    .line 1368
    packed-switch p0, :pswitch_data_0

    .line 1371
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1369
    :pswitch_0
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$CellIdStatus;->SAME:Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$CellIdStatus;

    goto :goto_0

    .line 1370
    :pswitch_1
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$CellIdStatus;->CHANGED:Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$CellIdStatus;

    goto :goto_0

    .line 1368
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$CellIdStatus;
    .locals 1
    .parameter

    .prologue
    .line 1355
    const-class v0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$CellIdStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$CellIdStatus;

    return-object v0
.end method

.method public static values()[Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$CellIdStatus;
    .locals 1

    .prologue
    .line 1355
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$CellIdStatus;->$VALUES:[Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$CellIdStatus;

    invoke-virtual {v0}, [Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$CellIdStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$CellIdStatus;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 1365
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$CellIdStatus;->value:I

    return v0
.end method
