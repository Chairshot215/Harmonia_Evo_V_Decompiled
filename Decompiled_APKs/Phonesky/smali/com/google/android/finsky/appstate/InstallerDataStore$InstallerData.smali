.class public Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
.super Ljava/lang/Object;
.source "InstallerDataStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/appstate/InstallerDataStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InstallerData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;
    }
.end annotation


# instance fields
.field private accountName:Ljava/lang/String;

.field private autoUpdate:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

.field private continueUrl:Ljava/lang/String;

.field private deliveryData:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

.field private deliveryDataTimestampMs:J

.field private desiredVersion:I

.field private downloadUri:Ljava/lang/String;

.field private firstDownloadMs:J

.field private flags:I

.field private installerState:I

.field private lastNotifiedVersion:I

.field private packageName:Ljava/lang/String;

.field private referrer:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    sget-object v0, Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;->DEFAULT:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    iput-object v0, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->autoUpdate:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    .line 59
    iput v1, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->desiredVersion:I

    .line 61
    iput v1, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->lastNotifiedVersion:I

    .line 88
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/finsky/appstate/InstallerDataStore$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;IILcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;JILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .parameter "packageName"
    .parameter "autoUpdate"
    .parameter "desiredVersion"
    .parameter "lastNotifiedVersion"
    .parameter "deliveryData"
    .parameter "deliveryDataTimestampMs"
    .parameter "installerState"
    .parameter "downloadUri"
    .parameter "firstDownloadMs"
    .parameter "referrer"
    .parameter "continueUrl"
    .parameter "accountName"
    .parameter "title"
    .parameter "flags"

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    sget-object v1, Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;->DEFAULT:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    iput-object v1, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->autoUpdate:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    .line 59
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->desiredVersion:I

    .line 61
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->lastNotifiedVersion:I

    .line 95
    iput-object p1, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->packageName:Ljava/lang/String;

    .line 96
    iput-object p2, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->autoUpdate:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    .line 97
    iput p3, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->desiredVersion:I

    .line 98
    iput p4, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->lastNotifiedVersion:I

    .line 99
    iput-object p5, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->deliveryData:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    .line 100
    iput-wide p6, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->deliveryDataTimestampMs:J

    .line 101
    iput p8, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->installerState:I

    .line 102
    iput-object p9, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->downloadUri:Ljava/lang/String;

    .line 103
    iput-wide p10, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->firstDownloadMs:J

    .line 104
    iput-object p12, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->referrer:Ljava/lang/String;

    .line 105
    iput-object p13, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->continueUrl:Ljava/lang/String;

    .line 106
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->accountName:Ljava/lang/String;

    .line 107
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->title:Ljava/lang/String;

    .line 108
    move/from16 v0, p16

    iput v0, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->flags:I

    .line 109
    return-void
.end method

.method static synthetic access$1002(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->referrer:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->packageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->accountName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->title:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput p1, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->flags:I

    return p1
.end method

.method static synthetic access$1402(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->continueUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;)Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->autoUpdate:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    return-object p1
.end method

.method static synthetic access$302(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput p1, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->desiredVersion:I

    return p1
.end method

.method static synthetic access$402(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput p1, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->lastNotifiedVersion:I

    return p1
.end method

.method static synthetic access$502(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->deliveryData:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    return-object p1
.end method

.method static synthetic access$602(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-wide p1, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->deliveryDataTimestampMs:J

    return-wide p1
.end method

.method static synthetic access$702(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput p1, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->installerState:I

    return p1
.end method

.method static synthetic access$802(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->downloadUri:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-wide p1, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->firstDownloadMs:J

    return-wide p1
.end method


# virtual methods
.method public getAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->accountName:Ljava/lang/String;

    return-object v0
.end method

.method public getAutoUpdate()Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->autoUpdate:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    return-object v0
.end method

.method public getContinueUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->continueUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDeliveryData()Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->deliveryData:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    return-object v0
.end method

.method public getDeliveryDataTimestampMs()J
    .locals 2

    .prologue
    .line 142
    iget-wide v0, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->deliveryDataTimestampMs:J

    return-wide v0
.end method

.method public getDesiredVersion()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->desiredVersion:I

    return v0
.end method

.method public getDownloadUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->downloadUri:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstDownloadMs()J
    .locals 2

    .prologue
    .line 158
    iget-wide v0, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->firstDownloadMs:J

    return-wide v0
.end method

.method public getFlags()I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->flags:I

    return v0
.end method

.method public getInstallerState()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->installerState:I

    return v0
.end method

.method public getLastNotifiedVersion()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->lastNotifiedVersion:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getReferrer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->referrer:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->title:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 113
    const-string v2, "(packageName=%s,autoUpdate=%s,desiredVersion=%d,hasDeliveryData=%b,installerState=%d,downloadUri=%s,firstDownloadMs=%d,referrer=%s,continueUrl=%s,account=%s)"

    const/16 v3, 0xa

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->packageName:Ljava/lang/String;

    aput-object v4, v3, v1

    iget-object v4, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->autoUpdate:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    aput-object v4, v3, v0

    const/4 v4, 0x2

    iget v5, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->desiredVersion:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->deliveryData:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    if-eqz v5, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x4

    iget v1, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->installerState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->downloadUri:Ljava/lang/String;

    aput-object v1, v3, v0

    const/4 v0, 0x6

    iget-wide v4, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->firstDownloadMs:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v3, v0

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->referrer:Ljava/lang/String;

    aput-object v1, v3, v0

    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->continueUrl:Ljava/lang/String;

    aput-object v1, v3, v0

    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->accountName:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
