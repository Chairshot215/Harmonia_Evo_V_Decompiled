.class Lcom/android/camera/component/ThumbnailController$3;
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

    iput-object p1, p0, Lcom/android/camera/component/ThumbnailController$3;->this$0:Lcom/android/camera/component/ThumbnailController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 2

    instance-of v0, p1, Lcom/android/camera/PictureSavedEvent;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/android/camera/PictureSavedEvent;

    invoke-virtual {v0}, Lcom/android/camera/PictureSavedEvent;->isLastPicture()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController$3;->this$0:Lcom/android/camera/component/ThumbnailController;

    check-cast p1, Lcom/android/camera/MediaEvent;

    invoke-virtual {p1}, Lcom/android/camera/MediaEvent;->getFilePath()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/camera/component/ThumbnailController;->m_LatestSavedMediaFilePath:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/camera/component/ThumbnailController;->access$302(Lcom/android/camera/component/ThumbnailController;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController$3;->this$0:Lcom/android/camera/component/ThumbnailController;

    #calls: Lcom/android/camera/component/ThumbnailController;->onMediaSaved()V
    invoke-static {v0}, Lcom/android/camera/component/ThumbnailController;->access$400(Lcom/android/camera/component/ThumbnailController;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController$3;->this$0:Lcom/android/camera/component/ThumbnailController;

    check-cast p1, Lcom/android/camera/MediaEvent;

    invoke-virtual {p1}, Lcom/android/camera/MediaEvent;->getFilePath()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/camera/component/ThumbnailController;->m_LatestSavedMediaFilePath:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/camera/component/ThumbnailController;->access$302(Lcom/android/camera/component/ThumbnailController;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController$3;->this$0:Lcom/android/camera/component/ThumbnailController;

    #calls: Lcom/android/camera/component/ThumbnailController;->onMediaSaved()V
    invoke-static {v0}, Lcom/android/camera/component/ThumbnailController;->access$400(Lcom/android/camera/component/ThumbnailController;)V

    goto :goto_0
.end method
