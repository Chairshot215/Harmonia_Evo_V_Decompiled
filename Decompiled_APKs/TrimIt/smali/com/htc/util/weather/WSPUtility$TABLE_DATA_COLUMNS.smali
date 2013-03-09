.class public final enum Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;
.super Ljava/lang/Enum;
.source "WSPUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/util/weather/WSPUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TABLE_DATA_COLUMNS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

.field public static final enum _id:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

.field public static final enum curConditionId:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

.field public static final enum curLocCountry:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

.field public static final enum curLocLat:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

.field public static final enum curLocLatTrim:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

.field public static final enum curLocLng:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

.field public static final enum curLocLngTrim:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

.field public static final enum curLocName:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

.field public static final enum curLocState:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

.field public static final enum curLocTimezoneId:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

.field public static final enum curTempC:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

.field public static final enum curTempF:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

.field public static final enum fstConditionId:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

.field public static final enum fstDate:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

.field public static final enum fstHighTempC:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

.field public static final enum fstHighTempF:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

.field public static final enum fstLowTempC:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

.field public static final enum fstLowTempF:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

.field public static final enum fstName:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

.field public static final enum lastRequest:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

.field public static final enum lastUpdate:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

.field public static final enum param1:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

.field public static final enum param2:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

.field public static final enum type:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 42
    new-instance v0, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    const-string v1, "_id"

    invoke-direct {v0, v1, v3}, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->_id:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    new-instance v0, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    const-string v1, "type"

    invoke-direct {v0, v1, v4}, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->type:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    new-instance v0, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    const-string v1, "param1"

    invoke-direct {v0, v1, v5}, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->param1:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    new-instance v0, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    const-string v1, "param2"

    invoke-direct {v0, v1, v6}, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->param2:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    new-instance v0, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    const-string v1, "lastRequest"

    invoke-direct {v0, v1, v7}, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->lastRequest:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    new-instance v0, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    const-string v1, "lastUpdate"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->lastUpdate:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    .line 43
    new-instance v0, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    const-string v1, "curTempC"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->curTempC:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    new-instance v0, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    const-string v1, "curTempF"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->curTempF:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    new-instance v0, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    const-string v1, "curConditionId"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->curConditionId:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    .line 44
    new-instance v0, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    const-string v1, "fstName"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->fstName:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    new-instance v0, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    const-string v1, "fstDate"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->fstDate:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    new-instance v0, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    const-string v1, "fstConditionId"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->fstConditionId:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    new-instance v0, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    const-string v1, "fstHighTempC"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->fstHighTempC:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    new-instance v0, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    const-string v1, "fstHighTempF"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->fstHighTempF:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    new-instance v0, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    const-string v1, "fstLowTempC"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->fstLowTempC:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    new-instance v0, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    const-string v1, "fstLowTempF"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->fstLowTempF:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    .line 45
    new-instance v0, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    const-string v1, "curLocLat"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->curLocLat:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    new-instance v0, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    const-string v1, "curLocLng"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->curLocLng:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    new-instance v0, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    const-string v1, "curLocLatTrim"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->curLocLatTrim:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    new-instance v0, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    const-string v1, "curLocLngTrim"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->curLocLngTrim:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    .line 46
    new-instance v0, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    const-string v1, "curLocName"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->curLocName:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    new-instance v0, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    const-string v1, "curLocState"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->curLocState:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    new-instance v0, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    const-string v1, "curLocCountry"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->curLocCountry:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    new-instance v0, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    const-string v1, "curLocTimezoneId"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->curLocTimezoneId:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    .line 41
    const/16 v0, 0x18

    new-array v0, v0, [Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    sget-object v1, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->_id:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->type:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->param1:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->param2:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->lastRequest:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->lastUpdate:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->curTempC:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->curTempF:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->curConditionId:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->fstName:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->fstDate:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->fstConditionId:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->fstHighTempC:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->fstHighTempF:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->fstLowTempC:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->fstLowTempF:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->curLocLat:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->curLocLng:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->curLocLatTrim:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->curLocLngTrim:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->curLocName:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->curLocState:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->curLocCountry:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->curLocTimezoneId:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->$VALUES:[Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;
    .locals 1
    .parameter "name"

    .prologue
    .line 41
    const-class v0, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    return-object v0
.end method

.method public static values()[Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->$VALUES:[Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v0}, [Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    return-object v0
.end method
