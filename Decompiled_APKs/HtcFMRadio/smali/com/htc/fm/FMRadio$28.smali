.class Lcom/htc/fm/FMRadio$28;
.super Ljava/lang/Thread;
.source "FMRadio.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/fm/FMRadio;->onServiceBinded()V
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
    .line 3876
    iput-object p1, p0, Lcom/htc/fm/FMRadio$28;->this$0:Lcom/htc/fm/FMRadio;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3878
    invoke-static {}, Lcom/htc/fm/FMRadio;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[FMRadio][FMTuner][Service] onServiceBinded() onPresetUpdated(-1)"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3879
    invoke-static {}, Lcom/htc/fm/FMRadio;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FMRadio][FMTuner][Service] onServiceBinded() onPresetUpdated(-1) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/fm/FMRadio$28;->this$0:Lcom/htc/fm/FMRadio;

    #calls: Lcom/htc/fm/FMRadio;->getNowPreset()Lcom/htc/fm/Preset;
    invoke-static {v3}, Lcom/htc/fm/FMRadio;->access$1400(Lcom/htc/fm/FMRadio;)Lcom/htc/fm/Preset;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3880
    iget-object v1, p0, Lcom/htc/fm/FMRadio$28;->this$0:Lcom/htc/fm/FMRadio;

    iget-object v1, v1, Lcom/htc/fm/FMRadio;->mFMController:Lcom/htc/fm/FMController;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/htc/fm/FMController;->onPresetUpdated(I)V

    .line 3881
    iget-object v1, p0, Lcom/htc/fm/FMRadio$28;->this$0:Lcom/htc/fm/FMRadio;

    #calls: Lcom/htc/fm/FMRadio;->getNowPreset()Lcom/htc/fm/Preset;
    invoke-static {v1}, Lcom/htc/fm/FMRadio;->access$1400(Lcom/htc/fm/FMRadio;)Lcom/htc/fm/Preset;

    move-result-object v0

    .line 3882
    .local v0, preset:Lcom/htc/fm/Preset;
    invoke-static {}, Lcom/htc/fm/FMRadio;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FMRadio][FMTuner][Service] onServiceBinded() onPresetUpdated() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3883
    invoke-static {v0}, Lcom/htc/fm/FMUtils;->saveNowPlaying(Lcom/htc/fm/Preset;)V

    .line 3884
    iget-object v1, p0, Lcom/htc/fm/FMRadio$28;->this$0:Lcom/htc/fm/FMRadio;

    const/4 v2, 0x0

    #setter for: Lcom/htc/fm/FMRadio;->mPresetUpdated:Z
    invoke-static {v1, v2}, Lcom/htc/fm/FMRadio;->access$4602(Lcom/htc/fm/FMRadio;Z)Z

    .line 3885
    iget-object v1, p0, Lcom/htc/fm/FMRadio$28;->this$0:Lcom/htc/fm/FMRadio;

    iget-object v1, v1, Lcom/htc/fm/FMRadio;->mActionHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 3886
    iget-object v1, p0, Lcom/htc/fm/FMRadio$28;->this$0:Lcom/htc/fm/FMRadio;

    iget-object v1, v1, Lcom/htc/fm/FMRadio;->mActionHandler:Landroid/os/Handler;

    const/16 v2, 0x1e

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3888
    :cond_0
    return-void
.end method
