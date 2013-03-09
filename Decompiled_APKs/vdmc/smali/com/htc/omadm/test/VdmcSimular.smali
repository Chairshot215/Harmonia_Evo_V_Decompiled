.class public Lcom/htc/omadm/test/VdmcSimular;
.super Landroid/os/Handler;
.source "VdmcSimular.java"


# static fields
.field protected static LOG_TAG:Ljava/lang/String; = null

.field public static final START_CIDC:I = 0x1

.field public static final START_CIFUMO:I = 0x2

.field public static final START_HFADC:I

.field private static mInstance:Lcom/htc/omadm/test/VdmcSimular;


# instance fields
.field protected DBG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "VdmcSimular"

    sput-object v0, Lcom/htc/omadm/test/VdmcSimular;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/omadm/test/VdmcSimular;->DBG:Z

    return-void
.end method

.method private Vdmc_ExecCIDC()Z
    .locals 10

    .prologue
    const/4 v5, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 108
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 109
    .local v1, msg:Landroid/os/Message;
    iput v5, v1, Landroid/os/Message;->what:I

    .line 110
    invoke-static {}, Lcom/htc/ipl/MsgHandler;->getInstance()Lcom/htc/ipl/MsgHandler;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/htc/ipl/MsgHandler;->handleMessage(Landroid/os/Message;)V

    .line 113
    invoke-direct {p0}, Lcom/htc/omadm/test/VdmcSimular;->Vdmc_GetDevInfo()V

    .line 114
    const/16 v3, 0xd

    new-array v2, v3, [[Ljava/lang/String;

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "./CDMA/3GPD/Profile1/AuthAlgoAAA"

    aput-object v4, v3, v7

    const-string v4, "FFF"

    aput-object v4, v3, v6

    aput-object v3, v2, v7

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "./CDMA/3GPD/Profile1/AuthAlgoHA"

    aput-object v4, v3, v7

    const-string v4, "FFF"

    aput-object v4, v3, v6

    aput-object v3, v2, v6

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "./CDMA/3GPD/Profile1/MobileIpAddress"

    aput-object v4, v3, v7

    const-string v4, "6.6.6.6"

    aput-object v4, v3, v6

    aput-object v3, v2, v8

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "./CDMA/3GPD/Profile1/NAI"

    aput-object v4, v3, v7

    const-string v4, "54321"

    aput-object v4, v3, v6

    aput-object v3, v2, v9

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "./CDMA/3GPD/Profile1/PasswordAAA"

    aput-object v4, v3, v7

    const-string v4, "1.1.1.1"

    aput-object v4, v3, v6

    aput-object v3, v2, v5

    const/4 v3, 0x5

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "./CDMA/3GPD/Profile1/PasswordHA"

    aput-object v5, v4, v7

    const-string v5, "2.2.2.2"

    aput-object v5, v4, v6

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "./CDMA/3GPD/Profile1/PriHAIp"

    aput-object v5, v4, v7

    const-string v5, "3.3.3.3"

    aput-object v5, v4, v6

    aput-object v4, v2, v3

    const/4 v3, 0x7

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "./CDMA/3GPD/Profile1/ReverseTunneling"

    aput-object v5, v4, v7

    const-string v5, "0"

    aput-object v5, v4, v6

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "./CDMA/3GPD/Profile1/SecHAIp"

    aput-object v5, v4, v7

    const-string v5, "4.4.4.4"

    aput-object v5, v4, v6

    aput-object v4, v2, v3

    const/16 v3, 0x9

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "./CDMA/3GPD/Profile1/SpiAAA"

    aput-object v5, v4, v7

    const-string v5, "1024"

    aput-object v5, v4, v6

    aput-object v4, v2, v3

    const/16 v3, 0xa

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "./CDMA/3GPD/Profile1/SpiHA"

    aput-object v5, v4, v7

    const-string v5, "4096"

    aput-object v5, v4, v6

    aput-object v4, v2, v3

    const/16 v3, 0xb

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "./CDMA/NAM/CdmaNam"

    aput-object v5, v4, v7

    const-string v5, "EM1YZJzQq/mAFcj/Pw="

    aput-object v5, v4, v6

    aput-object v4, v2, v3

    const/16 v3, 0xc

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "./CDMA/NAM/MobDirNum"

    aput-object v5, v4, v7

    const-string v5, "mjFWQwcE"

    aput-object v5, v4, v6

    aput-object v4, v2, v3

    .line 136
    .local v2, s_conValue:[[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 138
    sget-object v3, Lcom/htc/omadm/test/VdmcSimular;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SetConfigValue:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v0

    aget-object v5, v5, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-static {}, Lcom/htc/ipl/cdma;->getInstance()Lcom/htc/ipl/cdma;

    move-result-object v3

    aget-object v4, v2, v0

    aget-object v4, v4, v7

    aget-object v5, v2, v0

    aget-object v5, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/htc/ipl/cdma;->SetConfigValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-static {}, Lcom/htc/ipl/common;->getInstance()Lcom/htc/ipl/common;

    move-result-object v3

    invoke-virtual {v3, v9, v6}, Lcom/htc/ipl/common;->AccessToggle(IZ)V

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    :cond_0
    new-instance v1, Landroid/os/Message;

    .end local v1           #msg:Landroid/os/Message;
    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 148
    .restart local v1       #msg:Landroid/os/Message;
    const/4 v3, 0x5

    iput v3, v1, Landroid/os/Message;->what:I

    .line 149
    invoke-static {}, Lcom/htc/ipl/MsgHandler;->getInstance()Lcom/htc/ipl/MsgHandler;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/htc/ipl/MsgHandler;->handleMessage(Landroid/os/Message;)V

    .line 151
    return v6
.end method

.method private Vdmc_ExecCIFUMO()Z
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 160
    :try_start_0
    new-instance v9, Landroid/os/Message;

    invoke-direct {v9}, Landroid/os/Message;-><init>()V

    .line 161
    .local v9, msg:Landroid/os/Message;
    const/4 v0, 0x4

    iput v0, v9, Landroid/os/Message;->what:I

    .line 162
    invoke-static {}, Lcom/htc/ipl/MsgHandler;->getInstance()Lcom/htc/ipl/MsgHandler;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/htc/ipl/MsgHandler;->handleMessage(Landroid/os/Message;)V

    .line 164
    invoke-direct {p0}, Lcom/htc/omadm/test/VdmcSimular;->Vdmc_GetDevInfo()V

    .line 165
    invoke-static {}, Lcom/htc/ipl/common;->getInstance()Lcom/htc/ipl/common;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/ipl/common;->AccessToggle(IZ)V

    .line 166
    invoke-static {}, Lcom/htc/ipl/fumo;->getInstance()Lcom/htc/ipl/fumo;

    move-result-object v0

    const-string v1, "9.99.99"

    const-string v2, "htc fumo install your device"

    const-wide/16 v3, 0x63

    const/16 v5, 0x63

    const/16 v6, 0x63

    invoke-virtual/range {v0 .. v6}, Lcom/htc/ipl/fumo;->PackageInfo(Ljava/lang/String;Ljava/lang/String;JII)V

    .line 168
    new-instance v9, Landroid/os/Message;

    .end local v9           #msg:Landroid/os/Message;
    invoke-direct {v9}, Landroid/os/Message;-><init>()V

    .line 169
    .restart local v9       #msg:Landroid/os/Message;
    const/4 v0, 0x5

    iput v0, v9, Landroid/os/Message;->what:I

    .line 170
    invoke-static {}, Lcom/htc/ipl/MsgHandler;->getInstance()Lcom/htc/ipl/MsgHandler;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/htc/ipl/MsgHandler;->handleMessage(Landroid/os/Message;)V

    .line 171
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 172
    new-instance v9, Landroid/os/Message;

    .end local v9           #msg:Landroid/os/Message;
    invoke-direct {v9}, Landroid/os/Message;-><init>()V

    .line 173
    .restart local v9       #msg:Landroid/os/Message;
    const/4 v0, 0x1

    iput v0, v9, Landroid/os/Message;->what:I

    .line 174
    invoke-static {}, Lcom/htc/ipl/MsgHandler;->getInstance()Lcom/htc/ipl/MsgHandler;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/htc/ipl/MsgHandler;->handleMessage(Landroid/os/Message;)V

    .line 175
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 176
    const/4 v8, 0x1

    .local v8, i:I
    :goto_0
    const/16 v0, 0x10

    if-ge v8, v0, :cond_0

    .line 178
    new-instance v9, Landroid/os/Message;

    .end local v9           #msg:Landroid/os/Message;
    invoke-direct {v9}, Landroid/os/Message;-><init>()V

    .line 179
    .restart local v9       #msg:Landroid/os/Message;
    const/4 v0, 0x0

    iput v0, v9, Landroid/os/Message;->what:I

    .line 180
    iput v8, v9, Landroid/os/Message;->arg1:I

    .line 181
    const/16 v0, 0xf

    iput v0, v9, Landroid/os/Message;->arg2:I

    .line 182
    invoke-static {}, Lcom/htc/ipl/MsgHandler;->getInstance()Lcom/htc/ipl/MsgHandler;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/htc/ipl/MsgHandler;->handleMessage(Landroid/os/Message;)V

    .line 184
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 176
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 187
    :cond_0
    new-instance v9, Landroid/os/Message;

    .end local v9           #msg:Landroid/os/Message;
    invoke-direct {v9}, Landroid/os/Message;-><init>()V

    .line 188
    .restart local v9       #msg:Landroid/os/Message;
    const/4 v0, 0x2

    iput v0, v9, Landroid/os/Message;->what:I

    .line 189
    invoke-static {}, Lcom/htc/ipl/MsgHandler;->getInstance()Lcom/htc/ipl/MsgHandler;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/htc/ipl/MsgHandler;->handleMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    .end local v8           #i:I
    .end local v9           #msg:Landroid/os/Message;
    :goto_1
    return v10

    .line 192
    :catch_0
    move-exception v7

    .line 194
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private Vdmc_ExecHFADC()Z
    .locals 2

    .prologue
    .line 90
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 91
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 92
    invoke-static {}, Lcom/htc/ipl/MsgHandler;->getInstance()Lcom/htc/ipl/MsgHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/ipl/MsgHandler;->handleMessage(Landroid/os/Message;)V

    .line 94
    invoke-direct {p0}, Lcom/htc/omadm/test/VdmcSimular;->Vdmc_GetDevInfo()V

    .line 98
    new-instance v0, Landroid/os/Message;

    .end local v0           #msg:Landroid/os/Message;
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 99
    .restart local v0       #msg:Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 100
    invoke-static {}, Lcom/htc/ipl/MsgHandler;->getInstance()Lcom/htc/ipl/MsgHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/ipl/MsgHandler;->handleMessage(Landroid/os/Message;)V

    .line 101
    const/4 v1, 0x1

    return v1
.end method

.method private Vdmc_GetDevInfo()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 66
    invoke-static {}, Lcom/htc/ipl/common;->getInstance()Lcom/htc/ipl/common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/ipl/common;->DevType()Ljava/lang/String;

    .line 67
    invoke-static {}, Lcom/htc/ipl/common;->getInstance()Lcom/htc/ipl/common;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/htc/ipl/common;->AccessToggle(IZ)V

    .line 68
    invoke-static {}, Lcom/htc/ipl/common;->getInstance()Lcom/htc/ipl/common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/ipl/common;->FwV()Ljava/lang/String;

    .line 69
    invoke-static {}, Lcom/htc/ipl/common;->getInstance()Lcom/htc/ipl/common;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/htc/ipl/common;->AccessToggle(IZ)V

    .line 70
    invoke-static {}, Lcom/htc/ipl/common;->getInstance()Lcom/htc/ipl/common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/ipl/common;->HwV()Ljava/lang/String;

    .line 71
    invoke-static {}, Lcom/htc/ipl/common;->getInstance()Lcom/htc/ipl/common;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/htc/ipl/common;->AccessToggle(IZ)V

    .line 72
    invoke-static {}, Lcom/htc/ipl/common;->getInstance()Lcom/htc/ipl/common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/ipl/common;->OEM()Ljava/lang/String;

    .line 73
    invoke-static {}, Lcom/htc/ipl/common;->getInstance()Lcom/htc/ipl/common;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/htc/ipl/common;->AccessToggle(IZ)V

    .line 74
    invoke-static {}, Lcom/htc/ipl/common;->getInstance()Lcom/htc/ipl/common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/ipl/common;->SwV()Ljava/lang/String;

    .line 75
    invoke-static {}, Lcom/htc/ipl/common;->getInstance()Lcom/htc/ipl/common;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/htc/ipl/common;->AccessToggle(IZ)V

    .line 76
    invoke-static {}, Lcom/htc/ipl/common;->getInstance()Lcom/htc/ipl/common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/ipl/common;->DevId()Ljava/lang/String;

    .line 77
    invoke-static {}, Lcom/htc/ipl/common;->getInstance()Lcom/htc/ipl/common;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/htc/ipl/common;->AccessToggle(IZ)V

    .line 78
    invoke-static {}, Lcom/htc/ipl/common;->getInstance()Lcom/htc/ipl/common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/ipl/common;->Lang()Ljava/lang/String;

    .line 79
    invoke-static {}, Lcom/htc/ipl/common;->getInstance()Lcom/htc/ipl/common;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/htc/ipl/common;->AccessToggle(IZ)V

    .line 80
    invoke-static {}, Lcom/htc/ipl/common;->getInstance()Lcom/htc/ipl/common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/ipl/common;->Man()Ljava/lang/String;

    .line 81
    invoke-static {}, Lcom/htc/ipl/common;->getInstance()Lcom/htc/ipl/common;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/htc/ipl/common;->AccessToggle(IZ)V

    .line 82
    invoke-static {}, Lcom/htc/ipl/common;->getInstance()Lcom/htc/ipl/common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/ipl/common;->Mod()Ljava/lang/String;

    .line 83
    invoke-static {}, Lcom/htc/ipl/common;->getInstance()Lcom/htc/ipl/common;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/htc/ipl/common;->AccessToggle(IZ)V

    .line 84
    return-void
.end method

.method public static getSingleton()Lcom/htc/omadm/test/VdmcSimular;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/htc/omadm/test/VdmcSimular;->mInstance:Lcom/htc/omadm/test/VdmcSimular;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/htc/omadm/test/VdmcSimular;

    invoke-direct {v0}, Lcom/htc/omadm/test/VdmcSimular;-><init>()V

    sput-object v0, Lcom/htc/omadm/test/VdmcSimular;->mInstance:Lcom/htc/omadm/test/VdmcSimular;

    .line 41
    :cond_0
    sget-object v0, Lcom/htc/omadm/test/VdmcSimular;->mInstance:Lcom/htc/omadm/test/VdmcSimular;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 45
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 61
    :goto_0
    return-void

    .line 48
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/omadm/test/VdmcSimular;->Vdmc_ExecHFADC()Z

    goto :goto_0

    .line 51
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/omadm/test/VdmcSimular;->Vdmc_ExecCIDC()Z

    goto :goto_0

    .line 54
    :pswitch_2
    invoke-direct {p0}, Lcom/htc/omadm/test/VdmcSimular;->Vdmc_ExecCIFUMO()Z

    goto :goto_0

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
