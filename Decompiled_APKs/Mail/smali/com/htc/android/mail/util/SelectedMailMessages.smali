.class public Lcom/htc/android/mail/util/SelectedMailMessages;
.super Ljava/lang/Object;
.source "SelectedMailMessages.java"


# instance fields
.field public mCount:I

.field private mSelected:Lcom/htc/android/mail/util/SparseLongBooleanArray;

.field private mSelectedMessages:Lcom/htc/android/mail/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/android/mail/util/SparseArray",
            "<",
            "Lcom/htc/android/mail/util/SparseArray",
            "<",
            "Lcom/htc/android/mail/util/SparseArray",
            "<",
            "Lcom/htc/android/mail/MailMessage;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/htc/android/mail/util/SparseLongBooleanArray;

    invoke-direct {v0}, Lcom/htc/android/mail/util/SparseLongBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/util/SelectedMailMessages;->mSelected:Lcom/htc/android/mail/util/SparseLongBooleanArray;

    .line 27
    new-instance v0, Lcom/htc/android/mail/util/SparseArray;

    invoke-direct {v0}, Lcom/htc/android/mail/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/util/SelectedMailMessages;->mSelectedMessages:Lcom/htc/android/mail/util/SparseArray;

    return-void
.end method

.method private getList(Lcom/htc/android/mail/util/SparseArray;)Ljava/util/ArrayList;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/mail/util/SparseArray",
            "<",
            "Lcom/htc/android/mail/MailMessage;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/MailMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    .local p1, selectedMailMessages:Lcom/htc/android/mail/util/SparseArray;,"Lcom/htc/android/mail/util/SparseArray<Lcom/htc/android/mail/MailMessage;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 178
    .local v1, mailMessageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/MailMessage;>;"
    invoke-virtual {p1}, Lcom/htc/android/mail/util/SparseArray;->size()I

    move-result v2

    .line 179
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 180
    invoke-virtual {p1, v0}, Lcom/htc/android/mail/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 181
    invoke-virtual {p1, v0}, Lcom/htc/android/mail/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 184
    :cond_1
    return-object v1
.end method


# virtual methods
.method public checkboxChecked(J)Z
    .locals 1
    .parameter "messageId"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/htc/android/mail/util/SelectedMailMessages;->mSelected:Lcom/htc/android/mail/util/SparseLongBooleanArray;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/mail/util/SparseLongBooleanArray;->get(J)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/mail/util/SelectedMailMessages;->mCount:I

    .line 189
    iget-object v0, p0, Lcom/htc/android/mail/util/SelectedMailMessages;->mSelected:Lcom/htc/android/mail/util/SparseLongBooleanArray;

    invoke-virtual {v0}, Lcom/htc/android/mail/util/SparseLongBooleanArray;->clear()V

    .line 190
    iget-object v0, p0, Lcom/htc/android/mail/util/SelectedMailMessages;->mSelectedMessages:Lcom/htc/android/mail/util/SparseArray;

    invoke-virtual {v0}, Lcom/htc/android/mail/util/SparseArray;->clear()V

    .line 191
    return-void
.end method

