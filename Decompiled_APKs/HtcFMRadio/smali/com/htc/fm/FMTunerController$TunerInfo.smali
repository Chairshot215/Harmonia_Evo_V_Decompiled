.class public Lcom/htc/fm/FMTunerController$TunerInfo;
.super Ljava/lang/Object;
.source "FMTunerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fm/FMTunerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TunerInfo"
.end annotation


# static fields
.field public static AudioMode:I

.field public static AudioPath:I

.field public static AutoPrescanEnabled:Z

.field public static Band:I

.field public static Freq:I

.field public static IsAbortScan:Z

.field public static IsMute:Z

.field public static IsNewScanBehavior:Z

.field public static IsPrescanning:Z

.field public static IsRdsOn:Z

.field public static IsScanning:Z

.field public static IsServiceBinded:Z

.field public static IsStopScanning:Z

.field public static PresetId:I

.field public static RawRssi:I

.field public static Rds:Ljava/lang/String;

.field public static RdsPTY:I

.field public static Rssi:I

.field public static Title:Ljava/lang/String;

.field public static Volume:I

.field public static isScreenOn:Z

.field public static nCurAction:I

.field public static nCurScanChans:I

.field public static nNumScanChans:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 17
    const/4 v0, -0x1

    sput v0, Lcom/htc/fm/FMTunerController$TunerInfo;->PresetId:I

    .line 18
    sput v1, Lcom/htc/fm/FMTunerController$TunerInfo;->Rssi:I

    .line 19
    sput v1, Lcom/htc/fm/FMTunerController$TunerInfo;->RawRssi:I

    .line 20
    const-string v0, ""

    sput-object v0, Lcom/htc/fm/FMTunerController$TunerInfo;->Rds:Ljava/lang/String;

    .line 21
    sput v1, Lcom/htc/fm/FMTunerController$TunerInfo;->RdsPTY:I

    .line 22
    const-string v0, ""

    sput-object v0, Lcom/htc/fm/FMTunerController$TunerInfo;->Title:Ljava/lang/String;

    .line 23
    sget v0, Lcom/htc/fm/FMDef;->FREQUENCE_START:I

    sput v0, Lcom/htc/fm/FMTunerController$TunerInfo;->Freq:I

    .line 26
    sput-boolean v1, Lcom/htc/fm/FMTunerController$TunerInfo;->IsRdsOn:Z

    .line 27
    const/4 v0, 0x2

    sput v0, Lcom/htc/fm/FMTunerController$TunerInfo;->AudioPath:I

    .line 28
    sput v2, Lcom/htc/fm/FMTunerController$TunerInfo;->AudioMode:I

    .line 29
    sput-boolean v1, Lcom/htc/fm/FMTunerController$TunerInfo;->IsMute:Z

    .line 30
    sput v1, Lcom/htc/fm/FMTunerController$TunerInfo;->Band:I

    .line 31
    sput v1, Lcom/htc/fm/FMTunerController$TunerInfo;->Volume:I

    .line 32
    sput-boolean v2, Lcom/htc/fm/FMTunerController$TunerInfo;->AutoPrescanEnabled:Z

    .line 33
    sput-boolean v1, Lcom/htc/fm/FMTunerController$TunerInfo;->IsServiceBinded:Z

    .line 34
    sput-boolean v1, Lcom/htc/fm/FMTunerController$TunerInfo;->IsScanning:Z

    .line 35
    sput-boolean v1, Lcom/htc/fm/FMTunerController$TunerInfo;->IsStopScanning:Z

    .line 36
    sput-boolean v1, Lcom/htc/fm/FMTunerController$TunerInfo;->IsPrescanning:Z

    .line 38
    sput-boolean v1, Lcom/htc/fm/FMTunerController$TunerInfo;->IsNewScanBehavior:Z

    .line 39
    sput-boolean v1, Lcom/htc/fm/FMTunerController$TunerInfo;->IsAbortScan:Z

    .line 40
    sput v1, Lcom/htc/fm/FMTunerController$TunerInfo;->nNumScanChans:I

    .line 41
    sput v1, Lcom/htc/fm/FMTunerController$TunerInfo;->nCurScanChans:I

    .line 42
    sput v1, Lcom/htc/fm/FMTunerController$TunerInfo;->nCurAction:I

    .line 45
    sput-boolean v2, Lcom/htc/fm/FMTunerController$TunerInfo;->isScreenOn:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
