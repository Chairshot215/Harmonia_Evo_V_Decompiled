.class Lcom/android/camera/component/ThumbnailUI$10;
.super Ljava/lang/Object;
.source "ThumbnailUI.java"

# interfaces
.implements Lcom/android/camera/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ThumbnailUI;->registerListeners()V
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

    iput-object p1, p0, Lcom/android/camera/component/ThumbnailUI$10;->this$0:Lcom/android/camera/component/ThumbnailUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI$10;->this$0:Lcom/android/camera/component/ThumbnailUI;

    #getter for: Lcom/android/camera/component/ThumbnailUI;->m_IsRecording:Z
    invoke-static {v0}, Lcom/android/camera/component/ThumbnailUI;->access$700(Lcom/android/camera/component/ThumbnailUI;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI$10;->this$0:Lcom/android/camera/component/ThumbnailUI;

    #calls: Lcom/android/camera/component/ThumbnailUI;->showThumbnailButton(ZZ)V
    invoke-static {v0, v1, v1}, Lcom/android/camera/component/ThumbnailUI;->access$600(Lcom/android/camera/component/ThumbnailUI;ZZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI$10;->this$0:Lcom/android/camera/component/ThumbnailUI;

    #setter for: Lcom/android/camera/component/ThumbnailUI;->m_HasPendingClickEvent:Z
    invoke-static {v0, v1}, Lcom/android/camera/component/ThumbnailUI;->access$302(Lcom/android/camera/component/ThumbnailUI;Z)Z

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI$10;->this$0:Lcom/android/camera/component/ThumbnailUI;

    #calls: Lcom/android/camera/component/ThumbnailUI;->showThumbnailButton(ZZ)V
    invoke-static {v0, v1, v1}, Lcom/android/camera/component/ThumbnailUI;->access$600(Lcom/android/camera/component/ThumbnailUI;ZZ)V

    goto :goto_0
.end method
