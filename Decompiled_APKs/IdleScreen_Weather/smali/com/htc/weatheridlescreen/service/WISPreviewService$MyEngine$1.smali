.class Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine$1;
.super Landroid/os/Handler;
.source "WISPreviewService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;


# direct methods
.method constructor <init>(Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 303
    iput-object p1, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine$1;->this$1:Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 306
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 307
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 313
    :goto_0
    return-void

    .line 310
    :pswitch_0
    iget-object v0, p0, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine$1;->this$1:Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;

    #calls: Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->playWeatherCondition()V
    invoke-static {v0}, Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;->access$000(Lcom/htc/weatheridlescreen/service/WISPreviewService$MyEngine;)V

    goto :goto_0

    .line 307
    nop

    :pswitch_data_0
    .packed-switch 0x27
        :pswitch_0
    .end packed-switch
.end method
