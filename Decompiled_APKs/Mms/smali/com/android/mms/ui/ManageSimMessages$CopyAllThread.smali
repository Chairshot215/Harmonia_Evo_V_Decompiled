.class Lcom/android/mms/ui/ManageSimMessages$CopyAllThread;
.super Ljava/lang/Thread;
.source "ManageSimMessages.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ManageSimMessages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CopyAllThread"
.end annotation


# instance fields
.field mCanceled:Z

.field final synthetic this$0:Lcom/android/mms/ui/ManageSimMessages;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/ManageSimMessages;)V
    .locals 1
    .parameter

    .prologue
    .line 811
    iput-object p1, p0, Lcom/android/mms/ui/ManageSimMessages$CopyAllThread;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 813
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ManageSimMessages$CopyAllThread;->mCanceled:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/ManageSimMessages;Lcom/android/mms/ui/ManageSimMessages$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 811
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ManageSimMessages$CopyAllThread;-><init>(Lcom/android/mms/ui/ManageSimMessages;)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 859
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ManageSimMessages$CopyAllThread;->mCanceled:Z

    .line 860
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 863
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ManageSimMessages$CopyAllThread;->mCanceled:Z

    .line 864
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$CopyAllThread;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/android/mms/ui/ManageSimMessages;->access$1400(Lcom/android/mms/ui/ManageSimMessages;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 865
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$CopyAllThread;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/android/mms/ui/ManageSimMessages;->access$1400(Lcom/android/mms/ui/ManageSimMessages;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 866
    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 869
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ManageSimMessages$CopyAllThread;->mCanceled:Z

    .line 870
    return-void
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 818
    iget-object v4, p0, Lcom/android/mms/ui/ManageSimMessages$CopyAllThread;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mCopyToPhoneCursor:Landroid/database/Cursor;
    invoke-static {v4}, Lcom/android/mms/ui/ManageSimMessages;->access$1300(Lcom/android/mms/ui/ManageSimMessages;)Landroid/database/Cursor;

    move-result-object v4

    if-nez v4, :cond_1

    .line 820
    iget-object v4, p0, Lcom/android/mms/ui/ManageSimMessages$CopyAllThread;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v4}, Lcom/android/mms/ui/ManageSimMessages;->access$1400(Lcom/android/mms/ui/ManageSimMessages;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 821
    iget-object v4, p0, Lcom/android/mms/ui/ManageSimMessages$CopyAllThread;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v4}, Lcom/android/mms/ui/ManageSimMessages;->access$1400(Lcom/android/mms/ui/ManageSimMessages;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 856
    :cond_0
    :goto_0
    return-void

    .line 830
    :cond_1
    iget-object v4, p0, Lcom/android/mms/ui/ManageSimMessages$CopyAllThread;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    const-string v5, "power"

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/ManageSimMessages;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 831
    .local v3, pm:Landroid/os/PowerManager;
    const-string v4, "ManageSimMessages"

    invoke-virtual {v3, v7, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    .line 834
    .local v2, partialWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 836
    iget-object v4, p0, Lcom/android/mms/ui/ManageSimMessages$CopyAllThread;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mCopyToPhoneCursor:Landroid/database/Cursor;
    invoke-static {v4}, Lcom/android/mms/ui/ManageSimMessages;->access$1300(Lcom/android/mms/ui/ManageSimMessages;)Landroid/database/Cursor;

    move-result-object v4

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 837
    .local v1, nCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 838
    iget-object v4, p0, Lcom/android/mms/ui/ManageSimMessages$CopyAllThread;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mCopyToPhoneCursor:Landroid/database/Cursor;
    invoke-static {v4}, Lcom/android/mms/ui/ManageSimMessages;->access$1300(Lcom/android/mms/ui/ManageSimMessages;)Landroid/database/Cursor;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v4

    if-ne v4, v7, :cond_2

    .line 839
    iget-object v4, p0, Lcom/android/mms/ui/ManageSimMessages$CopyAllThread;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    iget-object v5, p0, Lcom/android/mms/ui/ManageSimMessages$CopyAllThread;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mCopyToPhoneCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/android/mms/ui/ManageSimMessages;->access$1300(Lcom/android/mms/ui/ManageSimMessages;)Landroid/database/Cursor;

    move-result-object v5

    const/4 v6, 0x0

    #calls: Lcom/android/mms/ui/ManageSimMessages;->copyToPhoneMemory(Landroid/database/Cursor;Z)V
    invoke-static {v4, v5, v6}, Lcom/android/mms/ui/ManageSimMessages;->access$1500(Lcom/android/mms/ui/ManageSimMessages;Landroid/database/Cursor;Z)V

    .line 840
    iget-object v4, p0, Lcom/android/mms/ui/ManageSimMessages$CopyAllThread;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v4}, Lcom/android/mms/ui/ManageSimMessages;->access$1400(Lcom/android/mms/ui/ManageSimMessages;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 841
    iget-object v4, p0, Lcom/android/mms/ui/ManageSimMessages$CopyAllThread;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v4}, Lcom/android/mms/ui/ManageSimMessages;->access$1400(Lcom/android/mms/ui/ManageSimMessages;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/htc/app/HtcProgressDialog;->incrementProgressBy(I)V

    .line 844
    :cond_2
    iget-boolean v4, p0, Lcom/android/mms/ui/ManageSimMessages$CopyAllThread;->mCanceled:Z

    if-ne v4, v7, :cond_5

    .line 848
    :cond_3
    iget-object v4, p0, Lcom/android/mms/ui/ManageSimMessages$CopyAllThread;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v4}, Lcom/android/mms/ui/ManageSimMessages;->access$1400(Lcom/android/mms/ui/ManageSimMessages;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 849
    iget-object v4, p0, Lcom/android/mms/ui/ManageSimMessages$CopyAllThread;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v4}, Lcom/android/mms/ui/ManageSimMessages;->access$1400(Lcom/android/mms/ui/ManageSimMessages;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 855
    :cond_4
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 837
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
