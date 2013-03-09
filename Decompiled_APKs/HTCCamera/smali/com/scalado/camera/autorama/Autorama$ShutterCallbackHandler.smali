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

    iput-object p1, p0, Lcom/scalado/camera/autorama/Autorama$ShutterCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/camera/autorama/Autorama$ShutterCallbackHandler;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/scalado/camera/autorama/Autorama$ShutterCallbackHandler;-><init>(Lcom/scalado/camera/autorama/Autorama;)V

    return-void
.end method


# virtual methods
.method public onShutter()V
    .locals 2

    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama$ShutterCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mCapturedImages:I
    invoke-static {v0}, Lcom/scalado/camera/autorama/Autorama;->access$2(Lcom/scalado/camera/autorama/Autorama;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    #setter for: Lcom/scalado/camera/autorama/Autorama;->mCapturedImages:I
    invoke-static {v0, v1}, Lcom/scalado/camera/autorama/Autorama;->access$25(Lcom/scalado/camera/autorama/Autorama;I)V

    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama$ShutterCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mAutoramaListener:Lcom/scalado/camera/autorama/Autorama$AutoramaListener;
    invoke-static {v0}, Lcom/scalado/camera/autorama/Autorama;->access$23(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/autorama/Autorama$AutoramaListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama$ShutterCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mAutoramaListener:Lcom/scalado/camera/autorama/Autorama$AutoramaListener;
    invoke-static {v0}, Lcom/scalado/camera/autorama/Autorama;->access$23(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/autorama/Autorama$AutoramaListener;

    move-result-object v0

    iget-object v1, p0, Lcom/scalado/camera/autorama/Autorama$ShutterCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mCapturedImages:I
    invoke-static {v1}, Lcom/scalado/camera/autorama/Autorama;->access$2(Lcom/scalado/camera/autorama/Autorama;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Lcom/scalado/camera/autorama/Autorama$AutoramaListener;->onIntermediateShutter(I)V

    :cond_0
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama$ShutterCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    iget-object v1, p0, Lcom/scalado/camera/autorama/Autorama$ShutterCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mTrackerTransform:Lcom/scalado/caps/autorama/Transform;
    invoke-static {v1}, Lcom/scalado/camera/autorama/Autorama;->access$22(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/caps/autorama/Transform;

    move-result-object v1

    #setter for: Lcom/scalado/camera/autorama/Autorama;->mTransformAtLastShutterCallback:Lcom/scalado/caps/autorama/Transform;
    invoke-static {v0, v1}, Lcom/scalado/camera/autorama/Autorama;->access$26(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/caps/autorama/Transform;)V

    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama$ShutterCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mTracker:Lcom/scalado/caps/autorama/ViewfinderTracker;
    invoke-static {v0}, Lcom/scalado/camera/autorama/Autorama;->access$19(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/caps/autorama/ViewfinderTracker;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama$ShutterCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mTracker:Lcom/scalado/caps/autorama/ViewfinderTracker;
    invoke-static {v0}, Lcom/scalado/camera/autorama/Autorama;->access$19(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/caps/autorama/ViewfinderTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scalado/caps/autorama/ViewfinderTracker;->reset()V

    :cond_1
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama$ShutterCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    iget-object v0, v0, Lcom/scalado/camera/autorama/Autorama;->mAutoramaOptions:Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;

    #getter for: Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mNumberOfImages:I
    invoke-static {v0}, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->access$4(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama$ShutterCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mCapturedImages:I
    invoke-static {v0}, Lcom/scalado/camera/autorama/Autorama;->access$2(Lcom/scalado/camera/autorama/Autorama;)I

    move-result v0

    iget-object v1, p0, Lcom/scalado/camera/autorama/Autorama$ShutterCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    iget-object v1, v1, Lcom/scalado/camera/autorama/Autorama;->mAutoramaOptions:Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;

    #getter for: Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mNumberOfImages:I
    invoke-static {v1}, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->access$4(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)I

    move-result v1

    if-ge v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama$ShutterCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #getter for: Lcom/scalado/camera/autorama/Autorama;->mStopRequested:Z
    invoke-static {v0}, Lcom/scalado/camera/autorama/Autorama;->access$27(Lcom/scalado/camera/autorama/Autorama;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama$ShutterCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    const/4 v1, 0x1

    #setter for: Lcom/scalado/camera/autorama/Autorama;->mCapturingFinished:Z
    invoke-static {v0, v1}, Lcom/scalado/camera/autorama/Autorama;->access$28(Lcom/scalado/camera/autorama/Autorama;Z)V

    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama$ShutterCallbackHandler;->this$0:Lcom/scalado/camera/autorama/Autorama;

    #calls: Lcom/scalado/camera/autorama/Autorama;->stopTracking()V
    invoke-static {v0}, Lcom/scalado/camera/autorama/Autorama;->access$29(Lcom/scalado/camera/autorama/Autorama;)V

    :cond_4
    return-void
.end method
