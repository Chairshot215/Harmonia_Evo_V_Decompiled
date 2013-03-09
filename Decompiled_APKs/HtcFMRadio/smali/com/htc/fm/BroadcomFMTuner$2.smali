.class Lcom/htc/fm/BroadcomFMTuner$2;
.super Ljava/lang/Thread;
.source "BroadcomFMTuner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/fm/BroadcomFMTuner;->startEventLoop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fm/BroadcomFMTuner;


# direct methods
.method constructor <init>(Lcom/htc/fm/BroadcomFMTuner;)V
    .locals 0
    .parameter

    .prologue
    .line 924
    iput-object p1, p0, Lcom/htc/fm/BroadcomFMTuner$2;->this$0:Lcom/htc/fm/BroadcomFMTuner;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 926
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 927
    iget-object v0, p0, Lcom/htc/fm/BroadcomFMTuner$2;->this$0:Lcom/htc/fm/BroadcomFMTuner;

    new-instance v1, Lcom/htc/fm/BroadcomFMTuner$EventHandler;

    iget-object v2, p0, Lcom/htc/fm/BroadcomFMTuner$2;->this$0:Lcom/htc/fm/BroadcomFMTuner;

    invoke-direct {v1, v2, v3}, Lcom/htc/fm/BroadcomFMTuner$EventHandler;-><init>(Lcom/htc/fm/BroadcomFMTuner;Lcom/htc/fm/BroadcomFMTuner$1;)V

    #setter for: Lcom/htc/fm/BroadcomFMTuner;->mEventHandler:Lcom/htc/fm/BroadcomFMTuner$EventHandler;
    invoke-static {v0, v1}, Lcom/htc/fm/BroadcomFMTuner;->access$202(Lcom/htc/fm/BroadcomFMTuner;Lcom/htc/fm/BroadcomFMTuner$EventHandler;)Lcom/htc/fm/BroadcomFMTuner$EventHandler;

    .line 928
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 929
    iget-object v0, p0, Lcom/htc/fm/BroadcomFMTuner$2;->this$0:Lcom/htc/fm/BroadcomFMTuner;

    #setter for: Lcom/htc/fm/BroadcomFMTuner;->mEventHandler:Lcom/htc/fm/BroadcomFMTuner$EventHandler;
    invoke-static {v0, v3}, Lcom/htc/fm/BroadcomFMTuner;->access$202(Lcom/htc/fm/BroadcomFMTuner;Lcom/htc/fm/BroadcomFMTuner$EventHandler;)Lcom/htc/fm/BroadcomFMTuner$EventHandler;

    .line 930
    return-void
.end method