.method public deleteMail(Landroid/content/Context;Lcom/htc/android/mail/AbsRequestController;)V
    .locals 18
    .parameter "context"
    .parameter "controller"

    .prologue
    .line 71
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/util/SelectedMailMessages;->mSelectedMessages:Lcom/htc/android/mail/util/SparseArray;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/android/mail/util/SparseArray;->size()I

    move-result v2

    .line 72
    .local v2, accountCount:I
    invoke-static/range {p1 .. p1}, Lcom/htc/android/mail/AccountPool;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/AccountPool;

    move-result-object v5

    .line 73
    .local v5, accountPool:Lcom/htc/android/mail/AccountPool;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v2, :cond_3

    .line 74
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/util/SelectedMailMessages;->mSelectedMessages:Lcom/htc/android/mail/util/SparseArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lcom/htc/android/mail/util/SparseArray;->keyAt(I)J

    move-result-wide v3

    .line 75
    .local v3, accountId:J
    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v3, v4}, Lcom/htc/android/mail/AccountPool;->getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;

    move-result-object v1

    .line 76
    .local v1, account:Lcom/htc/android/mail/Account;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/util/SelectedMailMessages;->mSelectedMessages:Lcom/htc/android/mail/util/SparseArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lcom/htc/android/mail/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/htc/android/mail/util/SparseArray;

    .line 77
    .local v16, selectedMailboxs:Lcom/htc/android/mail/util/SparseArray;,"Lcom/htc/android/mail/util/SparseArray<Lcom/htc/android/mail/util/SparseArray<Lcom/htc/android/mail/MailMessage;>;>;"
    invoke-virtual/range {v16 .. v16}, Lcom/htc/android/mail/util/SparseArray;->size()I

    move-result v12

    .line 78
    .local v12, mailboxCount:I
    const/4 v8, 0x0

    .local v8, j:I
    :goto_1
    if-ge v8, v12, :cond_2

    .line 79
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lcom/htc/android/mail/util/SparseArray;->keyAt(I)J

    move-result-wide v13

    .line 80
    .local v13, mailboxId:J
    invoke-virtual {v1}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13, v14}, Lcom/htc/android/mail/Mailboxs;->getMailboxById(J)Lcom/htc/android/mail/Mailbox;

    move-result-object v11

    .line 81
    .local v11, mailbox:Lcom/htc/android/mail/Mailbox;
    if-nez v11, :cond_1

    .line 78
    :cond_0
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 83
    :cond_1
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lcom/htc/android/mail/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/android/mail/util/SparseArray;

    .line 84
    .local v9, mailMessageArray:Lcom/htc/android/mail/util/SparseArray;,"Lcom/htc/android/mail/util/SparseArray<Lcom/htc/android/mail/MailMessage;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/htc/android/mail/util/SelectedMailMessages;->getList(Lcom/htc/android/mail/util/SparseArray;)Ljava/util/ArrayList;

    move-result-object v10

    .line 85
    .local v10, mailMessageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/MailMessage;>;"
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-eqz v17, :cond_0

    .line 87
    new-instance v15, Lcom/htc/android/mail/Request;

    invoke-direct {v15}, Lcom/htc/android/mail/Request;-><init>()V

    .line 88
    .local v15, r:Lcom/htc/android/mail/Request;
    const/16 v17, 0x4

    move/from16 v0, v17

    iput v0, v15, Lcom/htc/android/mail/Request;->command:I

    .line 90
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 91
    .local v6, b:Landroid/os/Bundle;
    const-string v17, "Mailbox"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0, v11}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 92
    const-string v17, "MailMessageList"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0, v10}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 93
    iput-object v6, v15, Lcom/htc/android/mail/Request;->parameter:Landroid/os/Bundle;

    .line 94
    invoke-virtual {v15, v3, v4}, Lcom/htc/android/mail/Request;->setAccountId(J)V

    .line 95
    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/htc/android/mail/AbsRequestController;->deleteMail(Lcom/htc/android/mail/Request;)V

    goto :goto_2

    .line 73
    .end local v6           #b:Landroid/os/Bundle;
    .end local v9           #mailMessageArray:Lcom/htc/android/mail/util/SparseArray;,"Lcom/htc/android/mail/util/SparseArray<Lcom/htc/android/mail/MailMessage;>;"
    .end local v10           #mailMessageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/MailMessage;>;"
    .end local v11           #mailbox:Lcom/htc/android/mail/Mailbox;
    .end local v13           #mailboxId:J
    .end local v15           #r:Lcom/htc/android/mail/Request;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 98
    .end local v1           #account:Lcom/htc/android/mail/Account;
    .end local v3           #accountId:J
    .end local v8           #j:I
    .end local v12           #mailboxCount:I
    .end local v16           #selectedMailboxs:Lcom/htc/android/mail/util/SparseArray;,"Lcom/htc/android/mail/util/SparseArray<Lcom/htc/android/mail/util/SparseArray<Lcom/htc/android/mail/MailMessage;>;>;"
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/util/SelectedMailMessages;->clear()V

    .line 99
    return-void
