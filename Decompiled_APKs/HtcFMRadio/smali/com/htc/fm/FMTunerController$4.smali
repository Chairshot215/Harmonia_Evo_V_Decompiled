.class Lcom/htc/fm/FMTunerController$4;
.super Ljava/lang/Thread;
.source "FMTunerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/fm/FMTunerController;->reloadPresets()V
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
    .line 235
    iput-object p1, p0, Lcom/htc/fm/FMTunerController$4;->this$0:Lcom/htc/fm/FMTunerController;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 237
    sget v0, Lcom/htc/fm/FMTunerController$TunerInfo;->Freq:I

    .line 238
    .local v0, freq:I
    iget-object v2, p0, Lcom/htc/fm/FMTunerController$4;->this$0:Lcom/htc/fm/FMTunerController;

    #getter for: Lcom/htc/fm/FMTunerController;->mAdapter:Lcom/htc/fm/FMPresetAdapter;
    invoke-static {v2}, Lcom/htc/fm/FMTunerController;->access$300(Lcom/htc/fm/FMTunerController;)Lcom/htc/fm/FMPresetAdapter;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/fm/FMPresetAdapter;->restore(Z)V

    .line 239
    iget-object v2, p0, Lcom/htc/fm/FMTunerController$4;->this$0:Lcom/htc/fm/FMTunerController;

    #getter for: Lcom/htc/fm/FMTunerController;->mAdapter:Lcom/htc/fm/FMPresetAdapter;
    invoke-static {v2}, Lcom/htc/fm/FMTunerController;->access$300(Lcom/htc/fm/FMTunerController;)Lcom/htc/fm/FMPresetAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/htc/fm/FMPresetAdapter;->searchPreset(I)Lcom/htc/fm/Preset;

    move-result-object v1

    .line 240
    .local v1, preset:Lcom/htc/fm/Preset;
    if-eqz v1, :cond_0

    .line 241
    invoke-static {v1}, Lcom/htc/fm/FMUtils;->saveNowPlaying(Lcom/htc/fm/Preset;)V

    .line 242
    iget-object v2, p0, Lcom/htc/fm/FMTunerController$4;->this$0:Lcom/htc/fm/FMTunerController;

    #getter for: Lcom/htc/fm/FMTunerController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/fm/FMTunerController;->access$100(Lcom/htc/fm/FMTunerController;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/fm/FMTunerController;->reloadNowPlaying(Landroid/content/Context;)V

    .line 247
    :goto_0
    iget-object v2, p0, Lcom/htc/fm/FMTunerController$4;->this$0:Lcom/htc/fm/FMTunerController;

    invoke-virtual {v2}, Lcom/htc/fm/FMTunerController;->updateNotification()V

    .line 248
    const-string v2, "FMTunerController"

    const-string v3, "[FMTunerHandler] reloadPresets() - exit"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    return-void

    .line 244
    :cond_0
    const-string v2, ""

    sput-object v2, Lcom/htc/fm/FMTunerController$TunerInfo;->Title:Ljava/lang/String;

    .line 245
    const-string v2, ""

    sput-object v2, Lcom/htc/fm/FMTunerController$TunerInfo;->Rds:Ljava/lang/String;

    goto :goto_0
.end method
