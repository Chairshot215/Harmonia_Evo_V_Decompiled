.class public Lcom/htc/util/mail/MailManager;
.super Ljava/lang/Object;
.source "MailManager.java"

# interfaces
.implements Lcom/htc/util/mail/AccountColumns;
.implements Lcom/htc/util/mail/IHandleMailManagerMessage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/util/mail/MailManager$1;,
        Lcom/htc/util/mail/MailManager$HandleChangeRequester;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field public static MAIL_OBJ_DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "MailManager"

.field private static mTempAccount:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/mail/MailAccount;",
            ">;"
        }
    .end annotation
.end field

.field private static mTempAccount1:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/mail/MailAccount;",
            ">;"
        }
    .end annotation
.end field

.field private static me:Lcom/htc/util/mail/MailManager; = null

.field private static final sCombinedAccountId:J = 0x7fffffffffffffffL


# instance fields
.field private mAccount:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/mail/MailAccount;",
            ">;"
        }
    .end annotation
.end field

.field private mCombinedAccount:Lcom/htc/util/mail/MailAccount;

.field private mContext:Landroid/content/Context;

.field private mHandleChangeRequester:Lcom/htc/util/mail/MailManager$HandleChangeRequester;

.field private mMailManagerListener:Lcom/htc/util/mail/IMailManagerListener;

.field private mMailMessageReceiver:Lcom/htc/util/mail/MailMessageReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/util/mail/MailManager;->MAIL_OBJ_DEBUG:Z

    sget-boolean v0, Lcom/htc/util/mail/MailManager;->MAIL_OBJ_DEBUG:Z

    sput-boolean v0, Lcom/htc/util/mail/MailManager;->DEBUG:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/htc/util/mail/MailManager;->me:Lcom/htc/util/mail/MailManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/htc/util/mail/MailManager;->mTempAccount:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/htc/util/mail/MailManager;->mTempAccount1:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/htc/util/mail/MailManager;->mContext:Landroid/content/Context;

    iput-object v2, p0, Lcom/htc/util/mail/MailManager;->mMailMessageReceiver:Lcom/htc/util/mail/MailMessageReceiver;

    iput-object v2, p0, Lcom/htc/util/mail/MailManager;->mHandleChangeRequester:Lcom/htc/util/mail/MailManager$HandleChangeRequester;

    iput-object v2, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/htc/util/mail/MailManager;->mCombinedAccount:Lcom/htc/util/mail/MailAccount;

    iput-object v2, p0, Lcom/htc/util/mail/MailManager;->mMailManagerListener:Lcom/htc/util/mail/IMailManagerListener;

    iput-object p1, p0, Lcom/htc/util/mail/MailManager;->mContext:Landroid/content/Context;

    sput-object p0, Lcom/htc/util/mail/MailManager;->me:Lcom/htc/util/mail/MailManager;

    new-instance v0, Lcom/htc/util/mail/MailMessageReceiver;

    invoke-direct {v0, p0}, Lcom/htc/util/mail/MailMessageReceiver;-><init>(Lcom/htc/util/mail/IHandleMailManagerMessage;)V

    iput-object v0, p0, Lcom/htc/util/mail/MailManager;->mMailMessageReceiver:Lcom/htc/util/mail/MailMessageReceiver;

    iget-object v0, p0, Lcom/htc/util/mail/MailManager;->mMailMessageReceiver:Lcom/htc/util/mail/MailMessageReceiver;

    iget-object v1, p0, Lcom/htc/util/mail/MailManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/htc/util/mail/MailMessageReceiver;->Active(Landroid/content/Context;)V

    new-instance v0, Lcom/htc/util/mail/MailManager$HandleChangeRequester;

    invoke-direct {v0, p0, v2}, Lcom/htc/util/mail/MailManager$HandleChangeRequester;-><init>(Lcom/htc/util/mail/MailManager;Lcom/htc/util/mail/MailManager$1;)V

    iput-object v0, p0, Lcom/htc/util/mail/MailManager;->mHandleChangeRequester:Lcom/htc/util/mail/MailManager$HandleChangeRequester;

    const-string v0, "MailManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MailManager contruct! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/mail/MailManager;->mMailMessageReceiver:Lcom/htc/util/mail/MailMessageReceiver;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$100(Lcom/htc/util/mail/MailManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/util/mail/MailManager;->doHandleMessageChange()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/util/mail/MailManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/util/mail/MailManager;->doHandleFolderChange()V

    return-void
