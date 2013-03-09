.class public Lcom/htc/android/mail/util/SelectedMailGroups;
.super Ljava/lang/Object;
.source "SelectedMailGroups.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/util/SelectedMailGroups$1;,
        Lcom/htc/android/mail/util/SelectedMailGroups$MyMailMessages;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SelectedMailGroups"


# instance fields
.field public mCount:I

.field public mGroupCount:I

.field private mMailMessagesForDeselectedGroup:Lcom/htc/android/mail/util/SelectedMailGroups$MyMailMessages;

.field private mMailMessagesForSelectedGroup:Lcom/htc/android/mail/util/SelectedMailGroups$MyMailMessages;

.field private mSelectedGroups:Lcom/htc/android/mail/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/android/mail/util/SparseArray",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSelectedMailMessages:Lcom/htc/android/mail/util/SelectedMailMessages;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/util/SelectedMailGroups;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/htc/android/mail/util/SparseArray;

    invoke-direct {v0}, Lcom/htc/android/mail/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/util/SelectedMailGroups;->mSelectedGroups:Lcom/htc/android/mail/util/SparseArray;

    .line 34
    new-instance v0, Lcom/htc/android/mail/util/SelectedMailMessages;

    invoke-direct {v0}, Lcom/htc/android/mail/util/SelectedMailMessages;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/util/SelectedMailGroups;->mSelectedMailMessages:Lcom/htc/android/mail/util/SelectedMailMessages;

    .line 38
    new-instance v0, Lcom/htc/android/mail/util/SelectedMailGroups$MyMailMessages;

    invoke-direct {v0, v1}, Lcom/htc/android/mail/util/SelectedMailGroups$MyMailMessages;-><init>(Lcom/htc/android/mail/util/SelectedMailGroups$1;)V

    iput-object v0, p0, Lcom/htc/android/mail/util/SelectedMailGroups;->mMailMessagesForSelectedGroup:Lcom/htc/android/mail/util/SelectedMailGroups$MyMailMessages;

    .line 40
    new-instance v0, Lcom/htc/android/mail/util/SelectedMailGroups$MyMailMessages;

    invoke-direct {v0, v1}, Lcom/htc/android/mail/util/SelectedMailGroups$MyMailMessages;-><init>(Lcom/htc/android/mail/util/SelectedMailGroups$1;)V

    iput-object v0, p0, Lcom/htc/android/mail/util/SelectedMailGroups;->mMailMessagesForDeselectedGroup:Lcom/htc/android/mail/util/SelectedMailGroups$MyMailMessages;

    .line 322
    return-void
.end method

