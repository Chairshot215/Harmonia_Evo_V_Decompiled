.class public Lcom/futuredial/ui/UIHandler;
.super Landroid/os/Handler;
.source "UIHandler.java"


# instance fields
.field TAG:Ljava/lang/String;

.field private m_bPause:Z

.field private m_processor:Lcom/futuredial/ui/UIProcessor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 17
    const-string v0, "UIHandler"

    iput-object v0, p0, Lcom/futuredial/ui/UIHandler;->TAG:Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/futuredial/ui/UIHandler;->m_processor:Lcom/futuredial/ui/UIProcessor;

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/futuredial/ui/UIHandler;->m_bPause:Z

    return-void
.end method


# virtual methods
.method public continueHandle()V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/futuredial/ui/UIHandler;->TAG:Ljava/lang/String;

    const-string v1, "handler actived"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/futuredial/ui/UIHandler;->m_bPause:Z

    .line 40
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/futuredial/ui/UIHandler;->m_processor:Lcom/futuredial/ui/UIProcessor;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/futuredial/ui/UIHandler;->m_bPause:Z

    if-nez v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/futuredial/ui/UIHandler;->m_processor:Lcom/futuredial/ui/UIProcessor;

    invoke-interface {v0, p1}, Lcom/futuredial/ui/UIProcessor;->handleMsg(Landroid/os/Message;)V

    .line 30
    :goto_0
    return-void

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/futuredial/ui/UIHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignore msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public pauseHandle()V
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/futuredial/ui/UIHandler;->TAG:Ljava/lang/String;

    const-string v1, "handler paused"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/futuredial/ui/UIHandler;->m_bPause:Z

    .line 35
    return-void
.end method

.method public set_processor(Lcom/futuredial/ui/UIProcessor;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/futuredial/ui/UIHandler;->m_processor:Lcom/futuredial/ui/UIProcessor;

    .line 23
    return-void
.end method
