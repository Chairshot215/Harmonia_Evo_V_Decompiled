.class Lcom/android/camera/HTCSnapbooth$9;
.super Ljava/lang/Object;
.source "HTCSnapbooth.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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

    iput-object p1, p0, Lcom/android/camera/HTCSnapbooth$9;->this$0:Lcom/android/camera/HTCSnapbooth;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$9;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mCurrentAlertDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$3000(Lcom/android/camera/HTCSnapbooth;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$9;->this$0:Lcom/android/camera/HTCSnapbooth;

    const/4 v1, 0x1

    #setter for: Lcom/android/camera/HTCSnapbooth;->mIsShareDialogCanceled:Z
    invoke-static {v0, v1}, Lcom/android/camera/HTCSnapbooth;->access$3102(Lcom/android/camera/HTCSnapbooth;Z)Z

    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth$9;->this$0:Lcom/android/camera/HTCSnapbooth;

    #getter for: Lcom/android/camera/HTCSnapbooth;->mUIHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/HTCSnapbooth;->access$1000(Lcom/android/camera/HTCSnapbooth;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xc

    const-wide/16 v2, 0x7d0

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    :cond_0
    return-void
.end method
