.class Lcom/android/camera/component/ZoomBarUI$12;
.super Ljava/lang/Object;
.source "ZoomBarUI.java"

# interfaces
.implements Lcom/android/camera/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ZoomBarUI;->registerListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ZoomBarUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ZoomBarUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ZoomBarUI$12;->this$0:Lcom/android/camera/component/ZoomBarUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 3

    iget-object v1, p0, Lcom/android/camera/component/ZoomBarUI$12;->this$0:Lcom/android/camera/component/ZoomBarUI;

    invoke-virtual {v1}, Lcom/android/camera/component/ZoomBarUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->isAutoFocusing()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/camera/KeyEvent;

    invoke-virtual {v0}, Lcom/android/camera/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/component/ZoomBarUI$12;->this$0:Lcom/android/camera/component/ZoomBarUI;

    #getter for: Lcom/android/camera/component/ZoomBarUI;->m_ZoomLayout:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/android/camera/component/ZoomBarUI;->access$1100(Lcom/android/camera/component/ZoomBarUI;)Landroid/widget/RelativeLayout;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/component/ZoomBarUI$12;->this$0:Lcom/android/camera/component/ZoomBarUI;

    #getter for: Lcom/android/camera/component/ZoomBarUI;->m_ZoomLayout:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/android/camera/component/ZoomBarUI;->access$1100(Lcom/android/camera/component/ZoomBarUI;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_5

    :cond_1
    iget-object v1, p0, Lcom/android/camera/component/ZoomBarUI$12;->this$0:Lcom/android/camera/component/ZoomBarUI;

    invoke-virtual {v1}, Lcom/android/camera/component/ZoomBarUI;->sendShowZoomProgressMessage()V

    :cond_2
    :goto_1
    invoke-virtual {v0}, Lcom/android/camera/KeyEvent;->setHandled()V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/camera/component/ZoomBarUI$12;->this$0:Lcom/android/camera/component/ZoomBarUI;

    #getter for: Lcom/android/camera/component/ZoomBarUI;->m_ZoomLayout:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/android/camera/component/ZoomBarUI;->access$1100(Lcom/android/camera/component/ZoomBarUI;)Landroid/widget/RelativeLayout;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/component/ZoomBarUI$12;->this$0:Lcom/android/camera/component/ZoomBarUI;

    #getter for: Lcom/android/camera/component/ZoomBarUI;->m_ZoomLayout:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/android/camera/component/ZoomBarUI;->access$1100(Lcom/android/camera/component/ZoomBarUI;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/android/camera/component/ZoomBarUI$12;->this$0:Lcom/android/camera/component/ZoomBarUI;

    invoke-virtual {v1}, Lcom/android/camera/component/ZoomBarUI;->sendShowZoomProgressMessage()V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/android/camera/component/ZoomBarUI$12;->this$0:Lcom/android/camera/component/ZoomBarUI;

    #getter for: Lcom/android/camera/component/ZoomBarUI;->m_Zoombar:Lcom/android/camera/widget/ZoomBar_ds;
    invoke-static {v1}, Lcom/android/camera/component/ZoomBarUI;->access$100(Lcom/android/camera/component/ZoomBarUI;)Lcom/android/camera/widget/ZoomBar_ds;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/component/ZoomBarUI$12;->this$0:Lcom/android/camera/component/ZoomBarUI;

    #getter for: Lcom/android/camera/component/ZoomBarUI;->m_Zoombar:Lcom/android/camera/widget/ZoomBar_ds;
    invoke-static {v1}, Lcom/android/camera/component/ZoomBarUI;->access$100(Lcom/android/camera/component/ZoomBarUI;)Lcom/android/camera/widget/ZoomBar_ds;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/widget/ZoomBar_ds;->increasePosition(I)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/android/camera/component/ZoomBarUI$12;->this$0:Lcom/android/camera/component/ZoomBarUI;

    #getter for: Lcom/android/camera/component/ZoomBarUI;->m_Zoombar:Lcom/android/camera/widget/ZoomBar_ds;
    invoke-static {v1}, Lcom/android/camera/component/ZoomBarUI;->access$100(Lcom/android/camera/component/ZoomBarUI;)Lcom/android/camera/widget/ZoomBar_ds;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/component/ZoomBarUI$12;->this$0:Lcom/android/camera/component/ZoomBarUI;

    #getter for: Lcom/android/camera/component/ZoomBarUI;->m_Zoombar:Lcom/android/camera/widget/ZoomBar_ds;
    invoke-static {v1}, Lcom/android/camera/component/ZoomBarUI;->access$100(Lcom/android/camera/component/ZoomBarUI;)Lcom/android/camera/widget/ZoomBar_ds;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/widget/ZoomBar_ds;->increasePosition(I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
