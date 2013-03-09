.class Lcom/redbend/vdmc/Vdmc$VdmBinder;
.super Ljava/lang/Object;
.source "Vdmc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/redbend/vdmc/Vdmc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VdmBinder"
.end annotation


# instance fields
.field private _ddlExt:Lcom/redbend/vdm/ddl/VdmDdl;

.field private _engine:Lcom/redbend/vdm/VdmEngine;

.field private _hBootStrap:Lcom/redbend/vdmc/HandleBootStrap;

.field private _hCP:Lcom/redbend/vdmc/HandleCP;

.field private _hDMAcc:Lcom/redbend/vdmc/HandleDMAcc;

.field private _hFumo:Lcom/redbend/vdmc/HandleFumo;

.field private _hHttpHeader:Lcom/redbend/vdmc/HttpHeaders;

.field private _hNIAMsg:Lcom/redbend/vdmc/HandleNIAMsg;

.field private _hNodeAccess:Lcom/redbend/vdmc/NodeAccess;

.field private _hSession:Lcom/redbend/vdmc/HandleSession;

.field private _vdmcCfg:Lcom/redbend/vdmc/VdmcConfig;

.field private mVdmTree:Lcom/redbend/vdm/VdmTree;

.field final synthetic this$0:Lcom/redbend/vdmc/Vdmc;


