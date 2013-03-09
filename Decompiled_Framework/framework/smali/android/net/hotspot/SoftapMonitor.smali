.class public Landroid/net/hotspot/SoftapMonitor;
.super Ljava/lang/Object;
.source "SoftapMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/hotspot/SoftapMonitor$MonitorThread;
    }
.end annotation


# static fields
.field private static final AP_DOWN:I = 0x2

.field private static final AP_UNKNOWN:I = 0x7

.field private static final AP_UP:I = 0x1

.field private static final ERROR_EVENT:I = 0x6

.field private static final MAX_RECV_ERRORS:I = 0xa

.field private static final MAX_RECV_NULLS:I = 0x6

.field private static final STA_BLOCK:I = 0x5

.field private static final STA_JOIN:I = 0x3

.field private static final STA_LEAVE:I = 0x4

.field private static final TAG:Ljava/lang/String; = "SoftapMonitor"

.field private static final ap_down:Ljava/lang/String; = "AP_DOWN"

.field private static final ap_up:Ljava/lang/String; = "AP_UP"

.field private static final error_event:Ljava/lang/String; = "ERROR_EVENT"

.field private static final sta_block:Ljava/lang/String; = "STA_BLOCK"

.field private static final sta_join:Ljava/lang/String; = "STA_JOIN"

.field private static final sta_leave:Ljava/lang/String; = "STA_LEAVE"


# instance fields
.field private mNullErrors:I

.field private mRecvErrors:I

.field private final mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/net/hotspot/SoftapMonitor;->mRecvErrors:I

    iput v0, p0, Landroid/net/hotspot/SoftapMonitor;->mNullErrors:I

    iput-object p1, p0, Landroid/net/hotspot/SoftapMonitor;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    return-void
.end method

.method static synthetic access$002(Landroid/net/hotspot/SoftapMonitor;I)I
    .locals 0

    iput p1, p0, Landroid/net/hotspot/SoftapMonitor;->mNullErrors:I

    return p1
.end method

.method static synthetic access$004(Landroid/net/hotspot/SoftapMonitor;)I
    .locals 1

    iget v0, p0, Landroid/net/hotspot/SoftapMonitor;->mNullErrors:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/hotspot/SoftapMonitor;->mNullErrors:I

    return v0
.end method

.method static synthetic access$102(Landroid/net/hotspot/SoftapMonitor;I)I
    .locals 0

    iput p1, p0, Landroid/net/hotspot/SoftapMonitor;->mRecvErrors:I

    return p1
.end method

.method static synthetic access$104(Landroid/net/hotspot/SoftapMonitor;)I
    .locals 1

    iget v0, p0, Landroid/net/hotspot/SoftapMonitor;->mRecvErrors:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/hotspot/SoftapMonitor;->mRecvErrors:I

    return v0
.end method

.method static synthetic access$200(Landroid/net/hotspot/SoftapMonitor;)Landroid/net/wifi/WifiStateMachine;
    .locals 1

    iget-object v0, p0, Landroid/net/hotspot/SoftapMonitor;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    return-object v0
.end method


# virtual methods
.method public startMonitoring()V
    .locals 2

    const-string v0, "SoftapMonitor"

    const-string/jumbo v1, "startMonitoring"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/net/hotspot/SoftapMonitor$MonitorThread;

    invoke-direct {v0, p0}, Landroid/net/hotspot/SoftapMonitor$MonitorThread;-><init>(Landroid/net/hotspot/SoftapMonitor;)V

    invoke-virtual {v0}, Landroid/net/hotspot/SoftapMonitor$MonitorThread;->start()V

    return-void
.end method
