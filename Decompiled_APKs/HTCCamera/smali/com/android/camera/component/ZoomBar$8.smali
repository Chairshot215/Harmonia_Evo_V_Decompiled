.class Lcom/android/camera/component/ZoomBar$8;
.super Ljava/lang/Object;
.source "ZoomBar.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ZoomBar;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ZoomBar;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ZoomBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ZoomBar$8;->this$0:Lcom/android/camera/component/ZoomBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/camera/component/ZoomBar$8;->this$0:Lcom/android/camera/component/ZoomBar;

    #getter for: Lcom/android/camera/component/ZoomBar;->m_IsUpdatingZoom:Z
    invoke-static {v1}, Lcom/android/camera/component/ZoomBar;->access$400(Lcom/android/camera/component/ZoomBar;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/camera/component/ZoomBar$8;->this$0:Lcom/android/camera/component/ZoomBar;

    invoke-virtual {v1}, Lcom/android/camera/component/ZoomBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/component/ZoomBar$8;->this$0:Lcom/android/camera/component/ZoomBar;

    #calls: Lcom/android/camera/component/ZoomBar;->cancelAutoFocus()Z
    invoke-static {v1}, Lcom/android/camera/component/ZoomBar;->access$500(Lcom/android/camera/component/ZoomBar;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/component/ZoomBar$8;->this$0:Lcom/android/camera/component/ZoomBar;

    invoke-virtual {v1}, Lcom/android/camera/component/ZoomBar;->isCaptureUIBlocked()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p3, :cond_2

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v1

    new-instance v2, Lcom/android/camera/UIRequestEvent;

    const-string v3, "Request.CloseEffectPanel"

    invoke-direct {v2, v3, v4}, Lcom/android/camera/UIRequestEvent;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    :cond_2
    iget-object v1, p0, Lcom/android/camera/component/ZoomBar$8;->this$0:Lcom/android/camera/component/ZoomBar;

    #setter for: Lcom/android/camera/component/ZoomBar;->m_IsUpdatingZoom:Z
    invoke-static {v1, v4}, Lcom/android/camera/component/ZoomBar;->access$402(Lcom/android/camera/component/ZoomBar;Z)Z

    invoke-virtual {v0, p2}, Lcom/android/camera/HTCCamera;->changeZoom(I)V

    iget-object v1, p0, Lcom/android/camera/component/ZoomBar$8;->this$0:Lcom/android/camera/component/ZoomBar;

    const/4 v2, 0x0

    #setter for: Lcom/android/camera/component/ZoomBar;->m_IsUpdatingZoom:Z
    invoke-static {v1, v2}, Lcom/android/camera/component/ZoomBar;->access$402(Lcom/android/camera/component/ZoomBar;Z)Z

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
