.class Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$4$1;
.super Ljava/lang/Thread;
.source "HtcDivertedListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$4;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$4;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$4;)V
    .locals 0
    .parameter

    .prologue
    .line 635
    iput-object p1, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$4$1;->this$1:Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$4;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 640
    :try_start_0
    iget-object v0, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$4$1;->this$1:Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$4;

    iget-boolean v0, v0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$4;->val$deleteAll:Z

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$4$1;->this$1:Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$4;

    iget-object v0, v0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$4;->this$0:Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;

    #calls: Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->removeAllDevirted()V
    invoke-static {v0}, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->access$200(Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 646
    :goto_0
    iget-object v0, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$4$1;->this$1:Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$4;

    iget-object v0, v0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$4;->this$0:Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;

    #getter for: Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->access$000(Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 648
    return-void

    .line 643
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$4$1;->this$1:Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$4;

    iget-object v0, v0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$4;->this$0:Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;

    iget-object v1, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$4$1;->this$1:Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$4;

    iget v1, v1, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$4;->val$position:I

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->removeBlackList(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 646
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$4$1;->this$1:Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$4;

    iget-object v1, v1, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$4;->this$0:Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;

    #getter for: Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v1}, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->access$000(Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    throw v0
.end method
