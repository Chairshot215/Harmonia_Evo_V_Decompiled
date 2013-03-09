.class Lcom/android/camera/component/BurstUI$2;
.super Ljava/lang/Object;
.source "BurstUI.java"

# interfaces
.implements Lcom/android/camera/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/BurstUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/BurstUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/BurstUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/BurstUI$2;->this$0:Lcom/android/camera/component/BurstUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/BurstUI$2;->this$0:Lcom/android/camera/component/BurstUI;

    #getter for: Lcom/android/camera/component/BurstUI;->m_IsModeEntered:Z
    invoke-static {v0}, Lcom/android/camera/component/BurstUI;->access$100(Lcom/android/camera/component/BurstUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/BurstUI$2;->this$0:Lcom/android/camera/component/BurstUI;

    #getter for: Lcom/android/camera/component/BurstUI;->m_HideEventHandler:Lcom/android/camera/IEventHandler;
    invoke-static {v0}, Lcom/android/camera/component/BurstUI;->access$200(Lcom/android/camera/component/BurstUI;)Lcom/android/camera/IEventHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/IEventHandler;->onEvent(Lcom/android/camera/Event;)V

    iget-object v0, p0, Lcom/android/camera/component/BurstUI$2;->this$0:Lcom/android/camera/component/BurstUI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/component/BurstUI;->showProcessingDialog(Z)V

    iget-object v0, p0, Lcom/android/camera/component/BurstUI$2;->this$0:Lcom/android/camera/component/BurstUI;

    invoke-virtual {v0}, Lcom/android/camera/component/BurstUI;->collapseContentLayout()V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/BurstUI$2;->this$0:Lcom/android/camera/component/BurstUI;

    invoke-static {v0}, Lcom/android/camera/component/BurstUI;->access$304(Lcom/android/camera/component/BurstUI;)J

    return-void
.end method
