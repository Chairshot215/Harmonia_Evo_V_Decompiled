.class public Lcom/htc/laputa/engine/util/FullAddress;
.super Ljava/lang/Object;
.source "FullAddress.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/laputa/engine/util/FullAddress$AddressFormat;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static sAddrFormatMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/laputa/engine/util/FullAddress$AddressFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static sHsnoStreetCityCountyStateZip:Lcom/htc/laputa/engine/util/FullAddress$AddressFormat;

.field private static sHsnoStreetZipCityCountyState:Lcom/htc/laputa/engine/util/FullAddress$AddressFormat;

.field private static sStateCountyCityStreetHsnoWithCommaSep:Lcom/htc/laputa/engine/util/FullAddress$AddressFormat;

.field private static sStreetHsnoCityCountyStateZip:Lcom/htc/laputa/engine/util/FullAddress$AddressFormat;

.field private static sStreetHsnoZipCityCountyState:Lcom/htc/laputa/engine/util/FullAddress$AddressFormat;

.field private static sZIPStateCountyCityStreetHsnoCountryWithSpaceSep:Lcom/htc/laputa/engine/util/FullAddress$AddressFormat;

.field private static sZIPStateCountyCityStreetHsnoNoSep:Lcom/htc/laputa/engine/util/FullAddress$AddressFormat;

