.class public Lcom/htc/laputa/engine/util/ContentStoreConstants;
.super Ljava/lang/Object;
.source "ContentStoreConstants.java"


# static fields
.field public static AVAILABLE_SIZE:Ljava/lang/String;

.field public static DOWNLOAD_LATEST:Ljava/lang/String;

.field public static ID:Ljava/lang/String;

.field public static IS_CONTENT_AVAILABLE:Ljava/lang/String;

.field public static IS_DOWNLOADING:Ljava/lang/String;

.field public static IS_PAUSED:Ljava/lang/String;

.field public static IS_WIFICABLEONLY:Ljava/lang/String;

.field public static NAME:Ljava/lang/String;

.field public static PERCENTAGE:Ljava/lang/String;

.field public static RESUME_DOWNLOAD:Ljava/lang/String;

.field public static STORE_VERSION_MAJOR:Ljava/lang/String;

.field public static STORE_VERSION_MINOR:Ljava/lang/String;

.field public static TOTAL_SIZE:Ljava/lang/String;

.field public static TYPE:Ljava/lang/String;

.field public static VERSION_MAJOR:Ljava/lang/String;

.field public static VERSION_MINOR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const-string v0, "id"

    sput-object v0, Lcom/htc/laputa/engine/util/ContentStoreConstants;->ID:Ljava/lang/String;

    .line 6
    const-string v0, "name"

    sput-object v0, Lcom/htc/laputa/engine/util/ContentStoreConstants;->NAME:Ljava/lang/String;

    .line 7
    const-string v0, "type"

    sput-object v0, Lcom/htc/laputa/engine/util/ContentStoreConstants;->TYPE:Ljava/lang/String;

    .line 8
    const-string v0, "percentage"

    sput-object v0, Lcom/htc/laputa/engine/util/ContentStoreConstants;->PERCENTAGE:Ljava/lang/String;

    .line 9
    const-string v0, "isdownloading"

    sput-object v0, Lcom/htc/laputa/engine/util/ContentStoreConstants;->IS_DOWNLOADING:Ljava/lang/String;

    .line 10
    const-string v0, "iswificableonly"

    sput-object v0, Lcom/htc/laputa/engine/util/ContentStoreConstants;->IS_WIFICABLEONLY:Ljava/lang/String;

    .line 11
    const-string v0, "storeversionmajor"

    sput-object v0, Lcom/htc/laputa/engine/util/ContentStoreConstants;->STORE_VERSION_MAJOR:Ljava/lang/String;

    .line 12
    const-string v0, "storeversionminor"

    sput-object v0, Lcom/htc/laputa/engine/util/ContentStoreConstants;->STORE_VERSION_MINOR:Ljava/lang/String;

    .line 13
    const-string v0, "resumedownload"

    sput-object v0, Lcom/htc/laputa/engine/util/ContentStoreConstants;->RESUME_DOWNLOAD:Ljava/lang/String;

    .line 14
    const-string v0, "iscontentavailable"

    sput-object v0, Lcom/htc/laputa/engine/util/ContentStoreConstants;->IS_CONTENT_AVAILABLE:Ljava/lang/String;

    .line 15
    const-string v0, "downloadlatest"

    sput-object v0, Lcom/htc/laputa/engine/util/ContentStoreConstants;->DOWNLOAD_LATEST:Ljava/lang/String;

    .line 16
    const-string v0, "ispaused"

    sput-object v0, Lcom/htc/laputa/engine/util/ContentStoreConstants;->IS_PAUSED:Ljava/lang/String;

    .line 17
    const-string v0, "availablesize"

    sput-object v0, Lcom/htc/laputa/engine/util/ContentStoreConstants;->AVAILABLE_SIZE:Ljava/lang/String;

    .line 18
    const-string v0, "totalsize"

    sput-object v0, Lcom/htc/laputa/engine/util/ContentStoreConstants;->TOTAL_SIZE:Ljava/lang/String;

    .line 19
    const-string v0, "clientversionmajor"

    sput-object v0, Lcom/htc/laputa/engine/util/ContentStoreConstants;->VERSION_MAJOR:Ljava/lang/String;

    .line 20
    const-string v0, "clientversionminor"

    sput-object v0, Lcom/htc/laputa/engine/util/ContentStoreConstants;->VERSION_MINOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
