.class public Lcom/htc/util/weather/WSPPData;
.super Lcom/htc/util/weather/WSPData;
.source "WSPPData.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null

.field private static final PROJECTION:[Ljava/lang/String; = null

.field private static final SEPARATE:Ljava/lang/String; = ";"


# instance fields
.field private cityLatitude:Ljava/lang/String;

.field private cityLocalTime:Ljava/lang/String;

.field private cityLongitude:Ljava/lang/String;

.field private cityTimeZone:Ljava/lang/String;

.field private cityWebURL:Ljava/lang/String;

.field private curFeelTempC:I

.field private curFeelTempF:I

.field private curHumidity:Ljava/lang/String;

.field private curVisibilityKM:Ljava/lang/String;

.field private curVisibilityMI:Ljava/lang/String;

.field private curWinddirection:Ljava/lang/String;

.field private curWindspeedKM:Ljava/lang/String;

.field private curWindspeedMI:Ljava/lang/String;

.field private dayLightFlag:Ljava/lang/String;

.field private fstFeelHighTempC:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fstFeelHighTempF:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fstFeelLowTempC:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fstFeelLowTempF:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fstNightConditionId:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fstNightFeelHighTempC:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fstNightFeelHighTempF:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fstNightFeelLowTempC:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fstNightFeelLowTempF:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fstNightHighTempC:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fstNightHighTempF:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fstNightLowTempC:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fstNightLowTempF:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fstNightPrecip:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fstPrecip:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fstSunrise:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fstSunset:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hourConditionId:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hourFeelTempC:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hourFeelTempF:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hourName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hourPrecip:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hourTempC:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hourTempF:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 53
    const/16 v0, 0x3a

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->type:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->param1:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->param2:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->lastUpdate:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->curTempC:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->curTempF:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->curConditionId:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstName:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstDate:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstConditionId:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstHighTempC:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstHighTempF:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstLowTempC:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstLowTempF:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->curLocLat:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->curLocLng:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->curLocLatTrim:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->curLocLngTrim:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->curLocName:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->curLocState:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->curLocCountry:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->curLocTimezoneId:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->cityLocalTime:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->cityLatitude:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->cityLongitude:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->cityTimeZone:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->cityWebURL:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->dayLightFlag:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->curFeelTempC:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->curFeelTempF:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->curHumidity:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->curWinddirection:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->curWindspeed:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->curVisibility:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstSunrise:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstSunset:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstFeelHighTempC:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstFeelHighTempF:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstFeelLowTempC:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstFeelLowTempF:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x28

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstNightFeelHighTempC:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x29

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstNightFeelHighTempF:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstNightFeelLowTempC:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstNightFeelLowTempF:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstNightConditionId:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstNightHighTempC:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstNightHighTempF:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstNightLowTempC:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x30

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstNightLowTempF:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x31

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstPrecip:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x32

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstNightPrecip:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x33

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->hourName:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x34

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->hourConditionId:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x35

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->hourTempC:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x36

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->hourTempF:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x37

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->hourFeelTempC:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x38

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->hourFeelTempF:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x39

    sget-object v2, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->hourPrecip:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/util/weather/WSPPData;->PROJECTION:[Ljava/lang/String;

    .line 389
    new-instance v0, Lcom/htc/util/weather/WSPPData$1;

    invoke-direct {v0}, Lcom/htc/util/weather/WSPPData$1;-><init>()V

    sput-object v0, Lcom/htc/util/weather/WSPPData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 120
    invoke-direct {p0}, Lcom/htc/util/weather/WSPData;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->cityLocalTime:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->cityLatitude:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->cityLongitude:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->cityTimeZone:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->cityWebURL:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->dayLightFlag:Ljava/lang/String;

    .line 20
    iput v1, p0, Lcom/htc/util/weather/WSPPData;->curFeelTempC:I

    .line 21
    iput v1, p0, Lcom/htc/util/weather/WSPPData;->curFeelTempF:I

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->curHumidity:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->curWinddirection:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->curWindspeedMI:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->curVisibilityMI:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->curWindspeedKM:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->curVisibilityKM:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstSunrise:Ljava/util/ArrayList;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstSunset:Ljava/util/ArrayList;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstFeelHighTempC:Ljava/util/ArrayList;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstFeelHighTempF:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstFeelLowTempC:Ljava/util/ArrayList;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstFeelLowTempF:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelHighTempC:Ljava/util/ArrayList;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelHighTempF:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelLowTempC:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelLowTempF:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightConditionId:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightHighTempC:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightHighTempF:Ljava/util/ArrayList;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightLowTempC:Ljava/util/ArrayList;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightLowTempF:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstPrecip:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightPrecip:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourName:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourConditionId:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourTempC:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourTempF:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourFeelTempC:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourFeelTempF:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourPrecip:Ljava/util/ArrayList;

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 8
    .parameter "cursor"

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 123
    invoke-direct {p0}, Lcom/htc/util/weather/WSPData;-><init>()V

    .line 13
    const-string v4, ""

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->cityLocalTime:Ljava/lang/String;

    .line 14
    const-string v4, ""

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->cityLatitude:Ljava/lang/String;

    .line 15
    const-string v4, ""

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->cityLongitude:Ljava/lang/String;

    .line 16
    const-string v4, ""

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->cityTimeZone:Ljava/lang/String;

    .line 17
    const-string v4, ""

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->cityWebURL:Ljava/lang/String;

    .line 19
    const-string v4, ""

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->dayLightFlag:Ljava/lang/String;

    .line 20
    iput v7, p0, Lcom/htc/util/weather/WSPPData;->curFeelTempC:I

    .line 21
    iput v7, p0, Lcom/htc/util/weather/WSPPData;->curFeelTempF:I

    .line 22
    const-string v4, ""

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->curHumidity:Ljava/lang/String;

    .line 23
    const-string v4, ""

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->curWinddirection:Ljava/lang/String;

    .line 24
    const-string v4, ""

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->curWindspeedMI:Ljava/lang/String;

    .line 25
    const-string v4, ""

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->curVisibilityMI:Ljava/lang/String;

    .line 26
    const-string v4, ""

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->curWindspeedKM:Ljava/lang/String;

    .line 27
    const-string v4, ""

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->curVisibilityKM:Ljava/lang/String;

    .line 28
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstSunrise:Ljava/util/ArrayList;

    .line 29
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstSunset:Ljava/util/ArrayList;

    .line 30
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstFeelHighTempC:Ljava/util/ArrayList;

    .line 31
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstFeelHighTempF:Ljava/util/ArrayList;

    .line 32
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstFeelLowTempC:Ljava/util/ArrayList;

    .line 33
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstFeelLowTempF:Ljava/util/ArrayList;

    .line 34
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelHighTempC:Ljava/util/ArrayList;

    .line 35
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelHighTempF:Ljava/util/ArrayList;

    .line 36
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelLowTempC:Ljava/util/ArrayList;

    .line 37
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelLowTempF:Ljava/util/ArrayList;

    .line 38
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightConditionId:Ljava/util/ArrayList;

    .line 39
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightHighTempC:Ljava/util/ArrayList;

    .line 40
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightHighTempF:Ljava/util/ArrayList;

    .line 41
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightLowTempC:Ljava/util/ArrayList;

    .line 42
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightLowTempF:Ljava/util/ArrayList;

    .line 43
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstPrecip:Ljava/util/ArrayList;

    .line 44
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightPrecip:Ljava/util/ArrayList;

    .line 45
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->hourName:Ljava/util/ArrayList;

    .line 46
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->hourConditionId:Ljava/util/ArrayList;

    .line 47
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->hourTempC:Ljava/util/ArrayList;

    .line 48
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->hourTempF:Ljava/util/ArrayList;

    .line 49
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->hourFeelTempC:Ljava/util/ArrayList;

    .line 50
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->hourFeelTempF:Ljava/util/ArrayList;

    .line 51
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->hourPrecip:Ljava/util/ArrayList;

    .line 125
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v4

    sget-object v5, Lcom/htc/util/weather/WSPPData;->PROJECTION:[Ljava/lang/String;

    array-length v5, v5

    if-ne v4, v5, :cond_1e

    .line 127
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, p0, Lcom/htc/util/weather/WSPPData;->type:I

    .line 128
    const/4 v4, 0x1

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->param1:Ljava/lang/String;

    .line 129
    const/4 v4, 0x2

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->param2:Ljava/lang/String;

    .line 130
    const/4 v4, 0x3

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/htc/util/weather/WSPPData;->lastUpdate:J

    .line 131
    const/4 v4, 0x4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, p0, Lcom/htc/util/weather/WSPPData;->curTempC:I

    .line 132
    const/4 v4, 0x5

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, p0, Lcom/htc/util/weather/WSPPData;->curTempF:I

    .line 133
    const/4 v4, 0x6

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->curConditionId:Ljava/lang/String;

    .line 135
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstName:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 136
    const/4 v4, 0x7

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 137
    .local v2, item:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstName:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 140
    .end local v2           #item:Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstDate:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 141
    const/16 v4, 0x8

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 142
    .restart local v2       #item:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstDate:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 145
    .end local v2           #item:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstConditionId:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 146
    const/16 v4, 0x9

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v3, :cond_2

    aget-object v2, v0, v1

    .line 147
    .restart local v2       #item:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstConditionId:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 150
    .end local v2           #item:Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstHighTempC:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 151
    const/16 v4, 0xa

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v3, :cond_3

    aget-object v2, v0, v1

    .line 152
    .restart local v2       #item:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstHighTempC:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 155
    .end local v2           #item:Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstHighTempF:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 156
    const/16 v4, 0xb

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v3, :cond_4

    aget-object v2, v0, v1

    .line 157
    .restart local v2       #item:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstHighTempF:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 160
    .end local v2           #item:Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstLowTempC:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 161
    const/16 v4, 0xc

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v3, :cond_5

    aget-object v2, v0, v1

    .line 162
    .restart local v2       #item:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstLowTempC:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 165
    .end local v2           #item:Ljava/lang/String;
    :cond_5
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstLowTempF:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 166
    const/16 v4, 0xd

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v3, :cond_6

    aget-object v2, v0, v1

    .line 167
    .restart local v2       #item:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstLowTempF:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 170
    .end local v2           #item:Ljava/lang/String;
    :cond_6
    const/16 v4, 0xe

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->curLocLat:Ljava/lang/String;

    .line 171
    const/16 v4, 0xf

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->curLocLng:Ljava/lang/String;

    .line 172
    const/16 v4, 0x10

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->curLocLatTrim:Ljava/lang/String;

    .line 173
    const/16 v4, 0x11

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->curLocLngTrim:Ljava/lang/String;

    .line 174
    const/16 v4, 0x12

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->curLocName:Ljava/lang/String;

    .line 175
    const/16 v4, 0x13

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->curLocState:Ljava/lang/String;

    .line 176
    const/16 v4, 0x14

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->curLocCountry:Ljava/lang/String;

    .line 177
    const/16 v4, 0x15

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->curLocTimezoneId:Ljava/lang/String;

    .line 179
    sget-object v4, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->cityLocalTime:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->cityLocalTime:Ljava/lang/String;

    .line 180
    sget-object v4, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->cityLatitude:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->cityLatitude:Ljava/lang/String;

    .line 181
    sget-object v4, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->cityLongitude:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->cityLongitude:Ljava/lang/String;

    .line 182
    sget-object v4, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->cityTimeZone:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->cityTimeZone:Ljava/lang/String;

    .line 183
    sget-object v4, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->cityWebURL:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->cityWebURL:Ljava/lang/String;

    .line 185
    sget-object v4, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->dayLightFlag:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->dayLightFlag:Ljava/lang/String;

    .line 186
    sget-object v4, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->curFeelTempC:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, p0, Lcom/htc/util/weather/WSPPData;->curFeelTempC:I

    .line 187
    sget-object v4, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->curFeelTempF:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, p0, Lcom/htc/util/weather/WSPPData;->curFeelTempF:I

    .line 188
    sget-object v4, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->curHumidity:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->curHumidity:Ljava/lang/String;

    .line 189
    sget-object v4, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->curWinddirection:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->curWinddirection:Ljava/lang/String;

    .line 190
    sget-object v4, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->curWindspeed:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->curWindspeedMI:Ljava/lang/String;

    .line 191
    sget-object v4, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->curVisibility:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->curVisibilityMI:Ljava/lang/String;

    .line 192
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->curWindspeedMI:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/htc/util/weather/WSPPData;->mileToKilo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->curWindspeedKM:Ljava/lang/String;

    .line 193
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->curVisibilityMI:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/htc/util/weather/WSPPData;->mileToKilo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->curVisibilityKM:Ljava/lang/String;

    .line 195
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstSunrise:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 196
    sget-object v4, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstSunrise:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v3, :cond_7

    aget-object v2, v0, v1

    .line 197
    .restart local v2       #item:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstSunrise:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 199
    .end local v2           #item:Ljava/lang/String;
    :cond_7
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstSunset:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 200
    sget-object v4, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstSunset:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v3, :cond_8

    aget-object v2, v0, v1

    .line 201
    .restart local v2       #item:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstSunset:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 203
    .end local v2           #item:Ljava/lang/String;
    :cond_8
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstFeelHighTempC:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 204
    sget-object v4, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstFeelHighTempC:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v3, :cond_9

    aget-object v2, v0, v1

    .line 205
    .restart local v2       #item:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstFeelHighTempC:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 207
    .end local v2           #item:Ljava/lang/String;
    :cond_9
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstFeelHighTempF:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 208
    sget-object v4, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstFeelHighTempF:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v3, :cond_a

    aget-object v2, v0, v1

    .line 209
    .restart local v2       #item:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstFeelHighTempF:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 211
    .end local v2           #item:Ljava/lang/String;
    :cond_a
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstFeelLowTempC:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 212
    sget-object v4, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstFeelLowTempC:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v3, :cond_b

    aget-object v2, v0, v1

    .line 213
    .restart local v2       #item:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstFeelLowTempC:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 215
    .end local v2           #item:Ljava/lang/String;
    :cond_b
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstFeelLowTempF:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 216
    sget-object v4, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstFeelLowTempF:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v3, :cond_c

    aget-object v2, v0, v1

    .line 217
    .restart local v2       #item:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstFeelLowTempF:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 219
    .end local v2           #item:Ljava/lang/String;
    :cond_c
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelHighTempC:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 220
    sget-object v4, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstNightFeelHighTempC:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v3, :cond_d

    aget-object v2, v0, v1

    .line 221
    .restart local v2       #item:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelHighTempC:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 223
    .end local v2           #item:Ljava/lang/String;
    :cond_d
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelHighTempF:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 224
    sget-object v4, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstNightFeelHighTempF:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v3, :cond_e

    aget-object v2, v0, v1

    .line 225
    .restart local v2       #item:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelHighTempF:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 227
    .end local v2           #item:Ljava/lang/String;
    :cond_e
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelLowTempC:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 228
    sget-object v4, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstNightFeelLowTempC:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v3, :cond_f

    aget-object v2, v0, v1

    .line 229
    .restart local v2       #item:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelLowTempC:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 231
    .end local v2           #item:Ljava/lang/String;
    :cond_f
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelLowTempF:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 232
    sget-object v4, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstNightFeelLowTempF:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v3, :cond_10

    aget-object v2, v0, v1

    .line 233
    .restart local v2       #item:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelLowTempF:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 235
    .end local v2           #item:Ljava/lang/String;
    :cond_10
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightConditionId:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 236
    sget-object v4, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstNightConditionId:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v1, 0x0

    :goto_11
    if-ge v1, v3, :cond_11

    aget-object v2, v0, v1

    .line 237
    .restart local v2       #item:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightConditionId:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 239
    .end local v2           #item:Ljava/lang/String;
    :cond_11
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightHighTempC:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 240
    sget-object v4, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstNightHighTempC:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v1, 0x0

    :goto_12
    if-ge v1, v3, :cond_12

    aget-object v2, v0, v1

    .line 241
    .restart local v2       #item:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightHighTempC:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 243
    .end local v2           #item:Ljava/lang/String;
    :cond_12
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightHighTempF:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 244
    sget-object v4, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstNightHighTempF:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v1, 0x0

    :goto_13
    if-ge v1, v3, :cond_13

    aget-object v2, v0, v1

    .line 245
    .restart local v2       #item:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightHighTempF:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 247
    .end local v2           #item:Ljava/lang/String;
    :cond_13
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightLowTempC:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 248
    sget-object v4, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstNightLowTempC:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v1, 0x0

    :goto_14
    if-ge v1, v3, :cond_14

    aget-object v2, v0, v1

    .line 249
    .restart local v2       #item:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightLowTempC:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 251
    .end local v2           #item:Ljava/lang/String;
    :cond_14
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightLowTempF:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 252
    sget-object v4, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstNightLowTempF:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v1, 0x0

    :goto_15
    if-ge v1, v3, :cond_15

    aget-object v2, v0, v1

    .line 253
    .restart local v2       #item:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightLowTempF:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 255
    .end local v2           #item:Ljava/lang/String;
    :cond_15
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstPrecip:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 256
    sget-object v4, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstPrecip:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v1, 0x0

    :goto_16
    if-ge v1, v3, :cond_16

    aget-object v2, v0, v1

    .line 257
    .restart local v2       #item:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstPrecip:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 259
    .end local v2           #item:Ljava/lang/String;
    :cond_16
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightPrecip:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 260
    sget-object v4, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstNightPrecip:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v1, 0x0

    :goto_17
    if-ge v1, v3, :cond_17

    aget-object v2, v0, v1

    .line 261
    .restart local v2       #item:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightPrecip:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 263
    .end local v2           #item:Ljava/lang/String;
    :cond_17
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->hourName:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 264
    sget-object v4, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->hourName:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v1, 0x0

    :goto_18
    if-ge v1, v3, :cond_18

    aget-object v2, v0, v1

    .line 265
    .restart local v2       #item:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->hourName:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 267
    .end local v2           #item:Ljava/lang/String;
    :cond_18
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->hourConditionId:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 268
    sget-object v4, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->hourConditionId:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v1, 0x0

    :goto_19
    if-ge v1, v3, :cond_19

    aget-object v2, v0, v1

    .line 269
    .restart local v2       #item:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->hourConditionId:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 271
    .end local v2           #item:Ljava/lang/String;
    :cond_19
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->hourTempC:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 272
    sget-object v4, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->hourTempC:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v1, 0x0

    :goto_1a
    if-ge v1, v3, :cond_1a

    aget-object v2, v0, v1

    .line 273
    .restart local v2       #item:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->hourTempC:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 275
    .end local v2           #item:Ljava/lang/String;
    :cond_1a
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->hourTempF:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 276
    sget-object v4, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->hourTempF:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v1, 0x0

    :goto_1b
    if-ge v1, v3, :cond_1b

    aget-object v2, v0, v1

    .line 277
    .restart local v2       #item:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->hourTempF:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 279
    .end local v2           #item:Ljava/lang/String;
    :cond_1b
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->hourFeelTempC:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 280
    sget-object v4, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->hourFeelTempC:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v1, 0x0

    :goto_1c
    if-ge v1, v3, :cond_1c

    aget-object v2, v0, v1

    .line 281
    .restart local v2       #item:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->hourFeelTempC:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 283
    .end local v2           #item:Ljava/lang/String;
    :cond_1c
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->hourFeelTempF:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 284
    sget-object v4, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->hourFeelTempF:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v1, 0x0

    :goto_1d
    if-ge v1, v3, :cond_1d

    aget-object v2, v0, v1

    .line 285
    .restart local v2       #item:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->hourFeelTempF:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 287
    .end local v2           #item:Ljava/lang/String;
    :cond_1d
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->hourPrecip:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 288
    sget-object v4, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->hourPrecip:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v1, 0x0

    :goto_1e
    if-ge v1, v3, :cond_1e

    aget-object v2, v0, v1

    .line 289
    .restart local v2       #item:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->hourPrecip:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 294
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #item:Ljava/lang/String;
    .end local v3           #len$:I
    :cond_1e
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    const/4 v1, 0x0

    .line 296
    invoke-direct {p0}, Lcom/htc/util/weather/WSPData;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->cityLocalTime:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->cityLatitude:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->cityLongitude:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->cityTimeZone:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->cityWebURL:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->dayLightFlag:Ljava/lang/String;

    .line 20
    iput v1, p0, Lcom/htc/util/weather/WSPPData;->curFeelTempC:I

    .line 21
    iput v1, p0, Lcom/htc/util/weather/WSPPData;->curFeelTempF:I

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->curHumidity:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->curWinddirection:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->curWindspeedMI:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->curVisibilityMI:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->curWindspeedKM:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->curVisibilityKM:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstSunrise:Ljava/util/ArrayList;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstSunset:Ljava/util/ArrayList;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstFeelHighTempC:Ljava/util/ArrayList;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstFeelHighTempF:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstFeelLowTempC:Ljava/util/ArrayList;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstFeelLowTempF:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelHighTempC:Ljava/util/ArrayList;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelHighTempF:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelLowTempC:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelLowTempF:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightConditionId:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightHighTempC:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightHighTempF:Ljava/util/ArrayList;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightLowTempC:Ljava/util/ArrayList;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightLowTempF:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstPrecip:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightPrecip:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourName:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourConditionId:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourTempC:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourTempF:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourFeelTempC:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourFeelTempF:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourPrecip:Ljava/util/ArrayList;

    .line 297
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/util/weather/WSPPData;->type:I

    .line 298
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->param1:Ljava/lang/String;

    .line 299
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->param2:Ljava/lang/String;

    .line 300
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/util/weather/WSPPData;->lastUpdate:J

    .line 301
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/util/weather/WSPPData;->curTempC:I

    .line 302
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/util/weather/WSPPData;->curTempF:I

    .line 303
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->curConditionId:Ljava/lang/String;

    .line 304
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstName:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 305
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstDate:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 306
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstConditionId:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 307
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstHighTempC:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 308
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstHighTempF:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 309
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstLowTempC:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 310
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstLowTempF:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 311
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->curLocLat:Ljava/lang/String;

    .line 312
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->curLocLng:Ljava/lang/String;

    .line 313
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->curLocLatTrim:Ljava/lang/String;

    .line 314
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->curLocLngTrim:Ljava/lang/String;

    .line 315
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->curLocName:Ljava/lang/String;

    .line 316
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->curLocState:Ljava/lang/String;

    .line 317
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->curLocCountry:Ljava/lang/String;

    .line 318
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->curLocTimezoneId:Ljava/lang/String;

    .line 320
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->cityLocalTime:Ljava/lang/String;

    .line 321
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->cityLatitude:Ljava/lang/String;

    .line 322
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->cityLongitude:Ljava/lang/String;

    .line 323
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->cityTimeZone:Ljava/lang/String;

    .line 324
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->cityWebURL:Ljava/lang/String;

    .line 325
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->dayLightFlag:Ljava/lang/String;

    .line 326
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/util/weather/WSPPData;->curFeelTempC:I

    .line 327
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/util/weather/WSPPData;->curFeelTempF:I

    .line 328
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->curHumidity:Ljava/lang/String;

    .line 329
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->curWinddirection:Ljava/lang/String;

    .line 330
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->curWindspeedMI:Ljava/lang/String;

    .line 331
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->curVisibilityMI:Ljava/lang/String;

    .line 332
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->curWindspeedKM:Ljava/lang/String;

    .line 333
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->curVisibilityKM:Ljava/lang/String;

    .line 334
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstSunrise:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 335
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstSunset:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 336
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstFeelHighTempC:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 337
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstFeelHighTempF:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 338
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstFeelLowTempC:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 339
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstFeelLowTempF:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 340
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelHighTempC:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 341
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelHighTempF:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 342
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelLowTempC:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 343
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelLowTempF:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 344
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightConditionId:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 345
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightHighTempC:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 346
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightHighTempF:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 347
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightLowTempC:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 348
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightLowTempF:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 349
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstPrecip:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 350
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightPrecip:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 351
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourName:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 352
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourConditionId:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 353
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourTempC:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 354
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourTempF:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 355
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourFeelTempC:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 356
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourFeelTempF:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 357
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourPrecip:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 359
    return-void
.end method

.method public static getProjection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lcom/htc/util/weather/WSPPData;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method private mileToKilo(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "m"

    .prologue
    .line 821
    const/4 v1, 0x0

    .line 824
    .local v1, mi:I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 827
    :goto_0
    int-to-double v2, v1

    const-wide v4, 0x3ff9bfe2a3cea6c2L

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 828
    .local v0, km:Ljava/lang/String;
    return-object v0

    .line 825
    .end local v0           #km:Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public getCityLatitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 740
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->cityLatitude:Ljava/lang/String;

    return-object v0
.end method

.method public getCityLocalTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 736
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->cityLocalTime:Ljava/lang/String;

    return-object v0
.end method

.method public getCityLongitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 744
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->cityLongitude:Ljava/lang/String;

    return-object v0
.end method

.method public getCityTimeZone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 748
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->cityTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method public getCityWebURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 752
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->cityWebURL:Ljava/lang/String;

    return-object v0
.end method

.method public getCurFeelTempC()I
    .locals 1

    .prologue
    .line 477
    iget v0, p0, Lcom/htc/util/weather/WSPPData;->curFeelTempC:I

    return v0
.end method

.method public getCurFeelTempF()I
    .locals 1

    .prologue
    .line 485
    iget v0, p0, Lcom/htc/util/weather/WSPPData;->curFeelTempF:I

    return v0
.end method

.method public getCurHumidity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->curHumidity:Ljava/lang/String;

    return-object v0
.end method

.method public getCurVisibility()Ljava/lang/String;
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->curVisibilityMI:Ljava/lang/String;

    return-object v0
.end method

.method public getCurVisibilityKM()Ljava/lang/String;
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->curVisibilityKM:Ljava/lang/String;

    return-object v0
.end method

.method public getCurWinddirection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->curWinddirection:Ljava/lang/String;

    return-object v0
.end method

.method public getCurWindspeed()Ljava/lang/String;
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->curWindspeedMI:Ljava/lang/String;

    return-object v0
.end method

.method public getCurWindspeedKM()Ljava/lang/String;
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->curWindspeedKM:Ljava/lang/String;

    return-object v0
.end method

.method public getDayLightFlag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->dayLightFlag:Ljava/lang/String;

    return-object v0
.end method

.method public getFstFeelHighTempC()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 567
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstFeelHighTempC:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFstFeelHighTempF()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 575
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstFeelHighTempF:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFstFeelLowTempC()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 583
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstFeelLowTempC:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFstFeelLowTempF()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 591
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstFeelLowTempF:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFstNightConditionId()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 557
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightConditionId:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFstNightFeelHighTempC()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 599
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelHighTempC:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFstNightFeelHighTempF()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 607
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelHighTempF:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFstNightFeelLowTempC()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 615
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelLowTempC:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFstNightFeelLowTempF()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 623
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelLowTempF:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFstNightHighTempC()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 631
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightHighTempC:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFstNightHighTempF()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 639
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightHighTempF:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFstNightLowTempC()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 647
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightLowTempC:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFstNightLowTempF()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 655
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightLowTempF:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFstNightPrecip()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 671
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightPrecip:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFstPrecip()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 663
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstPrecip:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFstSunrise()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 539
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstSunrise:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFstSunset()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 547
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstSunset:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getHourConditionId()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 687
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourConditionId:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getHourFeelTempC()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 712
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourFeelTempC:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getHourFeelTempF()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 720
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourFeelTempF:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getHourName()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 679
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourName:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getHourPrecip()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 728
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourPrecip:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getHourTempC()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 696
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourTempC:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getHourTempF()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 704
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourTempF:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setCityLatitude(Ljava/lang/String;)V
    .locals 0
    .parameter "cityLatitude"

    .prologue
    .line 760
    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->cityLatitude:Ljava/lang/String;

    .line 761
    return-void
.end method

.method public setCityLocalTime(Ljava/lang/String;)V
    .locals 0
    .parameter "cityLocalTime"

    .prologue
    .line 756
    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->cityLocalTime:Ljava/lang/String;

    .line 757
    return-void
.end method

.method public setCityLongitude(Ljava/lang/String;)V
    .locals 0
    .parameter "cityLongitude"

    .prologue
    .line 764
    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->cityLongitude:Ljava/lang/String;

    .line 765
    return-void
.end method

.method public setCityTimeZone(Ljava/lang/String;)V
    .locals 0
    .parameter "cityTimeZone"

    .prologue
    .line 768
    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->cityTimeZone:Ljava/lang/String;

    .line 769
    return-void
.end method

.method public setCityWebURL(Ljava/lang/String;)V
    .locals 0
    .parameter "cityWebURL"

    .prologue
    .line 772
    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->cityWebURL:Ljava/lang/String;

    .line 773
    return-void
.end method

.method public setCurFeelTempC(I)V
    .locals 0
    .parameter "curFeelTempC"

    .prologue
    .line 481
    iput p1, p0, Lcom/htc/util/weather/WSPPData;->curFeelTempC:I

    .line 482
    return-void
.end method

.method public setCurFeelTempF(I)V
    .locals 0
    .parameter "curFeelTempF"

    .prologue
    .line 489
    iput p1, p0, Lcom/htc/util/weather/WSPPData;->curFeelTempF:I

    .line 490
    return-void
.end method

.method public setCurHumidity(Ljava/lang/String;)V
    .locals 0
    .parameter "curHumidity"

    .prologue
    .line 497
    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->curHumidity:Ljava/lang/String;

    .line 498
    return-void
.end method

.method public setCurVisibility(Ljava/lang/String;)V
    .locals 1
    .parameter "curVisibilityMI"

    .prologue
    .line 518
    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->curVisibilityMI:Ljava/lang/String;

    .line 519
    invoke-direct {p0, p1}, Lcom/htc/util/weather/WSPPData;->mileToKilo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->curVisibilityKM:Ljava/lang/String;

    .line 520
    return-void
.end method

.method public setCurWinddirection(Ljava/lang/String;)V
    .locals 0
    .parameter "curWinddirection"

    .prologue
    .line 505
    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->curWinddirection:Ljava/lang/String;

    .line 506
    return-void
.end method

.method public setCurWindspeed(Ljava/lang/String;)V
    .locals 1
    .parameter "curWindspeedMI"

    .prologue
    .line 512
    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->curWindspeedMI:Ljava/lang/String;

    .line 513
    invoke-direct {p0, p1}, Lcom/htc/util/weather/WSPPData;->mileToKilo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->curWindspeedKM:Ljava/lang/String;

    .line 514
    return-void
.end method

.method public setDayLightFlag(Ljava/lang/String;)V
    .locals 0
    .parameter "dayLightFlag"

    .prologue
    .line 473
    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->dayLightFlag:Ljava/lang/String;

    .line 474
    return-void
.end method

.method public setFstFeelHighTempC(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 571
    .local p1, fstFeelHighTempC:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->fstFeelHighTempC:Ljava/util/ArrayList;

    .line 572
    return-void
.end method

.method public setFstFeelHighTempF(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 579
    .local p1, fstFeelHighTempF:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->fstFeelHighTempF:Ljava/util/ArrayList;

    .line 580
    return-void
.end method

.method public setFstFeelLowTempC(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 587
    .local p1, fstFeelLowTempC:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->fstFeelLowTempC:Ljava/util/ArrayList;

    .line 588
    return-void
.end method

.method public setFstFeelLowTempF(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 595
    .local p1, fstFeelLowTempF:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->fstFeelLowTempF:Ljava/util/ArrayList;

    .line 596
    return-void
.end method

.method public setFstNightConditionId(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 561
    .local p1, fstNightConditionId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->fstNightConditionId:Ljava/util/ArrayList;

    .line 562
    return-void
.end method

.method public setFstNightFeelHighTempC(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 603
    .local p1, fstNightFeelHighTempC:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelHighTempC:Ljava/util/ArrayList;

    .line 604
    return-void
.end method

.method public setFstNightFeelHighTempF(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 611
    .local p1, fstNightFeelHighTempF:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelHighTempF:Ljava/util/ArrayList;

    .line 612
    return-void
.end method

.method public setFstNightFeelLowTempC(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 619
    .local p1, fstNightFeelLowTempC:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelLowTempC:Ljava/util/ArrayList;

    .line 620
    return-void
.end method

.method public setFstNightFeelLowTempF(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 627
    .local p1, fstNightFeelLowTempF:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelLowTempF:Ljava/util/ArrayList;

    .line 628
    return-void
.end method

.method public setFstNightHighTempC(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 635
    .local p1, fstNightHighTempC:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->fstNightHighTempC:Ljava/util/ArrayList;

    .line 636
    return-void
.end method

.method public setFstNightHighTempF(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 643
    .local p1, fstNightHighTempF:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->fstNightHighTempF:Ljava/util/ArrayList;

    .line 644
    return-void
.end method

.method public setFstNightLowTempC(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 651
    .local p1, fstNightLowTempC:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->fstNightLowTempC:Ljava/util/ArrayList;

    .line 652
    return-void
.end method

.method public setFstNightLowTempF(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 659
    .local p1, fstNightLowTempF:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->fstNightLowTempF:Ljava/util/ArrayList;

    .line 660
    return-void
.end method

.method public setFstNightPrecip(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 675
    .local p1, fstNightPrecip:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->fstNightPrecip:Ljava/util/ArrayList;

    .line 676
    return-void
.end method

.method public setFstPrecip(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 667
    .local p1, fstPrecip:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->fstPrecip:Ljava/util/ArrayList;

    .line 668
    return-void
.end method

.method public setFstSunrise(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 543
    .local p1, fstSunrise:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->fstSunrise:Ljava/util/ArrayList;

    .line 544
    return-void
.end method

.method public setFstSunset(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 551
    .local p1, fstSunset:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->fstSunset:Ljava/util/ArrayList;

    .line 552
    return-void
.end method

.method public setHourConditionId(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 691
    .local p1, hourConditionId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->hourConditionId:Ljava/util/ArrayList;

    .line 692
    return-void
.end method

.method public setHourFeelTempC(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 716
    .local p1, hourFeelTempC:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->hourFeelTempC:Ljava/util/ArrayList;

    .line 717
    return-void
.end method

.method public setHourFeelTempF(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 724
    .local p1, hourFeelTempF:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->hourFeelTempF:Ljava/util/ArrayList;

    .line 725
    return-void
.end method

.method public setHourName(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 683
    .local p1, hourName:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->hourName:Ljava/util/ArrayList;

    .line 684
    return-void
.end method

.method public setHourPrecip(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 732
    .local p1, hourPrecip:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->hourPrecip:Ljava/util/ArrayList;

    .line 733
    return-void
.end method

.method public setHourTempC(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 700
    .local p1, hourTempC:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->hourTempC:Ljava/util/ArrayList;

    .line 701
    return-void
.end method

.method public setHourTempF(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 708
    .local p1, hourTempF:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->hourTempF:Ljava/util/ArrayList;

    .line 709
    return-void
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 778
    invoke-super {p0}, Lcom/htc/util/weather/WSPData;->toContentValues()Landroid/content/ContentValues;

    move-result-object v0

    .line 780
    .local v0, values:Landroid/content/ContentValues;
    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->cityLocalTime:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->cityLocalTime:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->cityLatitude:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->cityLatitude:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->cityLongitude:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->cityLongitude:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->cityTimeZone:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->cityTimeZone:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->cityWebURL:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->cityWebURL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->dayLightFlag:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->dayLightFlag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->curFeelTempC:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/htc/util/weather/WSPPData;->curFeelTempC:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 788
    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->curFeelTempF:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/htc/util/weather/WSPPData;->curFeelTempF:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 789
    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->curHumidity:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->curHumidity:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->curWinddirection:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->curWinddirection:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->curWindspeed:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->curWindspeedMI:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->curVisibility:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->curVisibilityMI:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstSunrise:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->fstSunrise:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/htc/util/weather/WSPPData;->arrayListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstSunset:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->fstSunset:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/htc/util/weather/WSPPData;->arrayListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstFeelHighTempC:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->fstFeelHighTempC:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/htc/util/weather/WSPPData;->arrayListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstFeelHighTempF:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->fstFeelHighTempF:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/htc/util/weather/WSPPData;->arrayListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstFeelLowTempC:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->fstFeelLowTempC:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/htc/util/weather/WSPPData;->arrayListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstFeelLowTempF:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->fstFeelLowTempF:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/htc/util/weather/WSPPData;->arrayListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstNightFeelHighTempC:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelHighTempC:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/htc/util/weather/WSPPData;->arrayListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstNightFeelHighTempF:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelHighTempF:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/htc/util/weather/WSPPData;->arrayListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstNightFeelLowTempC:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelLowTempC:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/htc/util/weather/WSPPData;->arrayListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstNightFeelLowTempF:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelLowTempF:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/htc/util/weather/WSPPData;->arrayListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstNightConditionId:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->fstNightConditionId:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/htc/util/weather/WSPPData;->arrayListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstNightHighTempC:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->fstNightHighTempC:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/htc/util/weather/WSPPData;->arrayListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstNightHighTempF:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->fstNightHighTempF:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/htc/util/weather/WSPPData;->arrayListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstNightLowTempC:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->fstNightLowTempC:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/htc/util/weather/WSPPData;->arrayListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstNightLowTempF:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->fstNightLowTempF:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/htc/util/weather/WSPPData;->arrayListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstPrecip:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->fstPrecip:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/htc/util/weather/WSPPData;->arrayListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstNightPrecip:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->fstNightPrecip:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/htc/util/weather/WSPPData;->arrayListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->hourName:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->hourName:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/htc/util/weather/WSPPData;->arrayListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->hourConditionId:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->hourConditionId:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/htc/util/weather/WSPPData;->arrayListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->hourTempC:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->hourTempC:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/htc/util/weather/WSPPData;->arrayListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->hourTempF:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->hourTempF:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/htc/util/weather/WSPPData;->arrayListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->hourFeelTempC:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->hourFeelTempC:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/htc/util/weather/WSPPData;->arrayListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->hourFeelTempF:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->hourFeelTempF:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/htc/util/weather/WSPPData;->arrayListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->hourPrecip:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->hourPrecip:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/htc/util/weather/WSPPData;->arrayListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    return-object v0
.end method

.method public toWSPDATA()Lcom/htc/util/weather/WSPData;
    .locals 3

    .prologue
    .line 362
    new-instance v0, Lcom/htc/util/weather/WSPData;

    invoke-direct {v0}, Lcom/htc/util/weather/WSPData;-><init>()V

    .line 363
    .local v0, data:Lcom/htc/util/weather/WSPData;
    iget v1, p0, Lcom/htc/util/weather/WSPPData;->type:I

    iput v1, v0, Lcom/htc/util/weather/WSPData;->type:I

    .line 364
    iget-object v1, p0, Lcom/htc/util/weather/WSPPData;->param1:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/util/weather/WSPData;->param1:Ljava/lang/String;

    .line 365
    iget-object v1, p0, Lcom/htc/util/weather/WSPPData;->param2:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/util/weather/WSPData;->param2:Ljava/lang/String;

    .line 366
    iget-wide v1, p0, Lcom/htc/util/weather/WSPPData;->lastUpdate:J

    iput-wide v1, v0, Lcom/htc/util/weather/WSPData;->lastUpdate:J

    .line 367
    iget v1, p0, Lcom/htc/util/weather/WSPPData;->curTempC:I

    iput v1, v0, Lcom/htc/util/weather/WSPData;->curTempC:I

    .line 368
    iget v1, p0, Lcom/htc/util/weather/WSPPData;->curTempF:I

    iput v1, v0, Lcom/htc/util/weather/WSPData;->curTempF:I

    .line 369
    iget-object v1, p0, Lcom/htc/util/weather/WSPPData;->curConditionId:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/util/weather/WSPData;->curConditionId:Ljava/lang/String;

    .line 370
    iget-object v1, p0, Lcom/htc/util/weather/WSPPData;->fstName:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/htc/util/weather/WSPData;->fstName:Ljava/util/ArrayList;

    .line 371
    iget-object v1, p0, Lcom/htc/util/weather/WSPPData;->fstDate:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/htc/util/weather/WSPData;->fstDate:Ljava/util/ArrayList;

    .line 372
    iget-object v1, p0, Lcom/htc/util/weather/WSPPData;->fstConditionId:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/htc/util/weather/WSPData;->fstConditionId:Ljava/util/ArrayList;

    .line 373
    iget-object v1, p0, Lcom/htc/util/weather/WSPPData;->fstHighTempC:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/htc/util/weather/WSPData;->fstHighTempC:Ljava/util/ArrayList;

    .line 374
    iget-object v1, p0, Lcom/htc/util/weather/WSPPData;->fstHighTempF:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/htc/util/weather/WSPData;->fstHighTempF:Ljava/util/ArrayList;

    .line 375
    iget-object v1, p0, Lcom/htc/util/weather/WSPPData;->fstLowTempC:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/htc/util/weather/WSPData;->fstLowTempC:Ljava/util/ArrayList;

    .line 376
    iget-object v1, p0, Lcom/htc/util/weather/WSPPData;->fstLowTempF:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/htc/util/weather/WSPData;->fstLowTempF:Ljava/util/ArrayList;

    .line 377
    iget-object v1, p0, Lcom/htc/util/weather/WSPPData;->curLocLat:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/util/weather/WSPData;->curLocLat:Ljava/lang/String;

    .line 378
    iget-object v1, p0, Lcom/htc/util/weather/WSPPData;->curLocLng:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/util/weather/WSPData;->curLocLng:Ljava/lang/String;

    .line 379
    iget-object v1, p0, Lcom/htc/util/weather/WSPPData;->curLocLatTrim:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/util/weather/WSPData;->curLocLatTrim:Ljava/lang/String;

    .line 380
    iget-object v1, p0, Lcom/htc/util/weather/WSPPData;->curLocLngTrim:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/util/weather/WSPData;->curLocLngTrim:Ljava/lang/String;

    .line 381
    iget-object v1, p0, Lcom/htc/util/weather/WSPPData;->curLocName:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/util/weather/WSPData;->curLocName:Ljava/lang/String;

    .line 382
    iget-object v1, p0, Lcom/htc/util/weather/WSPPData;->curLocState:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/util/weather/WSPData;->curLocState:Ljava/lang/String;

    .line 383
    iget-object v1, p0, Lcom/htc/util/weather/WSPPData;->curLocCountry:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/util/weather/WSPData;->curLocCountry:Ljava/lang/String;

    .line 384
    iget-object v1, p0, Lcom/htc/util/weather/WSPPData;->curLocTimezoneId:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/util/weather/WSPData;->curLocTimezoneId:Ljava/lang/String;

    .line 386
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 402
    iget v0, p0, Lcom/htc/util/weather/WSPPData;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 403
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->param1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->param2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 405
    iget-wide v0, p0, Lcom/htc/util/weather/WSPPData;->lastUpdate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 406
    iget v0, p0, Lcom/htc/util/weather/WSPPData;->curTempC:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 407
    iget v0, p0, Lcom/htc/util/weather/WSPPData;->curTempF:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 408
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->curConditionId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 409
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstName:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 410
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstDate:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 411
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstConditionId:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 412
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstHighTempC:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 413
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstHighTempF:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 414
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstLowTempC:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 415
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstLowTempF:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 416
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->curLocLat:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 417
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->curLocLng:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 418
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->curLocLatTrim:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 419
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->curLocLngTrim:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->curLocName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 421
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->curLocState:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 422
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->curLocCountry:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 423
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->curLocTimezoneId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 425
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->cityLocalTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 426
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->cityLatitude:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 427
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->cityLongitude:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 428
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->cityTimeZone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 429
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->cityWebURL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 430
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->dayLightFlag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 431
    iget v0, p0, Lcom/htc/util/weather/WSPPData;->curFeelTempC:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 432
    iget v0, p0, Lcom/htc/util/weather/WSPPData;->curFeelTempF:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 433
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->curHumidity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 434
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->curWinddirection:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 435
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->curWindspeedMI:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 436
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->curVisibilityMI:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 437
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->curWindspeedKM:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 438
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->curVisibilityKM:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 439
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstSunrise:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 440
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstSunset:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 441
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstFeelHighTempC:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 442
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstFeelHighTempF:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 443
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstFeelLowTempC:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 444
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstFeelLowTempF:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 445
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelHighTempC:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 446
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelHighTempF:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 447
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelLowTempC:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 448
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelLowTempF:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 449
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightConditionId:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 450
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightHighTempC:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 451
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightHighTempF:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 452
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightLowTempC:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 453
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightLowTempF:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 454
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstPrecip:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 455
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightPrecip:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 456
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourName:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 457
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourConditionId:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 458
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourTempC:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 459
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourTempF:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 460
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourFeelTempC:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 461
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourFeelTempF:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 462
    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourPrecip:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 464
    return-void
.end method
