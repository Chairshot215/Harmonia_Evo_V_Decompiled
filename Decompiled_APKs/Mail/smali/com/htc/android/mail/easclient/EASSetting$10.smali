.class Lcom/htc/android/mail/easclient/EASSetting$10;
.super Ljava/lang/Object;
.source "EASSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/easclient/EASSetting;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/easclient/EASSetting;

.field final synthetic val$defaultSyncMailboxs:Lcom/htc/android/mail/Mailboxs;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/easclient/EASSetting;Lcom/htc/android/mail/Mailboxs;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1575
    iput-object p1, p0, Lcom/htc/android/mail/easclient/EASSetting$10;->this$0:Lcom/htc/android/mail/easclient/EASSetting;

    iput-object p2, p0, Lcom/htc/android/mail/easclient/EASSetting$10;->val$defaultSyncMailboxs:Lcom/htc/android/mail/Mailboxs;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1578
    :try_start_0
    iget-object v4, p0, Lcom/htc/android/mail/easclient/EASSetting$10;->this$0:Lcom/htc/android/mail/easclient/EASSetting;

    #getter for: Lcom/htc/android/mail/easclient/EASSetting;->mTotalFoldersStatus:[Z
    invoke-static {v4}, Lcom/htc/android/mail/easclient/EASSetting;->access$2100(Lcom/htc/android/mail/easclient/EASSetting;)[Z

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/easclient/EASSetting$10;->this$0:Lcom/htc/android/mail/easclient/EASSetting;

    #getter for: Lcom/htc/android/mail/easclient/EASSetting;->mTempDefaultSyncFoldersStatus:[Z
    invoke-static {v5}, Lcom/htc/android/mail/easclient/EASSetting;->access$2200(Lcom/htc/android/mail/easclient/EASSetting;)[Z

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1579
    iget-object v4, p0, Lcom/htc/android/mail/easclient/EASSetting$10;->this$0:Lcom/htc/android/mail/easclient/EASSetting;

    #getter for: Lcom/htc/android/mail/easclient/EASSetting;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/android/mail/easclient/EASSetting;->access$100(Lcom/htc/android/mail/easclient/EASSetting;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "default sync folder not change, skip"

    invoke-static {v4, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1608
    :goto_0
    return-void

    .line 1583
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1584
    .local v0, defaultSyncList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v4, p0, Lcom/htc/android/mail/easclient/EASSetting$10;->this$0:Lcom/htc/android/mail/easclient/EASSetting;

    #getter for: Lcom/htc/android/mail/easclient/EASSetting;->mTempDefaultSyncFoldersStatus:[Z
    invoke-static {v4}, Lcom/htc/android/mail/easclient/EASSetting;->access$2200(Lcom/htc/android/mail/easclient/EASSetting;)[Z

    move-result-object v4

    array-length v4, v4

    if-ge v2, v4, :cond_2

    .line 1585
    iget-object v4, p0, Lcom/htc/android/mail/easclient/EASSetting$10;->val$defaultSyncMailboxs:Lcom/htc/android/mail/Mailboxs;

    invoke-virtual {v4, v2}, Lcom/htc/android/mail/Mailboxs;->getMailbox(I)Lcom/htc/android/mail/Mailbox;

    move-result-object v3

    .line 1586
    .local v3, mailbox:Lcom/htc/android/mail/Mailbox;
    iget-object v4, p0, Lcom/htc/android/mail/easclient/EASSetting$10;->this$0:Lcom/htc/android/mail/easclient/EASSetting;

    #getter for: Lcom/htc/android/mail/easclient/EASSetting;->mTempDefaultSyncFoldersStatus:[Z
    invoke-static {v4}, Lcom/htc/android/mail/easclient/EASSetting;->access$2200(Lcom/htc/android/mail/easclient/EASSetting;)[Z

    move-result-object v4

    aget-boolean v4, v4, v2

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 1587
    iget-object v4, v3, Lcom/htc/android/mail/Mailbox;->serverId:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1589
    :cond_1
    iget-object v4, p0, Lcom/htc/android/mail/easclient/EASSetting$10;->this$0:Lcom/htc/android/mail/easclient/EASSetting;

    #getter for: Lcom/htc/android/mail/easclient/EASSetting;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v4}, Lcom/htc/android/mail/easclient/EASSetting;->access$2300(Lcom/htc/android/mail/easclient/EASSetting;)Lcom/htc/android/mail/Account;

    move-result-object v4

    iget-wide v5, v3, Lcom/htc/android/mail/Mailbox;->id:J

    iget-object v7, p0, Lcom/htc/android/mail/easclient/EASSetting$10;->this$0:Lcom/htc/android/mail/easclient/EASSetting;

    #getter for: Lcom/htc/android/mail/easclient/EASSetting;->mTempDefaultSyncFoldersStatus:[Z
    invoke-static {v7}, Lcom/htc/android/mail/easclient/EASSetting;->access$2200(Lcom/htc/android/mail/easclient/EASSetting;)[Z

    move-result-object v7

    aget-boolean v7, v7, v2

    invoke-virtual {v4, v5, v6, v7}, Lcom/htc/android/mail/Account;->setMailboxDefaultSyncEnabled(JZ)V

    .line 1584
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1592
    .end local v3           #mailbox:Lcom/htc/android/mail/Mailbox;
    :cond_2
    iget-object v4, p0, Lcom/htc/android/mail/easclient/EASSetting$10;->this$0:Lcom/htc/android/mail/easclient/EASSetting;

    #getter for: Lcom/htc/android/mail/easclient/EASSetting;->mailDefaultSync:Lcom/htc/preference/HtcPreferenceScreen;
    invoke-static {v4}, Lcom/htc/android/mail/easclient/EASSetting;->access$2500(Lcom/htc/android/mail/easclient/EASSetting;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/easclient/EASSetting$10;->this$0:Lcom/htc/android/mail/easclient/EASSetting;

    #calls: Lcom/htc/android/mail/easclient/EASSetting;->getFolderSyncPreferenceSummary()Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/android/mail/easclient/EASSetting;->access$2400(Lcom/htc/android/mail/easclient/EASSetting;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1595
    :try_start_1
    iget-object v4, p0, Lcom/htc/android/mail/easclient/EASSetting$10;->this$0:Lcom/htc/android/mail/easclient/EASSetting;

    #getter for: Lcom/htc/android/mail/easclient/EASSetting;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;
    invoke-static {v4}, Lcom/htc/android/mail/easclient/EASSetting;->access$300(Lcom/htc/android/mail/easclient/EASSetting;)Lcom/htc/android/mail/eassvc/pim/IEASService;

    move-result-object v5

    iget-object v4, p0, Lcom/htc/android/mail/easclient/EASSetting$10;->this$0:Lcom/htc/android/mail/easclient/EASSetting;

    #getter for: Lcom/htc/android/mail/easclient/EASSetting;->mAccountId:J
    invoke-static {v4}, Lcom/htc/android/mail/easclient/EASSetting;->access$200(Lcom/htc/android/mail/easclient/EASSetting;)J

    move-result-wide v6

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-interface {v5, v6, v7, v4}, Lcom/htc/android/mail/eassvc/pim/IEASService;->setDefaultSyncMailbox(J[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1600
    :goto_2
    :try_start_2
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/htc/android/mail/easclient/EASSetting$10$1;

    invoke-direct {v5, p0}, Lcom/htc/android/mail/easclient/EASSetting$10$1;-><init>(Lcom/htc/android/mail/easclient/EASSetting$10;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1605
    .end local v0           #defaultSyncList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #i:I
    :catch_0
    move-exception v1

    .line 1606
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1596
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #defaultSyncList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2       #i:I
    :catch_1
    move-exception v1

    .line 1597
    .restart local v1       #e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2
.end method
