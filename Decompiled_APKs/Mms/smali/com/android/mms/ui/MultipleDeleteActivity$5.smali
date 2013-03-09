.class Lcom/android/mms/ui/MultipleDeleteActivity$5;
.super Ljava/lang/Object;
.source "MultipleDeleteActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MultipleDeleteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MultipleDeleteActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MultipleDeleteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 977
    iput-object p1, p0, Lcom/android/mms/ui/MultipleDeleteActivity$5;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 979
    const-string v1, "MultipleDeleteActivity"

    const-string v2, "CancelDeleting...."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    invoke-static {}, Lcom/android/mms/ui/MultipleDeleteActivity;->CancelDeletion()V

    .line 983
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/MultipleDeleteActivity$5;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultipleDeleteActivity;->mDeleteProgressDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$1100(Lcom/android/mms/ui/MultipleDeleteActivity;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 984
    iget-object v1, p0, Lcom/android/mms/ui/MultipleDeleteActivity$5;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultipleDeleteActivity;->mDeleteProgressDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$1100(Lcom/android/mms/ui/MultipleDeleteActivity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 985
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MultipleDeleteActivity$5;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    const/4 v2, 0x0

    #setter for: Lcom/android/mms/ui/MultipleDeleteActivity;->mDeleteProgressDialog:Landroid/app/Dialog;
    invoke-static {v1, v2}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$1102(Lcom/android/mms/ui/MultipleDeleteActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 991
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/MultipleDeleteActivity$5;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    #calls: Lcom/android/mms/ui/MultipleDeleteActivity;->releaseWakeLock()V
    invoke-static {v1}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$1000(Lcom/android/mms/ui/MultipleDeleteActivity;)V

    .line 993
    iget-object v1, p0, Lcom/android/mms/ui/MultipleDeleteActivity$5;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/MultipleDeleteActivity;->finish()V

    .line 994
    return-void

    .line 987
    :catch_0
    move-exception v0

    .line 989
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method
