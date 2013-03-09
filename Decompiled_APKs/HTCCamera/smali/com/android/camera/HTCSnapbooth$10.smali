.class Lcom/android/camera/HTCSnapbooth$10;
.super Ljava/lang/Object;
.source "HTCSnapbooth.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/HTCSnapbooth;->showShareImageChooser(I)V
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

    iput-object p1, p0, Lcom/android/camera/HTCSnapbooth$10;->this$0:Lcom/android/camera/HTCSnapbooth;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$10;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mCurrentAlertDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$3000(Lcom/android/camera/HTCSnapbooth;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$10;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mIsShareDialogCanceled:Z
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$3100(Lcom/android/camera/HTCSnapbooth;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$10;->this$0:Lcom/android/camera/HTCSnapbooth;

    const/4 v1, 0x0

    const/4 v2, 0x1

    #calls: Lcom/android/camera/HTCSnapbooth;->closeReviewScreen(ZZ)V
    invoke-static {v0, v1, v2}, Lcom/android/camera/HTCSnapbooth;->access$1700(Lcom/android/camera/HTCSnapbooth;ZZ)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$10;->this$0:Lcom/android/camera/HTCSnapbooth;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/HTCSnapbooth;->mCurrentAlertDialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/android/camera/HTCSnapbooth;->access$3002(Lcom/android/camera/HTCSnapbooth;Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_1
    return-void
.end method
