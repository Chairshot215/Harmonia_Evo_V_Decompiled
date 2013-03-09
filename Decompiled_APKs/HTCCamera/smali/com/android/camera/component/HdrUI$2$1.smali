.class Lcom/android/camera/component/HdrUI$2$1;
.super Ljava/lang/Object;
.source "HdrUI.java"

# interfaces
.implements Lcom/android/camera/AnimationManager$AlphaRotateAnimationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/HdrUI$2;->onEvent(Lcom/android/camera/Event;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/component/HdrUI$2;


# direct methods
.method constructor <init>(Lcom/android/camera/component/HdrUI$2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/HdrUI$2$1;->this$1:Lcom/android/camera/component/HdrUI$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateOrientation(Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/HdrUI$2$1;->this$1:Lcom/android/camera/component/HdrUI$2;

    iget-object v0, v0, Lcom/android/camera/component/HdrUI$2;->this$0:Lcom/android/camera/component/HdrUI;

    #calls: Lcom/android/camera/component/HdrUI;->updateIndicatorOrientation(I)V
    invoke-static {v0, p2}, Lcom/android/camera/component/HdrUI;->access$300(Lcom/android/camera/component/HdrUI;I)V

    return-void
.end method
