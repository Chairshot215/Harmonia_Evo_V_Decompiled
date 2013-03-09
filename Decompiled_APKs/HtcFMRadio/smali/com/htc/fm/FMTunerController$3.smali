.class Lcom/htc/fm/FMTunerController$3;
.super Ljava/lang/Thread;
.source "FMTunerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/fm/FMTunerController;->startSaveScannedPresets()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fm/FMTunerController;


# direct methods
.method constructor <init>(Lcom/htc/fm/FMTunerController;)V
    .locals 0
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/htc/fm/FMTunerController$3;->this$0:Lcom/htc/fm/FMTunerController;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/htc/fm/FMTunerController$3;->this$0:Lcom/htc/fm/FMTunerController;

    #getter for: Lcom/htc/fm/FMTunerController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/fm/FMTunerController;->access$100(Lcom/htc/fm/FMTunerController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/fm/FMUtils;->clearAllPresets(Landroid/content/Context;)V

    .line 175
    iget-object v0, p0, Lcom/htc/fm/FMTunerController$3;->this$0:Lcom/htc/fm/FMTunerController;

    #getter for: Lcom/htc/fm/FMTunerController;->mAdapter:Lcom/htc/fm/FMPresetAdapter;
    invoke-static {v0}, Lcom/htc/fm/FMTunerController;->access$300(Lcom/htc/fm/FMTunerController;)Lcom/htc/fm/FMPresetAdapter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/fm/FMPresetAdapter;->restore(Z)V

    .line 176
    iget-object v0, p0, Lcom/htc/fm/FMTunerController$3;->this$0:Lcom/htc/fm/FMTunerController;

    invoke-virtual {v0}, Lcom/htc/fm/FMTunerController;->onScanComplete()V

    .line 177
    iget-object v0, p0, Lcom/htc/fm/FMTunerController$3;->this$0:Lcom/htc/fm/FMTunerController;

    #getter for: Lcom/htc/fm/FMTunerController;->mPresetVec:Ljava/util/Vector;
    invoke-static {v0}, Lcom/htc/fm/FMTunerController;->access$400(Lcom/htc/fm/FMTunerController;)Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/htc/fm/FMTunerController$3;->this$0:Lcom/htc/fm/FMTunerController;

    #getter for: Lcom/htc/fm/FMTunerController;->mPresetVec:Ljava/util/Vector;
    invoke-static {v0}, Lcom/htc/fm/FMTunerController;->access$400(Lcom/htc/fm/FMTunerController;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 179
    :cond_0
    const-string v0, "FMTunerController"

    const-string v1, "[FMTunerController][FMTuner] startSaveScannedPresets() No preset scanned - exit"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    return-void
.end method
