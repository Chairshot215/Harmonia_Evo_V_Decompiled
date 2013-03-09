.class public Lcom/futuredial/BaseThread$MyThreadHandler;
.super Ljava/lang/Thread;
.source "BaseThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/BaseThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyThreadHandler"
.end annotation


# instance fields
.field private handleMsg:Lcom/futuredial/HANDLEMSG;

.field public mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/futuredial/BaseThread$MyThreadHandler;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/futuredial/BaseThread$MyThreadHandler;)Lcom/futuredial/HANDLEMSG;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/futuredial/BaseThread$MyThreadHandler;->handleMsg:Lcom/futuredial/HANDLEMSG;

    return-object v0
.end method


# virtual methods
.method public Quit()V
    .locals 2

    .prologue
    .line 93
    const-string v0, "BaseThread"

    const-string v1, "getLooper().quit()"

    invoke-static {v0, v1}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public SendMessage(III)Z
    .locals 2
    .parameter "msgID"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/futuredial/BaseThread$MyThreadHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/futuredial/BaseThread$MyThreadHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public SendMessage(ILjava/lang/Object;)Z
    .locals 2
    .parameter "msgID"
    .parameter "obj"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/futuredial/BaseThread$MyThreadHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/futuredial/BaseThread$MyThreadHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public SetInterface(Lcom/futuredial/HANDLEMSG;)V
    .locals 1
    .parameter "b"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/futuredial/BaseThread$MyThreadHandler;->handleMsg:Lcom/futuredial/HANDLEMSG;

    .line 87
    iget-object v0, p0, Lcom/futuredial/BaseThread$MyThreadHandler;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/futuredial/BaseThread$MyThreadHandler;->start()V

    .line 89
    :cond_0
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 71
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 72
    const-string v0, "BaseThread"

    const-string v1, "enter run"

    invoke-static {v0, v1}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    new-instance v0, Lcom/futuredial/BaseThread$MyThreadHandler$1;

    invoke-direct {v0, p0}, Lcom/futuredial/BaseThread$MyThreadHandler$1;-><init>(Lcom/futuredial/BaseThread$MyThreadHandler;)V

    iput-object v0, p0, Lcom/futuredial/BaseThread$MyThreadHandler;->mHandler:Landroid/os/Handler;

    .line 80
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 81
    return-void
.end method
