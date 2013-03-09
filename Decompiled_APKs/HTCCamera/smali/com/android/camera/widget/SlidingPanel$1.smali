.class Lcom/android/camera/widget/SlidingPanel$1;
.super Landroid/os/Handler;
.source "SlidingPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/widget/SlidingPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/widget/SlidingPanel;


# direct methods
.method constructor <init>(Lcom/android/camera/widget/SlidingPanel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/widget/SlidingPanel$1;->this$0:Lcom/android/camera/widget/SlidingPanel;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/widget/SlidingPanel$1;->this$0:Lcom/android/camera/widget/SlidingPanel;

    #calls: Lcom/android/camera/widget/SlidingPanel;->doAnimate()V
    invoke-static {v0}, Lcom/android/camera/widget/SlidingPanel;->access$000(Lcom/android/camera/widget/SlidingPanel;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/widget/SlidingPanel$1;->this$0:Lcom/android/camera/widget/SlidingPanel;

    #getter for: Lcom/android/camera/widget/SlidingPanel;->m_OnPanelCloseListener:Lcom/android/camera/widget/SlidingPanel$OnPanelCloseListener;
    invoke-static {v0}, Lcom/android/camera/widget/SlidingPanel;->access$100(Lcom/android/camera/widget/SlidingPanel;)Lcom/android/camera/widget/SlidingPanel$OnPanelCloseListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/SlidingPanel$1;->this$0:Lcom/android/camera/widget/SlidingPanel;

    #getter for: Lcom/android/camera/widget/SlidingPanel;->m_OnPanelCloseListener:Lcom/android/camera/widget/SlidingPanel$OnPanelCloseListener;
    invoke-static {v0}, Lcom/android/camera/widget/SlidingPanel;->access$100(Lcom/android/camera/widget/SlidingPanel;)Lcom/android/camera/widget/SlidingPanel$OnPanelCloseListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/widget/SlidingPanel$1;->this$0:Lcom/android/camera/widget/SlidingPanel;

    invoke-interface {v0, v1}, Lcom/android/camera/widget/SlidingPanel$OnPanelCloseListener;->onClosed(Lcom/android/camera/widget/SlidingPanel;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/widget/SlidingPanel$1;->this$0:Lcom/android/camera/widget/SlidingPanel;

    #getter for: Lcom/android/camera/widget/SlidingPanel;->m_OnPanelOpenListener:Lcom/android/camera/widget/SlidingPanel$OnPanelOpenListener;
    invoke-static {v0}, Lcom/android/camera/widget/SlidingPanel;->access$200(Lcom/android/camera/widget/SlidingPanel;)Lcom/android/camera/widget/SlidingPanel$OnPanelOpenListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/SlidingPanel$1;->this$0:Lcom/android/camera/widget/SlidingPanel;

    #getter for: Lcom/android/camera/widget/SlidingPanel;->m_OnPanelOpenListener:Lcom/android/camera/widget/SlidingPanel$OnPanelOpenListener;
    invoke-static {v0}, Lcom/android/camera/widget/SlidingPanel;->access$200(Lcom/android/camera/widget/SlidingPanel;)Lcom/android/camera/widget/SlidingPanel$OnPanelOpenListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/widget/SlidingPanel$1;->this$0:Lcom/android/camera/widget/SlidingPanel;

    invoke-interface {v0, v1}, Lcom/android/camera/widget/SlidingPanel$OnPanelOpenListener;->onOpen(Lcom/android/camera/widget/SlidingPanel;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
