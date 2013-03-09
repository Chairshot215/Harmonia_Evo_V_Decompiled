.class public Lcom/htc/widget3d/weather/OptionActivity$UIHandler;
.super Landroid/os/Handler;
.source "OptionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget3d/weather/OptionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget3d/weather/OptionActivity;


# direct methods
.method public constructor <init>(Lcom/htc/widget3d/weather/OptionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/htc/widget3d/weather/OptionActivity$UIHandler;->this$0:Lcom/htc/widget3d/weather/OptionActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 120
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 128
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 131
    :goto_0
    return-void

    .line 122
    :pswitch_0
    iget-object v0, p0, Lcom/htc/widget3d/weather/OptionActivity$UIHandler;->this$0:Lcom/htc/widget3d/weather/OptionActivity;

    #calls: Lcom/htc/widget3d/weather/OptionActivity;->initListView()V
    invoke-static {v0}, Lcom/htc/widget3d/weather/OptionActivity;->access$100(Lcom/htc/widget3d/weather/OptionActivity;)V

    .line 124
    iget-object v0, p0, Lcom/htc/widget3d/weather/OptionActivity$UIHandler;->this$0:Lcom/htc/widget3d/weather/OptionActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget3d/weather/OptionActivity;->showWaitCursor(Z)V

    goto :goto_0

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
