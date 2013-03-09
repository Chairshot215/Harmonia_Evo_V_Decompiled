.class Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$5$1;
.super Ljava/lang/Thread;
.source "HtcContactBlackListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$5;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$5;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$5;)V
    .locals 0
    .parameter

    .prologue
    .line 694
    iput-object p1, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$5$1;->this$1:Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$5;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 696
    iget-object v0, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$5$1;->this$1:Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$5;

    iget-object v0, v0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$5;->this$0:Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;

    iget-object v1, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$5$1;->this$1:Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$5;

    iget v1, v1, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$5;->val$position:I

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->removeBlackList(I)V

    .line 697
    return-void
.end method
