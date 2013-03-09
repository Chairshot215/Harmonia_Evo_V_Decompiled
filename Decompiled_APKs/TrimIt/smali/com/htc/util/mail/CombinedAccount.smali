.class public Lcom/htc/util/mail/CombinedAccount;
.super Lcom/htc/util/mail/MailAccount;
.source "CombinedAccount.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "CombinedAccount"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lcom/htc/util/mail/MailManager;->MAIL_OBJ_DEBUG:Z

    sput-boolean v0, Lcom/htc/util/mail/CombinedAccount;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIIIII)V
    .locals 15
    .parameter "context"
    .parameter "name"
    .parameter "desc"
    .parameter "defaultFolderId"
    .parameter "trashFolderId"
    .parameter "sentFolderId"
    .parameter "draftFolderId"
    .parameter "outFolderId"
    .parameter "defaultaccount"

    .prologue
    .line 57
    invoke-static {}, Lcom/htc/util/mail/MailManager;->getCombinedAccountId()J

    move-result-wide v2

    const-string v6, ""

    const/4 v7, 0x5

    const/4 v14, -0x1

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    invoke-direct/range {v0 .. v14}, Lcom/htc/util/mail/MailAccount;-><init>(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIII)V

    .line 70
    return-void
.end method


# virtual methods
.method public getDelFolderList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 263
    iget-object v0, p0, Lcom/htc/util/mail/CombinedAccount;->mDelFolderIdList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/mail/CombinedAccount;->mDelFolderIdList:Ljava/util/ArrayList;

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/htc/util/mail/CombinedAccount;->mDelFolderIdList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 266
    iget-object v0, p0, Lcom/htc/util/mail/CombinedAccount;->mDelFolderIdList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFolderPathNameList()[Ljava/lang/String;
    .locals 15

    .prologue
    const/4 v1, 0x5

    .line 201
    new-array v13, v1, [I

    fill-array-data v13, :array_0

    .line 207
    .local v13, resNameId:[I
    new-array v14, v1, [I

    fill-array-data v14, :array_1

    .line 213
    .local v14, resShortNameId:[I
    new-array v12, v1, [I

    fill-array-data v12, :array_2

    .line 218
    .local v12, mailBoxId:[I
    iget-object v1, p0, Lcom/htc/util/mail/CombinedAccount;->folderPathNameList:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/util/mail/CombinedAccount;->folderPathNameList:Ljava/util/ArrayList;

    .line 220
    :cond_0
    iget-object v1, p0, Lcom/htc/util/mail/CombinedAccount;->folderPathNameList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 221
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    array-length v1, v13

    if-ge v11, v1, :cond_1

    .line 222
    new-instance v0, Lcom/htc/util/mail/Folder;

    iget-object v1, p0, Lcom/htc/util/mail/CombinedAccount;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/htc/util/mail/CombinedAccount;->mContext:Landroid/content/Context;

    aget v4, v13, v11

    invoke-static {v2, v4}, Lcom/htc/util/mail/MailUtils;->getHtcString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lcom/htc/util/mail/CombinedAccount;->mContext:Landroid/content/Context;

    aget v5, v14, v11

    invoke-static {v2, v5}, Lcom/htc/util/mail/MailUtils;->getHtcString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    aget v2, v12, v11

    int-to-long v6, v2

    aget v8, v12, v11

    aget v9, v12, v11

    const/4 v10, 0x0

    move-object v2, p0

    invoke-direct/range {v0 .. v10}, Lcom/htc/util/mail/Folder;-><init>(Landroid/content/Context;Lcom/htc/util/mail/MailAccount;Lcom/htc/util/mail/MailAccount;Ljava/lang/String;Ljava/lang/String;JIII)V

    .line 234
    .local v0, f:Lcom/htc/util/mail/Folder;
    iget-object v2, p0, Lcom/htc/util/mail/CombinedAccount;->folderPathNameList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 235
    :try_start_0
    iget-object v1, p0, Lcom/htc/util/mail/CombinedAccount;->folderPathNameList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    monitor-exit v2

    .line 221
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 236
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 239
    .end local v0           #f:Lcom/htc/util/mail/Folder;
    .end local v11           #i:I
    :cond_1
    invoke-virtual {p0}, Lcom/htc/util/mail/CombinedAccount;->buildFolderPathNameArray()[Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 201
    :array_0
    .array-data 0x4
        0x9t 0x2t 0xct 0x2t
        0xat 0x2t 0xct 0x2t
        0xbt 0x2t 0xct 0x2t
        0xct 0x2t 0xct 0x2t
        0xdt 0x2t 0xct 0x2t
    .end array-data

    .line 207
    :array_1
    .array-data 0x4
        0xet 0x2t 0xct 0x2t
        0xft 0x2t 0xct 0x2t
        0x10t 0x2t 0xct 0x2t
        0x11t 0x2t 0xct 0x2t
        0x12t 0x2t 0xct 0x2t
    .end array-data

    .line 213
    :array_2
    .array-data 0x4
        0xfft 0xfft 0xfft 0x7ft
        0xfet 0xfft 0xfft 0x7ft
        0xfdt 0xfft 0xfft 0x7ft
        0xfct 0xfft 0xfft 0x7ft
        0xfbt 0xfft 0xfft 0x7ft
    .end array-data
.end method

.method public getFoldersWhere()Ljava/lang/String;
    .locals 2

    .prologue
    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_defaultfolder in ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7ffffffc

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7ffffffb

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7ffffffd

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7ffffffe

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessagesWhere(J)Ljava/lang/String;
    .locals 7
    .parameter "mailKindId"

    .prologue
    .line 147
    long-to-int v2, p1

    .line 149
    .local v2, kind:I
    iget-object v5, p0, Lcom/htc/util/mail/CombinedAccount;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/htc/util/mail/MailManager;->getInstance(Landroid/content/Context;)Lcom/htc/util/mail/MailManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/util/mail/MailManager;->getAccountList()Ljava/util/ArrayList;

    move-result-object v3

    .line 151
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/mail/MailAccount;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " _mailboxId in ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 153
    .local v4, sb:Ljava/lang/StringBuilder;
    if-eqz v3, :cond_0

    .line 154
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/util/mail/MailAccount;

    .line 155
    .local v0, acc:Lcom/htc/util/mail/MailAccount;
    invoke-virtual {v0, v2}, Lcom/htc/util/mail/MailAccount;->getFolderId(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 158
    .end local v0           #acc:Lcom/htc/util/mail/MailAccount;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_0
    const-string v5, "-1)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    const-string v5, " AND _del=-1 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public getNewFolderList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 253
    iget-object v0, p0, Lcom/htc/util/mail/CombinedAccount;->mNewFolderIdList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/mail/CombinedAccount;->mNewFolderIdList:Ljava/util/ArrayList;

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/htc/util/mail/CombinedAccount;->mNewFolderIdList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 256
    iget-object v0, p0, Lcom/htc/util/mail/CombinedAccount;->mNewFolderIdList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getUnreadMail()I
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/htc/util/mail/CombinedAccount;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/util/mail/MailManager;->getInstance(Landroid/content/Context;)Lcom/htc/util/mail/MailManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/util/mail/MailManager;->getAllUnreadMail()I

    move-result v0

    return v0
.end method

.method public refreshFolderIdList()V
    .locals 0

    .prologue
    .line 246
    return-void
.end method

.method public refreshFolders()V
    .locals 0

    .prologue
    .line 274
    return-void
.end method

.method public sendMail(Lcom/htc/util/mail/MailMessage;)Z
    .locals 2
    .parameter "message"

    .prologue
    .line 123
    iget-object v1, p0, Lcom/htc/util/mail/CombinedAccount;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/util/mail/MailManager;->getInstance(Landroid/content/Context;)Lcom/htc/util/mail/MailManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/util/mail/MailManager;->getDefaultAccount()Lcom/htc/util/mail/MailAccount;

    move-result-object v0

    .line 125
    .local v0, defaultAccount:Lcom/htc/util/mail/MailAccount;
    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {v0, p1}, Lcom/htc/util/mail/MailAccount;->sendMail(Lcom/htc/util/mail/MailMessage;)Z

    move-result v1

    .line 128
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public syncAccount(J)Z
    .locals 9
    .parameter "folderId"

    .prologue
    const/4 v8, 0x1

    .line 85
    iget-object v5, p0, Lcom/htc/util/mail/CombinedAccount;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/htc/util/mail/MailManager;->getInstance(Landroid/content/Context;)Lcom/htc/util/mail/MailManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/util/mail/MailManager;->getAccounts()Ljava/util/ArrayList;

    move-result-object v1

    .line 87
    .local v1, accs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/mail/MailAccount;>;"
    if-nez v1, :cond_1

    .line 95
    :cond_0
    return v8

    .line 88
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/util/mail/MailAccount;

    .line 89
    .local v0, acc:Lcom/htc/util/mail/MailAccount;
    long-to-int v5, p1

    invoke-virtual {v0, v5}, Lcom/htc/util/mail/MailAccount;->getFolderId(I)I

    move-result v5

    int-to-long v3, v5

    .line 90
    .local v3, mailboxId:J
    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-eqz v5, :cond_2

    .line 91
    invoke-virtual {v0, v3, v4}, Lcom/htc/util/mail/MailAccount;->syncAccount(J)Z

    goto :goto_0

    .line 93
    :cond_2
    const-string v5, "CombinedAccount"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "syncAccount, can\'t find folder:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
