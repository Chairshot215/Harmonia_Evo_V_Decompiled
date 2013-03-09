.class public Lcom/redbend/vdmc/Vdmc;
.super Ljava/lang/Object;
.source "Vdmc.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/redbend/vdmc/Vdmc$VdmBinder;
    }
.end annotation


# static fields
.field public static DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "vdmc"

.field public static final Operator_ATT:I = 0x3

.field public static final Operator_None:I = 0x0

.field public static final Operator_Sprint:I = 0x1

.field public static final Operator_TMO:I = 0x4

.field public static final Operator_USC:I = 0x2

.field public static final Operator_VZW:I = 0x5

.field public static final Server_Innopath_model_1:I = 0x2

.field public static final Server_Innopath_model_2:I = 0x3

.field public static final Server_Mform:I = 0x1

.field private static _LogLevel:Lcom/redbend/vdm/VdmLogLevel;

.field private static _Priority:I

.field private static mContext:Landroid/content/Context;

.field private static mOperatorID:I

.field private static mServerType:I

.field private static me:Lcom/redbend/vdmc/Vdmc;


# instance fields
.field private _mac:Ljava/lang/String;

.field protected _progressDialog:Lcom/redbend/vdmc/ProgressDialog;

.field private _vdmBinder:Lcom/redbend/vdmc/Vdmc$VdmBinder;

.field private bBSEngine:Z

.field private bCPEngine:Z

.field private bFumoEngine:Z

.field private bNIAEngine:Z

.field private mTreeCDMA:Lcom/redbend/vdmc/Sprint/CDMA;

.field private mTreeDMAcc:Lcom/redbend/vdmc/Sprint/DMAcc;

.field private mTreeDevDetail:Lcom/redbend/vdmc/Sprint/DevDetail;

.field private mTreeDevInfo:Lcom/redbend/vdmc/Sprint/DevInfo;

.field private mTreeMediaStream:Lcom/redbend/vdmc/Sprint/MediaStream;

.field private mTreePRL:Lcom/redbend/vdmc/Sprint/PRL;

.field private mTreeSPA:Lcom/redbend/vdmc/Sprint/SPA;

.field private mTreeWiMax:Lcom/redbend/vdmc/Sprint/WiMax;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 24
    sput-object v0, Lcom/redbend/vdmc/Vdmc;->me:Lcom/redbend/vdmc/Vdmc;

    .line 38
    sput-object v0, Lcom/redbend/vdmc/Vdmc;->_LogLevel:Lcom/redbend/vdm/VdmLogLevel;

    .line 39
    const/4 v0, 0x6

    sput v0, Lcom/redbend/vdmc/Vdmc;->_Priority:I

    .line 40
    const/4 v0, 0x2

    sget v1, Lcom/redbend/vdmc/Vdmc;->_Priority:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/redbend/vdmc/Vdmc;->DEBUG:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 298
    iput-boolean v0, p0, Lcom/redbend/vdmc/Vdmc;->bNIAEngine:Z

    .line 299
    iput-boolean v0, p0, Lcom/redbend/vdmc/Vdmc;->bBSEngine:Z

    .line 300
    iput-boolean v0, p0, Lcom/redbend/vdmc/Vdmc;->bCPEngine:Z

    .line 301
    iput-boolean v0, p0, Lcom/redbend/vdmc/Vdmc;->bFumoEngine:Z

    .line 419
    new-instance v0, Ljava/lang/String;

    const-string v1, "1234567890ABCDEFabcdef1234567890ABCDEFab"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/redbend/vdmc/Vdmc;->_mac:Ljava/lang/String;

    .line 69
    return-void
.end method

