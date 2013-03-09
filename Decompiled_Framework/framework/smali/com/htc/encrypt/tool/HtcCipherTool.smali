.class public Lcom/htc/encrypt/tool/HtcCipherTool;
.super Ljava/lang/Object;
.source "HtcCipherTool.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBriefUsage()Ljava/lang/String;
    .locals 1

    const-string v0, "Usage: java -jar HtcCipherTool.jar {-e|-d} inputFile outputFile"

    return-object v0
.end method

.method private static getOptionDescription()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  -e\t encrypt inputFile to outputFile\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  -d\t decrypt inputFile to outputFile\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "HtcCipherTool 1.00 of September 2011, by HTC."

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    array-length v3, p0

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    invoke-static {}, Lcom/htc/encrypt/tool/HtcCipherTool;->printUsage()V

    :goto_0
    return-void

    :cond_0
    aget-object v3, p0, v5

    const-string v4, "-e"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    aget-object v3, p0, v5

    const-string v4, "-d"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/htc/encrypt/tool/HtcCipherTool;->printUsage()V

    goto :goto_0

    :cond_1
    aget-object v3, p0, v5

    const-string v4, "-e"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    aget-object v0, p0, v3

    const/4 v3, 0x2

    aget-object v2, p0, v3

    if-eqz v1, :cond_2

    invoke-static {v0, v2}, Lcom/htc/encrypt/FileCrypto;->createEncryptedFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {v0, v2}, Lcom/htc/encrypt/FileCrypto;->createDecryptedFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static printUsage()V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {}, Lcom/htc/encrypt/tool/HtcCipherTool;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {}, Lcom/htc/encrypt/tool/HtcCipherTool;->getBriefUsage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {}, Lcom/htc/encrypt/tool/HtcCipherTool;->getOptionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
