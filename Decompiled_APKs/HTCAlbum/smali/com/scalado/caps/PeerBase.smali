.class public Lcom/scalado/caps/PeerBase;
.super Ljava/lang/Object;
.source "PeerBase.java"


# static fields
.field static final NO_C_PEER:J = -0x1L

.field static logger:Lcom/scalado/caps/LogInterface;


# instance fields
.field protected mInstanceID:I

.field private mUniqueID:J


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 25
    new-instance v5, Lcom/scalado/caps/LogRelease;

    invoke-direct {v5}, Lcom/scalado/caps/LogRelease;-><init>()V

    sput-object v5, Lcom/scalado/caps/PeerBase;->logger:Lcom/scalado/caps/LogInterface;

    .line 83
    sget-object v5, Lcom/scalado/caps/PeerBase;->logger:Lcom/scalado/caps/LogInterface;

    const-string v6, "JNI"

    const-string v7, "Trying to load libcapsjava"

    invoke-interface {v5, v6, v7}, Lcom/scalado/caps/LogInterface;->outputDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v5, "os.name"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 85
    .local v3, osName:Ljava/lang/String;
    const-string v5, "java.vm.name"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, javaVMName:Ljava/lang/String;
    sget-object v5, Lcom/scalado/caps/PeerBase;->logger:Lcom/scalado/caps/LogInterface;

    const-string v6, "JNI"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Os name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " VM name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/scalado/caps/LogInterface;->outputDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :try_start_0
    const-string v5, "Linux"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "Dalvik"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 93
    const-string v2, "capsjava"

    .line 94
    .local v2, libPath:Ljava/lang/String;
    sget-object v5, Lcom/scalado/caps/PeerBase;->logger:Lcom/scalado/caps/LogInterface;

    const-string v6, "JNI on Android target"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Loading "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/scalado/caps/LogInterface;->outputDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 120
    :goto_0
    invoke-static {}, Lcom/scalado/caps/PeerBase;->initialize()I

    .line 137
    .end local v2           #libPath:Ljava/lang/String;
    :goto_1
    return-void

    .line 97
    :cond_0
    const-string v5, "Windows XP"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "Windows 2003"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "Linux"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 100
    :cond_1
    new-instance v5, Ljava/io/File;

    invoke-static {}, Lcom/scalado/caps/PeerBase;->libPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 101
    .restart local v2       #libPath:Ljava/lang/String;
    sget-object v5, Lcom/scalado/caps/PeerBase;->logger:Lcom/scalado/caps/LogInterface;

    const-string v6, "JNI"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Loading "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/scalado/caps/LogInterface;->outputDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 103
    invoke-static {v2}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 122
    .end local v2           #libPath:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 124
    .local v4, ule:Ljava/lang/UnsatisfiedLinkError;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 125
    sget-object v5, Lcom/scalado/caps/PeerBase;->logger:Lcom/scalado/caps/LogInterface;

    const-string v6, "JNI"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WARNING: Could not load libJCAPSJAVA due to UnsatisfiedLinkError exception. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/scalado/caps/LogInterface;->outputDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WARNING: Could not load libJCAPSJAVA due to UnsatisfiedLinkError exception. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 127
    throw v4

    .line 116
    .end local v4           #ule:Ljava/lang/UnsatisfiedLinkError;
    :cond_2
    :try_start_1
    const-string v2, "capsjava"

    .line 117
    .restart local v2       #libPath:Ljava/lang/String;
    sget-object v5, Lcom/scalado/caps/PeerBase;->logger:Lcom/scalado/caps/LogInterface;

    const-string v6, "JNI on unhandled platform"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Loading "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/scalado/caps/LogInterface;->outputDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 129
    .end local v2           #libPath:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 131
    .local v0, e:Ljava/lang/Error;
    sget-object v5, Lcom/scalado/caps/PeerBase;->logger:Lcom/scalado/caps/LogInterface;

    const-string v6, "JNI"

    const-string v7, "WARNING: Could not load libJCAPSJAVA due to error exception"

    invoke-interface {v5, v6, v7}, Lcom/scalado/caps/LogInterface;->outputDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 133
    .end local v0           #e:Ljava/lang/Error;
    :catch_2
    move-exception v0

    .line 135
    .local v0, e:Ljava/lang/Exception;
    sget-object v5, Lcom/scalado/caps/PeerBase;->logger:Lcom/scalado/caps/LogInterface;

    const-string v6, "JNI"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WARNING: Could not load libJCAPSJAVA"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/scalado/caps/LogInterface;->outputDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/scalado/caps/PeerBase;->mUniqueID:J

    .line 50
    return-void
