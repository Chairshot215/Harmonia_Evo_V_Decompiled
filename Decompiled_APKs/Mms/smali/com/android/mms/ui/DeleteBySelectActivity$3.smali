.class Lcom/android/mms/ui/DeleteBySelectActivity$3;
.super Ljava/lang/Object;
.source "DeleteBySelectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/DeleteBySelectActivity;->initDeleteButton()V
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
    .line 755
    iput-object p1, p0, Lcom/android/mms/ui/DeleteBySelectActivity$3;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    .line 758
    iget-object v0, p0, Lcom/android/mms/ui/DeleteBySelectActivity$3;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    #getter for: Lcom/android/mms/ui/DeleteBySelectActivity;->mDeleteProgressDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/mms/ui/DeleteBySelectActivity;->access$700(Lcom/android/mms/ui/DeleteBySelectActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 792
    :cond_0
    :goto_0
    return-void

    .line 759
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportBackKeyDeleting()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 760
    iget-object v0, p0, Lcom/android/mms/ui/DeleteBySelectActivity$3;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    new-instance v1, Lcom/android/mms/ui/DeleteBySelectActivity$DeleteProgressDialog21;

    iget-object v2, p0, Lcom/android/mms/ui/DeleteBySelectActivity$3;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    iget-object v3, p0, Lcom/android/mms/ui/DeleteBySelectActivity$3;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    invoke-direct {v1, v2, v3}, Lcom/android/mms/ui/DeleteBySelectActivity$DeleteProgressDialog21;-><init>(Lcom/android/mms/ui/DeleteBySelectActivity;Landroid/content/Context;)V

    #setter for: Lcom/android/mms/ui/DeleteBySelectActivity;->mDeleteProgressDialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/android/mms/ui/DeleteBySelectActivity;->access$702(Lcom/android/mms/ui/DeleteBySelectActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 763
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/DeleteBySelectActivity$3;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    #getter for: Lcom/android/mms/ui/DeleteBySelectActivity;->mDeleteProgressDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/mms/ui/DeleteBySelectActivity;->access$700(Lcom/android/mms/ui/DeleteBySelectActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 766
    iget-object v0, p0, Lcom/android/mms/ui/DeleteBySelectActivity$3;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    invoke-static {v0}, Lcom/google/android/mms/util/SqliteWrapper;->isLowStorage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 767
    invoke-static {}, Lcom/android/mms/util/SpaceBufferUtil;->deleteBufferFile()V

    .line 770
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/DeleteBySelectActivity$3;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    invoke-static {v0}, Lcom/android/mms/util/SpaceBufferUtil;->isNoStorage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 771
    iget-object v0, p0, Lcom/android/mms/ui/DeleteBySelectActivity$3;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    iget-object v1, p0, Lcom/android/mms/ui/DeleteBySelectActivity$3;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    const v2, 0x20c01fc

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/DeleteBySelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/DeleteBySelectActivity$3;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    const v3, 0x7f090246

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/DeleteBySelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    iget-object v0, p0, Lcom/android/mms/ui/DeleteBySelectActivity$3;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    #getter for: Lcom/android/mms/ui/DeleteBySelectActivity;->mDeleteProgressDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/mms/ui/DeleteBySelectActivity;->access$700(Lcom/android/mms/ui/DeleteBySelectActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 775
    iget-object v0, p0, Lcom/android/mms/ui/DeleteBySelectActivity$3;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    #getter for: Lcom/android/mms/ui/DeleteBySelectActivity;->mDeleteProgressDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/mms/ui/DeleteBySelectActivity;->access$700(Lcom/android/mms/ui/DeleteBySelectActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 776
    iget-object v0, p0, Lcom/android/mms/ui/DeleteBySelectActivity$3;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/mms/ui/DeleteBySelectActivity;->mDeleteProgressDialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/android/mms/ui/DeleteBySelectActivity;->access$702(Lcom/android/mms/ui/DeleteBySelectActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0

    .line 762
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/DeleteBySelectActivity$3;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    new-instance v1, Lcom/android/mms/ui/DeleteBySelectActivity$DeleteProgressDialog;

    iget-object v2, p0, Lcom/android/mms/ui/DeleteBySelectActivity$3;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    iget-object v3, p0, Lcom/android/mms/ui/DeleteBySelectActivity$3;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    invoke-direct {v1, v2, v3}, Lcom/android/mms/ui/DeleteBySelectActivity$DeleteProgressDialog;-><init>(Lcom/android/mms/ui/DeleteBySelectActivity;Landroid/content/Context;)V

    #setter for: Lcom/android/mms/ui/DeleteBySelectActivity;->mDeleteProgressDialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/android/mms/ui/DeleteBySelectActivity;->access$702(Lcom/android/mms/ui/DeleteBySelectActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_1

    .line 781
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/DeleteBySelectActivity$3;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    #calls: Lcom/android/mms/ui/DeleteBySelectActivity;->acquireWakeLock()V
    invoke-static {v0}, Lcom/android/mms/ui/DeleteBySelectActivity;->access$1300(Lcom/android/mms/ui/DeleteBySelectActivity;)V

    .line 785
    invoke-static {}, Lcom/android/mms/ui/DeleteBySelectActivity;->access$1400()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 786
    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcom/android/mms/ui/DeleteBySelectActivity;->mCancelDeletion:Z

    .line 787
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 790
    new-instance v0, Lcom/android/mms/ui/DeleteBySelectActivity$DeleteThread;

    iget-object v1, p0, Lcom/android/mms/ui/DeleteBySelectActivity$3;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    iget-object v2, p0, Lcom/android/mms/ui/DeleteBySelectActivity$3;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    iget-object v3, p0, Lcom/android/mms/ui/DeleteBySelectActivity$3;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    invoke-virtual {v3}, Lcom/android/mms/ui/DeleteBySelectActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/mms/ui/DeleteBySelectActivity$DeleteThread;-><init>(Lcom/android/mms/ui/DeleteBySelectActivity;ZLandroid/content/Context;Landroid/content/ContentResolver;)V

    invoke-static {v0}, Lcom/android/mms/ui/DeleteBySelectActivity;->access$1202(Lcom/android/mms/ui/DeleteBySelectActivity$DeleteThread;)Lcom/android/mms/ui/DeleteBySelectActivity$DeleteThread;

    .line 791
    invoke-static {}, Lcom/android/mms/ui/DeleteBySelectActivity;->access$1200()Lcom/android/mms/ui/DeleteBySelectActivity$DeleteThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/DeleteBySelectActivity$DeleteThread;->start()V

    goto/16 :goto_0

    .line 787
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
