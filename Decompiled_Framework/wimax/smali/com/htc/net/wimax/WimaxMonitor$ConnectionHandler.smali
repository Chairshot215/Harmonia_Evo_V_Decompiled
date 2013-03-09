.class Lcom/htc/net/wimax/WimaxMonitor$ConnectionHandler;
.super Ljava/lang/Object;
.source "WimaxMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/net/wimax/WimaxMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectionHandler"
.end annotation


# instance fields
.field private in:Ljava/io/BufferedReader;

.field private out:Ljava/io/PrintWriter;

.field private socket:Ljava/net/Socket;

.field final synthetic this$0:Lcom/htc/net/wimax/WimaxMonitor;

.field private wmxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;


# direct methods
.method public constructor <init>(Lcom/htc/net/wimax/WimaxMonitor;Lcom/htc/net/wimax/WimaxStateTracker;Ljava/net/Socket;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/htc/net/wimax/WimaxMonitor$ConnectionHandler;->this$0:Lcom/htc/net/wimax/WimaxMonitor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/htc/net/wimax/WimaxMonitor$ConnectionHandler;->out:Ljava/io/PrintWriter;

    iput-object v1, p0, Lcom/htc/net/wimax/WimaxMonitor$ConnectionHandler;->in:Ljava/io/BufferedReader;

    iput-object p2, p0, Lcom/htc/net/wimax/WimaxMonitor$ConnectionHandler;->wmxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    iput-object p3, p0, Lcom/htc/net/wimax/WimaxMonitor$ConnectionHandler;->socket:Ljava/net/Socket;

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private encryptString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v2, ""

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_8

    aget-char v3, v1, v0

    const/16 v4, 0x61

    if-lt v3, v4, :cond_1

    aget-char v3, v1, v0

    const/16 v4, 0x6d

    if-gt v3, v4, :cond_1

    aget-char v3, v1, v0

    add-int/lit8 v3, v3, 0xd

    int-to-char v3, v3

    aput-char v3, v1, v0

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    aget-char v3, v1, v0

    const/16 v4, 0x6e

    if-lt v3, v4, :cond_2

    aget-char v3, v1, v0

    const/16 v4, 0x7a

    if-gt v3, v4, :cond_2

    aget-char v3, v1, v0

    add-int/lit8 v3, v3, -0xd

    int-to-char v3, v3

    aput-char v3, v1, v0

    goto :goto_1

    :cond_2
    aget-char v3, v1, v0

    const/16 v4, 0x41

    if-lt v3, v4, :cond_3

    aget-char v3, v1, v0

    const/16 v4, 0x46

    if-gt v3, v4, :cond_3

    aget-char v3, v1, v0

    add-int/lit8 v3, v3, 0x7

    int-to-char v3, v3

    aput-char v3, v1, v0

    goto :goto_1

    :cond_3
    aget-char v3, v1, v0

    const/16 v4, 0x4e

    if-lt v3, v4, :cond_4

    aget-char v3, v1, v0

    const/16 v4, 0x53

    if-gt v3, v4, :cond_4

    aget-char v3, v1, v0

    add-int/lit8 v3, v3, 0x7

    int-to-char v3, v3

    aput-char v3, v1, v0

    goto :goto_1

    :cond_4
    aget-char v3, v1, v0

    const/16 v4, 0x48

    if-lt v3, v4, :cond_5

    aget-char v3, v1, v0

    const/16 v4, 0x4d

    if-gt v3, v4, :cond_5

    aget-char v3, v1, v0

    add-int/lit8 v3, v3, -0x7

    int-to-char v3, v3

    aput-char v3, v1, v0

    goto :goto_1

    :cond_5
    aget-char v3, v1, v0

    const/16 v4, 0x55

    if-lt v3, v4, :cond_6

    aget-char v3, v1, v0

    const/16 v4, 0x5a

    if-gt v3, v4, :cond_6

    aget-char v3, v1, v0

    add-int/lit8 v3, v3, -0x7

    int-to-char v3, v3

    aput-char v3, v1, v0

    goto :goto_1

    :cond_6
    aget-char v3, v1, v0

    const/16 v4, 0x31

    if-lt v3, v4, :cond_7

    aget-char v3, v1, v0

    const/16 v4, 0x36

    if-gt v3, v4, :cond_7

    aget-char v3, v1, v0

    add-int/lit8 v3, v3, 0x3

    int-to-char v3, v3

    aput-char v3, v1, v0

    goto :goto_1

    :cond_7
    aget-char v3, v1, v0

    const/16 v4, 0x37

    if-lt v3, v4, :cond_0

    aget-char v3, v1, v0

    const/16 v4, 0x39

    if-gt v3, v4, :cond_0

    aget-char v3, v1, v0

    add-int/lit8 v3, v3, -0x6

    int-to-char v3, v3

    aput-char v3, v1, v0

    goto/16 :goto_1

    :cond_8
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method


# virtual methods
.method public handleMessage(Ljava/lang/String;Ljava/io/BufferedReader;Ljava/io/PrintWriter;)V
    .locals 15

    if-eqz p1, :cond_1

    const-string v12, "WimaxMonitor"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "msg = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    :try_start_0
    const-string v12, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    if-eqz v5, :cond_0

    array-length v12, v5

    if-gtz v12, :cond_2

    :cond_0
    const-string v12, "WimaxMonitor"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "handleMessage: command is error, command = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    const-string v12, "WimaxMonitor"

    const-string v13, "handleMessage: msg is null"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v12, ""

    invoke-direct {p0, v12}, Lcom/htc/net/wimax/WimaxMonitor$ConnectionHandler;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v12, "WimaxMonitor"

    const-string v13, "handleMessage: string is null"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v12, ""

    invoke-direct {p0, v12}, Lcom/htc/net/wimax/WimaxMonitor$ConnectionHandler;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v3

    const-string v12, "WimaxMonitor"

    const-string v13, "handleMessage: other exception"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    const-string v12, ""

    invoke-direct {p0, v12}, Lcom/htc/net/wimax/WimaxMonitor$ConnectionHandler;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v12, 0x0

    aget-object v12, v5, v12

    const-string v13, "getCdmaModestNai"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    iget-object v12, p0, Lcom/htc/net/wimax/WimaxMonitor$ConnectionHandler;->wmxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    iget-object v12, v12, Lcom/htc/net/wimax/WimaxStateTracker;->cdmaNaiUsername:Ljava/lang/String;

    if-eqz v12, :cond_3

    iget-object v12, p0, Lcom/htc/net/wimax/WimaxMonitor$ConnectionHandler;->wmxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v12}, Lcom/htc/net/wimax/WimaxStateTracker;->requestNaiIdWithModestParameter()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/htc/net/wimax/WimaxMonitor$ConnectionHandler;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v12, ""

    invoke-direct {p0, v12}, Lcom/htc/net/wimax/WimaxMonitor$ConnectionHandler;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/4 v12, 0x0

    aget-object v12, v5, v12

    const-string v13, "get3gNai"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    iget-object v12, p0, Lcom/htc/net/wimax/WimaxMonitor$ConnectionHandler;->wmxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v12}, Lcom/htc/net/wimax/WimaxStateTracker;->requestNaiIdFromNvItems()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_5

    invoke-direct {p0, v11}, Lcom/htc/net/wimax/WimaxMonitor$ConnectionHandler;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string v12, ""

    invoke-direct {p0, v12}, Lcom/htc/net/wimax/WimaxMonitor$ConnectionHandler;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const/4 v12, 0x0

    aget-object v12, v5, v12

    const-string v13, "get3gPassword"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    iget-object v12, p0, Lcom/htc/net/wimax/WimaxMonitor$ConnectionHandler;->wmxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v12}, Lcom/htc/net/wimax/WimaxStateTracker;->requestNaiPwdFromNvItems()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_7

    invoke-direct {p0, v11}, Lcom/htc/net/wimax/WimaxMonitor$ConnectionHandler;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string v12, ""

    invoke-direct {p0, v12}, Lcom/htc/net/wimax/WimaxMonitor$ConnectionHandler;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const/4 v12, 0x0

    aget-object v12, v5, v12

    const-string v13, "getSimId"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    iget-object v12, p0, Lcom/htc/net/wimax/WimaxMonitor$ConnectionHandler;->wmxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v12}, Lcom/htc/net/wimax/WimaxStateTracker;->requestNaiIdFromSimCard()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/htc/net/wimax/WimaxMonitor$ConnectionHandler;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    const/4 v12, 0x0

    aget-object v12, v5, v12

    const-string v13, "getNaiDecoration"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    iget-object v12, p0, Lcom/htc/net/wimax/WimaxMonitor$ConnectionHandler;->wmxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v12}, Lcom/htc/net/wimax/WimaxStateTracker;->getNaiDecoration()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/htc/net/wimax/WimaxMonitor$ConnectionHandler;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    const/4 v12, 0x0

    aget-object v12, v5, v12

    const-string v13, "doEapAkaCrypto"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    const/4 v12, 0x1

    aget-object v6, v5, v12

    const/4 v12, 0x2

    aget-object v1, v5, v12

    iget-object v12, p0, Lcom/htc/net/wimax/WimaxMonitor$ConnectionHandler;->wmxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v12, v6, v1}, Lcom/htc/net/wimax/WimaxStateTracker;->performEapAkaCrypto(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/htc/net/wimax/WimaxMonitor$ConnectionHandler;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    const/4 v12, 0x0

    aget-object v12, v5, v12

    const-string v13, "doEapSimCrypto"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    const/4 v12, 0x1

    aget-object v7, v5, v12

    const/4 v12, 0x2

    aget-object v8, v5, v12

    const/4 v12, 0x3

    aget-object v9, v5, v12

    iget-object v12, p0, Lcom/htc/net/wimax/WimaxMonitor$ConnectionHandler;->wmxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v12, v7, v8, v9}, Lcom/htc/net/wimax/WimaxStateTracker;->performEapSimCrypto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/htc/net/wimax/WimaxMonitor$ConnectionHandler;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    const/4 v12, 0x0

    aget-object v12, v5, v12

    const-string v13, "MsReady"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    iget-object v12, p0, Lcom/htc/net/wimax/WimaxMonitor$ConnectionHandler;->wmxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v12}, Lcom/htc/net/wimax/WimaxStateTracker;->setSequansdReady()V

    const-string v12, ""

    invoke-direct {p0, v12}, Lcom/htc/net/wimax/WimaxMonitor$ConnectionHandler;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    const/4 v12, 0x0

    aget-object v12, v5, v12

    const-string v13, "sequansdClosed"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    iget-object v12, p0, Lcom/htc/net/wimax/WimaxMonitor$ConnectionHandler;->wmxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v12}, Lcom/htc/net/wimax/WimaxStateTracker;->notifySequansdClosed()V

    const-string v12, ""

    invoke-direct {p0, v12}, Lcom/htc/net/wimax/WimaxMonitor$ConnectionHandler;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    const/4 v12, 0x0

    aget-object v12, v5, v12

    const-string v13, "isDunMode"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    iget-object v12, p0, Lcom/htc/net/wimax/WimaxMonitor$ConnectionHandler;->wmxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v12}, Lcom/htc/net/wimax/WimaxStateTracker;->isDunMode()Z

    move-result v12

    if-eqz v12, :cond_f

    const-string v12, "1"

    invoke-direct {p0, v12}, Lcom/htc/net/wimax/WimaxMonitor$ConnectionHandler;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    const-string v12, "0"

    invoke-direct {p0, v12}, Lcom/htc/net/wimax/WimaxMonitor$ConnectionHandler;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_10
    const/4 v12, 0x0

    aget-object v12, v5, v12

    const-string v13, "isReleaseKey"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12

    iget-object v12, p0, Lcom/htc/net/wimax/WimaxMonitor$ConnectionHandler;->wmxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;

    invoke-virtual {v12}, Lcom/htc/net/wimax/WimaxStateTracker;->isReleaseKey()Z

    move-result v12

    if-eqz v12, :cond_11

    const-string v12, "1"

    invoke-direct {p0, v12}, Lcom/htc/net/wimax/WimaxMonitor$ConnectionHandler;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_11
    const-string v12, "0"

    invoke-direct {p0, v12}, Lcom/htc/net/wimax/WimaxMonitor$ConnectionHandler;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_12
    const/4 v12, 0x0

    aget-object v12, v5, v12

    const-string v13, "EapMessageToSim"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_14

    :try_start_1
    const-string v12, "phone"

    invoke-static {v12}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v12

    invoke-static {v12}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v12

    const/4 v13, 0x1

    aget-object v13, v5, v13

    invoke-interface {v12, v13}, Lcom/android/internal/telephony/ITelephony;->requestSetISIMAUTH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_13

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_13

    const-string v12, "WimaxMonitor"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "response = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v11}, Lcom/htc/net/wimax/WimaxMonitor$ConnectionHandler;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_0

    :catch_2
    move-exception v3

    const-string v12, "WimaxMonitor"

    const-string v13, "response = NULL"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v12, "NULL"

    invoke-direct {p0, v12}, Lcom/htc/net/wimax/WimaxMonitor$ConnectionHandler;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_13
    :try_start_2
    const-string v12, "WimaxMonitor"

    const-string v13, "response = NULL"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v12, "NULL"

    invoke-direct {p0, v12}, Lcom/htc/net/wimax/WimaxMonitor$ConnectionHandler;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v3

    const-string v12, "WimaxMonitor"

    const-string v13, "otherExeption: response = NULL"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    const-string v12, "NULL"

    invoke-direct {p0, v12}, Lcom/htc/net/wimax/WimaxMonitor$ConnectionHandler;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_14
    const/4 v12, 0x0

    aget-object v12, v5, v12

    const-string v13, "ResetSimEapState"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_16

    :try_start_3
    const-string v12, "phone"

    invoke-static {v12}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v12

    invoke-static {v12}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v12

    invoke-interface {v12}, Lcom/android/internal/telephony/ITelephony;->requestResetWSIMState()Z

    move-result v10

    if-eqz v10, :cond_15

    const-string v12, "WimaxMonitor"

    const-string v13, "reset sim success"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v12, "TRUE"

    invoke-direct {p0, v12}, Lcom/htc/net/wimax/WimaxMonitor$ConnectionHandler;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    goto/16 :goto_0

    :catch_4
    move-exception v3

    const-string v12, "WimaxMonitor"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "RemoteException: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v12, "NULL"

    invoke-direct {p0, v12}, Lcom/htc/net/wimax/WimaxMonitor$ConnectionHandler;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_15
    :try_start_4
    const-string v12, "WimaxMonitor"

    const-string v13, "reset sim fail"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v12, "FALSE"

    invoke-direct {p0, v12}, Lcom/htc/net/wimax/WimaxMonitor$ConnectionHandler;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v3

    const-string v12, "WimaxMonitor"

    const-string v13, "otherExeption: resetSimEapState"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    const-string v12, "NULL"

    invoke-direct {p0, v12}, Lcom/htc/net/wimax/WimaxMonitor$ConnectionHandler;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_16
    const/4 v12, 0x0

    aget-object v12, v5, v12

    const-string v13, "EapAkaNotification"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_17

    const-string v12, "NULL"

    invoke-direct {p0, v12}, Lcom/htc/net/wimax/WimaxMonitor$ConnectionHandler;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v12, 0x1

    :try_start_5
    aget-object v12, v5, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v12, p0, Lcom/htc/net/wimax/WimaxMonitor$ConnectionHandler;->this$0:Lcom/htc/net/wimax/WimaxMonitor;

    #getter for: Lcom/htc/net/wimax/WimaxMonitor;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;
    invoke-static {v12}, Lcom/htc/net/wimax/WimaxMonitor;->access$000(Lcom/htc/net/wimax/WimaxMonitor;)Lcom/htc/net/wimax/WimaxStateTracker;

    move-result-object v12

    invoke-virtual {v12, v2}, Lcom/htc/net/wimax/WimaxStateTracker;->AuthAkaNotification(I)V
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    goto/16 :goto_0

    :catch_6
    move-exception v3

    const-string v12, "WimaxMonitor"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "NumberFormatException: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_7
    move-exception v3

    const-string v12, "WimaxMonitor"

    const-string v13, "otherExeption: EapAkaNotification"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_17
    const/4 v12, 0x0

    aget-object v12, v5, v12

    const-string v13, "EapAkaAuthReject"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_18

    const-string v12, "NULL"

    invoke-direct {p0, v12}, Lcom/htc/net/wimax/WimaxMonitor$ConnectionHandler;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/htc/net/wimax/WimaxMonitor$ConnectionHandler;->this$0:Lcom/htc/net/wimax/WimaxMonitor;

    #getter for: Lcom/htc/net/wimax/WimaxMonitor;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;
    invoke-static {v12}, Lcom/htc/net/wimax/WimaxMonitor;->access$000(Lcom/htc/net/wimax/WimaxMonitor;)Lcom/htc/net/wimax/WimaxStateTracker;

    move-result-object v12

    invoke-virtual {v12}, Lcom/htc/net/wimax/WimaxStateTracker;->AuthAkaReject()V

    goto/16 :goto_0

    :cond_18
    const/4 v12, 0x0

    aget-object v12, v5, v12

    const-string v13, "EapNotification"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_19

    const-string v12, "NULL"

    invoke-direct {p0, v12}, Lcom/htc/net/wimax/WimaxMonitor$ConnectionHandler;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/htc/net/wimax/WimaxMonitor$ConnectionHandler;->this$0:Lcom/htc/net/wimax/WimaxMonitor;

    #getter for: Lcom/htc/net/wimax/WimaxMonitor;->mWimaxStateTracker:Lcom/htc/net/wimax/WimaxStateTracker;
    invoke-static {v12}, Lcom/htc/net/wimax/WimaxMonitor;->access$000(Lcom/htc/net/wimax/WimaxMonitor;)Lcom/htc/net/wimax/WimaxStateTracker;

    move-result-object v12

    const/4 v13, 0x1

    aget-object v13, v5, v13

    invoke-virtual {v12, v13}, Lcom/htc/net/wimax/WimaxStateTracker;->AuthEapNotification(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_19
    const-string v12, "WimaxMonitor"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "handleMessage: command is not supported!! command="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    aget-object v14, v5, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v12, ""

    invoke-direct {p0, v12}, Lcom/htc/net/wimax/WimaxMonitor$ConnectionHandler;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public run()V
    .locals 6

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    iget-object v4, p0, Lcom/htc/net/wimax/WimaxMonitor$ConnectionHandler;->socket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v2, p0, Lcom/htc/net/wimax/WimaxMonitor$ConnectionHandler;->in:Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/PrintWriter;

    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    iget-object v5, p0, Lcom/htc/net/wimax/WimaxMonitor$ConnectionHandler;->socket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    iput-object v2, p0, Lcom/htc/net/wimax/WimaxMonitor$ConnectionHandler;->out:Ljava/io/PrintWriter;

    iget-object v2, p0, Lcom/htc/net/wimax/WimaxMonitor$ConnectionHandler;->in:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/net/wimax/WimaxMonitor$ConnectionHandler;->in:Ljava/io/BufferedReader;

    iget-object v3, p0, Lcom/htc/net/wimax/WimaxMonitor$ConnectionHandler;->out:Ljava/io/PrintWriter;

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/net/wimax/WimaxMonitor$ConnectionHandler;->handleMessage(Ljava/lang/String;Ljava/io/BufferedReader;Ljava/io/PrintWriter;)V

    iget-object v2, p0, Lcom/htc/net/wimax/WimaxMonitor$ConnectionHandler;->in:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    iget-object v2, p0, Lcom/htc/net/wimax/WimaxMonitor$ConnectionHandler;->out:Ljava/io/PrintWriter;

    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    iget-object v2, p0, Lcom/htc/net/wimax/WimaxMonitor$ConnectionHandler;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
