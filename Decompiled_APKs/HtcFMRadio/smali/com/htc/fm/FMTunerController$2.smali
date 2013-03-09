.class Lcom/htc/fm/FMTunerController$2;
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
    .line 156
    iput-object p1, p0, Lcom/htc/fm/FMTunerController$2;->this$0:Lcom/htc/fm/FMTunerController;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 158
    const-string v1, "FMTunerController"

    const-string v2, "[FMTunerController][FMTuner] SavePreset2DB() - START"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v1, p0, Lcom/htc/fm/FMTunerController$2;->this$0:Lcom/htc/fm/FMTunerController;

    #getter for: Lcom/htc/fm/FMTunerController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/fm/FMTunerController;->access$100(Lcom/htc/fm/FMTunerController;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/fm/FMUtils;->clearAllPresets(Landroid/content/Context;)V

    .line 161
    :try_start_0
    iget-object v1, p0, Lcom/htc/fm/FMTunerController$2;->this$0:Lcom/htc/fm/FMTunerController;

    #calls: Lcom/htc/fm/FMTunerController;->savePresetsToDB()V
    invoke-static {v1}, Lcom/htc/fm/FMTunerController;->access$200(Lcom/htc/fm/FMTunerController;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :goto_0
    iget-object v1, p0, Lcom/htc/fm/FMTunerController$2;->this$0:Lcom/htc/fm/FMTunerController;

    #getter for: Lcom/htc/fm/FMTunerController;->mAdapter:Lcom/htc/fm/FMPresetAdapter;
    invoke-static {v1}, Lcom/htc/fm/FMTunerController;->access$300(Lcom/htc/fm/FMTunerController;)Lcom/htc/fm/FMPresetAdapter;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/fm/FMPresetAdapter;->restore(Z)V

    .line 166
    iget-object v1, p0, Lcom/htc/fm/FMTunerController$2;->this$0:Lcom/htc/fm/FMTunerController;

    invoke-virtual {v1}, Lcom/htc/fm/FMTunerController;->onScanComplete()V

    .line 167
    iget-object v1, p0, Lcom/htc/fm/FMTunerController$2;->this$0:Lcom/htc/fm/FMTunerController;

    #getter for: Lcom/htc/fm/FMTunerController;->mPresetVec:Ljava/util/Vector;
    invoke-static {v1}, Lcom/htc/fm/FMTunerController;->access$400(Lcom/htc/fm/FMTunerController;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 168
    const-string v1, "FMTunerController"

    const-string v2, "[FMTunerController][FMTuner] SavePreset2DB() - END"

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