.end method

.method private buildOrGetAccounts(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/mail/MailAccount;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/htc/util/mail/MailManager;->releaseRealAccounts()V

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/htc/util/mail/MailManager;->isSameWithAccounts(Landroid/database/Cursor;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p1, :cond_1

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    :cond_1
    const/16 p1, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    if-nez v3, :cond_3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    :goto_1
    :try_start_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v20

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_6

    if-lez v20, :cond_6

    const/16 v18, 0x0

    :goto_2
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_6

    new-instance v2, Lcom/htc/util/mail/RealAccount;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/mail/MailManager;->mContext:Landroid/content/Context;

    const-string v4, "_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    const-string v6, "_name"

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "_desc"

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "_emailaddress"

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "_protocol"

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const-string v10, "_defaultfolderId"

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const-string v11, "_trashfolderId"

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const-string v12, "_sentfolderId"

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const-string v13, "_draftfolderId"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const-string v14, "_outfolderId"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const-string v15, "_defaultaccount"

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    const-string v16, "_colorIdx"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    invoke-direct/range {v2 .. v16}, Lcom/htc/util/mail/RealAccount;-><init>(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIII)V

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_2

    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/htc/util/mail/MailAccount;

    invoke-virtual/range {v17 .. v17}, Lcom/htc/util/mail/MailAccount;->release()V

    goto :goto_3

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :catchall_1
    move-exception v3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v3

    if-eqz p1, :cond_5

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    :cond_5
    const/16 p1, 0x0

    throw v3

    :cond_6
    if-eqz p1, :cond_7

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    :cond_7
    const/16 p1, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_8

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    goto/16 :goto_0
.end method

.method private cloneAccountArrayList(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/mail/MailAccount;",
            ">;)V"
        }
    .end annotation

    iget-object v3, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/util/mail/MailAccount;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private doHandleFolderChange()V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v4, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v4, Lcom/htc/util/mail/MailManager;->mTempAccount1:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/htc/util/mail/MailManager;->cloneAccountArrayList(Ljava/util/ArrayList;)V

    sget-object v4, Lcom/htc/util/mail/MailManager;->mTempAccount1:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/util/mail/MailAccount;

    invoke-direct {p0, v0}, Lcom/htc/util/mail/MailManager;->handleFoldersChange(Lcom/htc/util/mail/MailAccount;)V

    goto :goto_1

    :cond_1
    sget-object v4, Lcom/htc/util/mail/MailManager;->mTempAccount1:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    const-string v4, "MailManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doHandleFolderChange() take ms:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v1

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private doHandleMessageChange()V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v4, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    sget-object v4, Lcom/htc/util/mail/MailManager;->mTempAccount:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/htc/util/mail/MailManager;->cloneAccountArrayList(Ljava/util/ArrayList;)V

    sget-object v4, Lcom/htc/util/mail/MailManager;->mTempAccount:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/util/mail/MailAccount;

    invoke-direct {p0, v0}, Lcom/htc/util/mail/MailManager;->handleMessageChange(Lcom/htc/util/mail/MailAccount;)V

    goto :goto_0

    :cond_0
    sget-object v4, Lcom/htc/util/mail/MailManager;->mTempAccount:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    :cond_1
    iget-object v4, p0, Lcom/htc/util/mail/MailManager;->mCombinedAccount:Lcom/htc/util/mail/MailAccount;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/util/mail/MailManager;->mCombinedAccount:Lcom/htc/util/mail/MailAccount;

    invoke-direct {p0, v4}, Lcom/htc/util/mail/MailManager;->handleMessageChange(Lcom/htc/util/mail/MailAccount;)V

    :cond_2
    const-string v4, "MailManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doHandleMessageChange() take ms:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v1

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static getCombinedAccountId()J
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/htc/util/mail/MailManager;
    .locals 3

    const-class v1, Lcom/htc/util/mail/MailManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/htc/util/mail/MailManager;->me:Lcom/htc/util/mail/MailManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/util/mail/MailManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/htc/util/mail/MailManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/util/mail/MailManager;->me:Lcom/htc/util/mail/MailManager;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/htc/util/mail/MailManager;->me:Lcom/htc/util/mail/MailManager;

    iget-object v0, v0, Lcom/htc/util/mail/MailManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/htc/util/mail/MailManager;->me:Lcom/htc/util/mail/MailManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/util/mail/MailManager;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/htc/util/mail/MailManager;->me:Lcom/htc/util/mail/MailManager;

    iget-object v0, v0, Lcom/htc/util/mail/MailManager;->mMailMessageReceiver:Lcom/htc/util/mail/MailMessageReceiver;

    sget-object v1, Lcom/htc/util/mail/MailManager;->me:Lcom/htc/util/mail/MailManager;

    iget-object v1, v1, Lcom/htc/util/mail/MailManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/htc/util/mail/MailMessageReceiver;->Active(Landroid/content/Context;)V

    :cond_1
    sget-object v0, Lcom/htc/util/mail/MailManager;->me:Lcom/htc/util/mail/MailManager;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private handleFoldersChange(Lcom/htc/util/mail/MailAccount;)V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/htc/util/mail/MailAccount;->refreshFolderIdList()V

    invoke-virtual {p1}, Lcom/htc/util/mail/MailAccount;->getNewFolderList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {p1}, Lcom/htc/util/mail/MailAccount;->getDelFolderList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-nez v2, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    invoke-virtual {p1}, Lcom/htc/util/mail/MailAccount;->refreshFolders()V

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {p1, v3}, Lcom/htc/util/mail/MailAccount;->handleNewFolders(Ljava/util/ArrayList;)V

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {p1, v0}, Lcom/htc/util/mail/MailAccount;->handleDelFolders(Ljava/util/ArrayList;)V

    :cond_5
    return-void
.end method

.method private handleMessageChange(Lcom/htc/util/mail/MailAccount;)V
    .locals 9

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/htc/util/mail/MailAccount;->getAllFolders()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v6, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/util/mail/Folder;

    invoke-virtual {v3}, Lcom/htc/util/mail/Folder;->refreshMessages()V

    invoke-virtual {v3}, Lcom/htc/util/mail/Folder;->getNewMailList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_2

    invoke-virtual {p1, v5}, Lcom/htc/util/mail/MailAccount;->handleNewMessage(Ljava/util/ArrayList;)V

    :cond_2
    invoke-virtual {v3}, Lcom/htc/util/mail/Folder;->getDelMailList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_3

    invoke-virtual {p1, v1}, Lcom/htc/util/mail/MailAccount;->handleDelMessage(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v7, "MailManager"

    const-string v8, "handleMessageChange exception"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private isAccountsExist()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/htc/util/mail/MailManager;->getAccounts()Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSameWithAccounts(Landroid/database/Cursor;)Z
    .locals 9

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    if-eqz p1, :cond_0

    iget-object v6, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-ne v6, v7, :cond_0

    iget-object v6, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_0

    :cond_2
    const-string v6, "_id"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-long v1, v6

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    monitor-enter v6

    :try_start_0
    iget-object v7, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/util/mail/MailAccount;

    invoke-virtual {v0}, Lcom/htc/util/mail/MailAccount;->getId()J

    move-result-wide v7

    cmp-long v7, v7, v1

    if-nez v7, :cond_3

    const/4 v3, 0x1

    :cond_4
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method private releaseCombinedAccount()V
    .locals 1

    iget-object v0, p0, Lcom/htc/util/mail/MailManager;->mCombinedAccount:Lcom/htc/util/mail/MailAccount;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/util/mail/MailManager;->mCombinedAccount:Lcom/htc/util/mail/MailAccount;

    invoke-virtual {v0}, Lcom/htc/util/mail/MailAccount;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/util/mail/MailManager;->mCombinedAccount:Lcom/htc/util/mail/MailAccount;

    :cond_0
    return-void
.end method

.method private releaseRealAccounts()V
    .locals 4

    iget-object v2, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/util/mail/MailAccount;

    invoke-virtual {v0}, Lcom/htc/util/mail/MailAccount;->release()V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addAccount(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public addExchangeAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZ)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public deleteAccount(J)Z
    .locals 8

    const/4 v7, 0x0

    const/4 v0, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/htc/util/mail/MailManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/htc/util/mail/MailUtils;->sAccountsURI:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/htc/util/mail/MailManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/htc/util/mail/MailUtils;->sAccountsURI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return v0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getAccount(J)Lcom/htc/util/mail/MailAccount;
    .locals 7

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/htc/util/mail/MailManager;->isAccountsExist()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    invoke-static {}, Lcom/htc/util/mail/MailManager;->getCombinedAccountId()J

    move-result-wide v4

    cmp-long v4, p1, v4

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/htc/util/mail/MailManager;->getCombinedAccount()Lcom/htc/util/mail/MailAccount;

    move-result-object v3

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    iget-object v4, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/util/mail/MailAccount;

    invoke-virtual {v0}, Lcom/htc/util/mail/MailAccount;->getId()J

    move-result-wide v5

    cmp-long v5, p1, v5

    if-nez v5, :cond_4

    :cond_3
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v4, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    iget-object v3, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/util/mail/MailAccount;

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public getAccountList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/mail/MailAccount;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/htc/util/mail/MailManager;->isAccountsExist()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public getAccounts()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/mail/MailAccount;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/htc/util/mail/MailManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/util/mail/MailUtils;->sAccountsURI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/util/mail/MailUtils;->sACCOUNT_PROJECTION:[Ljava/lang/String;

    const-string v3, "_del = -1"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/htc/util/mail/MailManager;->buildOrGetAccounts(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getAccountsUpdateTime(J)J
    .locals 3

    invoke-virtual {p0, p1, p2}, Lcom/htc/util/mail/MailManager;->getAccount(J)Lcom/htc/util/mail/MailAccount;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/util/mail/MailAccount;->getAccountsUpdateTime()J

    move-result-wide v1

    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public getAllUnreadMail()I
    .locals 9

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/htc/util/mail/MailManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/util/mail/MailUtils;->allUnreadMailURI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-nez v6, :cond_0

    move v0, v8

    :goto_0
    return v0

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v7

    goto :goto_0
.end method

.method public getCombinedAccount()Lcom/htc/util/mail/MailAccount;
    .locals 10

    const v4, 0x20c0213

    iget-object v0, p0, Lcom/htc/util/mail/MailManager;->mCombinedAccount:Lcom/htc/util/mail/MailAccount;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/util/mail/CombinedAccount;

    iget-object v1, p0, Lcom/htc/util/mail/MailManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/util/mail/MailManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v4}, Lcom/htc/util/mail/MailUtils;->getHtcString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/util/mail/MailManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/htc/util/mail/MailUtils;->getHtcString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7fffffff

    const v5, 0x7ffffffe

    const v6, 0x7ffffffd

    const v7, 0x7ffffffc

    const v8, 0x7ffffffb

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/htc/util/mail/CombinedAccount;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIIIII)V

    iput-object v0, p0, Lcom/htc/util/mail/MailManager;->mCombinedAccount:Lcom/htc/util/mail/MailAccount;

    :cond_0
    iget-object v0, p0, Lcom/htc/util/mail/MailManager;->mCombinedAccount:Lcom/htc/util/mail/MailAccount;

    return-object v0
.end method

.method public getDefaultAccount()Lcom/htc/util/mail/MailAccount;
    .locals 5

    invoke-direct {p0}, Lcom/htc/util/mail/MailManager;->isAccountsExist()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    const/4 v2, 0x0

    iget-object v4, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/util/mail/MailAccount;

    invoke-virtual {v0}, Lcom/htc/util/mail/MailAccount;->isDefaultAccount()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/util/mail/MailAccount;

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public getDefaultAccountId()J
    .locals 5

    invoke-direct {p0}, Lcom/htc/util/mail/MailManager;->isAccountsExist()Z

    move-result v3

    if-nez v3, :cond_0

    const-wide/16 v3, -0x1

    :goto_0
    return-wide v3

    :cond_0
    const/4 v2, 0x0

    iget-object v4, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/util/mail/MailAccount;

    invoke-virtual {v0}, Lcom/htc/util/mail/MailAccount;->isDefaultAccount()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/util/mail/MailAccount;

    invoke-virtual {v3}, Lcom/htc/util/mail/MailAccount;->getId()J

    move-result-wide v3

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public getDefaultMailBoxId(J)J
    .locals 3

    invoke-virtual {p0, p1, p2}, Lcom/htc/util/mail/MailManager;->getAccount(J)Lcom/htc/util/mail/MailAccount;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/util/mail/MailAccount;->getDefaultFolderId()I

    move-result v1

    int-to-long v1, v1

    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getMessage(J)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getUnreadMail(J)I
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/htc/util/mail/MailManager;->getAccount(J)Lcom/htc/util/mail/MailAccount;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/util/mail/MailAccount;->getUnreadMail()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isAutoSync()Z
    .locals 1

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    return v0
.end method

.method public isExchangeAccountExisted()Z
    .locals 10

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string v3, "_provider = \'Exchange\' and _del!=1"

    :try_start_0
    iget-object v0, p0, Lcom/htc/util/mail/MailManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/util/mail/MailUtils;->sAccountsURI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "count(_id) as _total"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "_total"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v8

    :goto_0
    return v0

    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move v0, v9

    goto :goto_0

    :catch_0
    move-exception v7

    move v0, v9

    goto :goto_0
.end method

.method public onHandleAccountRefresh()V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/util/mail/MailManager;->releaseAccounts()V

    iget-object v0, p0, Lcom/htc/util/mail/MailManager;->mMailManagerListener:Lcom/htc/util/mail/IMailManagerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/util/mail/MailManager;->mMailManagerListener:Lcom/htc/util/mail/IMailManagerListener;

    invoke-interface {v0}, Lcom/htc/util/mail/IMailManagerListener;->onAccountRefresh()V

    :cond_0
    return-void
.end method

.method public onHandleAccountSyncFinish(J)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/htc/util/mail/MailManager;->getAccount(J)Lcom/htc/util/mail/MailAccount;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/htc/util/mail/MailAccount;->handleSyncFinished()V

    goto :goto_0
.end method

.method public onHandleAccountSyncStart(J)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/htc/util/mail/MailManager;->getAccount(J)Lcom/htc/util/mail/MailAccount;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/htc/util/mail/MailAccount;->handleSyncStart()V

    goto :goto_0
.end method

.method public onHandleFoldersChange()V
    .locals 1

    iget-object v0, p0, Lcom/htc/util/mail/MailManager;->mHandleChangeRequester:Lcom/htc/util/mail/MailManager$HandleChangeRequester;

    invoke-virtual {v0}, Lcom/htc/util/mail/MailManager$HandleChangeRequester;->requestHandleFoldersChange()V

    return-void
.end method

.method public onHandleMessageChange()V
    .locals 1

    iget-object v0, p0, Lcom/htc/util/mail/MailManager;->mHandleChangeRequester:Lcom/htc/util/mail/MailManager$HandleChangeRequester;

    invoke-virtual {v0}, Lcom/htc/util/mail/MailManager$HandleChangeRequester;->requestHandleMessageChange()V

    return-void
.end method

.method public release()V
    .locals 2

    const-string v0, "MailManager"

    const-string v1, "MailManager release()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/htc/util/mail/MailManager;->mMailMessageReceiver:Lcom/htc/util/mail/MailMessageReceiver;

    invoke-virtual {v0}, Lcom/htc/util/mail/MailMessageReceiver;->Deactive()V

    invoke-virtual {p0}, Lcom/htc/util/mail/MailManager;->releaseAccounts()V

    return-void
.end method

.method public releaseAccounts()V
    .locals 0

    invoke-direct {p0}, Lcom/htc/util/mail/MailManager;->releaseRealAccounts()V

    invoke-direct {p0}, Lcom/htc/util/mail/MailManager;->releaseCombinedAccount()V

    return-void
.end method

.method public setDefaultAccount(J)Z
    .locals 7

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/util/mail/MailAccount;

    invoke-virtual {v0}, Lcom/htc/util/mail/MailAccount;->getId()J

    move-result-wide v5

    cmp-long v3, p1, v5

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/htc/util/mail/MailAccount;->setDefaultAccount()V

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/htc/util/mail/MailAccount;->resetDefaultAccount()V

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1
.end method

.method public setMailManagerListener(Lcom/htc/util/mail/IMailManagerListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/util/mail/MailManager;->mMailManagerListener:Lcom/htc/util/mail/IMailManagerListener;

    return-void
.end method

.method public setMailMessageListener(Lcom/htc/util/mail/IMailMessageListener;)V
    .locals 0

    return-void
.end method