.field private static sZIPStateCountyCityStreetHsnoWithSpaceSep:Lcom/htc/laputa/engine/util/FullAddress$AddressFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 14
    const-class v0, Lcom/htc/laputa/engine/util/FullAddress;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/laputa/engine/util/FullAddress;->TAG:Ljava/lang/String;

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/laputa/engine/util/FullAddress;->sAddrFormatMap:Ljava/util/HashMap;

    .line 119
    new-instance v0, Lcom/htc/laputa/engine/util/FullAddress$1;

    invoke-direct {v0}, Lcom/htc/laputa/engine/util/FullAddress$1;-><init>()V

    sput-object v0, Lcom/htc/laputa/engine/util/FullAddress;->sHsnoStreetCityCountyStateZip:Lcom/htc/laputa/engine/util/FullAddress$AddressFormat;

    .line 168
    new-instance v0, Lcom/htc/laputa/engine/util/FullAddress$2;

    invoke-direct {v0}, Lcom/htc/laputa/engine/util/FullAddress$2;-><init>()V

    sput-object v0, Lcom/htc/laputa/engine/util/FullAddress;->sStreetHsnoCityCountyStateZip:Lcom/htc/laputa/engine/util/FullAddress$AddressFormat;

    .line 217
    new-instance v0, Lcom/htc/laputa/engine/util/FullAddress$3;

    invoke-direct {v0}, Lcom/htc/laputa/engine/util/FullAddress$3;-><init>()V

    sput-object v0, Lcom/htc/laputa/engine/util/FullAddress;->sHsnoStreetZipCityCountyState:Lcom/htc/laputa/engine/util/FullAddress$AddressFormat;

    .line 267
    new-instance v0, Lcom/htc/laputa/engine/util/FullAddress$4;

    invoke-direct {v0}, Lcom/htc/laputa/engine/util/FullAddress$4;-><init>()V

    sput-object v0, Lcom/htc/laputa/engine/util/FullAddress;->sStreetHsnoZipCityCountyState:Lcom/htc/laputa/engine/util/FullAddress$AddressFormat;

    .line 317
    new-instance v0, Lcom/htc/laputa/engine/util/FullAddress$5;

    invoke-direct {v0}, Lcom/htc/laputa/engine/util/FullAddress$5;-><init>()V

    sput-object v0, Lcom/htc/laputa/engine/util/FullAddress;->sZIPStateCountyCityStreetHsnoNoSep:Lcom/htc/laputa/engine/util/FullAddress$AddressFormat;

    .line 352
    new-instance v0, Lcom/htc/laputa/engine/util/FullAddress$6;

    invoke-direct {v0}, Lcom/htc/laputa/engine/util/FullAddress$6;-><init>()V

    sput-object v0, Lcom/htc/laputa/engine/util/FullAddress;->sZIPStateCountyCityStreetHsnoWithSpaceSep:Lcom/htc/laputa/engine/util/FullAddress$AddressFormat;

    .line 407
    new-instance v0, Lcom/htc/laputa/engine/util/FullAddress$7;

    invoke-direct {v0}, Lcom/htc/laputa/engine/util/FullAddress$7;-><init>()V

    sput-object v0, Lcom/htc/laputa/engine/util/FullAddress;->sZIPStateCountyCityStreetHsnoCountryWithSpaceSep:Lcom/htc/laputa/engine/util/FullAddress$AddressFormat;

    .line 461
    new-instance v0, Lcom/htc/laputa/engine/util/FullAddress$8;

    invoke-direct {v0}, Lcom/htc/laputa/engine/util/FullAddress$8;-><init>()V

    sput-object v0, Lcom/htc/laputa/engine/util/FullAddress;->sStateCountyCityStreetHsnoWithCommaSep:Lcom/htc/laputa/engine/util/FullAddress$AddressFormat;

    .line 513
    sget-object v0, Lcom/htc/laputa/engine/util/FullAddress;->sAddrFormatMap:Ljava/util/HashMap;

    const-string v1, "USA"

    sget-object v2, Lcom/htc/laputa/engine/util/FullAddress;->sHsnoStreetCityCountyStateZip:Lcom/htc/laputa/engine/util/FullAddress$AddressFormat;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    sget-object v0, Lcom/htc/laputa/engine/util/FullAddress;->sAddrFormatMap:Ljava/util/HashMap;

    const-string v1, "CAN"

    sget-object v2, Lcom/htc/laputa/engine/util/FullAddress;->sHsnoStreetCityCountyStateZip:Lcom/htc/laputa/engine/util/FullAddress$AddressFormat;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    sget-object v0, Lcom/htc/laputa/engine/util/FullAddress;->sAddrFormatMap:Ljava/util/HashMap;

    const-string v1, "AUS"

    sget-object v2, Lcom/htc/laputa/engine/util/FullAddress;->sHsnoStreetCityCountyStateZip:Lcom/htc/laputa/engine/util/FullAddress$AddressFormat;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    sget-object v0, Lcom/htc/laputa/engine/util/FullAddress;->sAddrFormatMap:Ljava/util/HashMap;

    const-string v1, "NZL"

    sget-object v2, Lcom/htc/laputa/engine/util/FullAddress;->sHsnoStreetCityCountyStateZip:Lcom/htc/laputa/engine/util/FullAddress$AddressFormat;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    sget-object v0, Lcom/htc/laputa/engine/util/FullAddress;->sAddrFormatMap:Ljava/util/HashMap;

    const-string v1, "SGP"

    sget-object v2, Lcom/htc/laputa/engine/util/FullAddress;->sHsnoStreetCityCountyStateZip:Lcom/htc/laputa/engine/util/FullAddress$AddressFormat;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    sget-object v0, Lcom/htc/laputa/engine/util/FullAddress;->sAddrFormatMap:Ljava/util/HashMap;

    const-string v1, "GBR"

    sget-object v2, Lcom/htc/laputa/engine/util/FullAddress;->sHsnoStreetCityCountyStateZip:Lcom/htc/laputa/engine/util/FullAddress$AddressFormat;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    sget-object v0, Lcom/htc/laputa/engine/util/FullAddress;->sAddrFormatMap:Ljava/util/HashMap;

    const-string v1, "ZAF"

    sget-object v2, Lcom/htc/laputa/engine/util/FullAddress;->sHsnoStreetCityCountyStateZip:Lcom/htc/laputa/engine/util/FullAddress$AddressFormat;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    sget-object v0, Lcom/htc/laputa/engine/util/FullAddress;->sAddrFormatMap:Ljava/util/HashMap;

    const-string v1, "ARG"

    sget-object v2, Lcom/htc/laputa/engine/util/FullAddress;->sStreetHsnoCityCountyStateZip:Lcom/htc/laputa/engine/util/FullAddress$AddressFormat;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    sget-object v0, Lcom/htc/laputa/engine/util/FullAddress;->sAddrFormatMap:Ljava/util/HashMap;

    const-string v1, "BRA"

    sget-object v2, Lcom/htc/laputa/engine/util/FullAddress;->sStreetHsnoCityCountyStateZip:Lcom/htc/laputa/engine/util/FullAddress$AddressFormat;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    sget-object v0, Lcom/htc/laputa/engine/util/FullAddress;->sAddrFormatMap:Ljava/util/HashMap;

    const-string v1, "CZE"

    sget-object v2, Lcom/htc/laputa/engine/util/FullAddress;->sStreetHsnoCityCountyStateZip:Lcom/htc/laputa/engine/util/FullAddress$AddressFormat;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    sget-object v0, Lcom/htc/laputa/engine/util/FullAddress;->sAddrFormatMap:Ljava/util/HashMap;

    const-string v1, "IDN"

    sget-object v2, Lcom/htc/laputa/engine/util/FullAddress;->sStreetHsnoCityCountyStateZip:Lcom/htc/laputa/engine/util/FullAddress$AddressFormat;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    sget-object v0, Lcom/htc/laputa/engine/util/FullAddress;->sAddrFormatMap:Ljava/util/HashMap;

    const-string v1, "RUS"

    sget-object v2, Lcom/htc/laputa/engine/util/FullAddress;->sStreetHsnoCityCountyStateZip:Lcom/htc/laputa/engine/util/FullAddress$AddressFormat;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    sget-object v0, Lcom/htc/laputa/engine/util/FullAddress;->sAddrFormatMap:Ljava/util/HashMap;

    const-string v1, "BLR"

    sget-object v2, Lcom/htc/laputa/engine/util/FullAddress;->sStreetHsnoCityCountyStateZip:Lcom/htc/laputa/engine/util/FullAddress$AddressFormat;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    sget-object v0, Lcom/htc/laputa/engine/util/FullAddress;->sAddrFormatMap:Ljava/util/HashMap;

    const-string v1, "ISL"

    sget-object v2, Lcom/htc/laputa/engine/util/FullAddress;->sStreetHsnoCityCountyStateZip:Lcom/htc/laputa/engine/util/FullAddress$AddressFormat;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    sget-object v0, Lcom/htc/laputa/engine/util/FullAddress;->sAddrFormatMap:Ljava/util/HashMap;

    const-string v1, "YEM"

    sget-object v2, Lcom/htc/laputa/engine/util/FullAddress;->sHsnoStreetZipCityCountyState:Lcom/htc/laputa/engine/util/FullAddress$AddressFormat;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    sget-object v0, Lcom/htc/laputa/engine/util/FullAddress;->sAddrFormatMap:Ljava/util/HashMap;

    const-string v1, "ARE"

    sget-object v2, Lcom/htc/laputa/engine/util/FullAddress;->sHsnoStreetZipCityCountyState:Lcom/htc/laputa/engine/util/FullAddress$AddressFormat;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    sget-object v0, Lcom/htc/laputa/engine/util/FullAddress;->sAddrFormatMap:Ljava/util/HashMap;

    const-string v1, "OMN"

    sget-object v2, Lcom/htc/laputa/engine/util/FullAddress;->sHsnoStreetZipCityCountyState:Lcom/htc/laputa/engine/util/FullAddress$AddressFormat;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    sget-object v0, Lcom/htc/laputa/engine/util/FullAddress;->sAddrFormatMap:Ljava/util/HashMap;

    const-string v1, "QAT"

    sget-object v2, Lcom/htc/laputa/engine/util/FullAddress;->sHsnoStreetZipCityCountyState:Lcom/htc/laputa/engine/util/FullAddress$AddressFormat;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    sget-object v0, Lcom/htc/laputa/engine/util/FullAddress;->sAddrFormatMap:Ljava/util/HashMap;

    const-string v1, "SAU"

    sget-object v2, Lcom/htc/laputa/engine/util/FullAddress;->sHsnoStreetZipCityCountyState:Lcom/htc/laputa/engine/util/FullAddress$AddressFormat;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    sget-object v0, Lcom/htc/laputa/engine/util/FullAddress;->sAddrFormatMap:Ljava/util/HashMap;

    const-string v1, "KWT"

    sget-object v2, Lcom/htc/laputa/engine/util/FullAddress;->sHsnoStreetZipCityCountyState:Lcom/htc/laputa/engine/util/FullAddress$AddressFormat;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    sget-object v0, Lcom/htc/laputa/engine/util/FullAddress;->sAddrFormatMap:Ljava/util/HashMap;

    const-string v1, "FIN"

    sget-object v2, Lcom/htc/laputa/engine/util/FullAddress;->sStreetHsnoZipCityCountyState:Lcom/htc/laputa/engine/util/FullAddress$AddressFormat;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    sget-object v0, Lcom/htc/laputa/engine/util/FullAddress;->sAddrFormatMap:Ljava/util/HashMap;

    const-string v1, "DEU"

    sget-object v2, Lcom/htc/laputa/engine/util/FullAddress;->sStreetHsnoZipCityCountyState:Lcom/htc/laputa/engine/util/FullAddress$AddressFormat;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    sget-object v0, Lcom/htc/laputa/engine/util/FullAddress;->sAddrFormatMap:Ljava/util/HashMap;

    const-string v1, "ITA"

    sget-object v2, Lcom/htc/laputa/engine/util/FullAddress;->sStreetHsnoZipCityCountyState:Lcom/htc/laputa/engine/util/FullAddress$AddressFormat;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    sget-object v0, Lcom/htc/laputa/engine/util/FullAddress;->sAddrFormatMap:Ljava/util/HashMap;

    const-string v1, "NLD"

    sget-object v2, Lcom/htc/laputa/engine/util/FullAddress;->sStreetHsnoZipCityCountyState:Lcom/htc/laputa/engine/util/FullAddress$AddressFormat;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    sget-object v0, Lcom/htc/laputa/engine/util/FullAddress;->sAddrFormatMap:Ljava/util/HashMap;

    const-string v1, "NOR"

    sget-object v2, Lcom/htc/laputa/engine/util/FullAddress;->sStreetHsnoZipCityCountyState:Lcom/htc/laputa/engine/util/FullAddress$AddressFormat;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    sget-object v0, Lcom/htc/laputa/engine/util/FullAddress;->sAddrFormatMap:Ljava/util/HashMap;

    const-string v1, "POL"

    sget-object v2, Lcom/htc/laputa/engine/util/FullAddress;->sStreetHsnoZipCityCountyState:Lcom/htc/laputa/engine/util/FullAddress$AddressFormat;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    sget-object v0, Lcom/htc/laputa/engine/util/FullAddress;->sAddrFormatMap:Ljava/util/HashMap;

    const-string v1, "SVN"

    sget-object v2, Lcom/htc/laputa/engine/util/FullAddress;->sStreetHsnoZipCityCountyState:Lcom/htc/laputa/engine/util/FullAddress$AddressFormat;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    sget-object v0, Lcom/htc/laputa/engine/util/FullAddress;->sAddrFormatMap:Ljava/util/HashMap;

    const-string v1, "SWE"

    sget-object v2, Lcom/htc/laputa/engine/util/FullAddress;->sStreetHsnoZipCityCountyState:Lcom/htc/laputa/engine/util/FullAddress$AddressFormat;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    sget-object v0, Lcom/htc/laputa/engine/util/FullAddress;->sAddrFormatMap:Ljava/util/HashMap;

    const-string v1, "BEL"

    sget-object v2, Lcom/htc/laputa/engine/util/FullAddress;->sStreetHsnoZipCityCountyState:Lcom/htc/laputa/engine/util/FullAddress$AddressFormat;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    sget-object v0, Lcom/htc/laputa/engine/util/FullAddress;->sAddrFormatMap:Ljava/util/HashMap;

    const-string v1, "FRA"

    sget-object v2, Lcom/htc/laputa/engine/util/FullAddress;->sStreetHsnoZipCityCountyState:Lcom/htc/laputa/engine/util/FullAddress$AddressFormat;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    sget-object v0, Lcom/htc/laputa/engine/util/FullAddress;->sAddrFormatMap:Ljava/util/HashMap;

    const-string v1, "DNK"

    sget-object v2, Lcom/htc/laputa/engine/util/FullAddress;->sStreetHsnoZipCityCountyState:Lcom/htc/laputa/engine/util/FullAddress$AddressFormat;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    sget-object v0, Lcom/htc/laputa/engine/util/FullAddress;->sAddrFormatMap:Ljava/util/HashMap;

    const-string v1, "TWN"

    sget-object v2, Lcom/htc/laputa/engine/util/FullAddress;->sZIPStateCountyCityStreetHsnoNoSep:Lcom/htc/laputa/engine/util/FullAddress$AddressFormat;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    sget-object v0, Lcom/htc/laputa/engine/util/FullAddress;->sAddrFormatMap:Ljava/util/HashMap;

    const-string v1, "CHN"

    sget-object v2, Lcom/htc/laputa/engine/util/FullAddress;->sZIPStateCountyCityStreetHsnoNoSep:Lcom/htc/laputa/engine/util/FullAddress$AddressFormat;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    sget-object v0, Lcom/htc/laputa/engine/util/FullAddress;->sAddrFormatMap:Ljava/util/HashMap;

    const-string v1, "HKG"

    sget-object v2, Lcom/htc/laputa/engine/util/FullAddress;->sZIPStateCountyCityStreetHsnoNoSep:Lcom/htc/laputa/engine/util/FullAddress$AddressFormat;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    sget-object v0, Lcom/htc/laputa/engine/util/FullAddress;->sAddrFormatMap:Ljava/util/HashMap;

    const-string v1, "MAC"

    sget-object v2, Lcom/htc/laputa/engine/util/FullAddress;->sZIPStateCountyCityStreetHsnoNoSep:Lcom/htc/laputa/engine/util/FullAddress$AddressFormat;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    sget-object v0, Lcom/htc/laputa/engine/util/FullAddress;->sAddrFormatMap:Ljava/util/HashMap;

    const-string v1, "JPN"

    sget-object v2, Lcom/htc/laputa/engine/util/FullAddress;->sZIPStateCountyCityStreetHsnoNoSep:Lcom/htc/laputa/engine/util/FullAddress$AddressFormat;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    sget-object v0, Lcom/htc/laputa/engine/util/FullAddress;->sAddrFormatMap:Ljava/util/HashMap;

    const-string v1, "KOR"

    sget-object v2, Lcom/htc/laputa/engine/util/FullAddress;->sZIPStateCountyCityStreetHsnoWithSpaceSep:Lcom/htc/laputa/engine/util/FullAddress$AddressFormat;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    sget-object v0, Lcom/htc/laputa/engine/util/FullAddress;->sAddrFormatMap:Ljava/util/HashMap;

    const-string v1, "HUN"

    sget-object v2, Lcom/htc/laputa/engine/util/FullAddress;->sZIPStateCountyCityStreetHsnoCountryWithSpaceSep:Lcom/htc/laputa/engine/util/FullAddress$AddressFormat;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    sget-object v0, Lcom/htc/laputa/engine/util/FullAddress;->sAddrFormatMap:Ljava/util/HashMap;

    const-string v1, "IRN"

    sget-object v2, Lcom/htc/laputa/engine/util/FullAddress;->sStateCountyCityStreetHsnoWithCommaSep:Lcom/htc/laputa/engine/util/FullAddress$AddressFormat;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 115
    return-void
