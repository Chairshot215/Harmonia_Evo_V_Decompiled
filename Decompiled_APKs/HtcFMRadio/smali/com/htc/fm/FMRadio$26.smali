.class Lcom/htc/fm/FMRadio$26;
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
    .line 3002
    iput-object p1, p0, Lcom/htc/fm/FMRadio$26;->this$0:Lcom/htc/fm/FMRadio;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 3006
    invoke-static {}, Lcom/htc/fm/FMRadio;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMRadio] mHeadsetHandler msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3007
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 3019
    :cond_0
    :goto_0
    return-void

    .line 3011
    :pswitch_0
    iget-object v0, p0, Lcom/htc/fm/FMRadio$26;->this$0:Lcom/htc/fm/FMRadio;

    #calls: Lcom/htc/fm/FMRadio;->isOnAirplane()Z
    invoke-static {v0}, Lcom/htc/fm/FMRadio;->access$4200(Lcom/htc/fm/FMRadio;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3012
    iget-object v0, p0, Lcom/htc/fm/FMRadio$26;->this$0:Lcom/htc/fm/FMRadio;

    invoke-virtual {v0}, Lcom/htc/fm/FMRadio;->onHeadsetPlugged()V

    goto :goto_0

    .line 3016
    :pswitch_1
    iget-object v0, p0, Lcom/htc/fm/FMRadio$26;->this$0:Lcom/htc/fm/FMRadio;

    invoke-virtual {v0}, Lcom/htc/fm/FMRadio;->onHeadsetUnPlugged()V

    goto :goto_0

    .line 3007
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
