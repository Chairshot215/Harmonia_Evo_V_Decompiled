.class public Lcom/htc/android/mail/server/ServerPool;
.super Ljava/lang/Object;
.source "ServerPool.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ServerPool"

.field public static mServerPool:Lcom/htc/android/mail/server/ServerPool;


# instance fields
.field private mServerPoolArray:Lcom/htc/android/mail/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/android/mail/util/SparseArray",
            "<",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/htc/android/mail/server/Server;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSmtpServerPoolArray:Lcom/htc/android/mail/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/android/mail/util/SparseArray",
            "<",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/htc/android/mail/server/Server;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/android/mail/server/ServerPool;->mServerPool:Lcom/htc/android/mail/server/ServerPool;

    .line 24
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/server/ServerPool;->DEBUG:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/htc/android/mail/util/SparseArray;

    invoke-direct {v0}, Lcom/htc/android/mail/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/server/ServerPool;->mServerPoolArray:Lcom/htc/android/mail/util/SparseArray;

    .line 28
    new-instance v0, Lcom/htc/android/mail/util/SparseArray;

    invoke-direct {v0}, Lcom/htc/android/mail/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/server/ServerPool;->mSmtpServerPoolArray:Lcom/htc/android/mail/util/SparseArray;

    .line 29
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/htc/android/mail/server/ServerPool;
    .locals 4
    .parameter "context"

    .prologue
    .line 32
    sget-object v2, Lcom/htc/android/mail/server/ServerPool;->mServerPool:Lcom/htc/android/mail/server/ServerPool;

    if-nez v2, :cond_1

    .line 33
    const-class v3, Lcom/htc/android/mail/server/ServerPool;

    monitor-enter v3

    .line 34
    :try_start_0
    sget-object v2, Lcom/htc/android/mail/server/ServerPool;->mServerPool:Lcom/htc/android/mail/server/ServerPool;

    if-nez v2, :cond_0

    .line 35
    new-instance v2, Lcom/htc/android/mail/server/ServerPool;

    invoke-direct {v2}, Lcom/htc/android/mail/server/ServerPool;-><init>()V

    sput-object v2, Lcom/htc/android/mail/server/ServerPool;->mServerPool:Lcom/htc/android/mail/server/ServerPool;

    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 37
    .local v0, applicationContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/android/mail/util/ScreenStatusManager;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/util/ScreenStatusManager;

    move-result-object v1

    .line 38
    .local v1, manager:Lcom/htc/android/mail/util/ScreenStatusManager;
    new-instance v2, Lcom/htc/android/mail/server/ServerPool$1;

    invoke-direct {v2, v0}, Lcom/htc/android/mail/server/ServerPool$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/util/ScreenStatusManager;->addScreenOffRunnable(Ljava/lang/Runnable;)V

    .line 46
    .end local v0           #applicationContext:Landroid/content/Context;
    .end local v1           #manager:Lcom/htc/android/mail/util/ScreenStatusManager;
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :cond_1
    sget-object v2, Lcom/htc/android/mail/server/ServerPool;->mServerPool:Lcom/htc/android/mail/server/ServerPool;

    return-object v2

    .line 46
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method


