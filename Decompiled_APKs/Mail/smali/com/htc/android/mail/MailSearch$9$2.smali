.class Lcom/htc/android/mail/MailSearch$9$2;
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


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MailSearch$9;)V
    .locals 0
    .parameter

    .prologue
    .line 1282
    iput-object p1, p0, Lcom/htc/android/mail/MailSearch$9$2;->this$1:Lcom/htc/android/mail/MailSearch$9;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1284
    iget-object v1, p0, Lcom/htc/android/mail/MailSearch$9$2;->this$1:Lcom/htc/android/mail/MailSearch$9;

    iget-object v1, v1, Lcom/htc/android/mail/MailSearch$9;->this$0:Lcom/htc/android/mail/MailSearch;

    invoke-virtual {v1}, Lcom/htc/android/mail/MailSearch;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1285
    const-string v1, "MailSearch"

    const-string v2, "finish return #2"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1292
    :cond_0
    :goto_0
    return-void

    .line 1288
    :cond_1
    iget-object v1, p0, Lcom/htc/android/mail/MailSearch$9$2;->this$1:Lcom/htc/android/mail/MailSearch$9;

    iget-object v1, v1, Lcom/htc/android/mail/MailSearch$9;->this$0:Lcom/htc/android/mail/MailSearch;

    #getter for: Lcom/htc/android/mail/MailSearch;->mFooterView:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/htc/android/mail/MailSearch;->access$2100(Lcom/htc/android/mail/MailSearch;)Landroid/widget/LinearLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1289
    iget-object v1, p0, Lcom/htc/android/mail/MailSearch$9$2;->this$1:Lcom/htc/android/mail/MailSearch$9;

    iget-object v1, v1, Lcom/htc/android/mail/MailSearch$9;->this$0:Lcom/htc/android/mail/MailSearch;

    #getter for: Lcom/htc/android/mail/MailSearch;->mFooterView:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/htc/android/mail/MailSearch;->access$2100(Lcom/htc/android/mail/MailSearch;)Landroid/widget/LinearLayout;

    move-result-object v1

    const v2, 0x2020010

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1290
    .local v0, tv:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    const v1, 0x7f0b02b2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
