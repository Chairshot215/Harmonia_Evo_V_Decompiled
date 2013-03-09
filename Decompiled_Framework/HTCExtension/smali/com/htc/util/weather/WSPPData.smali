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

    new-instance v0, Lcom/htc/util/weather/WSPPData$1;

    invoke-direct {v0}, Lcom/htc/util/weather/WSPPData$1;-><init>()V

    sput-object v0, Lcom/htc/util/weather/WSPPData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/htc/util/weather/WSPData;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->cityLocalTime:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->cityLatitude:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->cityLongitude:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->cityTimeZone:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->cityWebURL:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->dayLightFlag:Ljava/lang/String;

    iput v1, p0, Lcom/htc/util/weather/WSPPData;->curFeelTempC:I

    iput v1, p0, Lcom/htc/util/weather/WSPPData;->curFeelTempF:I

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->curHumidity:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->curWinddirection:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->curWindspeedMI:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->curVisibilityMI:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->curWindspeedKM:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->curVisibilityKM:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstSunrise:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstSunset:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstFeelHighTempC:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstFeelHighTempF:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstFeelLowTempC:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstFeelLowTempF:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelHighTempC:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelHighTempF:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelLowTempC:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelLowTempF:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightConditionId:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightHighTempC:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightHighTempF:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightLowTempC:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightLowTempF:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstPrecip:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightPrecip:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourName:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourConditionId:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourTempC:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourTempF:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourFeelTempC:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourFeelTempF:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourPrecip:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, -0x1

    invoke-direct {p0}, Lcom/htc/util/weather/WSPData;-><init>()V

    const-string v4, ""

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->cityLocalTime:Ljava/lang/String;

    const-string v4, ""

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->cityLatitude:Ljava/lang/String;

    const-string v4, ""

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->cityLongitude:Ljava/lang/String;

    const-string v4, ""

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->cityTimeZone:Ljava/lang/String;

    const-string v4, ""

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->cityWebURL:Ljava/lang/String;

    const-string v4, ""

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->dayLightFlag:Ljava/lang/String;

    iput v7, p0, Lcom/htc/util/weather/WSPPData;->curFeelTempC:I

    iput v7, p0, Lcom/htc/util/weather/WSPPData;->curFeelTempF:I

    const-string v4, ""

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->curHumidity:Ljava/lang/String;

    const-string v4, ""

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->curWinddirection:Ljava/lang/String;

    const-string v4, ""

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->curWindspeedMI:Ljava/lang/String;

    const-string v4, ""

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->curVisibilityMI:Ljava/lang/String;

    const-string v4, ""

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->curWindspeedKM:Ljava/lang/String;

    const-string v4, ""

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->curVisibilityKM:Ljava/lang/String;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstSunrise:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstSunset:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstFeelHighTempC:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstFeelHighTempF:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstFeelLowTempC:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstFeelLowTempF:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelHighTempC:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelHighTempF:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelLowTempC:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelLowTempF:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightConditionId:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightHighTempC:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightHighTempF:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightLowTempC:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightLowTempF:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstPrecip:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightPrecip:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->hourName:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->hourConditionId:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->hourTempC:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->hourTempF:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->hourFeelTempC:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->hourFeelTempF:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->hourPrecip:Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v4

    sget-object v5, Lcom/htc/util/weather/WSPPData;->PROJECTION:[Ljava/lang/String;

    array-length v5, v5

    if-ne v4, v5, :cond_1e

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, p0, Lcom/htc/util/weather/WSPData;->type:I

    const/4 v4, 0x1

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/util/weather/WSPData;->param1:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/util/weather/WSPData;->param2:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/htc/util/weather/WSPData;->lastUpdate:J

    const/4 v4, 0x4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, p0, Lcom/htc/util/weather/WSPData;->curTempC:I

    const/4 v4, 0x5

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, p0, Lcom/htc/util/weather/WSPData;->curTempF:I

    const/4 v4, 0x6

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/util/weather/WSPData;->curConditionId:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/util/weather/WSPData;->fstName:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    const/4 v4, 0x7

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    iget-object v4, p0, Lcom/htc/util/weather/WSPData;->fstName:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/htc/util/weather/WSPData;->fstDate:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

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

    iget-object v4, p0, Lcom/htc/util/weather/WSPData;->fstDate:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/htc/util/weather/WSPData;->fstConditionId:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

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

    iget-object v4, p0, Lcom/htc/util/weather/WSPData;->fstConditionId:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget-object v4, p0, Lcom/htc/util/weather/WSPData;->fstHighTempC:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

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

    iget-object v4, p0, Lcom/htc/util/weather/WSPData;->fstHighTempC:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    iget-object v4, p0, Lcom/htc/util/weather/WSPData;->fstHighTempF:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

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

    iget-object v4, p0, Lcom/htc/util/weather/WSPData;->fstHighTempF:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    iget-object v4, p0, Lcom/htc/util/weather/WSPData;->fstLowTempC:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

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

    iget-object v4, p0, Lcom/htc/util/weather/WSPData;->fstLowTempC:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_5
    iget-object v4, p0, Lcom/htc/util/weather/WSPData;->fstLowTempF:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

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

    iget-object v4, p0, Lcom/htc/util/weather/WSPData;->fstLowTempF:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_6
    const/16 v4, 0xe

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/util/weather/WSPData;->curLocLat:Ljava/lang/String;

    const/16 v4, 0xf

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/util/weather/WSPData;->curLocLng:Ljava/lang/String;

    const/16 v4, 0x10

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/util/weather/WSPData;->curLocLatTrim:Ljava/lang/String;

    const/16 v4, 0x11

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/util/weather/WSPData;->curLocLngTrim:Ljava/lang/String;

    const/16 v4, 0x12

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/util/weather/WSPData;->curLocName:Ljava/lang/String;

    const/16 v4, 0x13

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/util/weather/WSPData;->curLocState:Ljava/lang/String;

    const/16 v4, 0x14

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/util/weather/WSPData;->curLocCountry:Ljava/lang/String;

    const/16 v4, 0x15

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/util/weather/WSPData;->curLocTimezoneId:Ljava/lang/String;

    sget-object v4, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->cityLocalTime:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->cityLocalTime:Ljava/lang/String;

    sget-object v4, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->cityLatitude:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->cityLatitude:Ljava/lang/String;

    sget-object v4, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->cityLongitude:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->cityLongitude:Ljava/lang/String;

    sget-object v4, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->cityTimeZone:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->cityTimeZone:Ljava/lang/String;

    sget-object v4, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->cityWebURL:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->cityWebURL:Ljava/lang/String;

    sget-object v4, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->dayLightFlag:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->dayLightFlag:Ljava/lang/String;

    sget-object v4, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->curFeelTempC:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, p0, Lcom/htc/util/weather/WSPPData;->curFeelTempC:I

    sget-object v4, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->curFeelTempF:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, p0, Lcom/htc/util/weather/WSPPData;->curFeelTempF:I

    sget-object v4, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->curHumidity:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->curHumidity:Ljava/lang/String;

    sget-object v4, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->curWinddirection:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->curWinddirection:Ljava/lang/String;

    sget-object v4, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->curWindspeed:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->curWindspeedMI:Ljava/lang/String;

    sget-object v4, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->curVisibility:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->curVisibilityMI:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->curWindspeedMI:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/htc/util/weather/WSPPData;->mileToKilo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->curWindspeedKM:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->curVisibilityMI:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/htc/util/weather/WSPPData;->mileToKilo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/util/weather/WSPPData;->curVisibilityKM:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstSunrise:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

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

    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstSunrise:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_7
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstSunset:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

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

    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstSunset:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_8
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstFeelHighTempC:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

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

    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstFeelHighTempC:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_9
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstFeelHighTempF:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

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

    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstFeelHighTempF:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_a
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstFeelLowTempC:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

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

    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstFeelLowTempC:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_b
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstFeelLowTempF:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

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

    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstFeelLowTempF:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_c
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelHighTempC:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

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

    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelHighTempC:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_d
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelHighTempF:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

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

    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelHighTempF:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_e
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelLowTempC:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

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

    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelLowTempC:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_f
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelLowTempF:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

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

    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelLowTempF:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_10
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightConditionId:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

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

    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightConditionId:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_11
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightHighTempC:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

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

    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightHighTempC:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_12
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightHighTempF:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

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

    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightHighTempF:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_13
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightLowTempC:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

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

    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightLowTempC:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_14
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightLowTempF:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

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

    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightLowTempF:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_15
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstPrecip:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

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

    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstPrecip:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_16
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightPrecip:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

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

    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->fstNightPrecip:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_17
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->hourName:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

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

    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->hourName:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_18
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->hourConditionId:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

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

    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->hourConditionId:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_19
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->hourTempC:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

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

    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->hourTempC:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_1a
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->hourTempF:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

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

    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->hourTempF:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_1b
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->hourFeelTempC:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

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

    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->hourFeelTempC:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_1c
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->hourFeelTempF:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

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

    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->hourFeelTempF:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_1d
    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->hourPrecip:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

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

    iget-object v4, p0, Lcom/htc/util/weather/WSPPData;->hourPrecip:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_1e
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/htc/util/weather/WSPData;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->cityLocalTime:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->cityLatitude:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->cityLongitude:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->cityTimeZone:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->cityWebURL:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->dayLightFlag:Ljava/lang/String;

    iput v1, p0, Lcom/htc/util/weather/WSPPData;->curFeelTempC:I

    iput v1, p0, Lcom/htc/util/weather/WSPPData;->curFeelTempF:I

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->curHumidity:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->curWinddirection:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->curWindspeedMI:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->curVisibilityMI:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->curWindspeedKM:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->curVisibilityKM:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstSunrise:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstSunset:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstFeelHighTempC:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstFeelHighTempF:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstFeelLowTempC:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstFeelLowTempF:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelHighTempC:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelHighTempF:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelLowTempC:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelLowTempF:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightConditionId:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightHighTempC:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightHighTempF:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightLowTempC:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightLowTempF:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstPrecip:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightPrecip:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourName:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourConditionId:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourTempC:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourTempF:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourFeelTempC:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourFeelTempF:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourPrecip:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/util/weather/WSPData;->type:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->param1:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->param2:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/util/weather/WSPData;->lastUpdate:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/util/weather/WSPData;->curTempC:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/util/weather/WSPData;->curTempF:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->curConditionId:Ljava/lang/String;

    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->fstName:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->fstDate:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->fstConditionId:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->fstHighTempC:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->fstHighTempF:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->fstLowTempC:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->fstLowTempF:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocLat:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocLng:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocLatTrim:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocLngTrim:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocState:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocCountry:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocTimezoneId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->cityLocalTime:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->cityLatitude:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->cityLongitude:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->cityTimeZone:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->cityWebURL:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->dayLightFlag:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/util/weather/WSPPData;->curFeelTempC:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/util/weather/WSPPData;->curFeelTempF:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->curHumidity:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->curWinddirection:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->curWindspeedMI:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->curVisibilityMI:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->curWindspeedKM:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->curVisibilityKM:Ljava/lang/String;

    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstSunrise:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstSunset:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstFeelHighTempC:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstFeelHighTempF:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstFeelLowTempC:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstFeelLowTempF:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelHighTempC:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelHighTempF:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelLowTempC:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelLowTempF:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightConditionId:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightHighTempC:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightHighTempF:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightLowTempC:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightLowTempF:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstPrecip:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightPrecip:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourName:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourConditionId:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourTempC:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourTempF:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourFeelTempC:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourFeelTempF:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourPrecip:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    return-void
.end method

.method public static getProjection()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/htc/util/weather/WSPPData;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method private mileToKilo(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    int-to-double v2, v1

    const-wide v4, 0x3ff9bfe2a3cea6c2L

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public getCityLatitude()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->cityLatitude:Ljava/lang/String;

    return-object v0
.end method

.method public getCityLocalTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->cityLocalTime:Ljava/lang/String;

    return-object v0
.end method

.method public getCityLongitude()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->cityLongitude:Ljava/lang/String;

    return-object v0
.end method

.method public getCityTimeZone()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->cityTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method public getCityWebURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->cityWebURL:Ljava/lang/String;

    return-object v0
.end method

.method public getCurFeelTempC()I
    .locals 1

    iget v0, p0, Lcom/htc/util/weather/WSPPData;->curFeelTempC:I

    return v0
.end method

.method public getCurFeelTempF()I
    .locals 1

    iget v0, p0, Lcom/htc/util/weather/WSPPData;->curFeelTempF:I

    return v0
.end method

.method public getCurHumidity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->curHumidity:Ljava/lang/String;

    return-object v0
.end method

.method public getCurVisibility()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->curVisibilityMI:Ljava/lang/String;

    return-object v0
.end method

.method public getCurVisibilityKM()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->curVisibilityKM:Ljava/lang/String;

    return-object v0
.end method

.method public getCurWinddirection()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->curWinddirection:Ljava/lang/String;

    return-object v0
.end method

.method public getCurWindspeed()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->curWindspeedMI:Ljava/lang/String;

    return-object v0
.end method

.method public getCurWindspeedKM()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->curWindspeedKM:Ljava/lang/String;

    return-object v0
.end method

.method public getDayLightFlag()Ljava/lang/String;
    .locals 1

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

    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourTempF:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setCityLatitude(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->cityLatitude:Ljava/lang/String;

    return-void
.end method

.method public setCityLocalTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->cityLocalTime:Ljava/lang/String;

    return-void
.end method

.method public setCityLongitude(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->cityLongitude:Ljava/lang/String;

    return-void
.end method

.method public setCityTimeZone(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->cityTimeZone:Ljava/lang/String;

    return-void
.end method

.method public setCityWebURL(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->cityWebURL:Ljava/lang/String;

    return-void
.end method

.method public setCurFeelTempC(I)V
    .locals 0

    iput p1, p0, Lcom/htc/util/weather/WSPPData;->curFeelTempC:I

    return-void
.end method

.method public setCurFeelTempF(I)V
    .locals 0

    iput p1, p0, Lcom/htc/util/weather/WSPPData;->curFeelTempF:I

    return-void
.end method

.method public setCurHumidity(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->curHumidity:Ljava/lang/String;

    return-void
.end method

.method public setCurVisibility(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->curVisibilityMI:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/htc/util/weather/WSPPData;->mileToKilo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->curVisibilityKM:Ljava/lang/String;

    return-void
.end method

.method public setCurWinddirection(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->curWinddirection:Ljava/lang/String;

    return-void
.end method

.method public setCurWindspeed(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->curWindspeedMI:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/htc/util/weather/WSPPData;->mileToKilo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPPData;->curWindspeedKM:Ljava/lang/String;

    return-void
.end method

.method public setDayLightFlag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->dayLightFlag:Ljava/lang/String;

    return-void
.end method

.method public setFstFeelHighTempC(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->fstFeelHighTempC:Ljava/util/ArrayList;

    return-void
.end method

.method public setFstFeelHighTempF(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->fstFeelHighTempF:Ljava/util/ArrayList;

    return-void
.end method

.method public setFstFeelLowTempC(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->fstFeelLowTempC:Ljava/util/ArrayList;

    return-void
.end method

.method public setFstFeelLowTempF(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->fstFeelLowTempF:Ljava/util/ArrayList;

    return-void
.end method

.method public setFstNightConditionId(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->fstNightConditionId:Ljava/util/ArrayList;

    return-void
.end method

.method public setFstNightFeelHighTempC(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelHighTempC:Ljava/util/ArrayList;

    return-void
.end method

.method public setFstNightFeelHighTempF(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelHighTempF:Ljava/util/ArrayList;

    return-void
.end method

.method public setFstNightFeelLowTempC(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelLowTempC:Ljava/util/ArrayList;

    return-void
.end method

.method public setFstNightFeelLowTempF(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelLowTempF:Ljava/util/ArrayList;

    return-void
.end method

.method public setFstNightHighTempC(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->fstNightHighTempC:Ljava/util/ArrayList;

    return-void
.end method

.method public setFstNightHighTempF(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->fstNightHighTempF:Ljava/util/ArrayList;

    return-void
.end method

.method public setFstNightLowTempC(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->fstNightLowTempC:Ljava/util/ArrayList;

    return-void
.end method

.method public setFstNightLowTempF(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->fstNightLowTempF:Ljava/util/ArrayList;

    return-void
.end method

.method public setFstNightPrecip(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->fstNightPrecip:Ljava/util/ArrayList;

    return-void
.end method

.method public setFstPrecip(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->fstPrecip:Ljava/util/ArrayList;

    return-void
.end method

.method public setFstSunrise(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->fstSunrise:Ljava/util/ArrayList;

    return-void
.end method

.method public setFstSunset(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->fstSunset:Ljava/util/ArrayList;

    return-void
.end method

.method public setHourConditionId(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->hourConditionId:Ljava/util/ArrayList;

    return-void
.end method

.method public setHourFeelTempC(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->hourFeelTempC:Ljava/util/ArrayList;

    return-void
.end method

.method public setHourFeelTempF(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->hourFeelTempF:Ljava/util/ArrayList;

    return-void
.end method

.method public setHourName(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->hourName:Ljava/util/ArrayList;

    return-void
.end method

.method public setHourPrecip(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->hourPrecip:Ljava/util/ArrayList;

    return-void
.end method

.method public setHourTempC(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->hourTempC:Ljava/util/ArrayList;

    return-void
.end method

.method public setHourTempF(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/htc/util/weather/WSPPData;->hourTempF:Ljava/util/ArrayList;

    return-void
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 3

    invoke-super {p0}, Lcom/htc/util/weather/WSPData;->toContentValues()Landroid/content/ContentValues;

    move-result-object v0

    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->cityLocalTime:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->cityLocalTime:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->cityLatitude:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->cityLatitude:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->cityLongitude:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->cityLongitude:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->cityTimeZone:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->cityTimeZone:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->cityWebURL:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->cityWebURL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->dayLightFlag:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->dayLightFlag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->curFeelTempC:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/htc/util/weather/WSPPData;->curFeelTempC:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->curFeelTempF:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/htc/util/weather/WSPPData;->curFeelTempF:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->curHumidity:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->curHumidity:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->curWinddirection:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->curWinddirection:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->curWindspeed:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->curWindspeedMI:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->curVisibility:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->curVisibilityMI:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstSunrise:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->fstSunrise:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/htc/util/weather/WSPPData;->arrayListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstSunset:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->fstSunset:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/htc/util/weather/WSPPData;->arrayListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstFeelHighTempC:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->fstFeelHighTempC:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/htc/util/weather/WSPPData;->arrayListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstFeelHighTempF:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->fstFeelHighTempF:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/htc/util/weather/WSPPData;->arrayListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstFeelLowTempC:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->fstFeelLowTempC:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/htc/util/weather/WSPPData;->arrayListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstFeelLowTempF:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->fstFeelLowTempF:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/htc/util/weather/WSPPData;->arrayListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstNightFeelHighTempC:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelHighTempC:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/htc/util/weather/WSPPData;->arrayListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstNightFeelHighTempF:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelHighTempF:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/htc/util/weather/WSPPData;->arrayListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstNightFeelLowTempC:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelLowTempC:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/htc/util/weather/WSPPData;->arrayListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstNightFeelLowTempF:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelLowTempF:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/htc/util/weather/WSPPData;->arrayListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstNightConditionId:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->fstNightConditionId:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/htc/util/weather/WSPPData;->arrayListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstNightHighTempC:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->fstNightHighTempC:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/htc/util/weather/WSPPData;->arrayListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstNightHighTempF:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->fstNightHighTempF:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/htc/util/weather/WSPPData;->arrayListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstNightLowTempC:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->fstNightLowTempC:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/htc/util/weather/WSPPData;->arrayListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstNightLowTempF:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->fstNightLowTempF:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/htc/util/weather/WSPPData;->arrayListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstPrecip:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->fstPrecip:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/htc/util/weather/WSPPData;->arrayListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->fstNightPrecip:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->fstNightPrecip:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/htc/util/weather/WSPPData;->arrayListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->hourName:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->hourName:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/htc/util/weather/WSPPData;->arrayListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->hourConditionId:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->hourConditionId:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/htc/util/weather/WSPPData;->arrayListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->hourTempC:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->hourTempC:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/htc/util/weather/WSPPData;->arrayListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->hourTempF:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->hourTempF:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/htc/util/weather/WSPPData;->arrayListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->hourFeelTempC:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->hourFeelTempC:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/htc/util/weather/WSPPData;->arrayListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->hourFeelTempF:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->hourFeelTempF:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/htc/util/weather/WSPPData;->arrayListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->hourPrecip:Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPPData;->hourPrecip:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/htc/util/weather/WSPPData;->arrayListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public toWSPDATA()Lcom/htc/util/weather/WSPData;
    .locals 3

    new-instance v0, Lcom/htc/util/weather/WSPData;

    invoke-direct {v0}, Lcom/htc/util/weather/WSPData;-><init>()V

    iget v1, p0, Lcom/htc/util/weather/WSPData;->type:I

    iput v1, v0, Lcom/htc/util/weather/WSPData;->type:I

    iget-object v1, p0, Lcom/htc/util/weather/WSPData;->param1:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/util/weather/WSPData;->param1:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/util/weather/WSPData;->param2:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/util/weather/WSPData;->param2:Ljava/lang/String;

    iget-wide v1, p0, Lcom/htc/util/weather/WSPData;->lastUpdate:J

    iput-wide v1, v0, Lcom/htc/util/weather/WSPData;->lastUpdate:J

    iget v1, p0, Lcom/htc/util/weather/WSPData;->curTempC:I

    iput v1, v0, Lcom/htc/util/weather/WSPData;->curTempC:I

    iget v1, p0, Lcom/htc/util/weather/WSPData;->curTempF:I

    iput v1, v0, Lcom/htc/util/weather/WSPData;->curTempF:I

    iget-object v1, p0, Lcom/htc/util/weather/WSPData;->curConditionId:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/util/weather/WSPData;->curConditionId:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/util/weather/WSPData;->fstName:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/htc/util/weather/WSPData;->fstName:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/htc/util/weather/WSPData;->fstDate:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/htc/util/weather/WSPData;->fstDate:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/htc/util/weather/WSPData;->fstConditionId:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/htc/util/weather/WSPData;->fstConditionId:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/htc/util/weather/WSPData;->fstHighTempC:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/htc/util/weather/WSPData;->fstHighTempC:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/htc/util/weather/WSPData;->fstHighTempF:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/htc/util/weather/WSPData;->fstHighTempF:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/htc/util/weather/WSPData;->fstLowTempC:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/htc/util/weather/WSPData;->fstLowTempC:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/htc/util/weather/WSPData;->fstLowTempF:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/htc/util/weather/WSPData;->fstLowTempF:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/htc/util/weather/WSPData;->curLocLat:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/util/weather/WSPData;->curLocLat:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/util/weather/WSPData;->curLocLng:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/util/weather/WSPData;->curLocLng:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/util/weather/WSPData;->curLocLatTrim:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/util/weather/WSPData;->curLocLatTrim:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/util/weather/WSPData;->curLocLngTrim:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/util/weather/WSPData;->curLocLngTrim:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/util/weather/WSPData;->curLocName:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/util/weather/WSPData;->curLocName:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/util/weather/WSPData;->curLocState:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/util/weather/WSPData;->curLocState:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/util/weather/WSPData;->curLocCountry:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/util/weather/WSPData;->curLocCountry:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/util/weather/WSPData;->curLocTimezoneId:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/util/weather/WSPData;->curLocTimezoneId:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Lcom/htc/util/weather/WSPData;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->param1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->param2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/htc/util/weather/WSPData;->lastUpdate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/htc/util/weather/WSPData;->curTempC:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/htc/util/weather/WSPData;->curTempF:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->curConditionId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->fstName:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->fstDate:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->fstConditionId:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->fstHighTempC:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->fstHighTempF:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->fstLowTempC:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->fstLowTempF:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocLat:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocLng:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocLatTrim:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocLngTrim:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocState:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocCountry:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocTimezoneId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->cityLocalTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->cityLatitude:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->cityLongitude:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->cityTimeZone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->cityWebURL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->dayLightFlag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/htc/util/weather/WSPPData;->curFeelTempC:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/htc/util/weather/WSPPData;->curFeelTempF:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->curHumidity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->curWinddirection:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->curWindspeedMI:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->curVisibilityMI:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->curWindspeedKM:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->curVisibilityKM:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstSunrise:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstSunset:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstFeelHighTempC:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstFeelHighTempF:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstFeelLowTempC:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstFeelLowTempF:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelHighTempC:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelHighTempF:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelLowTempC:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightFeelLowTempF:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightConditionId:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightHighTempC:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightHighTempF:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightLowTempC:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightLowTempF:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstPrecip:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->fstNightPrecip:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourName:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourConditionId:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourTempC:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourTempF:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourFeelTempC:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourFeelTempF:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/htc/util/weather/WSPPData;->hourPrecip:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return-void
.end method