.end method

.method public deselect(JJJ)V
    .locals 4
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "messageId"

    .prologue
    .line 161
    iget-object v2, p0, Lcom/htc/android/mail/util/SelectedMailMessages;->mSelected:Lcom/htc/android/mail/util/SparseLongBooleanArray;

    invoke-virtual {v2, p5, p6}, Lcom/htc/android/mail/util/SparseLongBooleanArray;->get(J)Z

    move-result v2

    if-nez v2, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    iget-object v2, p0, Lcom/htc/android/mail/util/SelectedMailMessages;->mSelected:Lcom/htc/android/mail/util/SparseLongBooleanArray;

    const/4 v3, 0x0

    invoke-virtual {v2, p5, p6, v3}, Lcom/htc/android/mail/util/SparseLongBooleanArray;->put(JZ)V

    .line 163
    iget-object v2, p0, Lcom/htc/android/mail/util/SelectedMailMessages;->mSelectedMessages:Lcom/htc/android/mail/util/SparseArray;

    invoke-virtual {v2, p1, p2}, Lcom/htc/android/mail/util/SparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/util/SparseArray;

    .line 164
    .local v1, selectedMailbox:Lcom/htc/android/mail/util/SparseArray;,"Lcom/htc/android/mail/util/SparseArray<Lcom/htc/android/mail/util/SparseArray<Lcom/htc/android/mail/MailMessage;>;>;"
    if-eqz v1, :cond_0

    .line 165
    invoke-virtual {v1, p3, p4}, Lcom/htc/android/mail/util/SparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/util/SparseArray;

    .line 166
    .local v0, selectedMailMessages:Lcom/htc/android/mail/util/SparseArray;,"Lcom/htc/android/mail/util/SparseArray<Lcom/htc/android/mail/MailMessage;>;"
    if-eqz v0, :cond_0

    .line 168
    const/4 v2, 0x0

    invoke-virtual {v0, p5, p6, v2}, Lcom/htc/android/mail/util/SparseArray;->put(JLjava/lang/Object;)V

    .line 169
    iget v2, p0, Lcom/htc/android/mail/util/SelectedMailMessages;->mCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/android/mail/util/SelectedMailMessages;->mCount:I

    goto :goto_0
.end method

.method public moveMail(Landroid/content/Context;Lcom/htc/android/mail/AbsRequestController;J)V
    .locals 6
    .parameter "context"
    .parameter "controller"
    .parameter "toMailboxId"

    .prologue
    .line 31
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/mail/util/SelectedMailMessages;->moveMail(Landroid/content/Context;Lcom/htc/android/mail/AbsRequestController;JZ)V

    .line 32
    return-void
.end method

