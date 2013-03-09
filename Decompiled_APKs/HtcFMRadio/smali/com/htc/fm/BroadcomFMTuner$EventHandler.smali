.class Lcom/htc/fm/BroadcomFMTuner$EventHandler;
.super Landroid/os/Handler;
.source "BroadcomFMTuner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fm/BroadcomFMTuner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fm/BroadcomFMTuner;


# direct methods
.method private constructor <init>(Lcom/htc/fm/BroadcomFMTuner;)V
    .locals 0
    .parameter

    .prologue
    .line 957
    iput-object p1, p0, Lcom/htc/fm/BroadcomFMTuner$EventHandler;->this$0:Lcom/htc/fm/BroadcomFMTuner;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/fm/BroadcomFMTuner;Lcom/htc/fm/BroadcomFMTuner$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 957
    invoke-direct {p0, p1}, Lcom/htc/fm/BroadcomFMTuner$EventHandler;-><init>(Lcom/htc/fm/BroadcomFMTuner;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 961
    iget-object v0, p0, Lcom/htc/fm/BroadcomFMTuner$EventHandler;->this$0:Lcom/htc/fm/BroadcomFMTuner;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Lcom/htc/fm/BroadcomFMTuner;->handleEvent(I)V

    .line 962
    return-void
.end method
