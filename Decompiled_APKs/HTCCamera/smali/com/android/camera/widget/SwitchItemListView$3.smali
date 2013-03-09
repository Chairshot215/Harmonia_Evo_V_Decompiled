.class Lcom/android/camera/widget/SwitchItemListView$3;
.super Ljava/lang/Object;
.source "SwitchItemListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/widget/SwitchItemListView;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/widget/SwitchItemListView;


# direct methods
.method constructor <init>(Lcom/android/camera/widget/SwitchItemListView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/widget/SwitchItemListView$3;->this$0:Lcom/android/camera/widget/SwitchItemListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p3, :pswitch_data_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/camera/widget/SwitchItemListView$3;->this$0:Lcom/android/camera/widget/SwitchItemListView;

    #getter for: Lcom/android/camera/widget/SwitchItemListView;->m_CameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v1}, Lcom/android/camera/widget/SwitchItemListView;->access$300(Lcom/android/camera/widget/SwitchItemListView;)Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v1

    const-string v2, "SameMenuItem.Selected"

    invoke-virtual {v1, v2}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/android/camera/widget/SwitchItemListView$3;->this$0:Lcom/android/camera/widget/SwitchItemListView;

    #getter for: Lcom/android/camera/widget/SwitchItemListView;->m_CameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/widget/SwitchItemListView;->access$300(Lcom/android/camera/widget/SwitchItemListView;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    sget-object v3, Lcom/android/camera/IntentManager$RequestMode;->Main:Lcom/android/camera/IntentManager$RequestMode;

    invoke-virtual {v2, v3}, Lcom/android/camera/HTCCamera;->isRequestMode(Lcom/android/camera/IntentManager$RequestMode;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/widget/SwitchItemListView$3;->this$0:Lcom/android/camera/widget/SwitchItemListView;

    #getter for: Lcom/android/camera/widget/SwitchItemListView;->m_CameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/widget/SwitchItemListView;->access$300(Lcom/android/camera/widget/SwitchItemListView;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    sget-object v3, Lcom/android/camera/IntentManager$RequestName;->Album:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v2, v3}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    iget-object v2, p0, Lcom/android/camera/widget/SwitchItemListView$3;->this$0:Lcom/android/camera/widget/SwitchItemListView;

    #getter for: Lcom/android/camera/widget/SwitchItemListView;->m_CameraThread:Lcom/android/camera/CameraThread;
    invoke-static {v2}, Lcom/android/camera/widget/SwitchItemListView;->access$400(Lcom/android/camera/widget/SwitchItemListView;)Lcom/android/camera/CameraThread;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/widget/SwitchItemListView$3;->this$0:Lcom/android/camera/widget/SwitchItemListView;

    #getter for: Lcom/android/camera/widget/SwitchItemListView;->m_CameraThread:Lcom/android/camera/CameraThread;
    invoke-static {v2}, Lcom/android/camera/widget/SwitchItemListView;->access$400(Lcom/android/camera/widget/SwitchItemListView;)Lcom/android/camera/CameraThread;

    move-result-object v2

    iget v2, v2, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v2, :cond_2

    :goto_1
    iget-object v1, p0, Lcom/android/camera/widget/SwitchItemListView$3;->this$0:Lcom/android/camera/widget/SwitchItemListView;

    #getter for: Lcom/android/camera/widget/SwitchItemListView;->m_CameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v1}, Lcom/android/camera/widget/SwitchItemListView;->access$300(Lcom/android/camera/widget/SwitchItemListView;)Lcom/android/camera/HTCCamera;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/widget/SwitchItemListView$3;->this$0:Lcom/android/camera/widget/SwitchItemListView;

    #getter for: Lcom/android/camera/widget/SwitchItemListView;->m_CameraThread:Lcom/android/camera/CameraThread;
    invoke-static {v2}, Lcom/android/camera/widget/SwitchItemListView;->access$400(Lcom/android/camera/widget/SwitchItemListView;)Lcom/android/camera/CameraThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/HTCCamera;->switchMode(ZI)Z

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :pswitch_1
    iget-object v2, p0, Lcom/android/camera/widget/SwitchItemListView$3;->this$0:Lcom/android/camera/widget/SwitchItemListView;

    #getter for: Lcom/android/camera/widget/SwitchItemListView;->m_CameraThread:Lcom/android/camera/CameraThread;
    invoke-static {v2}, Lcom/android/camera/widget/SwitchItemListView;->access$400(Lcom/android/camera/widget/SwitchItemListView;)Lcom/android/camera/CameraThread;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/widget/SwitchItemListView$3;->this$0:Lcom/android/camera/widget/SwitchItemListView;

    #getter for: Lcom/android/camera/widget/SwitchItemListView;->m_CameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/widget/SwitchItemListView;->access$300(Lcom/android/camera/widget/SwitchItemListView;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/widget/SwitchItemListView$3;->this$0:Lcom/android/camera/widget/SwitchItemListView;

    #getter for: Lcom/android/camera/widget/SwitchItemListView;->m_CameraThread:Lcom/android/camera/CameraThread;
    invoke-static {v3}, Lcom/android/camera/widget/SwitchItemListView;->access$400(Lcom/android/camera/widget/SwitchItemListView;)Lcom/android/camera/CameraThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v3

    if-nez v3, :cond_3

    :goto_2
    iget-object v1, p0, Lcom/android/camera/widget/SwitchItemListView$3;->this$0:Lcom/android/camera/widget/SwitchItemListView;

    #getter for: Lcom/android/camera/widget/SwitchItemListView;->m_CameraThread:Lcom/android/camera/CameraThread;
    invoke-static {v1}, Lcom/android/camera/widget/SwitchItemListView;->access$400(Lcom/android/camera/widget/SwitchItemListView;)Lcom/android/camera/CameraThread;

    move-result-object v1

    iget v1, v1, Lcom/android/camera/CameraThread;->mMode:I

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/HTCCamera;->switchMode(ZI)Z

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
