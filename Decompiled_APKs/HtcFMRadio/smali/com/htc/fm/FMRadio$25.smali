.class Lcom/htc/fm/FMRadio$25;
.super Landroid/os/Handler;
.source "FMRadio.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fm/FMRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fm/FMRadio;


# direct methods
.method constructor <init>(Lcom/htc/fm/FMRadio;)V
    .locals 0
    .parameter

    .prologue
    .line 2967
    iput-object p1, p0, Lcom/htc/fm/FMRadio$25;->this$0:Lcom/htc/fm/FMRadio;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 2971
    invoke-static {}, Lcom/htc/fm/FMRadio;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMRadio] mAirplaneModeHandler msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2972
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 2985
    :goto_0
    return-void

    .line 2975
    :pswitch_0
    iget-object v0, p0, Lcom/htc/fm/FMRadio$25;->this$0:Lcom/htc/fm/FMRadio;

    #calls: Lcom/htc/fm/FMRadio;->getState()I
    invoke-static {v0}, Lcom/htc/fm/FMRadio;->access$400(Lcom/htc/fm/FMRadio;)I

    move-result v0

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/htc/fm/FMRadio$25;->this$0:Lcom/htc/fm/FMRadio;

    #calls: Lcom/htc/fm/FMRadio;->getState()I
    invoke-static {v0}, Lcom/htc/fm/FMRadio;->access$400(Lcom/htc/fm/FMRadio;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2976
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMRadio$25;->this$0:Lcom/htc/fm/FMRadio;

    #calls: Lcom/htc/fm/FMRadio;->turnOffFM(Z)V
    invoke-static {v0, v3}, Lcom/htc/fm/FMRadio;->access$2300(Lcom/htc/fm/FMRadio;Z)V

    goto :goto_0

    .line 2978
    :cond_1
    iget-object v0, p0, Lcom/htc/fm/FMRadio$25;->this$0:Lcom/htc/fm/FMRadio;

    invoke-virtual {v0}, Lcom/htc/fm/FMRadio;->finish()V

    goto :goto_0

    .line 2981
    :pswitch_1
    iget-object v0, p0, Lcom/htc/fm/FMRadio$25;->this$0:Lcom/htc/fm/FMRadio;

    const/4 v1, 0x3

    #calls: Lcom/htc/fm/FMRadio;->dialogDismiss(I)Z
    invoke-static {v0, v1}, Lcom/htc/fm/FMRadio;->access$2000(Lcom/htc/fm/FMRadio;I)Z

    .line 2982
    iget-object v0, p0, Lcom/htc/fm/FMRadio$25;->this$0:Lcom/htc/fm/FMRadio;

    #calls: Lcom/htc/fm/FMRadio;->turnOn()V
    invoke-static {v0}, Lcom/htc/fm/FMRadio;->access$4400(Lcom/htc/fm/FMRadio;)V

    goto :goto_0

    .line 2972
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
