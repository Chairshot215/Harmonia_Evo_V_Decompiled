.class Lcom/android/camera/component/ThumbnailUI$9$1;
.super Ljava/lang/Object;
.source "ThumbnailUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ThumbnailUI$9;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/component/ThumbnailUI$9;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ThumbnailUI$9;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ThumbnailUI$9$1;->this$1:Lcom/android/camera/component/ThumbnailUI$9;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI$9$1;->this$1:Lcom/android/camera/component/ThumbnailUI$9;

    iget-object v0, v0, Lcom/android/camera/component/ThumbnailUI$9;->this$0:Lcom/android/camera/component/ThumbnailUI;

    #calls: Lcom/android/camera/component/ThumbnailUI;->startAlbum()V
    invoke-static {v0}, Lcom/android/camera/component/ThumbnailUI;->access$200(Lcom/android/camera/component/ThumbnailUI;)V

    return-void
.end method
