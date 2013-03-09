.class Lcom/htc/android/mail/MailSearch$9$1;
.super Ljava/lang/Object;
.source "MailSearch.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/MailSearch$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/mail/MailSearch$9;

.field final synthetic val$result:Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MailSearch$9;Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1242
    iput-object p1, p0, Lcom/htc/android/mail/MailSearch$9$1;->this$1:Lcom/htc/android/mail/MailSearch$9;

    iput-object p2, p0, Lcom/htc/android/mail/MailSearch$9$1;->val$result:Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1244
    iget-object v2, p0, Lcom/htc/android/mail/MailSearch$9$1;->this$1:Lcom/htc/android/mail/MailSearch$9;

    iget-object v2, v2, Lcom/htc/android/mail/MailSearch$9;->this$0:Lcom/htc/android/mail/MailSearch;

    invoke-virtual {v2}, Lcom/htc/android/mail/MailSearch;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1245
    const-string v2, "MailSearch"

    const-string v3, "finish return #1"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1265
    :cond_0
    :goto_0
    return-void

    .line 1248
    :cond_1
    iget-object v2, p0, Lcom/htc/android/mail/MailSearch$9$1;->this$1:Lcom/htc/android/mail/MailSearch$9;

    iget-object v2, v2, Lcom/htc/android/mail/MailSearch$9;->this$0:Lcom/htc/android/mail/MailSearch;

    #getter for: Lcom/htc/android/mail/MailSearch;->mFooterView:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/htc/android/mail/MailSearch;->access$2100(Lcom/htc/android/mail/MailSearch;)Landroid/widget/LinearLayout;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1249
    iget-object v2, p0, Lcom/htc/android/mail/MailSearch$9$1;->val$result:Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;

    iget v2, v2, Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;->total:I

    if-lez v2, :cond_3

    .line 1250
    iget-object v2, p0, Lcom/htc/android/mail/MailSearch$9$1;->this$1:Lcom/htc/android/mail/MailSearch$9;

    iget-object v2, v2, Lcom/htc/android/mail/MailSearch$9;->this$0:Lcom/htc/android/mail/MailSearch;

    #getter for: Lcom/htc/android/mail/MailSearch;->mFooterView:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/htc/android/mail/MailSearch;->access$2100(Lcom/htc/android/mail/MailSearch;)Landroid/widget/LinearLayout;

    move-result-object v2

    const v3, 0x2020010

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1251
    .local v1, tv:Landroid/widget/TextView;
    if-eqz v1, :cond_2

    const v2, 0x7f0b02b2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1252
    :cond_2
    iget-object v2, p0, Lcom/htc/android/mail/MailSearch$9$1;->this$1:Lcom/htc/android/mail/MailSearch$9;

    iget-object v2, v2, Lcom/htc/android/mail/MailSearch$9;->this$0:Lcom/htc/android/mail/MailSearch;

    invoke-virtual {v2}, Lcom/htc/android/mail/MailSearch;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/MailSearch$9$1;->this$1:Lcom/htc/android/mail/MailSearch$9;

    iget-object v3, v3, Lcom/htc/android/mail/MailSearch$9;->this$0:Lcom/htc/android/mail/MailSearch;

    #getter for: Lcom/htc/android/mail/MailSearch;->mFooterView:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/htc/android/mail/MailSearch;->access$2100(Lcom/htc/android/mail/MailSearch;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->removeFooterView(Landroid/view/View;)Z

    goto :goto_0

    .line 1257
    .end local v1           #tv:Landroid/widget/TextView;
    :cond_3
    invoke-static {}, Lcom/htc/android/mail/MailSearch;->access$900()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "MailSearch"

    const-string v3, "search server mail empty"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1258
    :cond_4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1259
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "accountId"

    iget-object v3, p0, Lcom/htc/android/mail/MailSearch$9$1;->this$1:Lcom/htc/android/mail/MailSearch$9;

    iget-object v3, v3, Lcom/htc/android/mail/MailSearch$9;->this$0:Lcom/htc/android/mail/MailSearch;

    #getter for: Lcom/htc/android/mail/MailSearch;->mAccountId:Ljava/lang/Long;
    invoke-static {v3}, Lcom/htc/android/mail/MailSearch;->access$2000(Lcom/htc/android/mail/MailSearch;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1260
    iget-object v2, p0, Lcom/htc/android/mail/MailSearch$9$1;->this$1:Lcom/htc/android/mail/MailSearch$9;

    iget-object v2, v2, Lcom/htc/android/mail/MailSearch$9;->this$0:Lcom/htc/android/mail/MailSearch;

    const/16 v3, 0x2bc

    invoke-virtual {v2, v3, v0}, Lcom/htc/android/mail/MailSearch;->setResult(ILandroid/content/Intent;)V

    .line 1261
    iget-object v2, p0, Lcom/htc/android/mail/MailSearch$9$1;->this$1:Lcom/htc/android/mail/MailSearch$9;

    iget-object v2, v2, Lcom/htc/android/mail/MailSearch$9;->this$0:Lcom/htc/android/mail/MailSearch;

    invoke-virtual {v2}, Lcom/htc/android/mail/MailSearch;->finish()V

    goto :goto_0
.end method
