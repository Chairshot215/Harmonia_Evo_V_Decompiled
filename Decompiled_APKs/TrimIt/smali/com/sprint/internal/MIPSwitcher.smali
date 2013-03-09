.class public Lcom/sprint/internal/MIPSwitcher;
.super Ljava/lang/Object;
.source "MIPSwitcher.java"


# static fields
.field public static CONNECTED:Ljava/lang/String;

.field public static CONNECTING:Ljava/lang/String;

.field public static DBG:Z

.field public static DISCONNECTED:Ljava/lang/String;

.field public static TAG:Ljava/lang/String;

.field public static callback:Z

.field public static staCurMIPindex:I

.field public static staMIP0isConnected:Z

.field public static staMIP1isConnected:Z

.field public static staReqMIPindex:I


# instance fields
.field private Release_Slot1_Checking:Z

.field public bResult:Z

.field protected cm:Landroid/net/ConnectivityManager;

.field protected mContext:Landroid/content/Context;

.field private mSwitchReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 22
    const-string v0, "MIPSwitcher"

    sput-object v0, Lcom/sprint/internal/MIPSwitcher;->TAG:Ljava/lang/String;

    .line 23
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sprint/internal/MIPSwitcher;->DBG:Z

    .line 26
    const-string v0, "DISCONNECTED"

    sput-object v0, Lcom/sprint/internal/MIPSwitcher;->DISCONNECTED:Ljava/lang/String;

    .line 27
    const-string v0, "CONNECTED"

    sput-object v0, Lcom/sprint/internal/MIPSwitcher;->CONNECTED:Ljava/lang/String;

    .line 28
    const-string v0, "CONNECTING"

    sput-object v0, Lcom/sprint/internal/MIPSwitcher;->CONNECTING:Ljava/lang/String;

    .line 30
    sput v2, Lcom/sprint/internal/MIPSwitcher;->staCurMIPindex:I

    .line 31
    sput-boolean v1, Lcom/sprint/internal/MIPSwitcher;->callback:Z

    .line 32
    sput v2, Lcom/sprint/internal/MIPSwitcher;->staReqMIPindex:I

    .line 33
    sput-boolean v1, Lcom/sprint/internal/MIPSwitcher;->staMIP1isConnected:Z

    .line 34
    sput-boolean v1, Lcom/sprint/internal/MIPSwitcher;->staMIP0isConnected:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprint/internal/MIPSwitcher;->bResult:Z

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sprint/internal/MIPSwitcher;->Release_Slot1_Checking:Z

    .line 135
    new-instance v0, Lcom/sprint/internal/MIPSwitcher$1;

    invoke-direct {v0, p0}, Lcom/sprint/internal/MIPSwitcher$1;-><init>(Lcom/sprint/internal/MIPSwitcher;)V

    iput-object v0, p0, Lcom/sprint/internal/MIPSwitcher;->mSwitchReceiver:Landroid/content/BroadcastReceiver;

    .line 45
    iput-object p1, p0, Lcom/sprint/internal/MIPSwitcher;->mContext:Landroid/content/Context;

    .line 46
    iget-object v0, p0, Lcom/sprint/internal/MIPSwitcher;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/sprint/internal/MIPSwitcher;->cm:Landroid/net/ConnectivityManager;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/sprint/internal/MIPSwitcher;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/sprint/internal/MIPSwitcher;->Release_Slot1_Checking:Z

    return v0
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    .line 52
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 53
    .local v0, mSwitchIntentFilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/sprint/internal/MIPSwitcher;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sprint/internal/MIPSwitcher;->mSwitchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 54
    return-void
.end method

.method private unregisterReceiver()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sprint/internal/MIPSwitcher;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sprint/internal/MIPSwitcher;->mSwitchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 59
    return-void
.end method