# direct methods
.method protected constructor <init>(Lcom/redbend/vdmc/Vdmc;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 317
    iput-object p1, p0, Lcom/redbend/vdmc/Vdmc$VdmBinder;->this$0:Lcom/redbend/vdmc/Vdmc;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 319
    :try_start_0
    new-instance v1, Lcom/redbend/vdm/VdmEngine;

    invoke-static {}, Lcom/redbend/vdmc/Vdmc;->access$500()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/redbend/vdmc/MmiEngine;

    invoke-direct {v3}, Lcom/redbend/vdmc/MmiEngine;-><init>()V

    new-instance v4, Lcom/redbend/vdmc/PLEngine;

    invoke-static {}, Lcom/redbend/vdmc/Vdmc;->access$600()Lcom/redbend/vdmc/Vdmc;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/redbend/vdmc/PLEngine;-><init>(Lcom/redbend/vdmc/Vdmc;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/redbend/vdm/VdmEngine;-><init>(Landroid/content/Context;Lcom/redbend/vdm/MmiFactory;Lcom/redbend/vdm/PLFactory;)V

    iput-object v1, p0, Lcom/redbend/vdmc/Vdmc$VdmBinder;->_engine:Lcom/redbend/vdm/VdmEngine;
    :try_end_0
    .catch Lcom/redbend/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    const-string v1, "Vdmc"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vDM Version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/redbend/vdmc/Vdmc$VdmBinder;->_engine:Lcom/redbend/vdm/VdmEngine;

    invoke-virtual {v3}, Lcom/redbend/vdm/VdmEngine;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const-string v1, "Vdmc"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/////// vDM Version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/redbend/vdmc/Vdmc$VdmBinder;->_engine:Lcom/redbend/vdm/VdmEngine;

    invoke-virtual {v3}, Lcom/redbend/vdm/VdmEngine;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ////////////"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    new-instance v1, Lcom/redbend/vdm/VdmTree;

    invoke-direct {v1}, Lcom/redbend/vdm/VdmTree;-><init>()V

    iput-object v1, p0, Lcom/redbend/vdmc/Vdmc$VdmBinder;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    .line 328
    new-instance v1, Lcom/redbend/vdmc/NodeAccess;

    iget-object v2, p0, Lcom/redbend/vdmc/Vdmc$VdmBinder;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    invoke-direct {v1, v2}, Lcom/redbend/vdmc/NodeAccess;-><init>(Lcom/redbend/vdm/VdmTree;)V

    iput-object v1, p0, Lcom/redbend/vdmc/Vdmc$VdmBinder;->_hNodeAccess:Lcom/redbend/vdmc/NodeAccess;

    .line 330
    invoke-static {}, Lcom/redbend/vdmc/Vdmc;->access$500()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/redbend/vdmc/HandleDMAcc;->getInstance(Landroid/content/Context;)Lcom/redbend/vdmc/HandleDMAcc;

    move-result-object v1

    iput-object v1, p0, Lcom/redbend/vdmc/Vdmc$VdmBinder;->_hDMAcc:Lcom/redbend/vdmc/HandleDMAcc;

    .line 332
    #getter for: Lcom/redbend/vdmc/Vdmc;->bBSEngine:Z
    invoke-static {p1}, Lcom/redbend/vdmc/Vdmc;->access$700(Lcom/redbend/vdmc/Vdmc;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 333
    new-instance v1, Lcom/redbend/vdmc/HandleBootStrap;

    invoke-direct {v1}, Lcom/redbend/vdmc/HandleBootStrap;-><init>()V

    iput-object v1, p0, Lcom/redbend/vdmc/Vdmc$VdmBinder;->_hBootStrap:Lcom/redbend/vdmc/HandleBootStrap;

    .line 335
    :cond_0
    #getter for: Lcom/redbend/vdmc/Vdmc;->bNIAEngine:Z
    invoke-static {p1}, Lcom/redbend/vdmc/Vdmc;->access$800(Lcom/redbend/vdmc/Vdmc;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 336
    new-instance v1, Lcom/redbend/vdmc/HandleNIAMsg;

    invoke-direct {v1}, Lcom/redbend/vdmc/HandleNIAMsg;-><init>()V

    iput-object v1, p0, Lcom/redbend/vdmc/Vdmc$VdmBinder;->_hNIAMsg:Lcom/redbend/vdmc/HandleNIAMsg;

    .line 338
    :cond_1
    new-instance v1, Lcom/redbend/vdmc/VdmcConfig;

    invoke-direct {v1}, Lcom/redbend/vdmc/VdmcConfig;-><init>()V

    iput-object v1, p0, Lcom/redbend/vdmc/Vdmc$VdmBinder;->_vdmcCfg:Lcom/redbend/vdmc/VdmcConfig;

    .line 339
    iget-object v1, p0, Lcom/redbend/vdmc/Vdmc$VdmBinder;->_vdmcCfg:Lcom/redbend/vdmc/VdmcConfig;

    invoke-virtual {v1}, Lcom/redbend/vdmc/VdmcConfig;->configure()V

    .line 342
    :try_start_1
    invoke-static {}, Lcom/htc/omadm/util/DMLog;->GetLogLevel()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/redbend/vdmc/Vdmc;->SetLogLevel(I)V

    .line 344
    iget-object v1, p0, Lcom/redbend/vdmc/Vdmc$VdmBinder;->_engine:Lcom/redbend/vdm/VdmEngine;

    invoke-static {}, Lcom/redbend/vdmc/Vdmc;->access$900()Lcom/redbend/vdm/VdmLogLevel;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/redbend/vdm/VdmEngine;->setDefaultLogLevel(Lcom/redbend/vdm/VdmLogLevel;)V

    .line 345
    iget-object v1, p0, Lcom/redbend/vdmc/Vdmc$VdmBinder;->_engine:Lcom/redbend/vdm/VdmEngine;

    sget-object v2, Lcom/redbend/vdm/VdmComponent;->TREE:Lcom/redbend/vdm/VdmComponent;

    sget-object v3, Lcom/redbend/vdm/VdmLogLevel;->WARNING:Lcom/redbend/vdm/VdmLogLevel;

    invoke-virtual {v1, v2, v3}, Lcom/redbend/vdm/VdmEngine;->setComponentLogLevel(Lcom/redbend/vdm/VdmComponent;Lcom/redbend/vdm/VdmLogLevel;)V

    .line 346
    iget-object v1, p0, Lcom/redbend/vdmc/Vdmc$VdmBinder;->_engine:Lcom/redbend/vdm/VdmEngine;

    invoke-virtual {v1}, Lcom/redbend/vdm/VdmEngine;->start()V
    :try_end_1
    .catch Lcom/redbend/vdm/VdmException; {:try_start_1 .. :try_end_1} :catch_1

    .line 351
    #getter for: Lcom/redbend/vdmc/Vdmc;->bFumoEngine:Z
    invoke-static {p1}, Lcom/redbend/vdmc/Vdmc;->access$1000(Lcom/redbend/vdmc/Vdmc;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 352
    const-string v1, "Vdmc"

    const-string v2, "Creating FUMO object"

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    new-instance v1, Lcom/redbend/vdmc/HandleFumo;

    iget-object v2, p0, Lcom/redbend/vdmc/Vdmc$VdmBinder;->_engine:Lcom/redbend/vdm/VdmEngine;

    invoke-direct {v1, v2}, Lcom/redbend/vdmc/HandleFumo;-><init>(Lcom/redbend/vdm/VdmEngine;)V

    iput-object v1, p0, Lcom/redbend/vdmc/Vdmc$VdmBinder;->_hFumo:Lcom/redbend/vdmc/HandleFumo;

    .line 356
    :cond_2
    new-instance v1, Lcom/redbend/vdmc/HandleSession;

    invoke-direct {v1}, Lcom/redbend/vdmc/HandleSession;-><init>()V

    iput-object v1, p0, Lcom/redbend/vdmc/Vdmc$VdmBinder;->_hSession:Lcom/redbend/vdmc/HandleSession;

    .line 357
    iget-object v1, p0, Lcom/redbend/vdmc/Vdmc$VdmBinder;->_engine:Lcom/redbend/vdm/VdmEngine;

    iget-object v2, p0, Lcom/redbend/vdmc/Vdmc$VdmBinder;->_hSession:Lcom/redbend/vdmc/HandleSession;

    invoke-virtual {v1, v2}, Lcom/redbend/vdm/VdmEngine;->registerSessionStateObserver(Lcom/redbend/vdm/SessionStateObserver;)Z

    .line 359
    new-instance v1, Lcom/redbend/vdmc/HttpHeaders;

    invoke-direct {v1}, Lcom/redbend/vdmc/HttpHeaders;-><init>()V

    iput-object v1, p0, Lcom/redbend/vdmc/Vdmc$VdmBinder;->_hHttpHeader:Lcom/redbend/vdmc/HttpHeaders;

    .line 360
    iget-object v1, p0, Lcom/redbend/vdmc/Vdmc$VdmBinder;->_engine:Lcom/redbend/vdm/VdmEngine;

    iget-object v2, p0, Lcom/redbend/vdmc/Vdmc$VdmBinder;->_hHttpHeader:Lcom/redbend/vdmc/HttpHeaders;

    invoke-virtual {v1, v2}, Lcom/redbend/vdm/VdmEngine;->registerHttpHeadersObserver(Lcom/redbend/vdm/HttpHeadersObserver;)Z

    .line 362
    #getter for: Lcom/redbend/vdmc/Vdmc;->bCPEngine:Z
    invoke-static {p1}, Lcom/redbend/vdmc/Vdmc;->access$1100(Lcom/redbend/vdmc/Vdmc;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 363
    new-instance v1, Lcom/redbend/vdmc/HandleCP;

    invoke-direct {v1}, Lcom/redbend/vdmc/HandleCP;-><init>()V

    iput-object v1, p0, Lcom/redbend/vdmc/Vdmc$VdmBinder;->_hCP:Lcom/redbend/vdmc/HandleCP;

    .line 364
    iget-object v1, p0, Lcom/redbend/vdmc/Vdmc$VdmBinder;->_engine:Lcom/redbend/vdm/VdmEngine;

    iget-object v2, p0, Lcom/redbend/vdmc/Vdmc$VdmBinder;->_hCP:Lcom/redbend/vdmc/HandleCP;

    invoke-virtual {v1, v2}, Lcom/redbend/vdm/VdmEngine;->registerCpObserver(Lcom/redbend/vdm/CpObserver;)V

    .line 368
    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/redbend/vdmc/Vdmc$VdmBinder;->_vdmcCfg:Lcom/redbend/vdmc/VdmcConfig;

    invoke-virtual {v1}, Lcom/redbend/vdmc/VdmcConfig;->isDDLExtSet()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 369
    new-instance v1, Lcom/redbend/vdm/ddl/VdmDdl;

    invoke-direct {v1}, Lcom/redbend/vdm/ddl/VdmDdl;-><init>()V

    iput-object v1, p0, Lcom/redbend/vdmc/Vdmc$VdmBinder;->_ddlExt:Lcom/redbend/vdm/ddl/VdmDdl;
    :try_end_2
    .catch Lcom/redbend/vdm/VdmException; {:try_start_2 .. :try_end_2} :catch_2

    .line 375
    :cond_4
    return-void

    .line 320
    :catch_0
    move-exception v0

    .line 321
    .local v0, e:Lcom/redbend/vdm/VdmException;
    const-string v1, "Vdmc"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VdmEngine ctor exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/redbend/vdm/VdmException;->getError()Lcom/redbend/vdm/VdmException$VdmError;

    move-result-object v3

    invoke-virtual {v3}, Lcom/redbend/vdm/VdmException$VdmError;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    throw v0

    .line 347
    .end local v0           #e:Lcom/redbend/vdm/VdmException;
    :catch_1
    move-exception v0

    .line 348
    .restart local v0       #e:Lcom/redbend/vdm/VdmException;
    const-string v1, "Vdmc"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VdmEngine.start()exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/redbend/vdm/VdmException;->getError()Lcom/redbend/vdm/VdmException$VdmError;

    move-result-object v3

    invoke-virtual {v3}, Lcom/redbend/vdm/VdmException$VdmError;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    throw v0

    .line 371
    .end local v0           #e:Lcom/redbend/vdm/VdmException;
    :catch_2
    move-exception v0

    .line 372
    .restart local v0       #e:Lcom/redbend/vdm/VdmException;
    const-string v1, "Vdmc"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VdmDdl exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/redbend/vdm/VdmException;->getError()Lcom/redbend/vdm/VdmException$VdmError;

    move-result-object v3

    invoke-virtual {v3}, Lcom/redbend/vdm/VdmException$VdmError;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    throw v0
.end method

.method static synthetic access$000(Lcom/redbend/vdmc/Vdmc$VdmBinder;)Lcom/redbend/vdm/VdmEngine;
    .locals 1
    .parameter "x0"

    .prologue
    .line 303
    iget-object v0, p0, Lcom/redbend/vdmc/Vdmc$VdmBinder;->_engine:Lcom/redbend/vdm/VdmEngine;

    return-object v0
.end method

.method static synthetic access$100(Lcom/redbend/vdmc/Vdmc$VdmBinder;)Lcom/redbend/vdmc/HandleFumo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 303
    iget-object v0, p0, Lcom/redbend/vdmc/Vdmc$VdmBinder;->_hFumo:Lcom/redbend/vdmc/HandleFumo;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/redbend/vdmc/Vdmc$VdmBinder;)Lcom/redbend/vdmc/HandleBootStrap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 303
    iget-object v0, p0, Lcom/redbend/vdmc/Vdmc$VdmBinder;->_hBootStrap:Lcom/redbend/vdmc/HandleBootStrap;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/redbend/vdmc/Vdmc$VdmBinder;)Lcom/redbend/vdmc/HandleNIAMsg;
    .locals 1
    .parameter "x0"

    .prologue
    .line 303
    iget-object v0, p0, Lcom/redbend/vdmc/Vdmc$VdmBinder;->_hNIAMsg:Lcom/redbend/vdmc/HandleNIAMsg;

    return-object v0
.end method

.method static synthetic access$200(Lcom/redbend/vdmc/Vdmc$VdmBinder;)Lcom/redbend/vdmc/HandleDMAcc;
    .locals 1
    .parameter "x0"

    .prologue
    .line 303
    iget-object v0, p0, Lcom/redbend/vdmc/Vdmc$VdmBinder;->_hDMAcc:Lcom/redbend/vdmc/HandleDMAcc;

    return-object v0
.end method

.method static synthetic access$300(Lcom/redbend/vdmc/Vdmc$VdmBinder;)Lcom/redbend/vdmc/NodeAccess;
    .locals 1
    .parameter "x0"

    .prologue
    .line 303
    iget-object v0, p0, Lcom/redbend/vdmc/Vdmc$VdmBinder;->_hNodeAccess:Lcom/redbend/vdmc/NodeAccess;

    return-object v0
.end method

.method static synthetic access$400(Lcom/redbend/vdmc/Vdmc$VdmBinder;)Lcom/redbend/vdm/VdmTree;
    .locals 1
    .parameter "x0"

    .prologue
    .line 303
    iget-object v0, p0, Lcom/redbend/vdmc/Vdmc$VdmBinder;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 384
    iget-object v0, p0, Lcom/redbend/vdmc/Vdmc$VdmBinder;->_engine:Lcom/redbend/vdm/VdmEngine;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/redbend/vdmc/Vdmc$VdmBinder;->_engine:Lcom/redbend/vdm/VdmEngine;

    invoke-virtual {v0}, Lcom/redbend/vdm/VdmEngine;->stop()V

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/redbend/vdmc/Vdmc$VdmBinder;->_ddlExt:Lcom/redbend/vdm/ddl/VdmDdl;

    if-eqz v0, :cond_1

    .line 389
    iget-object v0, p0, Lcom/redbend/vdmc/Vdmc$VdmBinder;->_ddlExt:Lcom/redbend/vdm/ddl/VdmDdl;

    invoke-virtual {v0}, Lcom/redbend/vdm/ddl/VdmDdl;->destroy()V

    .line 390
    iput-object v2, p0, Lcom/redbend/vdmc/Vdmc$VdmBinder;->_ddlExt:Lcom/redbend/vdm/ddl/VdmDdl;

    .line 393
    :cond_1
    iget-object v0, p0, Lcom/redbend/vdmc/Vdmc$VdmBinder;->this$0:Lcom/redbend/vdmc/Vdmc;

    #getter for: Lcom/redbend/vdmc/Vdmc;->bFumoEngine:Z
    invoke-static {v0}, Lcom/redbend/vdmc/Vdmc;->access$1000(Lcom/redbend/vdmc/Vdmc;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 394
    iget-object v0, p0, Lcom/redbend/vdmc/Vdmc$VdmBinder;->_hFumo:Lcom/redbend/vdmc/HandleFumo;

    if-eqz v0, :cond_2

    .line 395
    iget-object v0, p0, Lcom/redbend/vdmc/Vdmc$VdmBinder;->_hFumo:Lcom/redbend/vdmc/HandleFumo;

    invoke-virtual {v0}, Lcom/redbend/vdmc/HandleFumo;->term()V

    .line 396
    iput-object v2, p0, Lcom/redbend/vdmc/Vdmc$VdmBinder;->_hFumo:Lcom/redbend/vdmc/HandleFumo;

    .line 400
    :cond_2
    iget-object v0, p0, Lcom/redbend/vdmc/Vdmc$VdmBinder;->_engine:Lcom/redbend/vdm/VdmEngine;

    if-eqz v0, :cond_3

    .line 401
    iget-object v0, p0, Lcom/redbend/vdmc/Vdmc$VdmBinder;->_engine:Lcom/redbend/vdm/VdmEngine;

    iget-object v1, p0, Lcom/redbend/vdmc/Vdmc$VdmBinder;->_hSession:Lcom/redbend/vdmc/HandleSession;

    invoke-virtual {v0, v1}, Lcom/redbend/vdm/VdmEngine;->unregisterSessionStateObserver(Lcom/redbend/vdm/SessionStateObserver;)Z

    .line 402
    iget-object v0, p0, Lcom/redbend/vdmc/Vdmc$VdmBinder;->_engine:Lcom/redbend/vdm/VdmEngine;

    iget-object v1, p0, Lcom/redbend/vdmc/Vdmc$VdmBinder;->_hHttpHeader:Lcom/redbend/vdmc/HttpHeaders;

    invoke-virtual {v0, v1}, Lcom/redbend/vdm/VdmEngine;->unregisterHttpHeadersObserver(Lcom/redbend/vdm/HttpHeadersObserver;)Z

    .line 403
    iget-object v0, p0, Lcom/redbend/vdmc/Vdmc$VdmBinder;->_engine:Lcom/redbend/vdm/VdmEngine;

    invoke-virtual {v0}, Lcom/redbend/vdm/VdmEngine;->destroy()V

    .line 404
    iput-object v2, p0, Lcom/redbend/vdmc/Vdmc$VdmBinder;->_engine:Lcom/redbend/vdm/VdmEngine;

    .line 406
    :cond_3
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 378
    invoke-virtual {p0}, Lcom/redbend/vdmc/Vdmc$VdmBinder;->destroy()V

    .line 379
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 380
    return-void
.end method
