.class Lcom/android/camera/component/BurstUI$5;
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

    iput-object p1, p0, Lcom/android/camera/component/BurstUI$5;->this$0:Lcom/android/camera/component/BurstUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 6

    move-object v0, p1

    check-cast v0, Lcom/android/camera/ThumbnailButtonClickedEvent;

    invoke-virtual {v0}, Lcom/android/camera/ThumbnailButtonClickedEvent;->getMediaFilePath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, ".+/[0-9]{3}BURST/[^/]+$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/component/BurstUI$5;->this$0:Lcom/android/camera/component/BurstUI;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/camera/component/BurstUI;->access$600(Lcom/android/camera/component/BurstUI;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Start album by BurstUI"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/component/BurstUI$5;->this$0:Lcom/android/camera/component/BurstUI;

    invoke-virtual {v2}, Lcom/android/camera/component/BurstUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    const-string v3, "com.htc.album.action.VIEW_BURST_SHOTS"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "image/jpeg"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/camera/HTCCamera;->startAlbum(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/camera/ThumbnailButtonClickedEvent;->setHandled()V

    :cond_0
    return-void
.end method