.end method

.method public static format(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .parameter "countryCode"
    .parameter "country"
    .parameter "state"
    .parameter "county"
    .parameter "city"
    .parameter "st"
    .parameter "hsno"
    .parameter "zip"

    .prologue
    .line 22
    const-string v13, ""

    .line 24
    .local v13, tmp:Ljava/lang/String;
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7

    .line 25
    move-object v13, p1

    .line 37
    :cond_0
    :goto_0
    const/4 v11, 0x1

    .line 38
    .local v11, isEng:Z
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v10, v1, :cond_1

    .line 40
    invoke-virtual {v13, v10}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0xff

    if-le v1, v2, :cond_c

    .line 42
    const/4 v11, 0x0

    .line 49
    :cond_1
    if-eqz p1, :cond_d

    move-object v9, p1

    .line 51
    .local v9, filter:Ljava/lang/String;
    :goto_2
    if-eqz p2, :cond_2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 53
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 54
    const-string p2, ""

    .line 59
    :cond_2
    :goto_3
    if-eqz p3, :cond_3

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 61
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 62
    const-string p3, ""

    .line 67
    :cond_3
    :goto_4
    if-eqz p4, :cond_4

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 69
    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 70
    const-string p4, ""

    .line 75
    :cond_4
    sget-object v1, Lcom/htc/laputa/engine/util/FullAddress;->sAddrFormatMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 77
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object p0

    .line 80
    :cond_5
    const/4 v12, 0x0

    .line 81
    .local v12, ret:Ljava/lang/String;
    if-eqz v11, :cond_10

    const-string v1, "TWN"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "CHN"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "JAP"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "KOR"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "HKG"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "MAC"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 92
    :cond_6
    const-string v1, "USA"

    invoke-static {v1}, Lcom/htc/laputa/engine/util/FullAddress;->getAddressFormat(Ljava/lang/String;)Lcom/htc/laputa/engine/util/FullAddress$AddressFormat;

    move-result-object v1

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Lcom/htc/laputa/engine/util/FullAddress$AddressFormat;->format(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 100
    :goto_5
    return-object v12

    .line 26
    .end local v9           #filter:Ljava/lang/String;
    .end local v10           #i:I
    .end local v11           #isEng:Z
    .end local v12           #ret:Ljava/lang/String;
    :cond_7
    if-eqz p2, :cond_8

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8

    .line 27
    move-object/from16 v13, p2

    goto/16 :goto_0

    .line 28
    :cond_8
    if-eqz p3, :cond_9

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_9

    .line 29
    move-object/from16 v13, p3

    goto/16 :goto_0

    .line 30
    :cond_9
    if-eqz p4, :cond_a

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_a

    .line 31
    move-object/from16 v13, p4

    goto/16 :goto_0

    .line 32
    :cond_a
    if-eqz p5, :cond_b

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_b

    .line 33
    move-object/from16 v13, p5

    goto/16 :goto_0

    .line 34
    :cond_b
    if-eqz p6, :cond_0

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 35
    move-object/from16 v13, p6

    goto/16 :goto_0

    .line 38
    .restart local v10       #i:I
    .restart local v11       #isEng:Z
    :cond_c
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 49
    :cond_d
    const-string v9, ""

    goto/16 :goto_2

    .line 56
    .restart local v9       #filter:Ljava/lang/String;
    :cond_e
    move-object/from16 v9, p2

    goto/16 :goto_3

    .line 64
    :cond_f
    move-object/from16 v9, p3

    goto/16 :goto_4

    .line 96
    .restart local v12       #ret:Ljava/lang/String;
    :cond_10
    invoke-static {p0}, Lcom/htc/laputa/engine/util/FullAddress;->getAddressFormat(Ljava/lang/String;)Lcom/htc/laputa/engine/util/FullAddress$AddressFormat;

    move-result-object v1

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Lcom/htc/laputa/engine/util/FullAddress$AddressFormat;->format(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_5
.end method

.method private static getAddressFormat(Ljava/lang/String;)Lcom/htc/laputa/engine/util/FullAddress$AddressFormat;
    .locals 2
    .parameter "countryCode"

    .prologue
    .line 105
    sget-object v1, Lcom/htc/laputa/engine/util/FullAddress;->sAddrFormatMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/laputa/engine/util/FullAddress$AddressFormat;

    .line 107
    .local v0, af:Lcom/htc/laputa/engine/util/FullAddress$AddressFormat;
    if-nez v0, :cond_0

    .line 109
    sget-object v0, Lcom/htc/laputa/engine/util/FullAddress;->sHsnoStreetCityCountyStateZip:Lcom/htc/laputa/engine/util/FullAddress$AddressFormat;

    .line 112
    :cond_0
    return-object v0
.end method