# virtual methods
.method public clearIdleServer()V
    .locals 7

    .prologue
    .line 52
    iget-object v6, p0, Lcom/htc/android/mail/server/ServerPool;->mServerPoolArray:Lcom/htc/android/mail/util/SparseArray;

    monitor-enter v6

    .line 53
    :try_start_0
    iget-object v5, p0, Lcom/htc/android/mail/server/ServerPool;->mServerPoolArray:Lcom/htc/android/mail/util/SparseArray;

    invoke-virtual {v5}, Lcom/htc/android/mail/util/SparseArray;->size()I

    move-result v4

    .line 54
    .local v4, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 55
    iget-object v5, p0, Lcom/htc/android/mail/server/ServerPool;->mServerPoolArray:Lcom/htc/android/mail/util/SparseArray;

    invoke-virtual {v5, v1}, Lcom/htc/android/mail/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 56
    .local v3, serverPool:Ljava/util/concurrent/ConcurrentLinkedQueue;,"Ljava/util/concurrent/ConcurrentLinkedQueue<Lcom/htc/android/mail/server/Server;>;"
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 57
    const/4 v2, 0x0

    .line 58
    .local v2, server:Lcom/htc/android/mail/server/Server;
    :goto_1
    :try_start_1
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/htc/android/mail/server/Server;

    move-object v2, v0

    if-eqz v2, :cond_0

    instance-of v5, v2, Lcom/htc/android/mail/server/ExchangeServer;

    if-nez v5, :cond_0

    .line 59
    invoke-virtual {v2}, Lcom/htc/android/mail/server/Server;->close()V

    goto :goto_1

    .line 61
    :catchall_0
    move-exception v5

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v5

    .line 63
    .end local v1           #i:I
    .end local v2           #server:Lcom/htc/android/mail/server/Server;
    .end local v3           #serverPool:Ljava/util/concurrent/ConcurrentLinkedQueue;,"Ljava/util/concurrent/ConcurrentLinkedQueue<Lcom/htc/android/mail/server/Server;>;"
    .end local v4           #size:I
    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v5

    .line 61
    .restart local v1       #i:I
    .restart local v2       #server:Lcom/htc/android/mail/server/Server;
    .restart local v3       #serverPool:Ljava/util/concurrent/ConcurrentLinkedQueue;,"Ljava/util/concurrent/ConcurrentLinkedQueue<Lcom/htc/android/mail/server/Server;>;"
    .restart local v4       #size:I
    :cond_0
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 54
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 63
    .end local v2           #server:Lcom/htc/android/mail/server/Server;
    .end local v3           #serverPool:Ljava/util/concurrent/ConcurrentLinkedQueue;,"Ljava/util/concurrent/ConcurrentLinkedQueue<Lcom/htc/android/mail/server/Server;>;"
    :cond_1
    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 65
    iget-object v6, p0, Lcom/htc/android/mail/server/ServerPool;->mSmtpServerPoolArray:Lcom/htc/android/mail/util/SparseArray;

    monitor-enter v6

    .line 66
    :try_start_5
    iget-object v5, p0, Lcom/htc/android/mail/server/ServerPool;->mSmtpServerPoolArray:Lcom/htc/android/mail/util/SparseArray;

    invoke-virtual {v5}, Lcom/htc/android/mail/util/SparseArray;->size()I

    move-result v4

    .line 67
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v4, :cond_3

    .line 68
    iget-object v5, p0, Lcom/htc/android/mail/server/ServerPool;->mSmtpServerPoolArray:Lcom/htc/android/mail/util/SparseArray;

    invoke-virtual {v5, v1}, Lcom/htc/android/mail/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 69
    .restart local v3       #serverPool:Ljava/util/concurrent/ConcurrentLinkedQueue;,"Ljava/util/concurrent/ConcurrentLinkedQueue<Lcom/htc/android/mail/server/Server;>;"
    monitor-enter v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 70
    const/4 v2, 0x0

    .line 71
    .restart local v2       #server:Lcom/htc/android/mail/server/Server;
    :goto_3
    :try_start_6
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/htc/android/mail/server/Server;

    move-object v2, v0

    if-eqz v2, :cond_2

    .line 72
    invoke-virtual {v2}, Lcom/htc/android/mail/server/Server;->close()V

    goto :goto_3

    .line 74
    :catchall_2
    move-exception v5

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v5

    .line 76
    .end local v2           #server:Lcom/htc/android/mail/server/Server;
    .end local v3           #serverPool:Ljava/util/concurrent/ConcurrentLinkedQueue;,"Ljava/util/concurrent/ConcurrentLinkedQueue<Lcom/htc/android/mail/server/Server;>;"
    :catchall_3
    move-exception v5

    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v5

    .line 74
    .restart local v2       #server:Lcom/htc/android/mail/server/Server;
    .restart local v3       #serverPool:Ljava/util/concurrent/ConcurrentLinkedQueue;,"Ljava/util/concurrent/ConcurrentLinkedQueue<Lcom/htc/android/mail/server/Server;>;"
    :cond_2
    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 67
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 76
    .end local v2           #server:Lcom/htc/android/mail/server/Server;
    .end local v3           #serverPool:Ljava/util/concurrent/ConcurrentLinkedQueue;,"Ljava/util/concurrent/ConcurrentLinkedQueue<Lcom/htc/android/mail/server/Server;>;"
    :cond_3
    :try_start_9
    monitor-exit v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 77
    return-void
