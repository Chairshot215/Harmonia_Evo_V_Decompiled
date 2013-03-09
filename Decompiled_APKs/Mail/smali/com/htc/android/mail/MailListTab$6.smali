.class Lcom/htc/android/mail/MailListTab$6;
.super Ljava/lang/Object;
.source "MailListTab.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/MailListTab;->onResume()V
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
    .line 967
    iput-object p1, p0, Lcom/htc/android/mail/MailListTab$6;->this$0:Lcom/htc/android/mail/MailListTab;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 969
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab$6;->this$0:Lcom/htc/android/mail/MailListTab;

    #getter for: Lcom/htc/android/mail/MailListTab;->goToTabString:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/android/mail/MailListTab;->access$1000(Lcom/htc/android/mail/MailListTab;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 970
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab$6;->this$0:Lcom/htc/android/mail/MailListTab;

    iget-object v0, v0, Lcom/htc/android/mail/MailListTab;->mPanelHost:Lcom/htc/widget/CarouselHost;

    iget-object v1, p0, Lcom/htc/android/mail/MailListTab$6;->this$0:Lcom/htc/android/mail/MailListTab;

    #getter for: Lcom/htc/android/mail/MailListTab;->goToTabString:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/android/mail/MailListTab;->access$1000(Lcom/htc/android/mail/MailListTab;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/CarouselHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 971
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab$6;->this$0:Lcom/htc/android/mail/MailListTab;

    const/4 v1, 0x0

    #setter for: Lcom/htc/android/mail/MailListTab;->goToTabString:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/android/mail/MailListTab;->access$1002(Lcom/htc/android/mail/MailListTab;Ljava/lang/String;)Ljava/lang/String;

    .line 973
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab$6;->this$0:Lcom/htc/android/mail/MailListTab;

    #getter for: Lcom/htc/android/mail/MailListTab;->Expand_groupId:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/android/mail/MailListTab;->access$1100(Lcom/htc/android/mail/MailListTab;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 974
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab$6;->this$0:Lcom/htc/android/mail/MailListTab;

    iget-object v1, p0, Lcom/htc/android/mail/MailListTab$6;->this$0:Lcom/htc/android/mail/MailListTab;

    #getter for: Lcom/htc/android/mail/MailListTab;->Expand_groupId:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/android/mail/MailListTab;->access$1100(Lcom/htc/android/mail/MailListTab;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/android/mail/MailListTab;->selected_group:Ljava/lang/String;

    .line 975
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab$6;->this$0:Lcom/htc/android/mail/MailListTab;

    iget-object v1, p0, Lcom/htc/android/mail/MailListTab$6;->this$0:Lcom/htc/android/mail/MailListTab;

    #getter for: Lcom/htc/android/mail/MailListTab;->Expand_group_Account:J
    invoke-static {v1}, Lcom/htc/android/mail/MailListTab;->access$1200(Lcom/htc/android/mail/MailListTab;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/htc/android/mail/MailListTab;->selected_group_account:J

    .line 976
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab$6;->this$0:Lcom/htc/android/mail/MailListTab;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/android/mail/MailListTab;->mExpandConversation:Z

    .line 977
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab$6;->this$0:Lcom/htc/android/mail/MailListTab;

    iget-object v0, v0, Lcom/htc/android/mail/MailListTab;->mPanelHost:Lcom/htc/widget/CarouselHost;

    const-string v1, "tab_thread"

    invoke-virtual {v0, v1}, Lcom/htc/widget/CarouselHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 979
    :cond_1
    return-void
.end method
