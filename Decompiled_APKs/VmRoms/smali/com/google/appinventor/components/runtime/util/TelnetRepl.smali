.class public Lcom/google/appinventor/components/runtime/util/TelnetRepl;
.super Lgnu/mapping/Procedure0;


# static fields
.field private static final REPL_STACK_SIZE:I = 0x40000


# instance fields
.field language:Lgnu/expr/Language;

.field socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Lgnu/expr/Language;Ljava/net/Socket;)V
    .locals 0

    invoke-direct {p0}, Lgnu/mapping/Procedure0;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/TelnetRepl;->language:Lgnu/expr/Language;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/TelnetRepl;->socket:Ljava/net/Socket;

    return-void
.end method

.method public static serve(Lgnu/expr/Language;Ljava/net/Socket;)Ljava/lang/Thread;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lkawa/Telnet;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lkawa/Telnet;-><init>(Ljava/net/Socket;Z)V

    invoke-virtual {v0}, Lkawa/Telnet;->getOutputStream()Lkawa/TelnetOutputStream;

    move-result-object v1

    invoke-virtual {v0}, Lkawa/Telnet;->getInputStream()Lkawa/TelnetInputStream;

    move-result-object v0

    new-instance v3, Lgnu/mapping/OutPort;

    const-string v2, "/dev/stdout"

    invoke-static {v2}, Lgnu/text/FilePath;->valueOf(Ljava/lang/String;)Lgnu/text/FilePath;

    move-result-object v2

    invoke-direct {v3, v1, v2}, Lgnu/mapping/OutPort;-><init>(Ljava/io/OutputStream;Lgnu/text/Path;)V

    new-instance v2, Lgnu/mapping/TtyInPort;

    const-string v1, "/dev/stdin"

    invoke-static {v1}, Lgnu/text/FilePath;->valueOf(Ljava/lang/String;)Lgnu/text/FilePath;

    move-result-object v1

    invoke-direct {v2, v0, v1, v3}, Lgnu/mapping/TtyInPort;-><init>(Ljava/io/InputStream;Lgnu/text/Path;Lgnu/mapping/OutPort;)V

    new-instance v0, Lcom/google/appinventor/components/runtime/util/BiggerFuture;

    new-instance v1, Lcom/google/appinventor/components/runtime/util/TelnetRepl;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/util/TelnetRepl;-><init>(Lgnu/expr/Language;Ljava/net/Socket;)V

    const-string v5, "Telnet Repl Thread"

    const-wide/32 v6, 0x40000

    move-object v4, v3

    invoke-direct/range {v0 .. v7}, Lcom/google/appinventor/components/runtime/util/BiggerFuture;-><init>(Lgnu/mapping/Procedure;Lgnu/mapping/InPort;Lgnu/mapping/OutPort;Lgnu/mapping/OutPort;Ljava/lang/String;J)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-object v0
.end method


# virtual methods
.method public apply0()Ljava/lang/Object;
    .locals 4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-nez v1, :cond_0

    const-class v1, Lkawa/Telnet;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/TelnetRepl;->language:Lgnu/expr/Language;

    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v1

    invoke-static {v0, v1}, Lkawa/Shell;->run(Lgnu/expr/Language;Lgnu/mapping/Environment;)Z

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/TelnetRepl;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "TelnetRepl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Repl is exiting with error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_3
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/TelnetRepl;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_1
    throw v0

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method
