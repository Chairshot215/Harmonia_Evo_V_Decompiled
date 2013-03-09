.class Lcom/htc/widget/DecorFlowGL$1;
.super Landroid/os/Handler;
.source "DecorFlowGL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/DecorFlowGL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/DecorFlowGL;


# direct methods
.method constructor <init>(Lcom/htc/widget/DecorFlowGL;)V
    .locals 0
    .parameter

    .prologue
    .line 1098
    iput-object p1, p0, Lcom/htc/widget/DecorFlowGL$1;->this$0:Lcom/htc/widget/DecorFlowGL;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 1101
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1128
    :cond_0
    :goto_0
    return-void

    .line 1104
    :pswitch_0
    iget-object v0, p0, Lcom/htc/widget/DecorFlowGL$1;->this$0:Lcom/htc/widget/DecorFlowGL;

    #getter for: Lcom/htc/widget/DecorFlowGL;->statelistener:Lcom/htc/widget/DecorFlowGL$DecorFlowGLListener;
    invoke-static {v0}, Lcom/htc/widget/DecorFlowGL;->access$800(Lcom/htc/widget/DecorFlowGL;)Lcom/htc/widget/DecorFlowGL$DecorFlowGLListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1105
    iget-object v0, p0, Lcom/htc/widget/DecorFlowGL$1;->this$0:Lcom/htc/widget/DecorFlowGL;

    #getter for: Lcom/htc/widget/DecorFlowGL;->statelistener:Lcom/htc/widget/DecorFlowGL$DecorFlowGLListener;
    invoke-static {v0}, Lcom/htc/widget/DecorFlowGL;->access$800(Lcom/htc/widget/DecorFlowGL;)Lcom/htc/widget/DecorFlowGL$DecorFlowGLListener;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/DecorFlowGL$1;->this$0:Lcom/htc/widget/DecorFlowGL;

    #getter for: Lcom/htc/widget/DecorFlowGL;->clickindex:I
    invoke-static {v1}, Lcom/htc/widget/DecorFlowGL;->access$900(Lcom/htc/widget/DecorFlowGL;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/htc/widget/DecorFlowGL$DecorFlowGLListener;->onItemClick(I)V

    goto :goto_0

    .line 1109
    :pswitch_1
    iget-object v0, p0, Lcom/htc/widget/DecorFlowGL$1;->this$0:Lcom/htc/widget/DecorFlowGL;

    #getter for: Lcom/htc/widget/DecorFlowGL;->statelistener:Lcom/htc/widget/DecorFlowGL$DecorFlowGLListener;
    invoke-static {v0}, Lcom/htc/widget/DecorFlowGL;->access$800(Lcom/htc/widget/DecorFlowGL;)Lcom/htc/widget/DecorFlowGL$DecorFlowGLListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1110
    iget-object v0, p0, Lcom/htc/widget/DecorFlowGL$1;->this$0:Lcom/htc/widget/DecorFlowGL;

    #getter for: Lcom/htc/widget/DecorFlowGL;->statelistener:Lcom/htc/widget/DecorFlowGL$DecorFlowGLListener;
    invoke-static {v0}, Lcom/htc/widget/DecorFlowGL;->access$800(Lcom/htc/widget/DecorFlowGL;)Lcom/htc/widget/DecorFlowGL$DecorFlowGLListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/widget/DecorFlowGL$DecorFlowGLListener;->onFlingStop()V

    goto :goto_0

    .line 1114
    :pswitch_2
    iget-object v0, p0, Lcom/htc/widget/DecorFlowGL$1;->this$0:Lcom/htc/widget/DecorFlowGL;

    #getter for: Lcom/htc/widget/DecorFlowGL;->statelistener:Lcom/htc/widget/DecorFlowGL$DecorFlowGLListener;
    invoke-static {v0}, Lcom/htc/widget/DecorFlowGL;->access$800(Lcom/htc/widget/DecorFlowGL;)Lcom/htc/widget/DecorFlowGL$DecorFlowGLListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1115
    iget-object v0, p0, Lcom/htc/widget/DecorFlowGL$1;->this$0:Lcom/htc/widget/DecorFlowGL;

    #getter for: Lcom/htc/widget/DecorFlowGL;->statelistener:Lcom/htc/widget/DecorFlowGL$DecorFlowGLListener;
    invoke-static {v0}, Lcom/htc/widget/DecorFlowGL;->access$800(Lcom/htc/widget/DecorFlowGL;)Lcom/htc/widget/DecorFlowGL$DecorFlowGLListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/widget/DecorFlowGL$DecorFlowGLListener;->onFlingStart()V

    goto :goto_0

    .line 1119
    :pswitch_3
    iget-object v0, p0, Lcom/htc/widget/DecorFlowGL$1;->this$0:Lcom/htc/widget/DecorFlowGL;

    #getter for: Lcom/htc/widget/DecorFlowGL;->statelistener:Lcom/htc/widget/DecorFlowGL$DecorFlowGLListener;
    invoke-static {v0}, Lcom/htc/widget/DecorFlowGL;->access$800(Lcom/htc/widget/DecorFlowGL;)Lcom/htc/widget/DecorFlowGL$DecorFlowGLListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1120
    iget-object v0, p0, Lcom/htc/widget/DecorFlowGL$1;->this$0:Lcom/htc/widget/DecorFlowGL;

    #getter for: Lcom/htc/widget/DecorFlowGL;->statelistener:Lcom/htc/widget/DecorFlowGL$DecorFlowGLListener;
    invoke-static {v0}, Lcom/htc/widget/DecorFlowGL;->access$800(Lcom/htc/widget/DecorFlowGL;)Lcom/htc/widget/DecorFlowGL$DecorFlowGLListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/widget/DecorFlowGL$DecorFlowGLListener;->onCenterChanged()V

    goto :goto_0

    .line 1124
    :pswitch_4
    iget-object v0, p0, Lcom/htc/widget/DecorFlowGL$1;->this$0:Lcom/htc/widget/DecorFlowGL;

    #getter for: Lcom/htc/widget/DecorFlowGL;->statelistener:Lcom/htc/widget/DecorFlowGL$DecorFlowGLListener;
    invoke-static {v0}, Lcom/htc/widget/DecorFlowGL;->access$800(Lcom/htc/widget/DecorFlowGL;)Lcom/htc/widget/DecorFlowGL$DecorFlowGLListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1125
    iget-object v0, p0, Lcom/htc/widget/DecorFlowGL$1;->this$0:Lcom/htc/widget/DecorFlowGL;

    #getter for: Lcom/htc/widget/DecorFlowGL;->statelistener:Lcom/htc/widget/DecorFlowGL$DecorFlowGLListener;
    invoke-static {v0}, Lcom/htc/widget/DecorFlowGL;->access$800(Lcom/htc/widget/DecorFlowGL;)Lcom/htc/widget/DecorFlowGL$DecorFlowGLListener;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/DecorFlowGL$1;->this$0:Lcom/htc/widget/DecorFlowGL;

    #getter for: Lcom/htc/widget/DecorFlowGL;->clickindex:I
    invoke-static {v1}, Lcom/htc/widget/DecorFlowGL;->access$900(Lcom/htc/widget/DecorFlowGL;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/htc/widget/DecorFlowGL$DecorFlowGLListener;->onCenterClick(I)V

    goto :goto_0

    .line 1101
    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
