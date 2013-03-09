.class Lcom/android/providers/htcCheckin/DumpStateReceiver;
.super Ljava/lang/Object;
.source "DumpStateReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/htcCheckin/DumpStateReceiver$CrashReportObserver;
    }
.end annotation


# static fields
.field private static final DUMPCRASH:Ljava/lang/String; = "/system/bin/dumpcrash"

.field private static final DUMPSTATE:Ljava/lang/String; = "/system/bin/dumpstate"

.field private static final TAG:Ljava/lang/String; = "_DumpStateReceiver"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 58
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/htcCheckin$Crashes;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-instance v3, Lcom/android/providers/htcCheckin/DumpStateReceiver$CrashReportObserver;

    invoke-direct {v3, p1}, Lcom/android/providers/htcCheckin/DumpStateReceiver$CrashReportObserver;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 61
    return-void
.end method

.method public static dumpStateTo(Ljava/io/OutputStream;Z)V
    .locals 12
    .parameter "output"
    .parameter "full"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    if-eqz p1, :cond_1

    const-string v1, "/system/bin/dumpstate"

    .line 72
    .local v1, command:Ljava/lang/String;
    :goto_0
    const-string v9, "_DumpStateReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Running: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v6

    .line 74
    .local v6, proc:Ljava/lang/Process;
    new-instance v5, Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 77
    .local v5, istream:Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 80
    .local v4, inBytes:I
    const/16 v9, 0x1000

    :try_start_0
    new-array v0, v9, [B

    .line 81
    .local v0, buffer:[B
    :goto_1
    const/4 v9, 0x0

    const/16 v10, 0x1000

    invoke-virtual {v5, v0, v9, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    .local v7, size:I
    const/4 v9, -0x1

    if-eq v7, v9, :cond_0

    .line 82
    add-int/2addr v4, v7

    .line 83
    const/4 v9, 0x0

    invoke-virtual {p0, v0, v9, v7}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 85
    .end local v0           #buffer:[B
    .end local v7           #size:I
    :catch_0
    move-exception v3

    .line 88
    .local v3, ignore:Ljava/io/IOException;
    const-string v9, "_DumpStateReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fail: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .end local v3           #ignore:Ljava/io/IOException;
    :cond_0
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V

    .line 92
    const/4 v8, -0x1

    .line 94
    .local v8, status:I
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/Process;->waitFor()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    .line 98
    :goto_2
    const-string v9, "_DumpStateReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Finished: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " bytes read; status "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return-void

    .line 71
    .end local v1           #command:Ljava/lang/String;
    .end local v4           #inBytes:I
    .end local v5           #istream:Ljava/io/InputStream;
    .end local v6           #proc:Ljava/lang/Process;
    .end local v8           #status:I
    :cond_1
    const-string v1, "/system/bin/dumpcrash"

    goto/16 :goto_0

    .line 95
    .restart local v1       #command:Ljava/lang/String;
    .restart local v4       #inBytes:I
    .restart local v5       #istream:Ljava/io/InputStream;
    .restart local v6       #proc:Ljava/lang/Process;
    .restart local v8       #status:I
    :catch_1
    move-exception v2

    .line 96
    .local v2, e:Ljava/lang/Exception;
    const-string v9, "_DumpStateReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exec "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " fail: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
