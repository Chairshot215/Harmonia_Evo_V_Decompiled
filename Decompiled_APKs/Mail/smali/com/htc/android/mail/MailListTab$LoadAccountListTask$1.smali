.class Lcom/htc/android/mail/MailListTab$LoadAccountListTask$1;
.super Ljava/lang/Object;
.source "MailListTab.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/MailListTab$LoadAccountListTask;->onPostExecute(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/mail/MailListTab$LoadAccountListTask;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MailListTab$LoadAccountListTask;)V
    .locals 0
    .parameter

    .prologue
    .line 1690
    iput-object p1, p0, Lcom/htc/android/mail/MailListTab$LoadAccountListTask$1;->this$1:Lcom/htc/android/mail/MailListTab$LoadAccountListTask;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter "parent"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1692
    invoke-static {}, Lcom/htc/android/mail/MailListTab;->access$800()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MailListTab"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "titleBar DropList>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1693
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p4

    .line 1694
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab$LoadAccountListTask$1;->this$1:Lcom/htc/android/mail/MailListTab$LoadAccountListTask;

    iget-object v0, v0, Lcom/htc/android/mail/MailListTab$LoadAccountListTask;->this$0:Lcom/htc/android/mail/MailListTab;

    #getter for: Lcom/htc/android/mail/MailListTab;->mAccountId:J
    invoke-static {v0}, Lcom/htc/android/mail/MailListTab;->access$2400(Lcom/htc/android/mail/MailListTab;)J

    move-result-wide v0

    cmp-long v0, p4, v0

    if-nez v0, :cond_1

    .line 1695
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab$LoadAccountListTask$1;->this$1:Lcom/htc/android/mail/MailListTab$LoadAccountListTask;

    iget-object v0, v0, Lcom/htc/android/mail/MailListTab$LoadAccountListTask;->this$0:Lcom/htc/android/mail/MailListTab;

    iget-object v0, v0, Lcom/htc/android/mail/MailListTab;->mMailListActionBar:Lcom/htc/android/mail/widget/MailActionBar;

    iget-object v0, v0, Lcom/htc/android/mail/widget/MailActionBar;->mDropDownList:Lcom/htc/widget/HeaderBarDropDown;

    invoke-virtual {v0}, Lcom/htc/widget/HeaderBarDropDown;->dismiss()V

    .line 1700
    :goto_0
    return-void

    .line 1699
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab$LoadAccountListTask$1;->this$1:Lcom/htc/android/mail/MailListTab$LoadAccountListTask;

    iget-object v0, v0, Lcom/htc/android/mail/MailListTab$LoadAccountListTask;->this$0:Lcom/htc/android/mail/MailListTab;

    #getter for: Lcom/htc/android/mail/MailListTab;->mRequestController:Lcom/htc/android/mail/AbsRequestController;
    invoke-static {v0}, Lcom/htc/android/mail/MailListTab;->access$1400(Lcom/htc/android/mail/MailListTab;)Lcom/htc/android/mail/AbsRequestController;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Lcom/htc/android/mail/AbsRequestController;->broadcastDoChangeAccount(J)V

    goto :goto_0
.end method
