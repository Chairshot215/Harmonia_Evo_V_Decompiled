.class Lcom/android/camera/component/ThumbnailController$4;
.super Ljava/lang/Object;
.source "ThumbnailController.java"

# interfaces
.implements Lcom/android/camera/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/ThumbnailController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ThumbnailController;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ThumbnailController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ThumbnailController$4;->this$0:Lcom/android/camera/component/ThumbnailController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController$4;->this$0:Lcom/android/camera/component/ThumbnailController;

    invoke-static {v0}, Lcom/android/camera/component/ThumbnailController;->access$006(Lcom/android/camera/component/ThumbnailController;)I

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController$4;->this$0:Lcom/android/camera/component/ThumbnailController;

    #getter for: Lcom/android/camera/component/ThumbnailController;->m_ThumbnailUI:Lcom/android/camera/component/ThumbnailUI;
    invoke-static {v0}, Lcom/android/camera/component/ThumbnailController;->access$100(Lcom/android/camera/component/ThumbnailController;)Lcom/android/camera/component/ThumbnailUI;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController$4;->this$0:Lcom/android/camera/component/ThumbnailController;

    #getter for: Lcom/android/camera/component/ThumbnailController;->m_CapturingMediaCount:I
    invoke-static {v0}, Lcom/android/camera/component/ThumbnailController;->access$000(Lcom/android/camera/component/ThumbnailController;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController$4;->this$0:Lcom/android/camera/component/ThumbnailController;

    iget-object v1, p0, Lcom/android/camera/component/ThumbnailController$4;->this$0:Lcom/android/camera/component/ThumbnailController;

    #getter for: Lcom/android/camera/component/ThumbnailController;->m_ThumbnailUI:Lcom/android/camera/component/ThumbnailUI;
    invoke-static {v1}, Lcom/android/camera/component/ThumbnailController;->access$100(Lcom/android/camera/component/ThumbnailController;)Lcom/android/camera/component/ThumbnailUI;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/component/ThumbnailController;->sendMessage(Lcom/android/camera/component/Component;I)Z

    :cond_0
    return-void
.end method