.method static synthetic access$1000(Lcom/redbend/vdmc/Vdmc;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/redbend/vdmc/Vdmc;->bFumoEngine:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/redbend/vdmc/Vdmc;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/redbend/vdmc/Vdmc;->bCPEngine:Z

    return v0
.end method

.method static synthetic access$500()Landroid/content/Context;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/redbend/vdmc/Vdmc;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600()Lcom/redbend/vdmc/Vdmc;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/redbend/vdmc/Vdmc;->me:Lcom/redbend/vdmc/Vdmc;

    return-object v0
.end method

.method static synthetic access$700(Lcom/redbend/vdmc/Vdmc;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/redbend/vdmc/Vdmc;->bBSEngine:Z

    return v0
.end method

.method static synthetic access$800(Lcom/redbend/vdmc/Vdmc;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/redbend/vdmc/Vdmc;->bNIAEngine:Z

    return v0
.end method

.method static synthetic access$900()Lcom/redbend/vdm/VdmLogLevel;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/redbend/vdmc/Vdmc;->_LogLevel:Lcom/redbend/vdm/VdmLogLevel;

    return-object v0
.end method

.method private getBootStrapHandler()Lcom/redbend/vdmc/HandleBootStrap;
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/redbend/vdmc/Vdmc;->_vdmBinder:Lcom/redbend/vdmc/Vdmc$VdmBinder;

    #getter for: Lcom/redbend/vdmc/Vdmc$VdmBinder;->_hBootStrap:Lcom/redbend/vdmc/HandleBootStrap;
    invoke-static {v0}, Lcom/redbend/vdmc/Vdmc$VdmBinder;->access$1200(Lcom/redbend/vdmc/Vdmc$VdmBinder;)Lcom/redbend/vdmc/HandleBootStrap;

    move-result-object v0

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/redbend/vdmc/Vdmc;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getDMAccHandler()Lcom/redbend/vdmc/HandleDMAcc;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/redbend/vdmc/Vdmc;->me:Lcom/redbend/vdmc/Vdmc;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/redbend/vdmc/Vdmc;->me:Lcom/redbend/vdmc/Vdmc;

    iget-object v0, v0, Lcom/redbend/vdmc/Vdmc;->_vdmBinder:Lcom/redbend/vdmc/Vdmc$VdmBinder;

    #getter for: Lcom/redbend/vdmc/Vdmc$VdmBinder;->_hDMAcc:Lcom/redbend/vdmc/HandleDMAcc;
    invoke-static {v0}, Lcom/redbend/vdmc/Vdmc$VdmBinder;->access$200(Lcom/redbend/vdmc/Vdmc$VdmBinder;)Lcom/redbend/vdmc/HandleDMAcc;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getEngine()Lcom/redbend/vdm/VdmEngine;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/redbend/vdmc/Vdmc;->me:Lcom/redbend/vdmc/Vdmc;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/redbend/vdmc/Vdmc;->me:Lcom/redbend/vdmc/Vdmc;

    iget-object v0, v0, Lcom/redbend/vdmc/Vdmc;->_vdmBinder:Lcom/redbend/vdmc/Vdmc$VdmBinder;

    #getter for: Lcom/redbend/vdmc/Vdmc$VdmBinder;->_engine:Lcom/redbend/vdm/VdmEngine;
    invoke-static {v0}, Lcom/redbend/vdmc/Vdmc$VdmBinder;->access$000(Lcom/redbend/vdmc/Vdmc$VdmBinder;)Lcom/redbend/vdm/VdmEngine;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getFumoHandler()Lcom/redbend/vdmc/HandleFumo;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/redbend/vdmc/Vdmc;->me:Lcom/redbend/vdmc/Vdmc;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/redbend/vdmc/Vdmc;->me:Lcom/redbend/vdmc/Vdmc;

    iget-object v0, v0, Lcom/redbend/vdmc/Vdmc;->_vdmBinder:Lcom/redbend/vdmc/Vdmc$VdmBinder;

    #getter for: Lcom/redbend/vdmc/Vdmc$VdmBinder;->_hFumo:Lcom/redbend/vdmc/HandleFumo;
    invoke-static {v0}, Lcom/redbend/vdmc/Vdmc$VdmBinder;->access$100(Lcom/redbend/vdmc/Vdmc$VdmBinder;)Lcom/redbend/vdmc/HandleFumo;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstance()Lcom/redbend/vdmc/Vdmc;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/redbend/vdmc/Vdmc;->me:Lcom/redbend/vdmc/Vdmc;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/redbend/vdmc/Vdmc;

    invoke-direct {v0}, Lcom/redbend/vdmc/Vdmc;-><init>()V

    sput-object v0, Lcom/redbend/vdmc/Vdmc;->me:Lcom/redbend/vdmc/Vdmc;

    .line 46
    :cond_0
    sget-object v0, Lcom/redbend/vdmc/Vdmc;->me:Lcom/redbend/vdmc/Vdmc;

    return-object v0
.end method

.method private getNIAMsgHandler()Lcom/redbend/vdmc/HandleNIAMsg;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/redbend/vdmc/Vdmc;->_vdmBinder:Lcom/redbend/vdmc/Vdmc$VdmBinder;

    #getter for: Lcom/redbend/vdmc/Vdmc$VdmBinder;->_hNIAMsg:Lcom/redbend/vdmc/HandleNIAMsg;
    invoke-static {v0}, Lcom/redbend/vdmc/Vdmc$VdmBinder;->access$1300(Lcom/redbend/vdmc/Vdmc$VdmBinder;)Lcom/redbend/vdmc/HandleNIAMsg;

    move-result-object v0

    return-object v0
.end method

.method public static getNodeAccess()Lcom/redbend/vdmc/NodeAccess;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/redbend/vdmc/Vdmc;->me:Lcom/redbend/vdmc/Vdmc;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/redbend/vdmc/Vdmc;->me:Lcom/redbend/vdmc/Vdmc;

    iget-object v0, v0, Lcom/redbend/vdmc/Vdmc;->_vdmBinder:Lcom/redbend/vdmc/Vdmc$VdmBinder;

    #getter for: Lcom/redbend/vdmc/Vdmc$VdmBinder;->_hNodeAccess:Lcom/redbend/vdmc/NodeAccess;
    invoke-static {v0}, Lcom/redbend/vdmc/Vdmc$VdmBinder;->access$300(Lcom/redbend/vdmc/Vdmc$VdmBinder;)Lcom/redbend/vdmc/NodeAccess;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleBootstrapMessage([BLjava/lang/String;)V
    .locals 8
    .parameter "message"
    .parameter "msgOrigin"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    .line 226
    sget-object v2, Lcom/redbend/vdm/BootProfile;->PLAIN:Lcom/redbend/vdm/BootProfile;

    .line 227
    .local v2, profile:Lcom/redbend/vdm/BootProfile;
    sget-object v3, Lcom/redbend/vdm/CpSecurity;->NONE:Lcom/redbend/vdm/CpSecurity;

    .line 229
    .local v3, security:Lcom/redbend/vdm/CpSecurity;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v4, :cond_0

    .line 230
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 240
    :cond_0
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 241
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 259
    :cond_1
    :goto_1
    invoke-static {}, Lcom/redbend/vdmc/Vdmc;->getEngine()Lcom/redbend/vdm/VdmEngine;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/redbend/vdmc/Vdmc;->_mac:Ljava/lang/String;

    invoke-direct {p0}, Lcom/redbend/vdmc/Vdmc;->getBootStrapHandler()Lcom/redbend/vdmc/HandleBootStrap;

    move-result-object v6

    invoke-direct {p0}, Lcom/redbend/vdmc/Vdmc;->getBootStrapHandler()Lcom/redbend/vdmc/HandleBootStrap;

    move-result-object v7

    move-object v5, p1

    invoke-virtual/range {v0 .. v7}, Lcom/redbend/vdm/VdmEngine;->triggerBootstrapSession(Ljava/lang/String;Lcom/redbend/vdm/BootProfile;Lcom/redbend/vdm/CpSecurity;Ljava/lang/String;[BLcom/redbend/vdm/BootMsgHandler;Lcom/redbend/vdm/SessionInitiator;)V

    .line 267
    return-void

    .line 232
    :pswitch_0
    sget-object v2, Lcom/redbend/vdm/BootProfile;->PLAIN:Lcom/redbend/vdm/BootProfile;

    .line 233
    goto :goto_0

    .line 235
    :pswitch_1
    sget-object v2, Lcom/redbend/vdm/BootProfile;->WAP:Lcom/redbend/vdm/BootProfile;

    goto :goto_0

    .line 243
    :pswitch_2
    sget-object v3, Lcom/redbend/vdm/CpSecurity;->NONE:Lcom/redbend/vdm/CpSecurity;

    .line 244
    goto :goto_1

    .line 246
    :pswitch_3
    sget-object v3, Lcom/redbend/vdm/CpSecurity;->NETWPIN:Lcom/redbend/vdm/CpSecurity;

    .line 247
    goto :goto_1

    .line 249
    :pswitch_4
    sget-object v3, Lcom/redbend/vdm/CpSecurity;->USERPIN:Lcom/redbend/vdm/CpSecurity;

    .line 250
    goto :goto_1

    .line 252
    :pswitch_5
    sget-object v3, Lcom/redbend/vdm/CpSecurity;->USERNETWPIN:Lcom/redbend/vdm/CpSecurity;

    .line 253
    goto :goto_1

    .line 255
    :pswitch_6
    sget-object v3, Lcom/redbend/vdm/CpSecurity;->USERPINMAC:Lcom/redbend/vdm/CpSecurity;

    goto :goto_1

    .line 230
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 241
    :pswitch_data_1
    .packed-switch 0x30
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public CancelDM()Z
    .locals 6

    .prologue
    .line 178
    invoke-static {}, Lcom/redbend/vdmc/Sprint/Sprint;->getInstance()Lcom/redbend/vdmc/Sprint/Sprint;

    move-result-object v2

    .line 179
    .local v2, mSprint:Lcom/redbend/vdmc/Sprint/Sprint;
    const/4 v0, 0x1

    .line 181
    .local v0, bFlag:Z
    :try_start_0
    invoke-static {}, Lcom/redbend/vdmc/Vdmc;->getEngine()Lcom/redbend/vdm/VdmEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/redbend/vdm/VdmEngine;->cancelSession()V
    :try_end_0
    .catch Lcom/redbend/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :goto_0
    return v0

    .line 182
    :catch_0
    move-exception v1

    .line 183
    .local v1, e:Lcom/redbend/vdm/VdmException;
    const-string v3, "Vdmc"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VdmEngine exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/redbend/vdm/VdmException;->getError()Lcom/redbend/vdm/VdmException$VdmError;

    move-result-object v5

    invoke-virtual {v5}, Lcom/redbend/vdm/VdmException$VdmError;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/omadm/util/DMLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public CancelDM(I)Z
    .locals 10
    .parameter "nType"

    .prologue
    .line 193
    invoke-static {}, Lcom/redbend/vdmc/Sprint/Sprint;->getInstance()Lcom/redbend/vdmc/Sprint/Sprint;

    move-result-object v9

    .line 194
    .local v9, mSprint:Lcom/redbend/vdmc/Sprint/Sprint;
    const/16 v2, 0xd7

    .line 195
    .local v2, nCode:I
    const/4 v7, 0x1

    .line 197
    .local v7, bFlag:Z
    :try_start_0
    invoke-static {}, Lcom/redbend/vdmc/Vdmc;->getEngine()Lcom/redbend/vdm/VdmEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/redbend/vdm/VdmEngine;->cancelSession()V

    .line 198
    invoke-static {}, Lcom/redbend/vdmc/Vdmc;->getEngine()Lcom/redbend/vdm/VdmEngine;

    move-result-object v0

    const-string v1, ""

    const/4 v3, 0x0

    invoke-virtual {v9, p1}, Lcom/redbend/vdmc/Sprint/Sprint;->GetAlertType(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/redbend/vdm/VdmEngine;->triggerReportSession(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/redbend/vdm/SessionInitiator;)V
    :try_end_0
    .catch Lcom/redbend/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :goto_0
    return v7

    .line 199
    :catch_0
    move-exception v8

    .line 200
    .local v8, e:Lcom/redbend/vdm/VdmException;
    const-string v0, "Vdmc"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VdmEngine exception "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Lcom/redbend/vdm/VdmException;->getError()Lcom/redbend/vdm/VdmException$VdmError;

    move-result-object v3

    invoke-virtual {v3}, Lcom/redbend/vdm/VdmException$VdmError;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public GetOperator()I
    .locals 1

    .prologue
    .line 99
    sget v0, Lcom/redbend/vdmc/Vdmc;->mOperatorID:I

    return v0
.end method

.method public GetServer()I
    .locals 1

    .prologue
    .line 120
    sget v0, Lcom/redbend/vdmc/Vdmc;->mServerType:I

    return v0
.end method

.method public Init(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 72
    sput-object p1, Lcom/redbend/vdmc/Vdmc;->mContext:Landroid/content/Context;

    .line 75
    :try_start_0
    new-instance v2, Lcom/redbend/vdmc/Vdmc$VdmBinder;

    invoke-direct {v2, p0}, Lcom/redbend/vdmc/Vdmc$VdmBinder;-><init>(Lcom/redbend/vdmc/Vdmc;)V

    iput-object v2, p0, Lcom/redbend/vdmc/Vdmc;->_vdmBinder:Lcom/redbend/vdmc/Vdmc$VdmBinder;
    :try_end_0
    .catch Lcom/redbend/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, e:Lcom/redbend/vdm/VdmException;
    const-string v1, "msg"

    .line 78
    .local v1, msg:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/redbend/vdm/VdmException;->getError()Lcom/redbend/vdm/VdmException$VdmError;

    move-result-object v2

    sget-object v3, Lcom/redbend/vdm/VdmException$VdmError;->STORAGE_OPEN:Lcom/redbend/vdm/VdmException$VdmError;

    if-ne v2, v3, :cond_0

    .line 79
    const-string v1, "Missing tree.xml"

    .line 82
    :goto_1
    const-string v2, "Vdmc"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VdmEngine exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/omadm/util/DMLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {v0}, Lcom/redbend/vdm/VdmException;->getError()Lcom/redbend/vdm/VdmException$VdmError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/redbend/vdm/VdmException$VdmError;->name()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public RegisterNode()Z
    .locals 2

    .prologue
    .line 125
    invoke-static {}, Lcom/redbend/vdmc/Sprint/DevInfo;->getInstance()Lcom/redbend/vdmc/Sprint/DevInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/redbend/vdmc/Vdmc;->mTreeDevInfo:Lcom/redbend/vdmc/Sprint/DevInfo;

    .line 126
    iget-object v0, p0, Lcom/redbend/vdmc/Vdmc;->mTreeDevInfo:Lcom/redbend/vdmc/Sprint/DevInfo;

    iget-object v1, p0, Lcom/redbend/vdmc/Vdmc;->_vdmBinder:Lcom/redbend/vdmc/Vdmc$VdmBinder;

    #getter for: Lcom/redbend/vdmc/Vdmc$VdmBinder;->mVdmTree:Lcom/redbend/vdm/VdmTree;
    invoke-static {v1}, Lcom/redbend/vdmc/Vdmc$VdmBinder;->access$400(Lcom/redbend/vdmc/Vdmc$VdmBinder;)Lcom/redbend/vdm/VdmTree;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/redbend/vdmc/Sprint/DevInfo;->Register(Lcom/redbend/vdm/VdmTree;)V

    .line 128
    invoke-static {}, Lcom/redbend/vdmc/Sprint/DevDetail;->getInstance()Lcom/redbend/vdmc/Sprint/DevDetail;

    move-result-object v0

    iput-object v0, p0, Lcom/redbend/vdmc/Vdmc;->mTreeDevDetail:Lcom/redbend/vdmc/Sprint/DevDetail;

    .line 129
    iget-object v0, p0, Lcom/redbend/vdmc/Vdmc;->mTreeDevDetail:Lcom/redbend/vdmc/Sprint/DevDetail;

    iget-object v1, p0, Lcom/redbend/vdmc/Vdmc;->_vdmBinder:Lcom/redbend/vdmc/Vdmc$VdmBinder;

    #getter for: Lcom/redbend/vdmc/Vdmc$VdmBinder;->mVdmTree:Lcom/redbend/vdm/VdmTree;
    invoke-static {v1}, Lcom/redbend/vdmc/Vdmc$VdmBinder;->access$400(Lcom/redbend/vdmc/Vdmc$VdmBinder;)Lcom/redbend/vdm/VdmTree;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/redbend/vdmc/Sprint/DevDetail;->Register(Lcom/redbend/vdm/VdmTree;)V

    .line 131
    invoke-static {}, Lcom/redbend/vdmc/Sprint/CDMA;->getInstance()Lcom/redbend/vdmc/Sprint/CDMA;

    move-result-object v0

    iput-object v0, p0, Lcom/redbend/vdmc/Vdmc;->mTreeCDMA:Lcom/redbend/vdmc/Sprint/CDMA;

    .line 132
    iget-object v0, p0, Lcom/redbend/vdmc/Vdmc;->mTreeCDMA:Lcom/redbend/vdmc/Sprint/CDMA;

    iget-object v1, p0, Lcom/redbend/vdmc/Vdmc;->_vdmBinder:Lcom/redbend/vdmc/Vdmc$VdmBinder;

    #getter for: Lcom/redbend/vdmc/Vdmc$VdmBinder;->mVdmTree:Lcom/redbend/vdm/VdmTree;
    invoke-static {v1}, Lcom/redbend/vdmc/Vdmc$VdmBinder;->access$400(Lcom/redbend/vdmc/Vdmc$VdmBinder;)Lcom/redbend/vdm/VdmTree;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/redbend/vdmc/Sprint/CDMA;->Register(Lcom/redbend/vdm/VdmTree;)V

    .line 134
    invoke-static {}, Lcom/redbend/vdmc/Sprint/PRL;->getInstance()Lcom/redbend/vdmc/Sprint/PRL;

    move-result-object v0

    iput-object v0, p0, Lcom/redbend/vdmc/Vdmc;->mTreePRL:Lcom/redbend/vdmc/Sprint/PRL;

    .line 135
    iget-object v0, p0, Lcom/redbend/vdmc/Vdmc;->mTreePRL:Lcom/redbend/vdmc/Sprint/PRL;

    iget-object v1, p0, Lcom/redbend/vdmc/Vdmc;->_vdmBinder:Lcom/redbend/vdmc/Vdmc$VdmBinder;

    #getter for: Lcom/redbend/vdmc/Vdmc$VdmBinder;->mVdmTree:Lcom/redbend/vdm/VdmTree;
    invoke-static {v1}, Lcom/redbend/vdmc/Vdmc$VdmBinder;->access$400(Lcom/redbend/vdmc/Vdmc$VdmBinder;)Lcom/redbend/vdm/VdmTree;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/redbend/vdmc/Sprint/PRL;->Register(Lcom/redbend/vdm/VdmTree;)V

    .line 137
    invoke-static {}, Lcom/redbend/vdmc/Sprint/DMAcc;->getInstance()Lcom/redbend/vdmc/Sprint/DMAcc;

    move-result-object v0

    iput-object v0, p0, Lcom/redbend/vdmc/Vdmc;->mTreeDMAcc:Lcom/redbend/vdmc/Sprint/DMAcc;

    .line 138
    iget-object v0, p0, Lcom/redbend/vdmc/Vdmc;->mTreeDMAcc:Lcom/redbend/vdmc/Sprint/DMAcc;

    iget-object v1, p0, Lcom/redbend/vdmc/Vdmc;->_vdmBinder:Lcom/redbend/vdmc/Vdmc$VdmBinder;

    #getter for: Lcom/redbend/vdmc/Vdmc$VdmBinder;->mVdmTree:Lcom/redbend/vdm/VdmTree;
    invoke-static {v1}, Lcom/redbend/vdmc/Vdmc$VdmBinder;->access$400(Lcom/redbend/vdmc/Vdmc$VdmBinder;)Lcom/redbend/vdm/VdmTree;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/redbend/vdmc/Sprint/DMAcc;->Register(Lcom/redbend/vdm/VdmTree;)V

    .line 140
    invoke-static {}, Lcom/redbend/vdmc/Sprint/MediaStream;->getInstance()Lcom/redbend/vdmc/Sprint/MediaStream;

    move-result-object v0

    iput-object v0, p0, Lcom/redbend/vdmc/Vdmc;->mTreeMediaStream:Lcom/redbend/vdmc/Sprint/MediaStream;

    .line 141
    iget-object v0, p0, Lcom/redbend/vdmc/Vdmc;->mTreeMediaStream:Lcom/redbend/vdmc/Sprint/MediaStream;

    iget-object v1, p0, Lcom/redbend/vdmc/Vdmc;->_vdmBinder:Lcom/redbend/vdmc/Vdmc$VdmBinder;

    #getter for: Lcom/redbend/vdmc/Vdmc$VdmBinder;->mVdmTree:Lcom/redbend/vdm/VdmTree;
    invoke-static {v1}, Lcom/redbend/vdmc/Vdmc$VdmBinder;->access$400(Lcom/redbend/vdmc/Vdmc$VdmBinder;)Lcom/redbend/vdm/VdmTree;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/redbend/vdmc/Sprint/MediaStream;->Register(Lcom/redbend/vdm/VdmTree;)V

    .line 147
    invoke-static {}, Lcom/redbend/vdmc/Sprint/WiMax;->getInstance()Lcom/redbend/vdmc/Sprint/WiMax;

    move-result-object v0

    iput-object v0, p0, Lcom/redbend/vdmc/Vdmc;->mTreeWiMax:Lcom/redbend/vdmc/Sprint/WiMax;

    .line 148
    iget-object v0, p0, Lcom/redbend/vdmc/Vdmc;->mTreeWiMax:Lcom/redbend/vdmc/Sprint/WiMax;

    iget-object v1, p0, Lcom/redbend/vdmc/Vdmc;->_vdmBinder:Lcom/redbend/vdmc/Vdmc$VdmBinder;

    #getter for: Lcom/redbend/vdmc/Vdmc$VdmBinder;->mVdmTree:Lcom/redbend/vdm/VdmTree;
    invoke-static {v1}, Lcom/redbend/vdmc/Vdmc$VdmBinder;->access$400(Lcom/redbend/vdmc/Vdmc$VdmBinder;)Lcom/redbend/vdm/VdmTree;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/redbend/vdmc/Sprint/WiMax;->Register(Lcom/redbend/vdm/VdmTree;)V

    .line 150
    invoke-static {}, Lcom/redbend/vdmc/Sprint/SPA;->getInstance()Lcom/redbend/vdmc/Sprint/SPA;

    move-result-object v0

    iput-object v0, p0, Lcom/redbend/vdmc/Vdmc;->mTreeSPA:Lcom/redbend/vdmc/Sprint/SPA;

    .line 151
    iget-object v0, p0, Lcom/redbend/vdmc/Vdmc;->mTreeSPA:Lcom/redbend/vdmc/Sprint/SPA;

    iget-object v1, p0, Lcom/redbend/vdmc/Vdmc;->_vdmBinder:Lcom/redbend/vdmc/Vdmc$VdmBinder;

    #getter for: Lcom/redbend/vdmc/Vdmc$VdmBinder;->mVdmTree:Lcom/redbend/vdm/VdmTree;
    invoke-static {v1}, Lcom/redbend/vdmc/Vdmc$VdmBinder;->access$400(Lcom/redbend/vdmc/Vdmc$VdmBinder;)Lcom/redbend/vdm/VdmTree;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/redbend/vdmc/Sprint/SPA;->Register(Lcom/redbend/vdm/VdmTree;)V

    .line 157
    const/4 v0, 0x1

    return v0
.end method

.method public Release()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/redbend/vdmc/Vdmc;->_vdmBinder:Lcom/redbend/vdmc/Vdmc$VdmBinder;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/redbend/vdmc/Vdmc;->_vdmBinder:Lcom/redbend/vdmc/Vdmc$VdmBinder;

    invoke-virtual {v0}, Lcom/redbend/vdmc/Vdmc$VdmBinder;->destroy()V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/redbend/vdmc/Vdmc;->_vdmBinder:Lcom/redbend/vdmc/Vdmc$VdmBinder;

    .line 91
    :cond_0
    return-void
.end method

.method public SetLogLevel(I)V
    .locals 1
    .parameter "priority"

    .prologue
    .line 422
    sput p1, Lcom/redbend/vdmc/Vdmc;->_Priority:I

    .line 423
    packed-switch p1, :pswitch_data_0

    .line 438
    sget-object v0, Lcom/redbend/vdm/VdmLogLevel;->DEBUG:Lcom/redbend/vdm/VdmLogLevel;

    sput-object v0, Lcom/redbend/vdmc/Vdmc;->_LogLevel:Lcom/redbend/vdm/VdmLogLevel;

    .line 441
    :goto_0
    return-void

    .line 425
    :pswitch_0
    sget-object v0, Lcom/redbend/vdm/VdmLogLevel;->INFO:Lcom/redbend/vdm/VdmLogLevel;

    sput-object v0, Lcom/redbend/vdmc/Vdmc;->_LogLevel:Lcom/redbend/vdm/VdmLogLevel;

    goto :goto_0

    .line 428
    :pswitch_1
    sget-object v0, Lcom/redbend/vdm/VdmLogLevel;->NOTICE:Lcom/redbend/vdm/VdmLogLevel;

    sput-object v0, Lcom/redbend/vdmc/Vdmc;->_LogLevel:Lcom/redbend/vdm/VdmLogLevel;

    goto :goto_0

    .line 431
    :pswitch_2
    sget-object v0, Lcom/redbend/vdm/VdmLogLevel;->WARNING:Lcom/redbend/vdm/VdmLogLevel;

    sput-object v0, Lcom/redbend/vdmc/Vdmc;->_LogLevel:Lcom/redbend/vdm/VdmLogLevel;

    goto :goto_0

    .line 434
    :pswitch_3
    sget-object v0, Lcom/redbend/vdm/VdmLogLevel;->ERROR:Lcom/redbend/vdm/VdmLogLevel;

    sput-object v0, Lcom/redbend/vdmc/Vdmc;->_LogLevel:Lcom/redbend/vdm/VdmLogLevel;

    goto :goto_0

    .line 423
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public SetOperator(I)Z
    .locals 1
    .parameter "nID"

    .prologue
    .line 94
    sput p1, Lcom/redbend/vdmc/Vdmc;->mOperatorID:I

    .line 95
    const/4 v0, 0x1

    return v0
.end method

.method public SetServer(I)Z
    .locals 3
    .parameter "nType"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 103
    sput p1, Lcom/redbend/vdmc/Vdmc;->mServerType:I

    .line 104
    sget v0, Lcom/redbend/vdmc/Vdmc;->mServerType:I

    if-nez v0, :cond_0

    .line 105
    iput-boolean v1, p0, Lcom/redbend/vdmc/Vdmc;->bNIAEngine:Z

    .line 106
    iput-boolean v1, p0, Lcom/redbend/vdmc/Vdmc;->bBSEngine:Z

    .line 107
    iput-boolean v1, p0, Lcom/redbend/vdmc/Vdmc;->bCPEngine:Z

    .line 108
    iput-boolean v1, p0, Lcom/redbend/vdmc/Vdmc;->bFumoEngine:Z

    .line 110
    :cond_0
    sget v0, Lcom/redbend/vdmc/Vdmc;->mServerType:I

    if-ne v0, v1, :cond_1

    .line 111
    iput-boolean v1, p0, Lcom/redbend/vdmc/Vdmc;->bNIAEngine:Z

    .line 112
    iput-boolean v2, p0, Lcom/redbend/vdmc/Vdmc;->bBSEngine:Z

    .line 113
    iput-boolean v2, p0, Lcom/redbend/vdmc/Vdmc;->bCPEngine:Z

    .line 114
    iput-boolean v1, p0, Lcom/redbend/vdmc/Vdmc;->bFumoEngine:Z

    .line 116
    :cond_1
    return v1
.end method

.method public StartDM(I)Z
    .locals 8
    .parameter "nType"

    .prologue
    .line 163
    invoke-static {}, Lcom/redbend/vdmc/Sprint/Sprint;->getInstance()Lcom/redbend/vdmc/Sprint/Sprint;

    move-result-object v2

    .line 164
    .local v2, mSprint:Lcom/redbend/vdmc/Sprint/Sprint;
    const/4 v0, 0x1

    .line 166
    .local v0, bFlag:Z
    :try_start_0
    invoke-static {}, Lcom/redbend/vdmc/Vdmc;->getEngine()Lcom/redbend/vdm/VdmEngine;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, p1}, Lcom/redbend/vdmc/Sprint/Sprint;->GetAlertType(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/redbend/vdm/VdmEngine;->triggerDMSession(Ljava/lang/String;Ljava/lang/String;[BLcom/redbend/vdm/SessionInitiator;)V
    :try_end_0
    .catch Lcom/redbend/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_0
    return v0

    .line 167
    :catch_0
    move-exception v1

    .line 168
    .local v1, e:Lcom/redbend/vdm/VdmException;
    const-string v3, "Vdmc"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VdmEngine exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/redbend/vdm/VdmException;->getError()Lcom/redbend/vdm/VdmException$VdmError;

    move-result-object v5

    invoke-virtual {v5}, Lcom/redbend/vdm/VdmException$VdmError;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/omadm/util/DMLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-virtual {v1}, Lcom/redbend/vdm/VdmException;->printStackTrace()V

    .line 170
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleNiaMessage([B)Z
    .locals 5
    .parameter "message"

    .prologue
    .line 271
    const/4 v0, 0x1

    .line 273
    .local v0, bFlag:Z
    :try_start_0
    invoke-static {}, Lcom/redbend/vdmc/Vdmc;->getEngine()Lcom/redbend/vdm/VdmEngine;

    move-result-object v2

    invoke-direct {p0}, Lcom/redbend/vdmc/Vdmc;->getNIAMsgHandler()Lcom/redbend/vdmc/HandleNIAMsg;

    move-result-object v3

    invoke-direct {p0}, Lcom/redbend/vdmc/Vdmc;->getNIAMsgHandler()Lcom/redbend/vdmc/HandleNIAMsg;

    move-result-object v4

    invoke-virtual {v2, p1, v3, v4}, Lcom/redbend/vdm/VdmEngine;->triggerNIADmSession([BLcom/redbend/vdm/SessionInitiator;Lcom/redbend/vdm/NIAMsgHandler;)V
    :try_end_0
    .catch Lcom/redbend/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :goto_0
    return v0

    .line 274
    :catch_0
    move-exception v1

    .line 275
    .local v1, e:Lcom/redbend/vdm/VdmException;
    const-string v2, "Vdmc"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VdmEngine exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/redbend/vdm/VdmException;->getError()Lcom/redbend/vdm/VdmException$VdmError;

    move-result-object v4

    invoke-virtual {v4}, Lcom/redbend/vdm/VdmException$VdmError;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/omadm/util/DMLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleWapPushMessage([BLjava/lang/String;)V
    .locals 2
    .parameter "message"
    .parameter "msgOrigin"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 212
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 223
    :goto_0
    return-void

    .line 214
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/redbend/vdmc/Vdmc;->handleBootstrapMessage([BLjava/lang/String;)V

    goto :goto_0

    .line 217
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/redbend/vdmc/Vdmc;->handleNiaMessage([B)Z

    goto :goto_0

    .line 220
    :pswitch_2
    invoke-static {}, Lcom/redbend/vdmc/Vdmc;->getFumoHandler()Lcom/redbend/vdmc/HandleFumo;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/redbend/vdmc/HandleFumo;->InitFumo([BI)Z

    goto :goto_0

    .line 212
    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public sessionCompleteNotify(ILcom/redbend/vdm/fumo/VdmFumo;)V
    .locals 3
    .parameter "lastError"
    .parameter "fumo"

    .prologue
    .line 207
    const-string v0, "Vdmc"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sessionCompleteNotify: lastError="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    return-void
.end method
