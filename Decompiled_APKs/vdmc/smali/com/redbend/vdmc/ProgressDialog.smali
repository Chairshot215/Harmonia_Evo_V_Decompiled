.class public Lcom/redbend/vdmc/ProgressDialog;
.super Ljava/lang/Object;
.source "ProgressDialog.java"

# interfaces
.implements Lcom/redbend/vdm/MmiProgress;


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "ProgressDialog"

.field private static me:Lcom/redbend/vdmc/ProgressDialog;


# instance fields
.field private mMsgHandler:Lcom/htc/ipl/MsgHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/redbend/vdmc/ProgressDialog;->me:Lcom/redbend/vdmc/ProgressDialog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static getInstance()Lcom/redbend/vdmc/ProgressDialog;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/redbend/vdmc/ProgressDialog;->me:Lcom/redbend/vdmc/ProgressDialog;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/redbend/vdmc/ProgressDialog;

    invoke-direct {v0}, Lcom/redbend/vdmc/ProgressDialog;-><init>()V

    sput-object v0, Lcom/redbend/vdmc/ProgressDialog;->me:Lcom/redbend/vdmc/ProgressDialog;

    .line 23
    :cond_0
    sget-object v0, Lcom/redbend/vdmc/ProgressDialog;->me:Lcom/redbend/vdmc/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 4

    .prologue
    .line 28
    :try_start_0
    invoke-static {}, Lcom/redbend/vdmc/Vdmc;->getEngine()Lcom/redbend/vdm/VdmEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/redbend/vdm/VdmEngine;->cancelSession()V
    :try_end_0
    .catch Lcom/redbend/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :goto_0
    return-void

    .line 29
    :catch_0
    move-exception v0

    .line 30
    .local v0, e:Lcom/redbend/vdm/VdmException;
    const-string v1, "ProgressDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VdmEngine exception "

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

    goto :goto_0
.end method

.method public update(II)V
    .locals 2
    .parameter "current"
    .parameter "total"

    .prologue
    .line 35
    invoke-static {}, Lcom/htc/ipl/MsgHandler;->getInstance()Lcom/htc/ipl/MsgHandler;

    move-result-object v1

    iput-object v1, p0, Lcom/redbend/vdmc/ProgressDialog;->mMsgHandler:Lcom/htc/ipl/MsgHandler;

    .line 36
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 37
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/redbend/vdmc/ProgressDialog;->mMsgHandler:Lcom/htc/ipl/MsgHandler;

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 38
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 39
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 40
    iget-object v1, p0, Lcom/redbend/vdmc/ProgressDialog;->mMsgHandler:Lcom/htc/ipl/MsgHandler;

    invoke-virtual {v1, v0}, Lcom/htc/ipl/MsgHandler;->sendMessage(Landroid/os/Message;)Z

    .line 41
    return-void
.end method
