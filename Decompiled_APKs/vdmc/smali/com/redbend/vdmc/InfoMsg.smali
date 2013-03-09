.class public Lcom/redbend/vdmc/InfoMsg;
.super Ljava/lang/Object;
.source "InfoMsg.java"

# interfaces
.implements Lcom/redbend/vdm/MmiInfoMsg;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "InfoMsg"

.field private static me:Lcom/redbend/vdmc/InfoMsg;


# instance fields
.field private observer:Lcom/redbend/vdm/MmiObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput-object v0, Lcom/redbend/vdmc/InfoMsg;->me:Lcom/redbend/vdmc/InfoMsg;

    return-void
.end method

.method public constructor <init>(Lcom/redbend/vdm/MmiObserver;)V
    .locals 0
    .parameter "obs"

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/redbend/vdmc/InfoMsg;->observer:Lcom/redbend/vdm/MmiObserver;

    .line 16
    return-void
.end method

.method public static getInstance(Lcom/redbend/vdm/MmiObserver;)Lcom/redbend/vdmc/InfoMsg;
    .locals 1
    .parameter "obs"

    .prologue
    .line 18
    sget-object v0, Lcom/redbend/vdmc/InfoMsg;->me:Lcom/redbend/vdmc/InfoMsg;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcom/redbend/vdmc/InfoMsg;

    invoke-direct {v0, p0}, Lcom/redbend/vdmc/InfoMsg;-><init>(Lcom/redbend/vdm/MmiObserver;)V

    sput-object v0, Lcom/redbend/vdmc/InfoMsg;->me:Lcom/redbend/vdmc/InfoMsg;

    .line 21
    :cond_0
    sget-object v0, Lcom/redbend/vdmc/InfoMsg;->me:Lcom/redbend/vdmc/InfoMsg;

    return-object v0
.end method


# virtual methods
.method public InfoMsgCancel()V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/redbend/vdmc/InfoMsg;->observer:Lcom/redbend/vdm/MmiObserver;

    invoke-interface {v0}, Lcom/redbend/vdm/MmiObserver;->notifyCancelEvent()V

    .line 30
    return-void
.end method

.method public InfoMsgClosed()V
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/redbend/vdmc/InfoMsg;->observer:Lcom/redbend/vdm/MmiObserver;

    invoke-interface {v0}, Lcom/redbend/vdm/MmiObserver;->notifyInfoMsgClosed()V

    .line 26
    return-void
.end method

.method public display(Lcom/redbend/vdm/MmiViewContext;Lcom/redbend/vdm/MmiInfoMsg$InfoType;)Lcom/redbend/vdm/MmiResult;
    .locals 3
    .parameter "context"
    .parameter "type"

    .prologue
    .line 33
    const-string v0, "InfoMsg"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vDM Client InfoMsg::display Text = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/redbend/vdm/MmiViewContext;->displayText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const-string v0, "InfoMsg"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vDM Client InfoMsg::display Type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/redbend/vdm/MmiInfoMsg$InfoType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    sget-object v0, Lcom/redbend/vdm/MmiResult;->OK:Lcom/redbend/vdm/MmiResult;

    return-object v0
.end method