.method private containsGroup(JLjava/lang/String;)Z
    .locals 2
    .parameter "mailboxId"
    .parameter "group"

    .prologue
    .line 291
    iget-object v1, p0, Lcom/htc/android/mail/util/SelectedMailGroups;->mSelectedGroups:Lcom/htc/android/mail/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Lcom/htc/android/mail/util/SparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 292
    .local v0, groupSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 293
    :goto_0
    return v1

    :cond_0
    invoke-interface {v0, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method private getConversationMailCursor(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 19
    .parameter "context"

    .prologue
    .line 43
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 44
    .local v1, cr:Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/util/SelectedMailGroups;->mSelectedGroups:Lcom/htc/android/mail/util/SparseArray;

    invoke-virtual {v2}, Lcom/htc/android/mail/util/SparseArray;->size()I

    move-result v18

    .line 46
    .local v18, size:I
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    .line 47
    .local v14, sbSecletedGroup:Ljava/lang/StringBuffer;
    const/4 v10, 0x1

    .line 48
    .local v10, isFirstItem:Z
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    move/from16 v0, v18

    if-ge v9, v0, :cond_3

    .line 49
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/util/SelectedMailGroups;->mSelectedGroups:Lcom/htc/android/mail/util/SparseArray;

    invoke-virtual {v2, v9}, Lcom/htc/android/mail/util/SparseArray;->keyAt(I)J

    move-result-wide v11

    .line 50
    .local v11, mailboxId:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/util/SelectedMailGroups;->mSelectedGroups:Lcom/htc/android/mail/util/SparseArray;

    invoke-virtual {v2, v9}, Lcom/htc/android/mail/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    .line 51
    .local v8, groupSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 48
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 52
    :cond_1
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v8, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    .line 54
    .local v7, groupArray:[Ljava/lang/String;
    if-nez v10, :cond_2

    .line 55
    const-string v2, " OR "

    invoke-virtual {v14, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    :cond_2
    const-string v2, " ( _mailboxId = "

    invoke-virtual {v14, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 58
    const-string v2, " AND _group IN ( "

    invoke-virtual {v14, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v7, v4}, Lcom/htc/android/mail/MailCommon;->getSequence([Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    const-string v2, " ) ) "

    invoke-virtual {v14, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    const/4 v10, 0x0

    goto :goto_1

    .line 63
    .end local v7           #groupArray:[Ljava/lang/String;
    .end local v8           #groupSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v11           #mailboxId:J
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/util/SelectedMailGroups;->mMailMessagesForSelectedGroup:Lcom/htc/android/mail/util/SelectedMailGroups$MyMailMessages;

    invoke-virtual {v2}, Lcom/htc/android/mail/util/SelectedMailGroups$MyMailMessages;->getMessageIdSequence()Ljava/lang/String;

    move-result-object v17

    .line 64
    .local v17, sequenceForSelectedGroup:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/util/SelectedMailGroups;->mMailMessagesForDeselectedGroup:Lcom/htc/android/mail/util/SelectedMailGroups$MyMailMessages;

    invoke-virtual {v2}, Lcom/htc/android/mail/util/SelectedMailGroups$MyMailMessages;->getMessageIdSequence()Ljava/lang/String;

    move-result-object v16

    .line 66
    .local v16, sequenceForDeselectedGroup:Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    .line 67
    .local v13, sb:Ljava/lang/StringBuffer;
    invoke-virtual {v14}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_7

    .line 68
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 69
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    .line 70
    .local v15, sbSecletedGroup2:Ljava/lang/StringBuffer;
    const-string v2, " ( "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, " ) "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, " AND ( _id NOT IN ( "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, ") ) "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    move-object v14, v15

    .line 73
    .end local v15           #sbSecletedGroup2:Ljava/lang/StringBuffer;
    :cond_4
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    .line 74
    const-string v2, " ( "

    invoke-virtual {v13, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, " ) "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, " OR ( _id IN ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, ") ) "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    :goto_2
    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "_id"

    aput-object v4, v3, v2

    const/4 v2, 0x1

    const-string v4, "_account"

    aput-object v4, v3, v2

    const/4 v2, 0x2

    const-string v4, "_mailboxId"

    aput-object v4, v3, v2

    const/4 v2, 0x3

    const-string v4, "_group"

    aput-object v4, v3, v2

    .line 88
    .local v3, projections:[Ljava/lang/String;
    sget-boolean v2, Lcom/htc/android/mail/util/SelectedMailGroups;->DEBUG:Z

    if-eqz v2, :cond_5

    const-string v2, "SelectedMailGroups"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sql: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_5
    sget-object v2, Lcom/htc/android/mail/MailProvider;->sMessagesURI:Landroid/net/Uri;

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2

    .line 76
    .end local v3           #projections:[Ljava/lang/String;
    :cond_6
    move-object v13, v14

    goto :goto_2

    .line 79
    :cond_7
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_8

    .line 81
    const-string v2, "1 != 1"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 83
    :cond_8
    const-string v2, "_id IN ( "

    invoke-virtual {v13, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, " ) "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method


# virtual methods
.method public childCheckboxChecked(JLjava/lang/String;J)Z
    .locals 6
    .parameter "mailboxId"
    .parameter "group"
    .parameter "messageId"

    .prologue
    .line 306
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/android/mail/util/SelectedMailGroups;->containsGroup(JLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 307
    iget-object v0, p0, Lcom/htc/android/mail/util/SelectedMailGroups;->mMailMessagesForSelectedGroup:Lcom/htc/android/mail/util/SelectedMailGroups$MyMailMessages;

    move-wide v1, p1

    move-object v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/mail/util/SelectedMailGroups$MyMailMessages;->contains(JLjava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 309
    :goto_0
    return v0

    .line 307
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 309
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/util/SelectedMailGroups;->mMailMessagesForDeselectedGroup:Lcom/htc/android/mail/util/SelectedMailGroups$MyMailMessages;

    move-wide v1, p1

    move-object v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/mail/util/SelectedMailGroups$MyMailMessages;->contains(JLjava/lang/String;J)Z

    move-result v0

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 314
    iput v0, p0, Lcom/htc/android/mail/util/SelectedMailGroups;->mCount:I

    .line 315
    iput v0, p0, Lcom/htc/android/mail/util/SelectedMailGroups;->mGroupCount:I

    .line 316
    iget-object v0, p0, Lcom/htc/android/mail/util/SelectedMailGroups;->mSelectedGroups:Lcom/htc/android/mail/util/SparseArray;

    invoke-virtual {v0}, Lcom/htc/android/mail/util/SparseArray;->clear()V

    .line 317
    iget-object v0, p0, Lcom/htc/android/mail/util/SelectedMailGroups;->mSelectedMailMessages:Lcom/htc/android/mail/util/SelectedMailMessages;

    invoke-virtual {v0}, Lcom/htc/android/mail/util/SelectedMailMessages;->clear()V

    .line 318
    iget-object v0, p0, Lcom/htc/android/mail/util/SelectedMailGroups;->mMailMessagesForSelectedGroup:Lcom/htc/android/mail/util/SelectedMailGroups$MyMailMessages;

    invoke-virtual {v0}, Lcom/htc/android/mail/util/SelectedMailGroups$MyMailMessages;->clear()V

    .line 319
    iget-object v0, p0, Lcom/htc/android/mail/util/SelectedMailGroups;->mMailMessagesForDeselectedGroup:Lcom/htc/android/mail/util/SelectedMailGroups$MyMailMessages;

    invoke-virtual {v0}, Lcom/htc/android/mail/util/SelectedMailGroups$MyMailMessages;->clear()V

    .line 320
    return-void
.end method

.method public deleteConversationMail(Landroid/content/Context;Lcom/htc/android/mail/AbsRequestController;)V
    .locals 9
    .parameter "context"
    .parameter "controller"

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/htc/android/mail/util/SelectedMailGroups;->getConversationMailCursor(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v8

    .line 109
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 110
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 112
    .local v5, messageId:J
    const-string v0, "_account"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 113
    .local v1, accountId:J
    const-string v0, "_mailboxId"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 114
    .local v3, mailboxId:J
    iget-object v0, p0, Lcom/htc/android/mail/util/SelectedMailGroups;->mSelectedMailMessages:Lcom/htc/android/mail/util/SelectedMailMessages;

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/htc/android/mail/util/SelectedMailMessages;->select(JJJLjava/lang/String;)V

    goto :goto_0

    .line 116
    .end local v1           #accountId:J
    .end local v3           #mailboxId:J
    .end local v5           #messageId:J
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/util/SelectedMailGroups;->mSelectedMailMessages:Lcom/htc/android/mail/util/SelectedMailMessages;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/mail/util/SelectedMailMessages;->deleteMail(Landroid/content/Context;Lcom/htc/android/mail/AbsRequestController;)V

    .line 119
    invoke-virtual {p0}, Lcom/htc/android/mail/util/SelectedMailGroups;->clear()V

    .line 120
    return-void
.end method

.method public deselectGroup(Landroid/content/Context;JLcom/htc/android/mail/Mailbox;Ljava/lang/String;I)V
    .locals 9
    .parameter "context"
    .parameter "accountId"
    .parameter "mailbox"
    .parameter "group"
    .parameter "totalNum"

    .prologue
    .line 249
    if-nez p4, :cond_1

    .line 288
    :cond_0
    return-void

    .line 250
    :cond_1
    invoke-virtual {p4}, Lcom/htc/android/mail/Mailbox;->getAccountId()J

    move-result-wide v5

    const-wide v7, 0x7fffffffffffffffL

    cmp-long v5, v5, v7

    if-nez v5, :cond_2

    .line 251
    invoke-static {p1}, Lcom/htc/android/mail/AccountPool;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/AccountPool;

    move-result-object v1

    .line 252
    .local v1, accountPool:Lcom/htc/android/mail/AccountPool;
    invoke-virtual {v1, p1, p2, p3}, Lcom/htc/android/mail/AccountPool;->getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 253
    .local v0, account:Lcom/htc/android/mail/Account;
    if-eqz v0, :cond_0

    .line 254
    iget v5, p4, Lcom/htc/android/mail/Mailbox;->kind:I

    const v6, 0x7ffffffa

    if-ne v5, v6, :cond_3

    .line 255
    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v5

    iget-wide v6, p4, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-virtual {v5, v6, v7}, Lcom/htc/android/mail/Mailboxs;->getMailboxById(J)Lcom/htc/android/mail/Mailbox;

    move-result-object p4

    .line 259
    :goto_0
    if-eqz p4, :cond_0

    .line 262
    .end local v0           #account:Lcom/htc/android/mail/Account;
    .end local v1           #accountPool:Lcom/htc/android/mail/AccountPool;
    :cond_2
    invoke-virtual {p4}, Lcom/htc/android/mail/Mailbox;->getMailboxIds()[J

    move-result-object v4

    .line 263
    .local v4, mailboxIds:[J
    array-length v5, v4

    if-eqz v5, :cond_0

    .line 266
    const/4 v5, 0x0

    aget-wide v5, v4, v5

    invoke-direct {p0, v5, v6, p5}, Lcom/htc/android/mail/util/SelectedMailGroups;->containsGroup(JLjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 267
    iget v5, p0, Lcom/htc/android/mail/util/SelectedMailGroups;->mCount:I

    iget-object v6, p0, Lcom/htc/android/mail/util/SelectedMailGroups;->mMailMessagesForDeselectedGroup:Lcom/htc/android/mail/util/SelectedMailGroups$MyMailMessages;

    const/4 v7, 0x0

    aget-wide v7, v4, v7

    invoke-virtual {v6, v7, v8, p5}, Lcom/htc/android/mail/util/SelectedMailGroups$MyMailMessages;->size(JLjava/lang/String;)I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/htc/android/mail/util/SelectedMailGroups;->mCount:I

    .line 268
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v5, v4

    if-ge v3, v5, :cond_0

    .line 269
    iget-object v5, p0, Lcom/htc/android/mail/util/SelectedMailGroups;->mMailMessagesForSelectedGroup:Lcom/htc/android/mail/util/SelectedMailGroups$MyMailMessages;

    aget-wide v6, v4, v3

    invoke-virtual {v5, v6, v7, p5}, Lcom/htc/android/mail/util/SelectedMailGroups$MyMailMessages;->clear(JLjava/lang/String;)V

    .line 270
    iget-object v5, p0, Lcom/htc/android/mail/util/SelectedMailGroups;->mMailMessagesForDeselectedGroup:Lcom/htc/android/mail/util/SelectedMailGroups$MyMailMessages;

    aget-wide v6, v4, v3

    invoke-virtual {v5, v6, v7, p5}, Lcom/htc/android/mail/util/SelectedMailGroups$MyMailMessages;->clear(JLjava/lang/String;)V

    .line 268
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 257
    .end local v3           #i:I
    .end local v4           #mailboxIds:[J
    .restart local v0       #account:Lcom/htc/android/mail/Account;
    .restart local v1       #accountPool:Lcom/htc/android/mail/AccountPool;
    :cond_3
    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v5

    iget v6, p4, Lcom/htc/android/mail/Mailbox;->kind:I

    invoke-virtual {v5, v6}, Lcom/htc/android/mail/Mailboxs;->getMailboxByKind(I)Lcom/htc/android/mail/Mailbox;

    move-result-object p4

    goto :goto_0

    .line 275
    .end local v0           #account:Lcom/htc/android/mail/Account;
    .end local v1           #accountPool:Lcom/htc/android/mail/AccountPool;
    .restart local v4       #mailboxIds:[J
    :cond_4
    iget v5, p0, Lcom/htc/android/mail/util/SelectedMailGroups;->mGroupCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/htc/android/mail/util/SelectedMailGroups;->mGroupCount:I

    .line 276
    iget v5, p0, Lcom/htc/android/mail/util/SelectedMailGroups;->mCount:I

    sub-int/2addr v5, p6

    iput v5, p0, Lcom/htc/android/mail/util/SelectedMailGroups;->mCount:I

    .line 278
    iget v5, p0, Lcom/htc/android/mail/util/SelectedMailGroups;->mCount:I

    iget-object v6, p0, Lcom/htc/android/mail/util/SelectedMailGroups;->mMailMessagesForSelectedGroup:Lcom/htc/android/mail/util/SelectedMailGroups$MyMailMessages;

    const/4 v7, 0x0

    aget-wide v7, v4, v7

    invoke-virtual {v6, v7, v8, p5}, Lcom/htc/android/mail/util/SelectedMailGroups$MyMailMessages;->size(JLjava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Lcom/htc/android/mail/util/SelectedMailGroups;->mCount:I

    .line 279
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_2
    array-length v5, v4

    if-ge v3, v5, :cond_0

    .line 280
    aget-wide v5, v4, v3

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-nez v5, :cond_6

    .line 279
    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 281
    :cond_6
    iget-object v5, p0, Lcom/htc/android/mail/util/SelectedMailGroups;->mSelectedGroups:Lcom/htc/android/mail/util/SparseArray;

    aget-wide v6, v4, v3

    invoke-virtual {v5, v6, v7}, Lcom/htc/android/mail/util/SparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 282
    .local v2, groupSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v2, :cond_5

    invoke-interface {v2, p5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 283
    invoke-interface {v2, p5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 285
    iget-object v5, p0, Lcom/htc/android/mail/util/SelectedMailGroups;->mMailMessagesForDeselectedGroup:Lcom/htc/android/mail/util/SelectedMailGroups$MyMailMessages;

    aget-wide v6, v4, v3

    invoke-virtual {v5, v6, v7, p5}, Lcom/htc/android/mail/util/SelectedMailGroups$MyMailMessages;->clear(JLjava/lang/String;)V

    .line 286
    iget-object v5, p0, Lcom/htc/android/mail/util/SelectedMailGroups;->mMailMessagesForSelectedGroup:Lcom/htc/android/mail/util/SelectedMailGroups$MyMailMessages;

    aget-wide v6, v4, v3

    invoke-virtual {v5, v6, v7, p5}, Lcom/htc/android/mail/util/SelectedMailGroups$MyMailMessages;->clear(JLjava/lang/String;)V

    goto :goto_3
.end method

.method public deselectMessage(Landroid/content/Context;JLcom/htc/android/mail/Mailbox;Ljava/lang/String;JZ)V
    .locals 10
    .parameter "context"
    .parameter "accountId"
    .parameter "mailbox"
    .parameter "group"
    .parameter "messageId"
    .parameter "deleted"

    .prologue
    .line 169
    if-nez p4, :cond_1

    .line 198
    :cond_0
    return-void

    .line 170
    :cond_1
    invoke-virtual {p4}, Lcom/htc/android/mail/Mailbox;->getAccountId()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 171
    invoke-static {p1}, Lcom/htc/android/mail/AccountPool;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/AccountPool;

    move-result-object v7

    .line 172
    .local v7, accountPool:Lcom/htc/android/mail/AccountPool;
    invoke-virtual {v7, p1, p2, p3}, Lcom/htc/android/mail/AccountPool;->getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;

    move-result-object v6

    .line 173
    .local v6, account:Lcom/htc/android/mail/Account;
    if-eqz v6, :cond_0

    .line 174
    iget v0, p4, Lcom/htc/android/mail/Mailbox;->kind:I

    const v1, 0x7ffffffa

    if-ne v0, v1, :cond_4

    .line 175
    invoke-virtual {v6}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v0

    iget-wide v1, p4, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/Mailboxs;->getMailboxById(J)Lcom/htc/android/mail/Mailbox;

    move-result-object p4

    .line 179
    :goto_0
    if-eqz p4, :cond_0

    .line 182
    .end local v6           #account:Lcom/htc/android/mail/Account;
    .end local v7           #accountPool:Lcom/htc/android/mail/AccountPool;
    :cond_2
    invoke-virtual {p4}, Lcom/htc/android/mail/Mailbox;->getMailboxIds()[J

    move-result-object v9

    .line 183
    .local v9, mailboxIds:[J
    array-length v0, v9

    if-eqz v0, :cond_0

    .line 185
    const/4 v0, 0x0

    aget-wide v0, v9, v0

    invoke-direct {p0, v0, v1, p5}, Lcom/htc/android/mail/util/SelectedMailGroups;->containsGroup(JLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 186
    iget-object v0, p0, Lcom/htc/android/mail/util/SelectedMailGroups;->mMailMessagesForSelectedGroup:Lcom/htc/android/mail/util/SelectedMailGroups$MyMailMessages;

    const/4 v1, 0x0

    aget-wide v1, v9, v1

    move-object v3, p5

    move-wide/from16 v4, p6

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/mail/util/SelectedMailGroups$MyMailMessages;->contains(JLjava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/htc/android/mail/util/SelectedMailGroups;->mCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/android/mail/util/SelectedMailGroups;->mCount:I

    .line 187
    :cond_3
    if-nez p8, :cond_0

    .line 188
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    array-length v0, v9

    if-ge v8, v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/htc/android/mail/util/SelectedMailGroups;->mMailMessagesForSelectedGroup:Lcom/htc/android/mail/util/SelectedMailGroups$MyMailMessages;

    aget-wide v1, v9, v8

    move-object v3, p5

    move-wide/from16 v4, p6

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/mail/util/SelectedMailGroups$MyMailMessages;->add(JLjava/lang/String;J)V

    .line 188
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 177
    .end local v8           #i:I
    .end local v9           #mailboxIds:[J
    .restart local v6       #account:Lcom/htc/android/mail/Account;
    .restart local v7       #accountPool:Lcom/htc/android/mail/AccountPool;
    :cond_4
    invoke-virtual {v6}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v0

    iget v1, p4, Lcom/htc/android/mail/Mailbox;->kind:I

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/Mailboxs;->getMailboxByKind(I)Lcom/htc/android/mail/Mailbox;

    move-result-object p4

    goto :goto_0

    .line 193
    .end local v6           #account:Lcom/htc/android/mail/Account;
    .end local v7           #accountPool:Lcom/htc/android/mail/AccountPool;
    .restart local v9       #mailboxIds:[J
    :cond_5
    iget-object v0, p0, Lcom/htc/android/mail/util/SelectedMailGroups;->mMailMessagesForDeselectedGroup:Lcom/htc/android/mail/util/SelectedMailGroups$MyMailMessages;

    const/4 v1, 0x0

    aget-wide v1, v9, v1

    move-object v3, p5

    move-wide/from16 v4, p6

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/mail/util/SelectedMailGroups$MyMailMessages;->contains(JLjava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/htc/android/mail/util/SelectedMailGroups;->mCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/android/mail/util/SelectedMailGroups;->mCount:I

    .line 194
    :cond_6
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_2
    array-length v0, v9

    if-ge v8, v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/htc/android/mail/util/SelectedMailGroups;->mMailMessagesForDeselectedGroup:Lcom/htc/android/mail/util/SelectedMailGroups$MyMailMessages;

    aget-wide v1, v9, v8

    move-object v3, p5

    move-wide/from16 v4, p6

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/mail/util/SelectedMailGroups$MyMailMessages;->remove(JLjava/lang/String;J)V

    .line 194
    add-int/lit8 v8, v8, 0x1

    goto :goto_2
.end method

.method public groupCheckboxChecked(JLjava/lang/String;I)Z
    .locals 3
    .parameter "mailboxId"
    .parameter "group"
    .parameter "totalNum"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 297
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/android/mail/util/SelectedMailGroups;->containsGroup(JLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 298
    iget-object v2, p0, Lcom/htc/android/mail/util/SelectedMailGroups;->mMailMessagesForSelectedGroup:Lcom/htc/android/mail/util/SelectedMailGroups$MyMailMessages;

    invoke-virtual {v2, p1, p2, p3}, Lcom/htc/android/mail/util/SelectedMailGroups$MyMailMessages;->size(JLjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 300
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 298
    goto :goto_0

    .line 300
    :cond_2
    iget-object v2, p0, Lcom/htc/android/mail/util/SelectedMailGroups;->mMailMessagesForDeselectedGroup:Lcom/htc/android/mail/util/SelectedMailGroups$MyMailMessages;

    invoke-virtual {v2, p1, p2, p3}, Lcom/htc/android/mail/util/SelectedMailGroups$MyMailMessages;->size(JLjava/lang/String;)I

    move-result v2

    if-eq v2, p4, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public moveConversationMail(Landroid/content/Context;Lcom/htc/android/mail/AbsRequestController;J)V
    .locals 9
    .parameter "context"
    .parameter "controller"
    .parameter "toMailboxId"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/htc/android/mail/util/SelectedMailGroups;->getConversationMailCursor(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v8

    .line 94
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 95
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 97
    .local v5, messageId:J
    const-string v0, "_account"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 98
    .local v1, accountId:J
    const-string v0, "_mailboxId"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 99
    .local v3, mailboxId:J
    iget-object v0, p0, Lcom/htc/android/mail/util/SelectedMailGroups;->mSelectedMailMessages:Lcom/htc/android/mail/util/SelectedMailMessages;

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/htc/android/mail/util/SelectedMailMessages;->select(JJJLjava/lang/String;)V

    goto :goto_0

    .line 101
    .end local v1           #accountId:J
    .end local v3           #mailboxId:J
    .end local v5           #messageId:J
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/util/SelectedMailGroups;->mSelectedMailMessages:Lcom/htc/android/mail/util/SelectedMailMessages;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/android/mail/util/SelectedMailMessages;->moveMail(Landroid/content/Context;Lcom/htc/android/mail/AbsRequestController;J)V

    .line 104
    invoke-virtual {p0}, Lcom/htc/android/mail/util/SelectedMailGroups;->clear()V

    .line 105
    return-void
.end method

.method public selectGroup(Landroid/content/Context;JLcom/htc/android/mail/Mailbox;Ljava/lang/String;I)V
    .locals 9
    .parameter "context"
    .parameter "accountId"
    .parameter "mailbox"
    .parameter "group"
    .parameter "totalNum"

    .prologue
    .line 201
    if-nez p4, :cond_1

    .line 246
    :cond_0
    return-void

    .line 202
    :cond_1
    invoke-virtual {p4}, Lcom/htc/android/mail/Mailbox;->getAccountId()J

    move-result-wide v5

    const-wide v7, 0x7fffffffffffffffL

    cmp-long v5, v5, v7

    if-nez v5, :cond_2

    .line 203
    invoke-static {p1}, Lcom/htc/android/mail/AccountPool;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/AccountPool;

    move-result-object v1

    .line 204
    .local v1, accountPool:Lcom/htc/android/mail/AccountPool;
    invoke-virtual {v1, p1, p2, p3}, Lcom/htc/android/mail/AccountPool;->getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 205
    .local v0, account:Lcom/htc/android/mail/Account;
    if-eqz v0, :cond_0

    .line 206
    iget v5, p4, Lcom/htc/android/mail/Mailbox;->kind:I

    const v6, 0x7ffffffa

    if-ne v5, v6, :cond_3

    .line 207
    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v5

    iget-wide v6, p4, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-virtual {v5, v6, v7}, Lcom/htc/android/mail/Mailboxs;->getMailboxById(J)Lcom/htc/android/mail/Mailbox;

    move-result-object p4

    .line 211
    :goto_0
    if-eqz p4, :cond_0

    .line 214
    .end local v0           #account:Lcom/htc/android/mail/Account;
    .end local v1           #accountPool:Lcom/htc/android/mail/AccountPool;
    :cond_2
    invoke-virtual {p4}, Lcom/htc/android/mail/Mailbox;->getMailboxIds()[J

    move-result-object v4

    .line 215
    .local v4, mailboxIds:[J
    array-length v5, v4

    if-eqz v5, :cond_0

    .line 218
    const/4 v5, 0x0

    aget-wide v5, v4, v5

    invoke-direct {p0, v5, v6, p5}, Lcom/htc/android/mail/util/SelectedMailGroups;->containsGroup(JLjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 219
    iget v5, p0, Lcom/htc/android/mail/util/SelectedMailGroups;->mCount:I

    iget-object v6, p0, Lcom/htc/android/mail/util/SelectedMailGroups;->mMailMessagesForSelectedGroup:Lcom/htc/android/mail/util/SelectedMailGroups$MyMailMessages;

    const/4 v7, 0x0

    aget-wide v7, v4, v7

    invoke-virtual {v6, v7, v8, p5}, Lcom/htc/android/mail/util/SelectedMailGroups$MyMailMessages;->size(JLjava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Lcom/htc/android/mail/util/SelectedMailGroups;->mCount:I

    .line 220
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v5, v4

    if-ge v3, v5, :cond_0

    .line 221
    iget-object v5, p0, Lcom/htc/android/mail/util/SelectedMailGroups;->mMailMessagesForSelectedGroup:Lcom/htc/android/mail/util/SelectedMailGroups$MyMailMessages;

    aget-wide v6, v4, v3

    invoke-virtual {v5, v6, v7, p5}, Lcom/htc/android/mail/util/SelectedMailGroups$MyMailMessages;->clear(JLjava/lang/String;)V

    .line 222
    iget-object v5, p0, Lcom/htc/android/mail/util/SelectedMailGroups;->mMailMessagesForDeselectedGroup:Lcom/htc/android/mail/util/SelectedMailGroups$MyMailMessages;

    aget-wide v6, v4, v3

    invoke-virtual {v5, v6, v7, p5}, Lcom/htc/android/mail/util/SelectedMailGroups$MyMailMessages;->clear(JLjava/lang/String;)V

    .line 220
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 209
    .end local v3           #i:I
    .end local v4           #mailboxIds:[J
    .restart local v0       #account:Lcom/htc/android/mail/Account;
    .restart local v1       #accountPool:Lcom/htc/android/mail/AccountPool;
    :cond_3
    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v5

    iget v6, p4, Lcom/htc/android/mail/Mailbox;->kind:I

    invoke-virtual {v5, v6}, Lcom/htc/android/mail/Mailboxs;->getMailboxByKind(I)Lcom/htc/android/mail/Mailbox;

    move-result-object p4

    goto :goto_0

    .line 227
    .end local v0           #account:Lcom/htc/android/mail/Account;
    .end local v1           #accountPool:Lcom/htc/android/mail/AccountPool;
    .restart local v4       #mailboxIds:[J
    :cond_4
    iget v5, p0, Lcom/htc/android/mail/util/SelectedMailGroups;->mGroupCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/htc/android/mail/util/SelectedMailGroups;->mGroupCount:I

    .line 228
    iget v5, p0, Lcom/htc/android/mail/util/SelectedMailGroups;->mCount:I

    add-int/2addr v5, p6

    iput v5, p0, Lcom/htc/android/mail/util/SelectedMailGroups;->mCount:I

    .line 230
    iget v5, p0, Lcom/htc/android/mail/util/SelectedMailGroups;->mCount:I

    iget-object v6, p0, Lcom/htc/android/mail/util/SelectedMailGroups;->mMailMessagesForDeselectedGroup:Lcom/htc/android/mail/util/SelectedMailGroups$MyMailMessages;

    const/4 v7, 0x0

    aget-wide v7, v4, v7

    invoke-virtual {v6, v7, v8, p5}, Lcom/htc/android/mail/util/SelectedMailGroups$MyMailMessages;->size(JLjava/lang/String;)I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/htc/android/mail/util/SelectedMailGroups;->mCount:I

    .line 231
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_2
    array-length v5, v4

    if-ge v3, v5, :cond_0

    .line 232
    aget-wide v5, v4, v3

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-nez v5, :cond_5

    .line 231
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 234
    :cond_5
    iget-object v5, p0, Lcom/htc/android/mail/util/SelectedMailGroups;->mSelectedGroups:Lcom/htc/android/mail/util/SparseArray;

    aget-wide v6, v4, v3

    invoke-virtual {v5, v6, v7}, Lcom/htc/android/mail/util/SparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 235
    .local v2, groupSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v2, :cond_6

    .line 236
    new-instance v2, Ljava/util/HashSet;

    .end local v2           #groupSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 237
    .restart local v2       #groupSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/htc/android/mail/util/SelectedMailGroups;->mSelectedGroups:Lcom/htc/android/mail/util/SparseArray;

    aget-wide v6, v4, v3

    invoke-virtual {v5, v6, v7, v2}, Lcom/htc/android/mail/util/SparseArray;->put(JLjava/lang/Object;)V

    .line 239
    :cond_6
    invoke-interface {v2, p5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 240
    invoke-interface {v2, p5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 243
    :cond_7
    iget-object v5, p0, Lcom/htc/android/mail/util/SelectedMailGroups;->mMailMessagesForSelectedGroup:Lcom/htc/android/mail/util/SelectedMailGroups$MyMailMessages;

    aget-wide v6, v4, v3

    invoke-virtual {v5, v6, v7, p5}, Lcom/htc/android/mail/util/SelectedMailGroups$MyMailMessages;->clear(JLjava/lang/String;)V

    .line 244
    iget-object v5, p0, Lcom/htc/android/mail/util/SelectedMailGroups;->mMailMessagesForDeselectedGroup:Lcom/htc/android/mail/util/SelectedMailGroups$MyMailMessages;

    aget-wide v6, v4, v3

    invoke-virtual {v5, v6, v7, p5}, Lcom/htc/android/mail/util/SelectedMailGroups$MyMailMessages;->clear(JLjava/lang/String;)V

    goto :goto_3
.end method

.method public selecteMessage(Landroid/content/Context;JLcom/htc/android/mail/Mailbox;Ljava/lang/String;J)V
    .locals 10
    .parameter "context"
    .parameter "accountId"
    .parameter "mailbox"
    .parameter "group"
    .parameter "messageId"

    .prologue
    .line 139
    if-nez p4, :cond_1

    .line 166
    :cond_0
    return-void

    .line 140
    :cond_1
    invoke-virtual {p4}, Lcom/htc/android/mail/Mailbox;->getAccountId()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 141
    invoke-static {p1}, Lcom/htc/android/mail/AccountPool;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/AccountPool;

    move-result-object v7

    .line 142
    .local v7, accountPool:Lcom/htc/android/mail/AccountPool;
    invoke-virtual {v7, p1, p2, p3}, Lcom/htc/android/mail/AccountPool;->getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;

    move-result-object v6

    .line 143
    .local v6, account:Lcom/htc/android/mail/Account;
    if-eqz v6, :cond_0

    .line 144
    iget v0, p4, Lcom/htc/android/mail/Mailbox;->kind:I

    const v1, 0x7ffffffa

    if-ne v0, v1, :cond_4

    .line 145
    invoke-virtual {v6}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v0

    iget-wide v1, p4, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/Mailboxs;->getMailboxById(J)Lcom/htc/android/mail/Mailbox;

    move-result-object p4

    .line 149
    :goto_0
    if-eqz p4, :cond_0

    .line 152
    .end local v6           #account:Lcom/htc/android/mail/Account;
    .end local v7           #accountPool:Lcom/htc/android/mail/AccountPool;
    :cond_2
    invoke-virtual {p4}, Lcom/htc/android/mail/Mailbox;->getMailboxIds()[J

    move-result-object v9

    .line 153
    .local v9, mailboxIds:[J
    array-length v0, v9

    if-eqz v0, :cond_0

    .line 155
    const/4 v0, 0x0

    aget-wide v0, v9, v0

    invoke-direct {p0, v0, v1, p5}, Lcom/htc/android/mail/util/SelectedMailGroups;->containsGroup(JLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 156
    iget-object v0, p0, Lcom/htc/android/mail/util/SelectedMailGroups;->mMailMessagesForSelectedGroup:Lcom/htc/android/mail/util/SelectedMailGroups$MyMailMessages;

    const/4 v1, 0x0

    aget-wide v1, v9, v1

    move-object v3, p5

    move-wide/from16 v4, p6

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/mail/util/SelectedMailGroups$MyMailMessages;->contains(JLjava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/htc/android/mail/util/SelectedMailGroups;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/android/mail/util/SelectedMailGroups;->mCount:I

    .line 157
    :cond_3
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    array-length v0, v9

    if-ge v8, v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/htc/android/mail/util/SelectedMailGroups;->mMailMessagesForSelectedGroup:Lcom/htc/android/mail/util/SelectedMailGroups$MyMailMessages;

    aget-wide v1, v9, v8

    move-object v3, p5

    move-wide/from16 v4, p6

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/mail/util/SelectedMailGroups$MyMailMessages;->remove(JLjava/lang/String;J)V

    .line 157
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 147
    .end local v8           #i:I
    .end local v9           #mailboxIds:[J
    .restart local v6       #account:Lcom/htc/android/mail/Account;
    .restart local v7       #accountPool:Lcom/htc/android/mail/AccountPool;
    :cond_4
    invoke-virtual {v6}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v0

    iget v1, p4, Lcom/htc/android/mail/Mailbox;->kind:I

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/Mailboxs;->getMailboxByKind(I)Lcom/htc/android/mail/Mailbox;

    move-result-object p4

    goto :goto_0

    .line 161
    .end local v6           #account:Lcom/htc/android/mail/Account;
    .end local v7           #accountPool:Lcom/htc/android/mail/AccountPool;
    .restart local v9       #mailboxIds:[J
    :cond_5
    iget-object v0, p0, Lcom/htc/android/mail/util/SelectedMailGroups;->mMailMessagesForDeselectedGroup:Lcom/htc/android/mail/util/SelectedMailGroups$MyMailMessages;

    const/4 v1, 0x0

    aget-wide v1, v9, v1

    move-object v3, p5

    move-wide/from16 v4, p6

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/mail/util/SelectedMailGroups$MyMailMessages;->contains(JLjava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_6

    iget v0, p0, Lcom/htc/android/mail/util/SelectedMailGroups;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/android/mail/util/SelectedMailGroups;->mCount:I

    .line 162
    :cond_6
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_2
    array-length v0, v9

    if-ge v8, v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/htc/android/mail/util/SelectedMailGroups;->mMailMessagesForDeselectedGroup:Lcom/htc/android/mail/util/SelectedMailGroups$MyMailMessages;

    aget-wide v1, v9, v8

    move-object v3, p5

    move-wide/from16 v4, p6

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/mail/util/SelectedMailGroups$MyMailMessages;->add(JLjava/lang/String;J)V

    .line 162
    add-int/lit8 v8, v8, 0x1

    goto :goto_2
.end method

.method public setReadStatus(Landroid/content/Context;Lcom/htc/android/mail/AbsRequestController;Z)V
    .locals 9
    .parameter "context"
    .parameter "controller"
    .parameter "setRead"

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/htc/android/mail/util/SelectedMailGroups;->getConversationMailCursor(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v8

    .line 124
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 125
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 127
    .local v5, messageId:J
    const-string v0, "_account"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 128
    .local v1, accountId:J
    const-string v0, "_mailboxId"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 129
    .local v3, mailboxId:J
    const-string v0, "_group"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 130
    .local v7, group:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/android/mail/util/SelectedMailGroups;->mSelectedMailMessages:Lcom/htc/android/mail/util/SelectedMailMessages;

    invoke-virtual/range {v0 .. v7}, Lcom/htc/android/mail/util/SelectedMailMessages;->select(JJJLjava/lang/String;)V

    goto :goto_0

    .line 132
    .end local v1           #accountId:J
    .end local v3           #mailboxId:J
    .end local v5           #messageId:J
    .end local v7           #group:Ljava/lang/String;
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/util/SelectedMailGroups;->mSelectedMailMessages:Lcom/htc/android/mail/util/SelectedMailMessages;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/android/mail/util/SelectedMailMessages;->setReadStatus(Landroid/content/Context;Lcom/htc/android/mail/AbsRequestController;Z)V

    .line 135
    invoke-virtual {p0}, Lcom/htc/android/mail/util/SelectedMailGroups;->clear()V

    .line 136
    return-void
.end method
