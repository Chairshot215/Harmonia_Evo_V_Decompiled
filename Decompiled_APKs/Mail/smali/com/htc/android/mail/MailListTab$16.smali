.class Lcom/htc/android/mail/MailListTab$16;
.super Ljava/lang/Object;
.source "MailListTab.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/MailListTab;->getSearchFilterDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/MailListTab;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MailListTab;)V
    .locals 0
    .parameter

    .prologue
    .line 1712
    iput-object p1, p0, Lcom/htc/android/mail/MailListTab$16;->this$0:Lcom/htc/android/mail/MailListTab;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "button"

    .prologue
    const/4 v1, 0x1

    .line 1714
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab$16;->this$0:Lcom/htc/android/mail/MailListTab;

    iget-boolean v0, v0, Lcom/htc/android/mail/MailListTab;->mSearchFromContextMenu:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/MailListTab$16;->this$0:Lcom/htc/android/mail/MailListTab;

    #getter for: Lcom/htc/android/mail/MailListTab;->mSearchAdapter:Lcom/htc/android/mail/SearchFilterAdapter;
    invoke-static {v0}, Lcom/htc/android/mail/MailListTab;->access$2500(Lcom/htc/android/mail/MailListTab;)Lcom/htc/android/mail/SearchFilterAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/mail/SearchFilterAdapter;->getSettingsValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1722
    :goto_0
    return-void

    .line 1717
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab$16;->this$0:Lcom/htc/android/mail/MailListTab;

    #getter for: Lcom/htc/android/mail/MailListTab;->mSearchAdapter:Lcom/htc/android/mail/SearchFilterAdapter;
    invoke-static {v0}, Lcom/htc/android/mail/MailListTab;->access$2500(Lcom/htc/android/mail/MailListTab;)Lcom/htc/android/mail/SearchFilterAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/mail/SearchFilterAdapter;->getSettingsValue()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 1718
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab$16;->this$0:Lcom/htc/android/mail/MailListTab;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/htc/android/mail/MailListTab;->mSearchFromContextMenu:Z

    .line 1720
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab$16;->this$0:Lcom/htc/android/mail/MailListTab;

    #getter for: Lcom/htc/android/mail/MailListTab;->mSearchAdapter:Lcom/htc/android/mail/SearchFilterAdapter;
    invoke-static {v0}, Lcom/htc/android/mail/MailListTab;->access$2500(Lcom/htc/android/mail/MailListTab;)Lcom/htc/android/mail/SearchFilterAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/MailListTab$16;->this$0:Lcom/htc/android/mail/MailListTab;

    invoke-virtual {v1}, Lcom/htc/android/mail/MailListTab;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/MailListTab$16;->this$0:Lcom/htc/android/mail/MailListTab;

    #getter for: Lcom/htc/android/mail/MailListTab;->mAccountId:J
    invoke-static {v2}, Lcom/htc/android/mail/MailListTab;->access$2400(Lcom/htc/android/mail/MailListTab;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/SearchFilterAdapter;->writeSettings(Landroid/content/Context;Ljava/lang/Long;)V

    .line 1721
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab$16;->this$0:Lcom/htc/android/mail/MailListTab;

    #getter for: Lcom/htc/android/mail/MailListTab;->mRequestController:Lcom/htc/android/mail/AbsRequestController;
    invoke-static {v0}, Lcom/htc/android/mail/MailListTab;->access$1400(Lcom/htc/android/mail/MailListTab;)Lcom/htc/android/mail/AbsRequestController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/mail/AbsRequestController;->broadcastSearchFilterChanged()V

    goto :goto_0
.end method
