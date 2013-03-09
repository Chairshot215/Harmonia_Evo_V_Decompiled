.class Lcom/htc/htcsettingwidgets/AirplaneWidget$1;
.super Landroid/os/Handler;
.source "AirplaneWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/htcsettingwidgets/AirplaneWidget;->createStateHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/htcsettingwidgets/AirplaneWidget;


# direct methods
.method constructor <init>(Lcom/htc/htcsettingwidgets/AirplaneWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/htc/htcsettingwidgets/AirplaneWidget$1;->this$0:Lcom/htc/htcsettingwidgets/AirplaneWidget;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 128
    invoke-static {}, Lcom/htc/htcsettingwidgets/AirplaneWidget;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mStateHandler.handleMessage(), msg : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 134
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 137
    :goto_0
    return-void

    .line 131
    :pswitch_0
    iget-object v0, p0, Lcom/htc/htcsettingwidgets/AirplaneWidget$1;->this$0:Lcom/htc/htcsettingwidgets/AirplaneWidget;

    #calls: Lcom/htc/htcsettingwidgets/AirplaneWidget;->onAirplaneModeChanged()V
    invoke-static {v0}, Lcom/htc/htcsettingwidgets/AirplaneWidget;->access$600(Lcom/htc/htcsettingwidgets/AirplaneWidget;)V

    goto :goto_0

    .line 129
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
