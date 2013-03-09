.class Lcom/htc/android/mail/MailList$7;
.super Ljava/lang/Object;
.source "MailList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/MailList;->onActivityResult(IILandroid/content/Intent;)V
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
    .line 984
    iput-object p1, p0, Lcom/htc/android/mail/MailList$7;->this$0:Lcom/htc/android/mail/MailList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 986
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 988
    .local v3, people:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/htc/android/mail/MailList$7;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v4, v4, Lcom/htc/android/mail/MailList;->vipResult:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 989
    new-instance v2, Ljava/lang/Long;

    iget-object v4, p0, Lcom/htc/android/mail/MailList$7;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v4, v4, Lcom/htc/android/mail/MailList;->vipResult:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->longValue()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/lang/Long;-><init>(J)V

    .line 990
    .local v2, id:Ljava/lang/Long;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 988
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 992
    .end local v2           #id:Ljava/lang/Long;
    :cond_0
    iget-object v4, p0, Lcom/htc/android/mail/MailList$7;->this$0:Lcom/htc/android/mail/MailList;

    invoke-virtual {v4}, Lcom/htc/android/mail/MailList;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/MailList$7;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v5, v5, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v5}, Lcom/htc/android/mail/Account;->getContactGroup()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/htc/util/contacts/ContactsUtility;->addContactsToGroup(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 998
    iget-object v4, p0, Lcom/htc/android/mail/MailList$7;->this$0:Lcom/htc/android/mail/MailList;

    iput-object v6, v4, Lcom/htc/android/mail/MailList;->vipResult:Ljava/util/ArrayList;

    .line 999
    iget-object v4, p0, Lcom/htc/android/mail/MailList$7;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->addVipDlg:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$1700(Lcom/htc/android/mail/MailList;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v4

    .end local v1           #i:I
    .end local v3           #people:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :goto_1
    invoke-virtual {v4}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 1001
    return-void

    .line 994
    :catch_0
    move-exception v0

    .line 995
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v4, "MailList"

    const-string v5, "catch excetion"

    invoke-static {v4, v5, v0}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 998
    iget-object v4, p0, Lcom/htc/android/mail/MailList$7;->this$0:Lcom/htc/android/mail/MailList;

    iput-object v6, v4, Lcom/htc/android/mail/MailList;->vipResult:Ljava/util/ArrayList;

    .line 999
    iget-object v4, p0, Lcom/htc/android/mail/MailList$7;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->addVipDlg:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v4}, Lcom/htc/android/mail/MailList;->access$1700(Lcom/htc/android/mail/MailList;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v4

    goto :goto_1

    .line 998
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/htc/android/mail/MailList$7;->this$0:Lcom/htc/android/mail/MailList;

    iput-object v6, v5, Lcom/htc/android/mail/MailList;->vipResult:Ljava/util/ArrayList;

    .line 999
    iget-object v5, p0, Lcom/htc/android/mail/MailList$7;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->addVipDlg:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v5}, Lcom/htc/android/mail/MailList;->access$1700(Lcom/htc/android/mail/MailList;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 998
    throw v4
.end method
