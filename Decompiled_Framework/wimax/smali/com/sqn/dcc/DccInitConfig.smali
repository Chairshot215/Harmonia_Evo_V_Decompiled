.class public Lcom/sqn/dcc/DccInitConfig;
.super Ljava/lang/Object;
.source "DccInitConfig.java"


# instance fields
.field public consoleOutput:Lcom/sqn/dcc/DccStdOut;

.field public dbg:Lcom/sqn/dcc/DbgClient;

.field public device:Lcom/sqn/dcc/DeviceInfoClient;

.field public evt:Lcom/sqn/dcc/EvtClient;

.field public ho:Lcom/sqn/dcc/HoClient;

.field public macSs:Lcom/sqn/dcc/MacSsClient;

.field public mgt:Lcom/sqn/dcc/MgtClient;

.field public mgtSs:Lcom/sqn/dcc/MgtSsClient;

.field public nds:Lcom/sqn/dcc/NdssClient;

.field public omadm:Lcom/sqn/dcc/OmadmClient;

.field public serverIp:Ljava/lang/String;

.field public serverPort:I

.field public sniff:Lcom/sqn/dcc/SniffClient;

.field public use:Lcom/sqn/dcc/DccUsing;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/DccInitConfig;->use:Lcom/sqn/dcc/DccUsing;

    iput-object v0, p0, Lcom/sqn/dcc/DccInitConfig;->device:Lcom/sqn/dcc/DeviceInfoClient;

    iput-object v0, p0, Lcom/sqn/dcc/DccInitConfig;->dbg:Lcom/sqn/dcc/DbgClient;

    iput-object v0, p0, Lcom/sqn/dcc/DccInitConfig;->evt:Lcom/sqn/dcc/EvtClient;

    iput-object v0, p0, Lcom/sqn/dcc/DccInitConfig;->ho:Lcom/sqn/dcc/HoClient;

    iput-object v0, p0, Lcom/sqn/dcc/DccInitConfig;->macSs:Lcom/sqn/dcc/MacSsClient;

    iput-object v0, p0, Lcom/sqn/dcc/DccInitConfig;->mgt:Lcom/sqn/dcc/MgtClient;

    iput-object v0, p0, Lcom/sqn/dcc/DccInitConfig;->mgtSs:Lcom/sqn/dcc/MgtSsClient;

    iput-object v0, p0, Lcom/sqn/dcc/DccInitConfig;->nds:Lcom/sqn/dcc/NdssClient;

    iput-object v0, p0, Lcom/sqn/dcc/DccInitConfig;->sniff:Lcom/sqn/dcc/SniffClient;

    iput-object v0, p0, Lcom/sqn/dcc/DccInitConfig;->omadm:Lcom/sqn/dcc/OmadmClient;

    return-void
.end method