.method public moveMail(Landroid/content/Context;Lcom/htc/android/mail/AbsRequestController;JZ)V
    .locals 21
    .parameter "context"
    .parameter "controller"
    .parameter "toMailboxId"
    .parameter "syncToRemote"

    .prologue
    .line 35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/util/SelectedMailMessages;->mSelectedMessages:Lcom/htc/android/mail/util/SparseArray;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/htc/android/mail/util/SparseArray;->size()I

    move-result v4

    .line 36
    .local v4, accountCount:I
    invoke-static/range {p1 .. p1}, Lcom/htc/android/mail/AccountPool;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/AccountPool;

    move-result-object v7

    .line 37
    .local v7, accountPool:Lcom/htc/android/mail/AccountPool;
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    if-ge v10, v4, :cond_3

    .line 38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/util/SelectedMailMessages;->mSelectedMessages:Lcom/htc/android/mail/util/SparseArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Lcom/htc/android/mail/util/SparseArray;->keyAt(I)J

    move-result-wide v5

    .line 39
    .local v5, accountId:J
    move-object/from16 v0, p1

    invoke-virtual {v7, v0, v5, v6}, Lcom/htc/android/mail/AccountPool;->getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;

    move-result-object v3

    .line 40
    .local v3, account:Lcom/htc/android/mail/Account;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/util/SelectedMailMessages;->mSelectedMessages:Lcom/htc/android/mail/util/SparseArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Lcom/htc/android/mail/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/htc/android/mail/util/SparseArray;

    .line 41
    .local v18, selectedMailboxs:Lcom/htc/android/mail/util/SparseArray;,"Lcom/htc/android/mail/util/SparseArray<Lcom/htc/android/mail/util/SparseArray<Lcom/htc/android/mail/MailMessage;>;>;"
    invoke-virtual/range {v18 .. v18}, Lcom/htc/android/mail/util/SparseArray;->size()I

    move-result v14

    .line 42
    .local v14, mailboxCount:I
    const/4 v11, 0x0

    .local v11, j:I
    :goto_1
    if-ge v11, v14, :cond_2

    .line 43
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/htc/android/mail/util/SparseArray;->keyAt(I)J

    move-result-wide v15

    .line 44
    .local v15, mailboxId:J
    invoke-virtual {v3}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/Mailboxs;->getMailboxById(J)Lcom/htc/android/mail/Mailbox;

    move-result-object v9

    .line 45
    .local v9, fromMailbox:Lcom/htc/android/mail/Mailbox;
    if-nez v9, :cond_1

    .line 42
    :cond_0
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 46
    :cond_1
    invoke-virtual {v3}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/Mailboxs;->getMailboxById(J)Lcom/htc/android/mail/Mailbox;

    move-result-object v19

    .line 47
    .local v19, toMailbox:Lcom/htc/android/mail/Mailbox;
    if-eqz v19, :cond_0

    .line 49
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/htc/android/mail/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/htc/android/mail/util/SparseArray;

    .line 50
    .local v12, mailMessageArray:Lcom/htc/android/mail/util/SparseArray;,"Lcom/htc/android/mail/util/SparseArray<Lcom/htc/android/mail/MailMessage;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/htc/android/mail/util/SelectedMailMessages;->getList(Lcom/htc/android/mail/util/SparseArray;)Ljava/util/ArrayList;

    move-result-object v13

    .line 51
    .local v13, mailMessageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/MailMessage;>;"
    if-eqz v13, :cond_0

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-eqz v20, :cond_0

    .line 53
    new-instance v17, Lcom/htc/android/mail/Request;

    invoke-direct/range {v17 .. v17}, Lcom/htc/android/mail/Request;-><init>()V

    .line 54
    .local v17, r:Lcom/htc/android/mail/Request;
    const/16 v20, 0x2

    move/from16 v0, v20

    move-object/from16 v1, v17

    iput v0, v1, Lcom/htc/android/mail/Request;->command:I

    .line 56
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 57
    .local v8, b:Landroid/os/Bundle;
    const-string v20, "FromMailbox"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0, v9}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 58
    const-string v20, "ToMailbox"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 59
    const-string v20, "MailMessageList"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0, v13}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 60
    const-string v20, "syncToRemote"

    move-object/from16 v0, v20

    move/from16 v1, p5

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 61
    move-object/from16 v0, v17

    iput-object v8, v0, Lcom/htc/android/mail/Request;->parameter:Landroid/os/Bundle;

    .line 62
    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v6}, Lcom/htc/android/mail/Request;->setAccountId(J)V

    .line 63
    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/AbsRequestController;->moveMail(Lcom/htc/android/mail/Request;)V

    goto :goto_2

    .line 37
    .end local v8           #b:Landroid/os/Bundle;
    .end local v9           #fromMailbox:Lcom/htc/android/mail/Mailbox;
    .end local v12           #mailMessageArray:Lcom/htc/android/mail/util/SparseArray;,"Lcom/htc/android/mail/util/SparseArray<Lcom/htc/android/mail/MailMessage;>;"
    .end local v13           #mailMessageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/MailMessage;>;"
    .end local v15           #mailboxId:J
    .end local v17           #r:Lcom/htc/android/mail/Request;
    .end local v19           #toMailbox:Lcom/htc/android/mail/Mailbox;
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 66
    .end local v3           #account:Lcom/htc/android/mail/Account;
    .end local v5           #accountId:J
    .end local v11           #j:I
    .end local v14           #mailboxCount:I
    .end local v18           #selectedMailboxs:Lcom/htc/android/mail/util/SparseArray;,"Lcom/htc/android/mail/util/SparseArray<Lcom/htc/android/mail/util/SparseArray<Lcom/htc/android/mail/MailMessage;>;>;"
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/util/SelectedMailMessages;->clear()V

    .line 67
    return-void
