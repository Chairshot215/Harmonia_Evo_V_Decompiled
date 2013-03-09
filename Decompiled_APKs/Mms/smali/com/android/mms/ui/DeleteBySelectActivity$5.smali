.class Lcom/android/mms/ui/DeleteBySelectActivity$5;
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
    .line 883
    iput-object p1, p0, Lcom/android/mms/ui/DeleteBySelectActivity$5;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 886
    iget-object v0, p0, Lcom/android/mms/ui/DeleteBySelectActivity$5;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    #getter for: Lcom/android/mms/ui/DeleteBySelectActivity;->mDeleteProgressDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/mms/ui/DeleteBySelectActivity;->access$700(Lcom/android/mms/ui/DeleteBySelectActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 909
    :cond_0
    :goto_0
    return-void

    .line 887
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/DeleteBySelectActivity$5;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    new-instance v1, Lcom/android/mms/ui/DeleteBySelectActivity$DeleteProgressDialog;

    iget-object v2, p0, Lcom/android/mms/ui/DeleteBySelectActivity$5;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    iget-object v3, p0, Lcom/android/mms/ui/DeleteBySelectActivity$5;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    invoke-direct {v1, v2, v3}, Lcom/android/mms/ui/DeleteBySelectActivity$DeleteProgressDialog;-><init>(Lcom/android/mms/ui/DeleteBySelectActivity;Landroid/content/Context;)V

    #setter for: Lcom/android/mms/ui/DeleteBySelectActivity;->mDeleteProgressDialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/android/mms/ui/DeleteBySelectActivity;->access$702(Lcom/android/mms/ui/DeleteBySelectActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 888
    iget-object v0, p0, Lcom/android/mms/ui/DeleteBySelectActivity$5;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    #getter for: Lcom/android/mms/ui/DeleteBySelectActivity;->mDeleteProgressDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/mms/ui/DeleteBySelectActivity;->access$700(Lcom/android/mms/ui/DeleteBySelectActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 891
    iget-object v0, p0, Lcom/android/mms/ui/DeleteBySelectActivity$5;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    invoke-static {v0}, Lcom/google/android/mms/util/SqliteWrapper;->isLowStorage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 892
    invoke-static {}, Lcom/android/mms/util/SpaceBufferUtil;->deleteBufferFile()V

    .line 895
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/DeleteBySelectActivity$5;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    invoke-static {v0}, Lcom/android/mms/util/SpaceBufferUtil;->isNoStorage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 896
    iget-object v0, p0, Lcom/android/mms/ui/DeleteBySelectActivity$5;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    iget-object v1, p0, Lcom/android/mms/ui/DeleteBySelectActivity$5;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    const v2, 0x20c01fc

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/DeleteBySelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/DeleteBySelectActivity$5;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    const v3, 0x7f090246

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/DeleteBySelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    iget-object v0, p0, Lcom/android/mms/ui/DeleteBySelectActivity$5;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    #getter for: Lcom/android/mms/ui/DeleteBySelectActivity;->mDeleteProgressDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/mms/ui/DeleteBySelectActivity;->access$700(Lcom/android/mms/ui/DeleteBySelectActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 900
    iget-object v0, p0, Lcom/android/mms/ui/DeleteBySelectActivity$5;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    #getter for: Lcom/android/mms/ui/DeleteBySelectActivity;->mDeleteProgressDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/mms/ui/DeleteBySelectActivity;->access$700(Lcom/android/mms/ui/DeleteBySelectActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 901
    iget-object v0, p0, Lcom/android/mms/ui/DeleteBySelectActivity$5;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/mms/ui/DeleteBySelectActivity;->mDeleteProgressDialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/android/mms/ui/DeleteBySelectActivity;->access$702(Lcom/android/mms/ui/DeleteBySelectActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0

    .line 906
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/DeleteBySelectActivity$5;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    #calls: Lcom/android/mms/ui/DeleteBySelectActivity;->acquireWakeLock()V
    invoke-static {v0}, Lcom/android/mms/ui/DeleteBySelectActivity;->access$1300(Lcom/android/mms/ui/DeleteBySelectActivity;)V

    .line 908
    new-instance v0, Lcom/android/mms/ui/DeleteBySelectActivity$DeleteThread;

    iget-object v1, p0, Lcom/android/mms/ui/DeleteBySelectActivity$5;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/mms/ui/DeleteBySelectActivity$5;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    iget-object v4, p0, Lcom/android/mms/ui/DeleteBySelectActivity$5;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    invoke-virtual {v4}, Lcom/android/mms/ui/DeleteBySelectActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/mms/ui/DeleteBySelectActivity$DeleteThread;-><init>(Lcom/android/mms/ui/DeleteBySelectActivity;ZLandroid/content/Context;Landroid/content/ContentResolver;)V

    invoke-virtual {v0}, Lcom/android/mms/ui/DeleteBySelectActivity$DeleteThread;->start()V

    goto :goto_0
.end method
