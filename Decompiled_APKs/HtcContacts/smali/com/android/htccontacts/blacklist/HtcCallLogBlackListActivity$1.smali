.class Lcom/android/htccontacts/blacklist/HtcCallLogBlackListActivity$1;
.super Ljava/lang/Thread;
.source "HtcCallLogBlackListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/blacklist/HtcCallLogBlackListActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/blacklist/HtcCallLogBlackListActivity;

.field final synthetic val$selectedId:Ljava/util/ArrayList;

.field final synthetic val$size:I


# direct methods
.method constructor <init>(Lcom/android/htccontacts/blacklist/HtcCallLogBlackListActivity;ILjava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/htccontacts/blacklist/HtcCallLogBlackListActivity$1;->this$0:Lcom/android/htccontacts/blacklist/HtcCallLogBlackListActivity;

    iput p2, p0, Lcom/android/htccontacts/blacklist/HtcCallLogBlackListActivity$1;->val$size:I

    iput-object p3, p0, Lcom/android/htccontacts/blacklist/HtcCallLogBlackListActivity$1;->val$selectedId:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 171
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/android/htccontacts/blacklist/HtcCallLogBlackListActivity$1;->val$size:I

    if-ge v0, v1, :cond_0

    .line 173
    iget-object v2, p0, Lcom/android/htccontacts/blacklist/HtcCallLogBlackListActivity$1;->this$0:Lcom/android/htccontacts/blacklist/HtcCallLogBlackListActivity;

    iget-object v1, p0, Lcom/android/htccontacts/blacklist/HtcCallLogBlackListActivity$1;->val$selectedId:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    #calls: Lcom/android/htccontacts/blacklist/HtcCallLogBlackListActivity;->doDeleteCallLog(IZ)V
    invoke-static {v2, v1, v3}, Lcom/android/htccontacts/blacklist/HtcCallLogBlackListActivity;->access$000(Lcom/android/htccontacts/blacklist/HtcCallLogBlackListActivity;IZ)V

    .line 175
    iget-object v1, p0, Lcom/android/htccontacts/blacklist/HtcCallLogBlackListActivity$1;->this$0:Lcom/android/htccontacts/blacklist/HtcCallLogBlackListActivity;

    #getter for: Lcom/android/htccontacts/blacklist/HtcCallLogBlackListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v1}, Lcom/android/htccontacts/blacklist/HtcCallLogBlackListActivity;->access$100(Lcom/android/htccontacts/blacklist/HtcCallLogBlackListActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/app/HtcProgressDialog;->incrementProgressBy(I)V

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 178
    :cond_0
    iget-object v1, p0, Lcom/android/htccontacts/blacklist/HtcCallLogBlackListActivity$1;->this$0:Lcom/android/htccontacts/blacklist/HtcCallLogBlackListActivity;

    #getter for: Lcom/android/htccontacts/blacklist/HtcCallLogBlackListActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v1}, Lcom/android/htccontacts/blacklist/HtcCallLogBlackListActivity;->access$100(Lcom/android/htccontacts/blacklist/HtcCallLogBlackListActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 180
    return-void
.end method
