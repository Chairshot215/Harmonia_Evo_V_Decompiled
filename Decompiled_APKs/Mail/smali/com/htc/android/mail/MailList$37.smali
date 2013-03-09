.class Lcom/htc/android/mail/MailList$37;
.super Ljava/lang/Object;
.source "MailList.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/MailList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/MailList;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MailList;)V
    .locals 0
    .parameter

    .prologue
    .line 6970
    iput-object p1, p0, Lcom/htc/android/mail/MailList$37;->this$0:Lcom/htc/android/mail/MailList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .parameter "s"

    .prologue
    .line 6972
    iget-object v1, p0, Lcom/htc/android/mail/MailList$37;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mIsInForeground:Z
    invoke-static {v1}, Lcom/htc/android/mail/MailList;->access$4600(Lcom/htc/android/mail/MailList;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 6973
    invoke-static {}, Lcom/htc/android/mail/MailList;->access$1200()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "MailList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "s1>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6975
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6976
    .local v0, pattern:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/android/mail/MailList$37;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v1, v1, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iput-object v0, v1, Lcom/htc/android/mail/MailListTab;->mSearchKey:Ljava/lang/String;

    .line 6981
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 6982
    iget-object v1, p0, Lcom/htc/android/mail/MailList$37;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v1, v1, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v1, v1, Lcom/htc/android/mail/MailListTab;->mMailListSearchBar:Lcom/htc/android/mail/widget/MailSearchBar;

    iget-object v1, v1, Lcom/htc/android/mail/widget/MailSearchBar;->mSearchBox:Lcom/htc/widget/HeaderBarInput;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarInput;->setClearIconVisibility(I)V

    .line 6989
    :goto_0
    iget-object v1, p0, Lcom/htc/android/mail/MailList$37;->this$0:Lcom/htc/android/mail/MailList;

    const/4 v2, 0x0

    const/16 v3, 0x32

    iget-object v4, p0, Lcom/htc/android/mail/MailList$37;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$1100(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$TabInfo;

    move-result-object v4

    #calls: Lcom/htc/android/mail/MailList;->startQuery(Ljava/lang/String;ILcom/htc/android/mail/MailList$TabInfo;)V
    invoke-static {v1, v2, v3, v4}, Lcom/htc/android/mail/MailList;->access$6900(Lcom/htc/android/mail/MailList;Ljava/lang/String;ILcom/htc/android/mail/MailList$TabInfo;)V

    .line 6992
    .end local v0           #pattern:Ljava/lang/String;
    :cond_1
    return-void

    .line 6984
    .restart local v0       #pattern:Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/htc/android/mail/MailList$37;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v1, v1, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v1, v1, Lcom/htc/android/mail/MailListTab;->mMailListSearchBar:Lcom/htc/android/mail/widget/MailSearchBar;

    iget-object v1, v1, Lcom/htc/android/mail/widget/MailSearchBar;->mSearchBox:Lcom/htc/widget/HeaderBarInput;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarInput;->setClearIconVisibility(I)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 6995
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 6998
    return-void
.end method
