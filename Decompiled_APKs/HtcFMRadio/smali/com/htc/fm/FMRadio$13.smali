.class Lcom/htc/fm/FMRadio$13;
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
    .line 2064
    iput-object p1, p0, Lcom/htc/fm/FMRadio$13;->this$0:Lcom/htc/fm/FMRadio;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    .line 2067
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 2073
    :goto_0
    return-void

    .line 2069
    :pswitch_0
    iget-object v0, p0, Lcom/htc/fm/FMRadio$13;->this$0:Lcom/htc/fm/FMRadio;

    #setter for: Lcom/htc/fm/FMRadio;->mFromManul:Z
    invoke-static {v0, v1}, Lcom/htc/fm/FMRadio;->access$1702(Lcom/htc/fm/FMRadio;Z)Z

    .line 2070
    iget-object v0, p0, Lcom/htc/fm/FMRadio$13;->this$0:Lcom/htc/fm/FMRadio;

    #calls: Lcom/htc/fm/FMRadio;->doTune(Z)V
    invoke-static {v0, v1}, Lcom/htc/fm/FMRadio;->access$1800(Lcom/htc/fm/FMRadio;Z)V

    goto :goto_0

    .line 2067
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