.end method

.method private static native initialize()I
.end method

.method private static libPath()Ljava/lang/String;
    .locals 7

    .prologue
    .line 144
    const/4 v4, 0x0

    .line 145
    .local v4, path:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    const-string v6, "test.cfg"

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 147
    .local v0, file:Ljava/io/File;
    :try_start_0
    new-instance v1, Ljava/util/Scanner;

    invoke-direct {v1, v0}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .local v1, fileScanner:Ljava/util/Scanner;
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 150
    new-instance v2, Ljava/util/Scanner;

    invoke-virtual {v1}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    .line 152
    .local v2, lineScanner:Ljava/util/Scanner;
    const-string v6, "\\s*=\\s*"

    invoke-virtual {v2, v6}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    .line 153
    invoke-virtual {v2}, Ljava/util/Scanner;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 154
    invoke-virtual {v2}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v3

    .line 155
    .local v3, name:Ljava/lang/String;
    const/4 v5, 0x0

    .line 156
    .local v5, value:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/Scanner;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 157
    invoke-virtual {v2}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v5

    .line 158
    const-string v6, "DllPath"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    if-eqz v6, :cond_1

    .line 159
    move-object v4, v5

    .line 170
    .end local v2           #lineScanner:Ljava/util/Scanner;
    .end local v3           #name:Ljava/lang/String;
    .end local v5           #value:Ljava/lang/String;
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/util/Scanner;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 175
    .end local v1           #fileScanner:Ljava/util/Scanner;
    :goto_1
    return-object v4

    .line 166
    .restart local v1       #fileScanner:Ljava/util/Scanner;
    .restart local v2       #lineScanner:Ljava/util/Scanner;
    :cond_1
    :try_start_3
    invoke-virtual {v2}, Ljava/util/Scanner;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 170
    .end local v2           #lineScanner:Ljava/util/Scanner;
    :catchall_0
    move-exception v6

    :try_start_4
    invoke-virtual {v1}, Ljava/util/Scanner;->close()V

    throw v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 172
    .end local v1           #fileScanner:Ljava/util/Scanner;
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method private onDestroy()V
    .locals 6

    .prologue
    .line 60
    sget-object v1, Lcom/scalado/caps/PeerBase;->logger:Lcom/scalado/caps/LogInterface;

    const-string v2, "JNI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    const-string v5, " "

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    const-string v5, " Destroying object instance# "

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/scalado/caps/PeerBase;->mInstanceID:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    const-string v5, " ID# "

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/scalado/caps/PeerBase;->mUniqueID:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/scalado/caps/LogInterface;->outputDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/scalado/caps/PeerBase;->destroy()I

    move-result v0

    .line 68
    .local v0, error:I
    return-void
.end method


# virtual methods
.method protected native destroy()I
.end method

.method protected finalize()V
    .locals 5

    .prologue
    .line 74
    sget-object v0, Lcom/scalado/caps/PeerBase;->logger:Lcom/scalado/caps/LogInterface;

    const-string v1, "JVM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/String;

    const-string v4, "finalize "

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/scalado/caps/PeerBase;->mUniqueID:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/scalado/caps/LogInterface;->outputDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-wide v0, p0, Lcom/scalado/caps/PeerBase;->mUniqueID:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 76
    invoke-direct {p0}, Lcom/scalado/caps/PeerBase;->onDestroy()V

    .line 77
    :cond_0
    return-void
.end method
