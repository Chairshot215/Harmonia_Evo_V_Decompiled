.class Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$4;
.super Ljava/lang/Object;
.source "HtcDivertedListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->comfirmRemoveBlackList(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;

.field final synthetic val$deleteAll:Z

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;ZI)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 621
    iput-object p1, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$4;->this$0:Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;

    iput-boolean p2, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$4;->val$deleteAll:Z

    iput p3, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$4;->val$position:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "v"
    .parameter "x"

    .prologue
    const/4 v4, 0x0

    .line 624
    iget-object v1, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$4;->this$0:Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;

    new-instance v2, Lcom/htc/app/HtcProgressDialog;

    iget-object v3, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$4;->this$0:Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;

    invoke-direct {v2, v3}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v1, v2}, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->access$002(Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;Lcom/htc/app/HtcProgressDialog;)Lcom/htc/app/HtcProgressDialog;

    .line 626
    iget-object v1, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$4;->this$0:Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;

    #getter for: Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v1}, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->access$000(Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v1

    const v2, 0x7f0a0192

    invoke-virtual {v1, v2}, Lcom/htc/app/HtcProgressDialog;->setTitle(I)V

    .line 628
    iget-object v1, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$4;->this$0:Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;

    #getter for: Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v1}, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->access$000(Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$4;->this$0:Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;

    const v3, 0x7f0a0193

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 630
    iget-object v1, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$4;->this$0:Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;

    #getter for: Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v1}, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->access$000(Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 631
    iget-object v1, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$4;->this$0:Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;

    #getter for: Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v1}, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->access$000(Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/app/HtcProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 633
    iget-object v1, p0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$4;->this$0:Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;

    #getter for: Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v1}, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;->access$000(Lcom/android/htccontacts/blacklist/HtcDivertedListActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 635
    new-instance v0, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$4$1;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$4$1;-><init>(Lcom/android/htccontacts/blacklist/HtcDivertedListActivity$4;)V

    .line 651
    .local v0, mDoOKThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 653
    return-void
.end method