.end method

.method public getServer(Landroid/content/Context;Lcom/htc/android/mail/Account;)Lcom/htc/android/mail/server/Server;
    .locals 16
    .parameter "context"
    .parameter "account"

    .prologue
    .line 212
    const/4 v5, 0x0

    .line 213
    .local v5, server:Lcom/htc/android/mail/server/Server;
    invoke-virtual/range {p2 .. p2}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v4

    .line 214
    .local v4, protocol:I
    invoke-virtual/range {p2 .. p2}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    .line 215
    .local v2, accountId:J
    const/4 v9, 0x6

    if-ne v4, v9, :cond_0

    .line 216
    const-wide v2, 0x7ffffffffffffffdL

    .line 219
    :cond_0
    const/4 v7, 0x0

    .line 221
    .local v7, serverPool:Ljava/util/concurrent/ConcurrentLinkedQueue;,"Ljava/util/concurrent/ConcurrentLinkedQueue<Lcom/htc/android/mail/server/Server;>;"
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/server/ServerPool;->mServerPoolArray:Lcom/htc/android/mail/util/SparseArray;

    monitor-enter v10

    .line 222
    :try_start_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/android/mail/server/ServerPool;->mServerPoolArray:Lcom/htc/android/mail/util/SparseArray;

    invoke-virtual {v9, v2, v3}, Lcom/htc/android/mail/util/SparseArray;->get(J)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-object v7, v0

    .line 223
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    if-nez v7, :cond_2

    .line 226
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/server/ServerPool;->mServerPoolArray:Lcom/htc/android/mail/util/SparseArray;

    monitor-enter v10

    .line 227
    :try_start_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/android/mail/server/ServerPool;->mServerPoolArray:Lcom/htc/android/mail/util/SparseArray;

    invoke-virtual {v9, v2, v3}, Lcom/htc/android/mail/util/SparseArray;->get(J)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-object v7, v0

    .line 228
    if-nez v7, :cond_1

    .line 229
    new-instance v8, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v8}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 230
    .end local v7           #serverPool:Ljava/util/concurrent/ConcurrentLinkedQueue;,"Ljava/util/concurrent/ConcurrentLinkedQueue<Lcom/htc/android/mail/server/Server;>;"
    .local v8, serverPool:Ljava/util/concurrent/ConcurrentLinkedQueue;,"Ljava/util/concurrent/ConcurrentLinkedQueue<Lcom/htc/android/mail/server/Server;>;"
    :try_start_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/android/mail/server/ServerPool;->mServerPoolArray:Lcom/htc/android/mail/util/SparseArray;

    new-instance v11, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v11}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    invoke-virtual {v9, v2, v3, v11}, Lcom/htc/android/mail/util/SparseArray;->put(JLjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object v7, v8

    .line 232
    .end local v8           #serverPool:Ljava/util/concurrent/ConcurrentLinkedQueue;,"Ljava/util/concurrent/ConcurrentLinkedQueue<Lcom/htc/android/mail/server/Server;>;"
    .restart local v7       #serverPool:Ljava/util/concurrent/ConcurrentLinkedQueue;,"Ljava/util/concurrent/ConcurrentLinkedQueue<Lcom/htc/android/mail/server/Server;>;"
    :cond_1
    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 235
    :cond_2
    monitor-enter v7

    .line 236
    :try_start_4
    sget-boolean v9, Lcom/htc/android/mail/server/ServerPool;->DEBUG:Z

    if-eqz v9, :cond_3

    const-string v9, "ServerPool"

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "account id: %d, server poll size: %d"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :cond_3
    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lcom/htc/android/mail/server/Server;

    move-object v5, v0

    .line 240
    if-nez v5, :cond_4

    .line 241
    packed-switch v4, :pswitch_data_0

    .line 260
    :cond_4
    :goto_0
    :pswitch_0
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/htc/android/mail/server/Server;->setContext(Landroid/content/Context;)V

    .line 261
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/htc/android/mail/server/Server;->setAccount(Lcom/htc/android/mail/Account;)V

    .line 262
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Lcom/htc/android/mail/server/Server;->setStop(Z)V

    .line 263
    const/4 v9, 0x1

    iput v9, v5, Lcom/htc/android/mail/server/Server;->state:I

    .line 264
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 266
    return-object v5

    .line 223
    :catchall_0
    move-exception v9

    :try_start_5
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v9

    .line 232
    :catchall_1
    move-exception v9

    :goto_1
    :try_start_6
    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v9

    .line 243
    :pswitch_1
    :try_start_7
    new-instance v6, Lcom/htc/android/mail/server/POP3Server;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v6, v0, v1}, Lcom/htc/android/mail/server/POP3Server;-><init>(Landroid/content/Context;Lcom/htc/android/mail/Account;)V

    .end local v5           #server:Lcom/htc/android/mail/server/Server;
    .local v6, server:Lcom/htc/android/mail/server/Server;
    move-object v5, v6

    .line 244
    .end local v6           #server:Lcom/htc/android/mail/server/Server;
    .restart local v5       #server:Lcom/htc/android/mail/server/Server;
    goto :goto_0

    .line 246
    :pswitch_2
    new-instance v6, Lcom/htc/android/mail/server/ImapServer;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v6, v0, v1}, Lcom/htc/android/mail/server/ImapServer;-><init>(Landroid/content/Context;Lcom/htc/android/mail/Account;)V

    .end local v5           #server:Lcom/htc/android/mail/server/Server;
    .restart local v6       #server:Lcom/htc/android/mail/server/Server;
    move-object v5, v6

    .line 247
    .end local v6           #server:Lcom/htc/android/mail/server/Server;
    .restart local v5       #server:Lcom/htc/android/mail/server/Server;
    goto :goto_0

    .line 249
    :pswitch_3
    new-instance v6, Lcom/htc/android/mail/server/POP3Server;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v6, v0, v1}, Lcom/htc/android/mail/server/POP3Server;-><init>(Landroid/content/Context;Lcom/htc/android/mail/Account;)V

    .end local v5           #server:Lcom/htc/android/mail/server/Server;
    .restart local v6       #server:Lcom/htc/android/mail/server/Server;
    move-object v5, v6

    .line 250
    .end local v6           #server:Lcom/htc/android/mail/server/Server;
    .restart local v5       #server:Lcom/htc/android/mail/server/Server;
    goto :goto_0

    .line 252
    :pswitch_4
    new-instance v6, Lcom/htc/android/mail/server/ExchangeServer;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v6, v0, v1}, Lcom/htc/android/mail/server/ExchangeServer;-><init>(Landroid/content/Context;Lcom/htc/android/mail/Account;)V

    .end local v5           #server:Lcom/htc/android/mail/server/Server;
    .restart local v6       #server:Lcom/htc/android/mail/server/Server;
    move-object v5, v6

    .line 253
    .end local v6           #server:Lcom/htc/android/mail/server/Server;
    .restart local v5       #server:Lcom/htc/android/mail/server/Server;
    goto :goto_0

    .line 255
    :pswitch_5
    new-instance v6, Lcom/htc/android/mail/server/HUXServer;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v6, v0, v1}, Lcom/htc/android/mail/server/HUXServer;-><init>(Landroid/content/Context;Lcom/htc/android/mail/Account;)V

    .end local v5           #server:Lcom/htc/android/mail/server/Server;
    .restart local v6       #server:Lcom/htc/android/mail/server/Server;
    move-object v5, v6

    .end local v6           #server:Lcom/htc/android/mail/server/Server;
    .restart local v5       #server:Lcom/htc/android/mail/server/Server;
    goto :goto_0

    .line 264
    :catchall_2
    move-exception v9

    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v9

    .line 232
    .end local v7           #serverPool:Ljava/util/concurrent/ConcurrentLinkedQueue;,"Ljava/util/concurrent/ConcurrentLinkedQueue<Lcom/htc/android/mail/server/Server;>;"
    .restart local v8       #serverPool:Ljava/util/concurrent/ConcurrentLinkedQueue;,"Ljava/util/concurrent/ConcurrentLinkedQueue<Lcom/htc/android/mail/server/Server;>;"
    :catchall_3
    move-exception v9

    move-object v7, v8

    .end local v8           #serverPool:Ljava/util/concurrent/ConcurrentLinkedQueue;,"Ljava/util/concurrent/ConcurrentLinkedQueue<Lcom/htc/android/mail/server/Server;>;"
    .restart local v7       #serverPool:Ljava/util/concurrent/ConcurrentLinkedQueue;,"Ljava/util/concurrent/ConcurrentLinkedQueue<Lcom/htc/android/mail/server/Server;>;"
    goto :goto_1

    .line 241
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public getSmtpServer(Landroid/content/Context;Lcom/htc/android/mail/Account;)Lcom/htc/android/mail/server/Server;
    .locals 16
    .parameter "context"
    .parameter "account"

    .prologue
    .line 135
    const/4 v5, 0x0

    .line 136
    .local v5, server:Lcom/htc/android/mail/server/Server;
    invoke-virtual/range {p2 .. p2}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v4

    .line 137
    .local v4, protocol:I
    invoke-virtual/range {p2 .. p2}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    .line 138
    .local v2, accountId:J
    const/4 v9, 0x6

    if-ne v4, v9, :cond_0

    .line 139
    const-wide v2, 0x7ffffffffffffffdL

    .line 142
    :cond_0
    const/4 v7, 0x0

    .line 144
    .local v7, serverPool:Ljava/util/concurrent/ConcurrentLinkedQueue;,"Ljava/util/concurrent/ConcurrentLinkedQueue<Lcom/htc/android/mail/server/Server;>;"
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/server/ServerPool;->mSmtpServerPoolArray:Lcom/htc/android/mail/util/SparseArray;

    monitor-enter v10

    .line 145
    :try_start_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/android/mail/server/ServerPool;->mSmtpServerPoolArray:Lcom/htc/android/mail/util/SparseArray;

    invoke-virtual {v9, v2, v3}, Lcom/htc/android/mail/util/SparseArray;->get(J)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-object v7, v0

    .line 146
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    if-nez v7, :cond_2

    .line 149
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/server/ServerPool;->mSmtpServerPoolArray:Lcom/htc/android/mail/util/SparseArray;

    monitor-enter v10

    .line 150
    :try_start_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/android/mail/server/ServerPool;->mSmtpServerPoolArray:Lcom/htc/android/mail/util/SparseArray;

    invoke-virtual {v9, v2, v3}, Lcom/htc/android/mail/util/SparseArray;->get(J)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-object v7, v0

    .line 151
    if-nez v7, :cond_1

    .line 152
    new-instance v8, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v8}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 153
    .end local v7           #serverPool:Ljava/util/concurrent/ConcurrentLinkedQueue;,"Ljava/util/concurrent/ConcurrentLinkedQueue<Lcom/htc/android/mail/server/Server;>;"
    .local v8, serverPool:Ljava/util/concurrent/ConcurrentLinkedQueue;,"Ljava/util/concurrent/ConcurrentLinkedQueue<Lcom/htc/android/mail/server/Server;>;"
    :try_start_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/android/mail/server/ServerPool;->mSmtpServerPoolArray:Lcom/htc/android/mail/util/SparseArray;

    new-instance v11, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v11}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    invoke-virtual {v9, v2, v3, v11}, Lcom/htc/android/mail/util/SparseArray;->put(JLjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object v7, v8

    .line 155
    .end local v8           #serverPool:Ljava/util/concurrent/ConcurrentLinkedQueue;,"Ljava/util/concurrent/ConcurrentLinkedQueue<Lcom/htc/android/mail/server/Server;>;"
    .restart local v7       #serverPool:Ljava/util/concurrent/ConcurrentLinkedQueue;,"Ljava/util/concurrent/ConcurrentLinkedQueue<Lcom/htc/android/mail/server/Server;>;"
    :cond_1
    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 158
    :cond_2
    monitor-enter v7

    .line 159
    :try_start_4
    sget-boolean v9, Lcom/htc/android/mail/server/ServerPool;->DEBUG:Z

    if-eqz v9, :cond_3

    const-string v9, "ServerPool"

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "account id: %d, smtp server array size: %d"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_3
    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lcom/htc/android/mail/server/Server;

    move-object v5, v0

    .line 163
    if-nez v5, :cond_4

    .line 164
    packed-switch v4, :pswitch_data_0

    .line 169
    new-instance v6, Lcom/htc/android/mail/server/SmtpServer;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v6, v0, v1}, Lcom/htc/android/mail/server/SmtpServer;-><init>(Landroid/content/Context;Lcom/htc/android/mail/Account;)V

    .end local v5           #server:Lcom/htc/android/mail/server/Server;
    .local v6, server:Lcom/htc/android/mail/server/Server;
    move-object v5, v6

    .line 173
    .end local v6           #server:Lcom/htc/android/mail/server/Server;
    .restart local v5       #server:Lcom/htc/android/mail/server/Server;
    :cond_4
    :goto_0
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/htc/android/mail/server/Server;->setContext(Landroid/content/Context;)V

    .line 174
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/htc/android/mail/server/Server;->setAccount(Lcom/htc/android/mail/Account;)V

    .line 175
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Lcom/htc/android/mail/server/Server;->setStop(Z)V

    .line 176
    const/4 v9, 0x1

    iput v9, v5, Lcom/htc/android/mail/server/Server;->state:I

    .line 177
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 179
    return-object v5

    .line 146
    :catchall_0
    move-exception v9

    :try_start_5
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v9

    .line 155
    :catchall_1
    move-exception v9

    :goto_1
    :try_start_6
    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v9

    .line 166
    :pswitch_0
    :try_start_7
    new-instance v6, Lcom/htc/android/mail/server/HUXSmtpServer;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v6, v0, v1}, Lcom/htc/android/mail/server/HUXSmtpServer;-><init>(Landroid/content/Context;Lcom/htc/android/mail/Account;)V

    .end local v5           #server:Lcom/htc/android/mail/server/Server;
    .restart local v6       #server:Lcom/htc/android/mail/server/Server;
    move-object v5, v6

    .line 167
    .end local v6           #server:Lcom/htc/android/mail/server/Server;
    .restart local v5       #server:Lcom/htc/android/mail/server/Server;
    goto :goto_0

    .line 177
    :catchall_2
    move-exception v9

    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v9

    .line 155
    .end local v7           #serverPool:Ljava/util/concurrent/ConcurrentLinkedQueue;,"Ljava/util/concurrent/ConcurrentLinkedQueue<Lcom/htc/android/mail/server/Server;>;"
    .restart local v8       #serverPool:Ljava/util/concurrent/ConcurrentLinkedQueue;,"Ljava/util/concurrent/ConcurrentLinkedQueue<Lcom/htc/android/mail/server/Server;>;"
    :catchall_3
    move-exception v9

    move-object v7, v8

    .end local v8           #serverPool:Ljava/util/concurrent/ConcurrentLinkedQueue;,"Ljava/util/concurrent/ConcurrentLinkedQueue<Lcom/htc/android/mail/server/Server;>;"
    .restart local v7       #serverPool:Ljava/util/concurrent/ConcurrentLinkedQueue;,"Ljava/util/concurrent/ConcurrentLinkedQueue<Lcom/htc/android/mail/server/Server;>;"
    goto :goto_1

    .line 164
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public putServerBack(Landroid/content/Context;Lcom/htc/android/mail/Account;Lcom/htc/android/mail/server/Server;)V
    .locals 7
    .parameter "context"
    .parameter "account"
    .parameter "server"

    .prologue
    .line 183
    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/htc/android/mail/util/ScreenStatusManager;->isScreenOn(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 184
    :cond_0
    invoke-virtual {p3}, Lcom/htc/android/mail/server/Server;->close()V

    .line 209
    :goto_0
    return-void

    .line 188
    :cond_1
    invoke-virtual {p2}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v3

    .line 189
    .local v3, protocol:I
    invoke-virtual {p2}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v1

    .line 190
    .local v1, accountId:J
    const/4 v5, 0x6

    if-ne v3, v5, :cond_2

    .line 191
    const-wide v1, 0x7ffffffffffffffdL

    .line 194
    :cond_2
    const/4 v4, 0x0

    .line 196
    .local v4, serverPool:Ljava/util/concurrent/ConcurrentLinkedQueue;,"Ljava/util/concurrent/ConcurrentLinkedQueue<Lcom/htc/android/mail/server/Server;>;"
    iget-object v6, p0, Lcom/htc/android/mail/server/ServerPool;->mServerPoolArray:Lcom/htc/android/mail/util/SparseArray;

    monitor-enter v6

    .line 197
    :try_start_0
    iget-object v5, p0, Lcom/htc/android/mail/server/ServerPool;->mServerPoolArray:Lcom/htc/android/mail/util/SparseArray;

    invoke-virtual {v5, v1, v2}, Lcom/htc/android/mail/util/SparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-object v4, v0

    .line 198
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    if-nez v4, :cond_3

    .line 201
    invoke-virtual {p3}, Lcom/htc/android/mail/server/Server;->close()V

    goto :goto_0

    .line 198
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 205
    :cond_3
    monitor-enter v4

    .line 206
    const/4 v5, 0x0

    :try_start_2
    iput v5, p3, Lcom/htc/android/mail/server/Server;->state:I

    .line 207
    invoke-virtual {v4, p3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 208
    monitor-exit v4

    goto :goto_0

    :catchall_1
    move-exception v5

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v5
.end method

.method public putSmtpServerBack(Landroid/content/Context;JLcom/htc/android/mail/server/Server;)V
    .locals 4
    .parameter "context"
    .parameter "accountId"
    .parameter "server"

    .prologue
    .line 112
    invoke-static {p1}, Lcom/htc/android/mail/util/ScreenStatusManager;->isScreenOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 113
    invoke-virtual {p4}, Lcom/htc/android/mail/server/Server;->close()V

    .line 132
    :goto_0
    return-void

    .line 117
    :cond_0
    const/4 v1, 0x0

    .line 119
    .local v1, serverPool:Ljava/util/concurrent/ConcurrentLinkedQueue;,"Ljava/util/concurrent/ConcurrentLinkedQueue<Lcom/htc/android/mail/server/Server;>;"
    iget-object v3, p0, Lcom/htc/android/mail/server/ServerPool;->mSmtpServerPoolArray:Lcom/htc/android/mail/util/SparseArray;

    monitor-enter v3

    .line 120
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/mail/server/ServerPool;->mSmtpServerPoolArray:Lcom/htc/android/mail/util/SparseArray;

    invoke-virtual {v2, p2, p3}, Lcom/htc/android/mail/util/SparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-object v1, v0

    .line 121
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    if-nez v1, :cond_1

    .line 124
    invoke-virtual {p4}, Lcom/htc/android/mail/server/Server;->close()V

    goto :goto_0

    .line 121
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 128
    :cond_1
    monitor-enter v1

    .line 129
    const/4 v2, 0x0

    :try_start_2
    iput v2, p4, Lcom/htc/android/mail/server/Server;->state:I

    .line 130
    invoke-virtual {v1, p4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 131
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method public removeServer(J)V
    .locals 5
    .parameter "accountId"

    .prologue
    .line 80
    const/4 v2, 0x0

    .line 81
    .local v2, serverPool:Ljava/util/concurrent/ConcurrentLinkedQueue;,"Ljava/util/concurrent/ConcurrentLinkedQueue<Lcom/htc/android/mail/server/Server;>;"
    iget-object v4, p0, Lcom/htc/android/mail/server/ServerPool;->mServerPoolArray:Lcom/htc/android/mail/util/SparseArray;

    monitor-enter v4

    .line 82
    :try_start_0
    iget-object v3, p0, Lcom/htc/android/mail/server/ServerPool;->mServerPoolArray:Lcom/htc/android/mail/util/SparseArray;

    invoke-virtual {v3, p1, p2}, Lcom/htc/android/mail/util/SparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-object v2, v0

    .line 83
    iget-object v3, p0, Lcom/htc/android/mail/server/ServerPool;->mServerPoolArray:Lcom/htc/android/mail/util/SparseArray;

    invoke-virtual {v3, p1, p2}, Lcom/htc/android/mail/util/SparseArray;->delete(J)V

    .line 84
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 86
    if-eqz v2, :cond_1

    .line 87
    monitor-enter v2

    .line 88
    const/4 v1, 0x0

    .line 89
    .local v1, server:Lcom/htc/android/mail/server/Server;
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/htc/android/mail/server/Server;

    move-object v1, v0

    if-eqz v1, :cond_0

    .line 90
    invoke-virtual {v1}, Lcom/htc/android/mail/server/Server;->close()V

    goto :goto_0

    .line 92
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 84
    .end local v1           #server:Lcom/htc/android/mail/server/Server;
    :catchall_1
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 92
    .restart local v1       #server:Lcom/htc/android/mail/server/Server;
    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 95
    .end local v1           #server:Lcom/htc/android/mail/server/Server;
    :cond_1
    const/4 v2, 0x0

    .line 96
    iget-object v4, p0, Lcom/htc/android/mail/server/ServerPool;->mSmtpServerPoolArray:Lcom/htc/android/mail/util/SparseArray;

    monitor-enter v4

    .line 97
    :try_start_4
    iget-object v3, p0, Lcom/htc/android/mail/server/ServerPool;->mSmtpServerPoolArray:Lcom/htc/android/mail/util/SparseArray;

    invoke-virtual {v3, p1, p2}, Lcom/htc/android/mail/util/SparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-object v2, v0

    .line 98
    iget-object v3, p0, Lcom/htc/android/mail/server/ServerPool;->mSmtpServerPoolArray:Lcom/htc/android/mail/util/SparseArray;

    invoke-virtual {v3, p1, p2}, Lcom/htc/android/mail/util/SparseArray;->delete(J)V

    .line 99
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 101
    if-eqz v2, :cond_3

    .line 102
    monitor-enter v2

    .line 103
    const/4 v1, 0x0

    .line 104
    .restart local v1       #server:Lcom/htc/android/mail/server/Server;
    :goto_1
    :try_start_5
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/htc/android/mail/server/Server;

    move-object v1, v0

    if-eqz v1, :cond_2

    .line 105
    invoke-virtual {v1}, Lcom/htc/android/mail/server/Server;->close()V

    goto :goto_1

    .line 107
    :catchall_2
    move-exception v3

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v3

    .line 99
    .end local v1           #server:Lcom/htc/android/mail/server/Server;
    :catchall_3
    move-exception v3

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v3

    .line 107
    .restart local v1       #server:Lcom/htc/android/mail/server/Server;
    :cond_2
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 109
    .end local v1           #server:Lcom/htc/android/mail/server/Server;
    :cond_3
    return-void
.end method
