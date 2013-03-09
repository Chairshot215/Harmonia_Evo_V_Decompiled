.class Lcom/android/camera/HTCSnapbooth$15;
.super Ljava/lang/Object;
.source "HTCSnapbooth.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/HTCSnapbooth;->showReviewScreen(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/HTCSnapbooth;

.field final synthetic val$freezeUIOrientation:I


# direct methods
.method constructor <init>(Lcom/android/camera/HTCSnapbooth;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/HTCSnapbooth$15;->this$0:Lcom/android/camera/HTCSnapbooth;

    iput p2, p0, Lcom/android/camera/HTCSnapbooth$15;->val$freezeUIOrientation:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$15;->this$0:Lcom/android/camera/HTCSnapbooth;

    invoke-virtual {v0}, Lcom/android/camera/HTCSnapbooth;->isServiceMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$15;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mIsReviewScreenVisible:Z
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$3400(Lcom/android/camera/HTCSnapbooth;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$15;->this$0:Lcom/android/camera/HTCSnapbooth;

    iget v1, p0, Lcom/android/camera/HTCSnapbooth$15;->val$freezeUIOrientation:I

    #calls: Lcom/android/camera/HTCSnapbooth;->showShareImageChooser(I)V
    invoke-static {v0, v1}, Lcom/android/camera/HTCSnapbooth;->access$3500(Lcom/android/camera/HTCSnapbooth;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$15;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mIsReviewScreenVisible:Z
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$3400(Lcom/android/camera/HTCSnapbooth;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$15;->this$0:Lcom/android/camera/HTCSnapbooth;

    iget v1, p0, Lcom/android/camera/HTCSnapbooth$15;->val$freezeUIOrientation:I

    #calls: Lcom/android/camera/HTCSnapbooth;->doneForServiceMode(I)V
    invoke-static {v0, v1}, Lcom/android/camera/HTCSnapbooth;->access$3600(Lcom/android/camera/HTCSnapbooth;I)V

    goto :goto_0
.end method