.end method

.method public select(JJJLjava/lang/String;)V
    .locals 5
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "messageId"
    .parameter "group"

    .prologue
    .line 136
    iget-object v3, p0, Lcom/htc/android/mail/util/SelectedMailMessages;->mSelected:Lcom/htc/android/mail/util/SparseLongBooleanArray;

    invoke-virtual {v3, p5, p6}, Lcom/htc/android/mail/util/SparseLongBooleanArray;->get(J)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    iget-object v3, p0, Lcom/htc/android/mail/util/SelectedMailMessages;->mSelectedMessages:Lcom/htc/android/mail/util/SparseArray;

    invoke-virtual {v3, p1, p2}, Lcom/htc/android/mail/util/SparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/util/SparseArray;

    .line 139
    .local v2, selectedMailbox:Lcom/htc/android/mail/util/SparseArray;,"Lcom/htc/android/mail/util/SparseArray<Lcom/htc/android/mail/util/SparseArray<Lcom/htc/android/mail/MailMessage;>;>;"
    if-nez v2, :cond_2

    .line 140
    new-instance v2, Lcom/htc/android/mail/util/SparseArray;

    .end local v2           #selectedMailbox:Lcom/htc/android/mail/util/SparseArray;,"Lcom/htc/android/mail/util/SparseArray<Lcom/htc/android/mail/util/SparseArray<Lcom/htc/android/mail/MailMessage;>;>;"
    invoke-direct {v2}, Lcom/htc/android/mail/util/SparseArray;-><init>()V

    .line 141
    .restart local v2       #selectedMailbox:Lcom/htc/android/mail/util/SparseArray;,"Lcom/htc/android/mail/util/SparseArray<Lcom/htc/android/mail/util/SparseArray<Lcom/htc/android/mail/MailMessage;>;>;"
    iget-object v3, p0, Lcom/htc/android/mail/util/SelectedMailMessages;->mSelectedMessages:Lcom/htc/android/mail/util/SparseArray;

    invoke-virtual {v3, p1, p2, v2}, Lcom/htc/android/mail/util/SparseArray;->put(JLjava/lang/Object;)V

    .line 143
    :cond_2
    invoke-virtual {v2, p3, p4}, Lcom/htc/android/mail/util/SparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/util/SparseArray;

    .line 144
    .local v1, selectedMailMessages:Lcom/htc/android/mail/util/SparseArray;,"Lcom/htc/android/mail/util/SparseArray<Lcom/htc/android/mail/MailMessage;>;"
    if-nez v1, :cond_3

    .line 145
    new-instance v1, Lcom/htc/android/mail/util/SparseArray;

    .end local v1           #selectedMailMessages:Lcom/htc/android/mail/util/SparseArray;,"Lcom/htc/android/mail/util/SparseArray<Lcom/htc/android/mail/MailMessage;>;"
    invoke-direct {v1}, Lcom/htc/android/mail/util/SparseArray;-><init>()V

    .line 146
    .restart local v1       #selectedMailMessages:Lcom/htc/android/mail/util/SparseArray;,"Lcom/htc/android/mail/util/SparseArray<Lcom/htc/android/mail/MailMessage;>;"
    invoke-virtual {v2, p3, p4, v1}, Lcom/htc/android/mail/util/SparseArray;->put(JLjava/lang/Object;)V

    .line 149
    :cond_3
    iget-object v3, p0, Lcom/htc/android/mail/util/SelectedMailMessages;->mSelected:Lcom/htc/android/mail/util/SparseLongBooleanArray;

    invoke-virtual {v3, p5, p6}, Lcom/htc/android/mail/util/SparseLongBooleanArray;->get(J)Z

    move-result v3

    if-nez v3, :cond_0

    .line 150
    iget-object v3, p0, Lcom/htc/android/mail/util/SelectedMailMessages;->mSelected:Lcom/htc/android/mail/util/SparseLongBooleanArray;

    const/4 v4, 0x1

    invoke-virtual {v3, p5, p6, v4}, Lcom/htc/android/mail/util/SparseLongBooleanArray;->put(JZ)V

    .line 151
    new-instance v0, Lcom/htc/android/mail/MailMessage;

    invoke-direct {v0, p5, p6}, Lcom/htc/android/mail/MailMessage;-><init>(J)V

    .line 152
    .local v0, mailMessage:Lcom/htc/android/mail/MailMessage;
    iput-wide p1, v0, Lcom/htc/android/mail/MailMessage;->accountId:J

    .line 153
    iput-wide p3, v0, Lcom/htc/android/mail/MailMessage;->mailBoxId:J

    .line 154
    iput-object p7, v0, Lcom/htc/android/mail/MailMessage;->group:Ljava/lang/String;

    .line 155
    invoke-virtual {v1, p5, p6, v0}, Lcom/htc/android/mail/util/SparseArray;->put(JLjava/lang/Object;)V

    .line 156
    iget v3, p0, Lcom/htc/android/mail/util/SelectedMailMessages;->mCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/htc/android/mail/util/SelectedMailMessages;->mCount:I

    goto :goto_0
