.class Lcom/htc/fm/FMRadio$24;
.super Ljava/lang/Thread;
.source "FMRadio.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/fm/FMRadio;->startAirplaneModeHandler()V
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
    .line 2947
    iput-object p1, p0, Lcom/htc/fm/FMRadio$24;->this$0:Lcom/htc/fm/FMRadio;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2950
    invoke-static {}, Lcom/htc/fm/FMRadio;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[FMRadio] startAirplaneModeHandler run"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2951
    iget-object v0, p0, Lcom/htc/fm/FMRadio$24;->this$0:Lcom/htc/fm/FMRadio;

    #calls: Lcom/htc/fm/FMRadio;->isOnAirplane()Z
    invoke-static {v0}, Lcom/htc/fm/FMRadio;->access$4200(Lcom/htc/fm/FMRadio;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2953
    invoke-static {}, Lcom/htc/fm/FMRadio;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[FMRadio] mAirplaneModeHandler WHAT_FM_AIRPLANEMODE_ON"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2954
    iget-object v0, p0, Lcom/htc/fm/FMRadio$24;->this$0:Lcom/htc/fm/FMRadio;

    #getter for: Lcom/htc/fm/FMRadio;->mAirplaneModeHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/fm/FMRadio;->access$4300(Lcom/htc/fm/FMRadio;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2961
    :goto_0
    return-void

    .line 2958
    :cond_0
    invoke-static {}, Lcom/htc/fm/FMRadio;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[FMRadio] mAirplaneModeHandler WHAT_FM_AIRPLANEMODE_OFF"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2959
    iget-object v0, p0, Lcom/htc/fm/FMRadio$24;->this$0:Lcom/htc/fm/FMRadio;

    #getter for: Lcom/htc/fm/FMRadio;->mAirplaneModeHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/fm/FMRadio;->access$4300(Lcom/htc/fm/FMRadio;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
