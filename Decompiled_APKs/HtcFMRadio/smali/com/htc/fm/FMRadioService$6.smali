.class Lcom/htc/fm/FMRadioService$6;
.super Landroid/os/Handler;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fm/FMRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fm/FMRadioService;


# direct methods
.method constructor <init>(Lcom/htc/fm/FMRadioService;)V
    .locals 0
    .parameter

    .prologue
    .line 1208
    iput-object p1, p0, Lcom/htc/fm/FMRadioService$6;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const-wide/16 v2, 0x1f4

    .line 1211
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1223
    :goto_0
    return-void

    .line 1213
    :pswitch_0
    const-string v0, "FMRadioService"

    const-string v1, "!!!! @@@@@@ #### mFFSeekHandler - WHAT_FFSEEK_UP"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$6;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v0}, Lcom/htc/fm/FMRadioService;->seekUp()V

    .line 1215
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/htc/fm/FMRadioService$6;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1218
    :pswitch_1
    const-string v0, "FMRadioService"

    const-string v1, "!!!! @@@@@@ #### mFFSeekHandler - WHAT_FFSEEK_DOWN"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1219
    iget-object v0, p0, Lcom/htc/fm/FMRadioService$6;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v0}, Lcom/htc/fm/FMRadioService;->seekDown()V

    .line 1220
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v2, v3}, Lcom/htc/fm/FMRadioService$6;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1211
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