.end method

.method public setReadStatus(Landroid/content/Context;Lcom/htc/android/mail/AbsRequestController;Z)V
    .locals 18
    .parameter "context"
    .parameter "controller"
    .parameter "setRead"

    .prologue
    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/util/SelectedMailMessages;->mSelectedMessages:Lcom/htc/android/mail/util/SparseArray;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/android/mail/util/SparseArray;->size()I

    move-result v2

    .line 103
    .local v2, accountCount:I
    invoke-static/range {p1 .. p1}, Lcom/htc/android/mail/AccountPool;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/AccountPool;

    move-result-object v5

    .line 104
    .local v5, accountPool:Lcom/htc/android/mail/AccountPool;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v2, :cond_4

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/util/SelectedMailMessages;->mSelectedMessages:Lcom/htc/android/mail/util/SparseArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lcom/htc/android/mail/util/SparseArray;->keyAt(I)J

    move-result-wide v3

    .line 106
    .local v3, accountId:J
    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v3, v4}, Lcom/htc/android/mail/AccountPool;->getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;

    move-result-object v1

    .line 107
    .local v1, account:Lcom/htc/android/mail/Account;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/util/SelectedMailMessages;->mSelectedMessages:Lcom/htc/android/mail/util/SparseArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lcom/htc/android/mail/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/htc/android/mail/util/SparseArray;

    .line 108
    .local v16, selectedMailboxs:Lcom/htc/android/mail/util/SparseArray;,"Lcom/htc/android/mail/util/SparseArray<Lcom/htc/android/mail/util/SparseArray<Lcom/htc/android/mail/MailMessage;>;>;"
    invoke-virtual/range {v16 .. v16}, Lcom/htc/android/mail/util/SparseArray;->size()I

    move-result v12

    .line 109
    .local v12, mailboxCount:I
    const/4 v8, 0x0

    .local v8, j:I
    :goto_1
    if-ge v8, v12, :cond_3

    .line 110
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lcom/htc/android/mail/util/SparseArray;->keyAt(I)J

    move-result-wide v13

    .line 111
    .local v13, mailboxId:J
    invoke-virtual {v1}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13, v14}, Lcom/htc/android/mail/Mailboxs;->getMailboxById(J)Lcom/htc/android/mail/Mailbox;

    move-result-object v11

    .line 112
    .local v11, mailbox:Lcom/htc/android/mail/Mailbox;
    if-nez v11, :cond_1

    .line 109
    :cond_0
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 114
    :cond_1
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lcom/htc/android/mail/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/android/mail/util/SparseArray;

    .line 115
    .local v9, mailMessageArray:Lcom/htc/android/mail/util/SparseArray;,"Lcom/htc/android/mail/util/SparseArray<Lcom/htc/android/mail/MailMessage;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/htc/android/mail/util/SelectedMailMessages;->getList(Lcom/htc/android/mail/util/SparseArray;)Ljava/util/ArrayList;

    move-result-object v10

    .line 116
    .local v10, mailMessageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/MailMessage;>;"
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-eqz v17, :cond_0

    .line 118
    new-instance v15, Lcom/htc/android/mail/Request;

    invoke-direct {v15}, Lcom/htc/android/mail/Request;-><init>()V

    .line 119
    .local v15, r:Lcom/htc/android/mail/Request;
    if-eqz p3, :cond_2

    .line 120
    const/16 v17, 0x6

    move/from16 v0, v17

    iput v0, v15, Lcom/htc/android/mail/Request;->command:I

    .line 124
    :goto_3
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 125
    .local v6, b:Landroid/os/Bundle;
    const-string v17, "Mailbox"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0, v11}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 126
    const-string v17, "MailMessageList"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0, v10}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 127
    iput-object v6, v15, Lcom/htc/android/mail/Request;->parameter:Landroid/os/Bundle;

    .line 128
    invoke-virtual {v15, v3, v4}, Lcom/htc/android/mail/Request;->setAccountId(J)V

    .line 129
    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/htc/android/mail/AbsRequestController;->setReadStatus(Lcom/htc/android/mail/Request;)V

    goto :goto_2

    .line 122
    .end local v6           #b:Landroid/os/Bundle;
    :cond_2
    const/16 v17, 0x5

    move/from16 v0, v17

    iput v0, v15, Lcom/htc/android/mail/Request;->command:I

    goto :goto_3

    .line 104
    .end local v9           #mailMessageArray:Lcom/htc/android/mail/util/SparseArray;,"Lcom/htc/android/mail/util/SparseArray<Lcom/htc/android/mail/MailMessage;>;"
    .end local v10           #mailMessageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/MailMessage;>;"
    .end local v11           #mailbox:Lcom/htc/android/mail/Mailbox;
    .end local v13           #mailboxId:J
    .end local v15           #r:Lcom/htc/android/mail/Request;
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 132
    .end local v1           #account:Lcom/htc/android/mail/Account;
    .end local v3           #accountId:J
    .end local v8           #j:I
    .end local v12           #mailboxCount:I
    .end local v16           #selectedMailboxs:Lcom/htc/android/mail/util/SparseArray;,"Lcom/htc/android/mail/util/SparseArray<Lcom/htc/android/mail/util/SparseArray<Lcom/htc/android/mail/MailMessage;>;>;"
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/util/SelectedMailMessages;->clear()V

    .line 133
    return-void
.end method
