.class Lcom/htc/fm/FMTunerController$1;
.super Ljava/lang/Thread;
.source "FMTunerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/fm/FMTunerController;->startFMTunerHandler()V
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
    .line 119
    iput-object p1, p0, Lcom/htc/fm/FMTunerController$1;->this$0:Lcom/htc/fm/FMTunerController;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 121
    const-string v0, "FMTunerController"

    const-string v1, "[FMTunerController] - Thread Enter"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 123
    iget-object v0, p0, Lcom/htc/fm/FMTunerController$1;->this$0:Lcom/htc/fm/FMTunerController;

    new-instance v1, Lcom/htc/fm/FMTunerHandler;

    iget-object v2, p0, Lcom/htc/fm/FMTunerController$1;->this$0:Lcom/htc/fm/FMTunerController;

    #getter for: Lcom/htc/fm/FMTunerController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/fm/FMTunerController;->access$100(Lcom/htc/fm/FMTunerController;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/fm/FMTunerController$1;->this$0:Lcom/htc/fm/FMTunerController;

    iget-object v4, p0, Lcom/htc/fm/FMTunerController$1;->this$0:Lcom/htc/fm/FMTunerController;

    iget-object v5, p0, Lcom/htc/fm/FMTunerController$1;->this$0:Lcom/htc/fm/FMTunerController;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/htc/fm/FMTunerHandler;-><init>(Landroid/content/Context;Lcom/htc/fm/FMTunerController;Lcom/htc/fm/OnStateChangedListener;Lcom/htc/fm/OnEventChangedListener;)V

    #setter for: Lcom/htc/fm/FMTunerController;->mFMTunerHandler:Lcom/htc/fm/FMTunerHandler;
    invoke-static {v0, v1}, Lcom/htc/fm/FMTunerController;->access$002(Lcom/htc/fm/FMTunerController;Lcom/htc/fm/FMTunerHandler;)Lcom/htc/fm/FMTunerHandler;

    .line 125
    const-string v0, "/data/data/com.htc.fm/audio_fm"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/htc/fm/FMUtils;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v0, "/data/data/com.htc.fm/audio_fm"

    invoke-static {v0}, Lcom/htc/fm/FMUtils;->setPublicPermission(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/htc/fm/FMTunerController$1;->this$0:Lcom/htc/fm/FMTunerController;

    invoke-virtual {v0}, Lcom/htc/fm/FMTunerController;->onTunerHandlerReady()V

    .line 128
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 129
    const-string v0, "FMTunerController"

    const-string v1, "[FMTunerController] - Thread Quit"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void
.end method
