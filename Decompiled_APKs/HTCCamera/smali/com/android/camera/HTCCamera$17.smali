.class Lcom/android/camera/HTCCamera$17;
.super Ljava/lang/Object;
.source "HTCCamera.java"

# interfaces
.implements Lcom/android/camera/widget/SlidingDrawer$OnDrawerOpenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/HTCCamera;->doOnCreate_after_preview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/HTCCamera;


# direct methods
.method constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/HTCCamera$17;->this$0:Lcom/android/camera/HTCCamera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawerOpened()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera$17;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mSubMenu_layout:Lcom/android/camera/widget/SlidingDrawer;
    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$11700(Lcom/android/camera/HTCCamera;)Lcom/android/camera/widget/SlidingDrawer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/widget/SlidingDrawer;->requestFocus()Z

    return-void
.end method
