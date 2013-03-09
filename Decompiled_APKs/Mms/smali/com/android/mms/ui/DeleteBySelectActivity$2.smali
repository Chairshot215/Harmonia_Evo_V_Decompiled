.class Lcom/android/mms/ui/DeleteBySelectActivity$2;
.super Ljava/lang/Object;
.source "DeleteBySelectActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/DeleteBySelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/DeleteBySelectActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/DeleteBySelectActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 481
    iput-object p1, p0, Lcom/android/mms/ui/DeleteBySelectActivity$2;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 483
    const-string v1, "DeleteBySelectActivity"

    const-string v2, "CancelDeleting...."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    invoke-static {}, Lcom/android/mms/ui/DeleteBySelectActivity;->CancelDeletion()V

    .line 487
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/DeleteBySelectActivity$2;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    #getter for: Lcom/android/mms/ui/DeleteBySelectActivity;->mDeleteProgressDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/android/mms/ui/DeleteBySelectActivity;->access$700(Lcom/android/mms/ui/DeleteBySelectActivity;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 488
    iget-object v1, p0, Lcom/android/mms/ui/DeleteBySelectActivity$2;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    #getter for: Lcom/android/mms/ui/DeleteBySelectActivity;->mDeleteProgressDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/android/mms/ui/DeleteBySelectActivity;->access$700(Lcom/android/mms/ui/DeleteBySelectActivity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 489
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/DeleteBySelectActivity$2;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    const/4 v2, 0x0

    #setter for: Lcom/android/mms/ui/DeleteBySelectActivity;->mDeleteProgressDialog:Landroid/app/Dialog;
    invoke-static {v1, v2}, Lcom/android/mms/ui/DeleteBySelectActivity;->access$702(Lcom/android/mms/ui/DeleteBySelectActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/DeleteBySelectActivity$2;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    #calls: Lcom/android/mms/ui/DeleteBySelectActivity;->releaseWakeLock()V
    invoke-static {v1}, Lcom/android/mms/ui/DeleteBySelectActivity;->access$800(Lcom/android/mms/ui/DeleteBySelectActivity;)V

    .line 497
    iget-object v1, p0, Lcom/android/mms/ui/DeleteBySelectActivity$2;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/DeleteBySelectActivity;->finish()V

    .line 498
    return-void

    .line 491
    :catch_0
    move-exception v0

    .line 493
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method
