.class Lcom/android/camera/widget/ImagePropertyItem$2;
.super Ljava/lang/Object;
.source "ImagePropertyItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/widget/ImagePropertyItem;->initialize(ILcom/android/camera/CameraThread;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/widget/ImagePropertyItem;


# direct methods
.method constructor <init>(Lcom/android/camera/widget/ImagePropertyItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/widget/ImagePropertyItem$2;->this$0:Lcom/android/camera/widget/ImagePropertyItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem$2;->this$0:Lcom/android/camera/widget/ImagePropertyItem;

    #calls: Lcom/android/camera/widget/ImagePropertyItem;->increaseLevel()V
    invoke-static {v0}, Lcom/android/camera/widget/ImagePropertyItem;->access$200(Lcom/android/camera/widget/ImagePropertyItem;)V

    iget-object v0, p0, Lcom/android/camera/widget/ImagePropertyItem$2;->this$0:Lcom/android/camera/widget/ImagePropertyItem;

    #getter for: Lcom/android/camera/widget/ImagePropertyItem;->m_Context:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/camera/widget/ImagePropertyItem;->access$100(Lcom/android/camera/widget/ImagePropertyItem;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x16

    const-wide/16 v2, 0x1f40

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/MessageHandler;->sendUniqueEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    return-void
.end method
