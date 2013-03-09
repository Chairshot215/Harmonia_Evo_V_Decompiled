.class Lcom/scalado/camera/autorama/Autorama$ShutterCallbackHandler;
.super Ljava/lang/Object;
.source "Autorama.java"

# interfaces
.implements Lcom/scalado/camera/Camera$ShutterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/camera/autorama/Autorama;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShutterCallbackHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scalado/camera/autorama/Autorama;


# direct methods
.method private constructor <init>(Lcom/scalado/camera/autorama/Autorama;)V
    .locals 0
    .parameter

    .prologue
    .line 1002
    iput-object p1, p0, Lcom/scalado/camera/autorama/Autorama$ShutterCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/camera/autorama/Autorama$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1002
    invoke-direct {p0, p1}, Lcom/scalado/camera/autorama/Autorama$ShutterCallbackHandler;-><init>(Lcom/scalado/camera/autorama/Autorama;)V

    return-void
.end method


# virtual methods
.method public onShutter()V
    .locals 2

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama$ShutterCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mAutoramaListener:Lcom/scalado/camera/autorama/Autorama$AutoramaListener;
    invoke-static {v0}, Lcom/scalado/camera/autorama/Autorama;->access$1500(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/autorama/Autorama$AutoramaListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1006
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama$ShutterCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mAutoramaListener:Lcom/scalado/camera/autorama/Autorama$AutoramaListener;
    invoke-static {v0}, Lcom/scalado/camera/autorama/Autorama;->access$1500(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/autorama/Autorama$AutoramaListener;

    move-result-object v0

    iget-object v1, p0, Lcom/scalado/camera/autorama/Autorama$ShutterCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mCapturedImages:I
    invoke-static {v1}, Lcom/scalado/camera/autorama/Autorama;->access$700(Lcom/scalado/camera/autorama/Autorama;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/scalado/camera/autorama/Autorama$AutoramaListener;->onIntermediateShutter(I)V

    .line 1008
    :cond_0
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama$ShutterCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mTracker:Lcom/scalado/caps/autorama/ViewfinderTracker;
    invoke-static {v0}, Lcom/scalado/camera/autorama/Autorama;->access$3100(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/caps/autorama/ViewfinderTracker;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1009
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama$ShutterCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mTracker:Lcom/scalado/caps/autorama/ViewfinderTracker;
    invoke-static {v0}, Lcom/scalado/camera/autorama/Autorama;->access$3100(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/caps/autorama/ViewfinderTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scalado/caps/autorama/ViewfinderTracker;->reset()V

    .line 1011
    :cond_1
    return-void
.end method
