.class Lcom/htc/painting/engine/HtcPainting$2;
.super Ljava/lang/Object;
.source "HtcPainting.java"

# interfaces
.implements Lcom/htc/painting/engine/Request;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/painting/engine/HtcPainting;->destroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/painting/engine/HtcPainting;


# direct methods
.method constructor <init>(Lcom/htc/painting/engine/HtcPainting;)V
    .locals 0
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lcom/htc/painting/engine/HtcPainting$2;->this$0:Lcom/htc/painting/engine/HtcPainting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 208
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting$2;->this$0:Lcom/htc/painting/engine/HtcPainting;

    #calls: Lcom/htc/painting/engine/HtcPainting;->saveCachedGroups()V
    invoke-static {v0}, Lcom/htc/painting/engine/HtcPainting;->access$600(Lcom/htc/painting/engine/HtcPainting;)V

    .line 209
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting$2;->this$0:Lcom/htc/painting/engine/HtcPainting;

    #getter for: Lcom/htc/painting/engine/HtcPainting;->mSaveHandler:Lcom/htc/painting/engine/RequestHandler;
    invoke-static {v0}, Lcom/htc/painting/engine/HtcPainting;->access$700(Lcom/htc/painting/engine/HtcPainting;)Lcom/htc/painting/engine/RequestHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/painting/engine/RequestHandler;->postQuit()V

    .line 210
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting$2;->this$0:Lcom/htc/painting/engine/HtcPainting;

    #setter for: Lcom/htc/painting/engine/HtcPainting;->mSaveHandler:Lcom/htc/painting/engine/RequestHandler;
    invoke-static {v0, v1}, Lcom/htc/painting/engine/HtcPainting;->access$702(Lcom/htc/painting/engine/HtcPainting;Lcom/htc/painting/engine/RequestHandler;)Lcom/htc/painting/engine/RequestHandler;

    .line 211
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPainting$2;->this$0:Lcom/htc/painting/engine/HtcPainting;

    #setter for: Lcom/htc/painting/engine/HtcPainting;->mSaveWorker:Landroid/os/HandlerThread;
    invoke-static {v0, v1}, Lcom/htc/painting/engine/HtcPainting;->access$802(Lcom/htc/painting/engine/HtcPainting;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;

    .line 212
    return-void
.end method
