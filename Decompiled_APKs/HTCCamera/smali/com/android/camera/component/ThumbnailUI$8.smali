.class Lcom/android/camera/component/ThumbnailUI$8;
.super Ljava/lang/Object;
.source "ThumbnailUI.java"

# interfaces
.implements Lcom/android/camera/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/ThumbnailUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ThumbnailUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ThumbnailUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ThumbnailUI$8;->this$0:Lcom/android/camera/component/ThumbnailUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI$8;->this$0:Lcom/android/camera/component/ThumbnailUI;

    const/4 v1, 0x1

    #setter for: Lcom/android/camera/component/ThumbnailUI;->m_IsSwitchingMode:Z
    invoke-static {v0, v1}, Lcom/android/camera/component/ThumbnailUI;->access$802(Lcom/android/camera/component/ThumbnailUI;Z)Z

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI$8;->this$0:Lcom/android/camera/component/ThumbnailUI;

    iget-object v1, p0, Lcom/android/camera/component/ThumbnailUI$8;->this$0:Lcom/android/camera/component/ThumbnailUI;

    #getter for: Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailButtonContainer:Landroid/view/View;
    invoke-static {v1}, Lcom/android/camera/component/ThumbnailUI;->access$400(Lcom/android/camera/component/ThumbnailUI;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/camera/component/ThumbnailUI;->showUI(Landroid/view/View;ZZ)V

    return-void
.end method