# virtual methods
.method public connectMIP0()Z
    .locals 10

    .prologue
    const-wide/16 v8, 0x3e8

    const/4 v4, 0x0

    .line 71
    const/4 v5, 0x0

    :try_start_0
    iput-boolean v5, p0, Lcom/sprint/internal/MIPSwitcher;->bResult:Z

    .line 72
    const/4 v5, 0x0

    sput-boolean v5, Lcom/sprint/internal/MIPSwitcher;->callback:Z

    .line 73
    sget-object v5, Lcom/sprint/internal/MIPSwitcher;->TAG:Ljava/lang/String;

    const-string v6, "connectMIP0"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v5, p0, Lcom/sprint/internal/MIPSwitcher;->cm:Landroid/net/ConnectivityManager;

    const/4 v6, 0x0

    const-string v7, "enableADMIN"

    invoke-virtual {v5, v6, v7}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v3

    .line 77
    .local v3, rslt:I
    invoke-direct {p0}, Lcom/sprint/internal/MIPSwitcher;->registerReceiver()V

    .line 78
    sget-object v5, Lcom/sprint/internal/MIPSwitcher;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rslt:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const-wide/32 v0, 0x1d4c0

    .line 81
    .local v0, dueTime:J
    :cond_0
    sget-boolean v5, Lcom/sprint/internal/MIPSwitcher;->callback:Z

    if-nez v5, :cond_1

    .line 84
    const-wide/16 v5, 0x3e8

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 85
    sub-long/2addr v0, v8

    .line 86
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-gez v5, :cond_0

    .line 89
    :cond_1
    const/4 v5, 0x0

    sput-boolean v5, Lcom/sprint/internal/MIPSwitcher;->callback:Z

    .line 90
    invoke-direct {p0}, Lcom/sprint/internal/MIPSwitcher;->unregisterReceiver()V

    .line 91
    sget v5, Lcom/sprint/internal/MIPSwitcher;->staCurMIPindex:I

    sget v6, Lcom/sprint/internal/MIPSwitcher;->staReqMIPindex:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v5, v6, :cond_2

    const/4 v4, 0x1

    .line 97
    .end local v0           #dueTime:J
    .end local v3           #rslt:I
    :cond_2
    :goto_0
    return v4

    .line 94
    :catch_0
    move-exception v2

    .line 96
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, -0x1

    sput v0, Lcom/sprint/internal/MIPSwitcher;->staReqMIPindex:I

    .line 64
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sprint/internal/MIPSwitcher;->callback:Z

    .line 65
    invoke-direct {p0}, Lcom/sprint/internal/MIPSwitcher;->unregisterReceiver()V

    .line 66
    return-void
.end method

.method public disconnectMIP0(Z)I
    .locals 9
    .parameter "checking"

    .prologue
    const-wide/16 v7, 0x3e8

    .line 106
    :try_start_0
    sget-object v4, Lcom/sprint/internal/MIPSwitcher;->TAG:Ljava/lang/String;

    const-string v5, "disconnectMIP0"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iput-boolean p1, p0, Lcom/sprint/internal/MIPSwitcher;->Release_Slot1_Checking:Z

    .line 108
    iget-object v4, p0, Lcom/sprint/internal/MIPSwitcher;->cm:Landroid/net/ConnectivityManager;

    const/4 v5, 0x0

    const-string v6, "enableADMIN"

    invoke-virtual {v4, v5, v6}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    move-result v3

    .line 109
    .local v3, rslt:I
    iget-boolean v4, p0, Lcom/sprint/internal/MIPSwitcher;->Release_Slot1_Checking:Z

    if-eqz v4, :cond_2

    .line 110
    invoke-direct {p0}, Lcom/sprint/internal/MIPSwitcher;->registerReceiver()V

    .line 111
    const-wide/32 v0, 0x1d4c0

    .line 112
    .local v0, dueTime:J
    :cond_0
    sget-boolean v4, Lcom/sprint/internal/MIPSwitcher;->callback:Z

    if-nez v4, :cond_1

    .line 115
    const-wide/16 v4, 0x3e8

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 116
    sub-long/2addr v0, v7

    .line 117
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gez v4, :cond_0

    .line 122
    :cond_1
    const/4 v4, 0x0

    sput-boolean v4, Lcom/sprint/internal/MIPSwitcher;->callback:Z

    .line 123
    invoke-direct {p0}, Lcom/sprint/internal/MIPSwitcher;->unregisterReceiver()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .end local v0           #dueTime:J
    .end local v3           #rslt:I
    :cond_2
    :goto_0
    return v3

    .line 127
    :catch_0
    move-exception v2

    .line 129
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 130
    const/4 v3, -0x1

    goto :goto_0
.end method
