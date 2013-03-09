.class Lcom/android/mms/ui/MultipleDeleteActivity$9;
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
    .line 1486
    iput-object p1, p0, Lcom/android/mms/ui/MultipleDeleteActivity$9;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1489
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity$9;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultipleDeleteActivity;->mDeleteProgressDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$1100(Lcom/android/mms/ui/MultipleDeleteActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1531
    :cond_0
    :goto_0
    return-void

    .line 1490
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity$9;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    new-instance v1, Lcom/android/mms/ui/MultipleDeleteActivity$DeleteProgressDialog;

    iget-object v2, p0, Lcom/android/mms/ui/MultipleDeleteActivity$9;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    iget-object v3, p0, Lcom/android/mms/ui/MultipleDeleteActivity$9;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    invoke-direct {v1, v2, v3}, Lcom/android/mms/ui/MultipleDeleteActivity$DeleteProgressDialog;-><init>(Lcom/android/mms/ui/MultipleDeleteActivity;Landroid/content/Context;)V

    #setter for: Lcom/android/mms/ui/MultipleDeleteActivity;->mDeleteProgressDialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$1102(Lcom/android/mms/ui/MultipleDeleteActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1491
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity$9;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultipleDeleteActivity;->mDeleteProgressDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$1100(Lcom/android/mms/ui/MultipleDeleteActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1500
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity$9;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    invoke-static {v0}, Lcom/android/mms/util/SpaceBufferUtil;->isNoStorage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1505
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity$9;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->confirmStorageFullDialog(Landroid/content/Context;Z)V

    .line 1508
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity$9;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultipleDeleteActivity;->mDeleteProgressDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$1100(Lcom/android/mms/ui/MultipleDeleteActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1509
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity$9;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultipleDeleteActivity;->mDeleteProgressDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$1100(Lcom/android/mms/ui/MultipleDeleteActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1510
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity$9;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/mms/ui/MultipleDeleteActivity;->mDeleteProgressDialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$1102(Lcom/android/mms/ui/MultipleDeleteActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0

    .line 1515
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity$9;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    #calls: Lcom/android/mms/ui/MultipleDeleteActivity;->acquireWakeLock()V
    invoke-static {v0}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$2100(Lcom/android/mms/ui/MultipleDeleteActivity;)V

    .line 1517
    new-instance v0, Lcom/android/mms/ui/MultipleDeleteActivity$DeleteThread;

    iget-object v1, p0, Lcom/android/mms/ui/MultipleDeleteActivity$9;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/mms/ui/MultipleDeleteActivity$9;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    iget-object v4, p0, Lcom/android/mms/ui/MultipleDeleteActivity$9;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    invoke-virtual {v4}, Lcom/android/mms/ui/MultipleDeleteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/mms/ui/MultipleDeleteActivity$DeleteThread;-><init>(Lcom/android/mms/ui/MultipleDeleteActivity;ZLandroid/content/Context;Landroid/content/ContentResolver;)V

    invoke-virtual {v0}, Lcom/android/mms/ui/MultipleDeleteActivity$DeleteThread;->start()V

    goto :goto_0
.end method
