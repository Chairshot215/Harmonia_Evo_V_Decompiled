.class Lcom/htc/fm/FMController$3;
.super Landroid/os/Handler;
.source "FMController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fm/FMController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fm/FMController;


# direct methods
.method constructor <init>(Lcom/htc/fm/FMController;)V
    .locals 0
    .parameter

    .prologue
    .line 995
    iput-object p1, p0, Lcom/htc/fm/FMController$3;->this$0:Lcom/htc/fm/FMController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 998
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/fm/FMController$3;->this$0:Lcom/htc/fm/FMController;

    #getter for: Lcom/htc/fm/FMController;->mOnEventChangedListener:Lcom/htc/fm/OnEventChangedListener;
    invoke-static {v2}, Lcom/htc/fm/FMController;->access$900(Lcom/htc/fm/FMController;)Lcom/htc/fm/OnEventChangedListener;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1020
    :cond_0
    :goto_0
    return-void

    .line 1001
    :cond_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1002
    .local v0, action:Ljava/lang/String;
    iget v1, p1, Landroid/os/Message;->what:I

    .line 1003
    .local v1, state:I
    if-eqz v0, :cond_0

    .line 1006
    const-string v2, "com.htc.fm.servicestatechanged"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1007
    iget-object v2, p0, Lcom/htc/fm/FMController$3;->this$0:Lcom/htc/fm/FMController;

    #calls: Lcom/htc/fm/FMController;->dispatchServiceState(I)V
    invoke-static {v2, v1}, Lcom/htc/fm/FMController;->access$1000(Lcom/htc/fm/FMController;I)V

    goto :goto_0

    .line 1011
    :cond_2
    const-string v2, "com.htc.fm.statechanged"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1012
    iget-object v2, p0, Lcom/htc/fm/FMController$3;->this$0:Lcom/htc/fm/FMController;

    #calls: Lcom/htc/fm/FMController;->dispatchStateEvent(I)V
    invoke-static {v2, v1}, Lcom/htc/fm/FMController;->access$1100(Lcom/htc/fm/FMController;I)V

    goto :goto_0

    .line 1016
    :cond_3
    const-string v2, "com.htc.fm.cmdstatechanged"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1017
    iget-object v2, p0, Lcom/htc/fm/FMController$3;->this$0:Lcom/htc/fm/FMController;

    #calls: Lcom/htc/fm/FMController;->dispatchCmdStateEvent(I)V
    invoke-static {v2, v1}, Lcom/htc/fm/FMController;->access$1200(Lcom/htc/fm/FMController;I)V

    goto :goto_0
.end method
