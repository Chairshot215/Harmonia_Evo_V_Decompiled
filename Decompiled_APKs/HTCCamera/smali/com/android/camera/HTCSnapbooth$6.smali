.class Lcom/android/camera/HTCSnapbooth$6;
.super Ljava/lang/Object;
.source "HTCSnapbooth.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/HTCSnapbooth;->setupUIElements()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/HTCSnapbooth;


# direct methods
.method constructor <init>(Lcom/android/camera/HTCSnapbooth;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/HTCSnapbooth$6;->this$0:Lcom/android/camera/HTCSnapbooth;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$6;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mCaptureLayout:Landroid/view/View;
    invoke-static {v1}, Lcom/android/camera/HTCSnapbooth;->access$2700(Lcom/android/camera/HTCSnapbooth;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$6;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mCaptureCancelable:Z
    invoke-static {v1}, Lcom/android/camera/HTCSnapbooth;->access$400(Lcom/android/camera/HTCSnapbooth;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$6;->this$0:Lcom/android/camera/HTCSnapbooth;

    #calls: Lcom/android/camera/HTCSnapbooth;->capture()Z
    invoke-static {v1}, Lcom/android/camera/HTCSnapbooth;->access$2800(Lcom/android/camera/HTCSnapbooth;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth$6;->this$0:Lcom/android/camera/HTCSnapbooth;

    #calls: Lcom/android/camera/HTCSnapbooth;->cancelCapture()V
    invoke-static {v1}, Lcom/android/camera/HTCSnapbooth;->access$2900(Lcom/android/camera/HTCSnapbooth;)V

    goto :goto_0
.end method
