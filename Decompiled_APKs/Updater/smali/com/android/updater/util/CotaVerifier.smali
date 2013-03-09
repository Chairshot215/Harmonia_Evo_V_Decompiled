.class public Lcom/android/updater/util/CotaVerifier;
.super Ljava/lang/Object;
.source "CotaVerifier.java"


# static fields
.field public static final CW_FILE_PATH:Ljava/lang/String; = "/data/data/cwtemp"

.field public static final ENTRY_CRC:Ljava/lang/String; = "cw.crc"

.field public static final ENTRY_CWPACKAGE:Ljava/lang/String; = "cwpkg.zip"

.field public static final ENTRY_PROP:Ljava/lang/String; = "cw.prop"


# instance fields
.field private CRCMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final LOG:Z

.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, "UpdaterAPK | CotaVerifier"

    iput-object v0, p0, Lcom/android/updater/util/CotaVerifier;->TAG:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/updater/util/CotaVerifier;->LOG:Z

    return-void
.end method

.method private getCRC(Ljava/io/InputStream;)Ljava/util/HashMap;
    .locals 9
    .parameter "inputStream"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 83
    .local v4, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 115
    :goto_0
    return-object v4

    .line 88
    :cond_0
    const/4 v0, 0x0

    .line 90
    .local v0, bufferReader:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 91
    .end local v0           #bufferReader:Ljava/io/BufferedReader;
    .local v1, bufferReader:Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 92
    .local v5, strTemp:Ljava/lang/String;
    :cond_1
    :goto_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 93
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 95
    const-string v6, "cwpkg.zip"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 96
    const-string v6, "cwpkg.zip"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x4

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, crc:Ljava/lang/String;
    const-string v6, "cwpkg.zip"

    invoke-virtual {v4, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .end local v2           #crc:Ljava/lang/String;
    :cond_2
    const-string v6, "cw.prop"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 103
    const-string v6, "cw.prop"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x4

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 104
    .restart local v2       #crc:Ljava/lang/String;
    const-string v6, "cw.prop"

    invoke-virtual {v4, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 109
    .end local v2           #crc:Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v0, v1

    .line 110
    .end local v1           #bufferReader:Ljava/io/BufferedReader;
    .end local v5           #strTemp:Ljava/lang/String;
    .restart local v0       #bufferReader:Ljava/io/BufferedReader;
    .local v3, e:Ljava/lang/Exception;
    :goto_2
    :try_start_2
    const-string v6, "UpdaterAPK | CotaVerifier"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getCRC() can\'t read the file data! "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    const/4 v0, 0x0

    .line 114
    goto :goto_0

    .line 108
    .end local v0           #bufferReader:Ljava/io/BufferedReader;
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v1       #bufferReader:Ljava/io/BufferedReader;
    .restart local v5       #strTemp:Ljava/lang/String;
    :cond_3
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 113
    const/4 v0, 0x0

    .line 114
    .end local v1           #bufferReader:Ljava/io/BufferedReader;
    .restart local v0       #bufferReader:Ljava/io/BufferedReader;
    goto :goto_0

    .line 113
    .end local v5           #strTemp:Ljava/lang/String;
    :catchall_0
    move-exception v6

    :goto_3
    const/4 v0, 0x0

    throw v6

    .end local v0           #bufferReader:Ljava/io/BufferedReader;
    .restart local v1       #bufferReader:Ljava/io/BufferedReader;
    .restart local v5       #strTemp:Ljava/lang/String;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1           #bufferReader:Ljava/io/BufferedReader;
    .restart local v0       #bufferReader:Ljava/io/BufferedReader;
    goto :goto_3

    .line 109
    .end local v5           #strTemp:Ljava/lang/String;
    :catch_1
    move-exception v3

    goto :goto_2
.end method

.method private getCheckSum(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "fileName"

    .prologue
    .line 119
    const-wide/16 v1, 0x0

    .line 120
    .local v1, checksum:J
    const-string v6, ""

    .line 123
    .local v6, entryCRC:Ljava/lang/String;
    const/4 v3, 0x0

    .line 124
    .local v3, cis:Ljava/util/zip/CheckedInputStream;
    :try_start_0
    new-instance v4, Ljava/util/zip/CheckedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/util/zip/CRC32;

    invoke-direct {v8}, Ljava/util/zip/CRC32;-><init>()V

    invoke-direct {v4, v7, v8}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .end local v3           #cis:Ljava/util/zip/CheckedInputStream;
    .local v4, cis:Ljava/util/zip/CheckedInputStream;
    const/16 v7, 0x80

    :try_start_1
    new-array v0, v7, [B

    .line 126
    .local v0, buf:[B
    :cond_0
    invoke-virtual {v4, v0}, Ljava/util/zip/CheckedInputStream;->read([B)I

    move-result v7

    if-gez v7, :cond_0

    .line 129
    invoke-virtual {v4}, Ljava/util/zip/CheckedInputStream;->getChecksum()Ljava/util/zip/Checksum;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/zip/Checksum;->getValue()J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v1

    .line 135
    .end local v0           #buf:[B
    .end local v4           #cis:Ljava/util/zip/CheckedInputStream;
    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    .line 137
    return-object v6

    .line 131
    .restart local v3       #cis:Ljava/util/zip/CheckedInputStream;
    :catch_0
    move-exception v5

    .line 132
    .local v5, e:Ljava/lang/Exception;
    :goto_1
    const-string v7, "UpdaterAPK | CotaVerifier"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getCheckSum() can\'t get the check sum data."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 131
    .end local v3           #cis:Ljava/util/zip/CheckedInputStream;
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v4       #cis:Ljava/util/zip/CheckedInputStream;
    :catch_1
    move-exception v5

    move-object v3, v4

    .end local v4           #cis:Ljava/util/zip/CheckedInputStream;
    .restart local v3       #cis:Ljava/util/zip/CheckedInputStream;
    goto :goto_1
.end method


# virtual methods
.method public isChecksumSuccess()Z
    .locals 8

    .prologue
    .line 47
    const/4 v2, 0x1

    .line 51
    .local v2, isOK:Z
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    const-string v5, "/data/data/cwtempcw.crc"

    invoke-direct {v1, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 52
    .local v1, is:Ljava/io/InputStream;
    invoke-direct {p0, v1}, Lcom/android/updater/util/CotaVerifier;->getCRC(Ljava/io/InputStream;)Ljava/util/HashMap;

    move-result-object v5

    iput-object v5, p0, Lcom/android/updater/util/CotaVerifier;->CRCMap:Ljava/util/HashMap;

    .line 55
    const-string v5, "/data/data/cwtempcwpkg.zip"

    invoke-direct {p0, v5}, Lcom/android/updater/util/CotaVerifier;->getCheckSum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 56
    .local v3, packageCheckSum:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/updater/util/CotaVerifier;->CRCMap:Ljava/util/HashMap;

    const-string v6, "cwpkg.zip"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 59
    const/4 v2, 0x0

    .line 63
    :cond_0
    const-string v5, "/data/data/cwtempcw.prop"

    invoke-direct {p0, v5}, Lcom/android/updater/util/CotaVerifier;->getCheckSum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 64
    .local v4, propCheckSum:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/updater/util/CotaVerifier;->CRCMap:Ljava/util/HashMap;

    const-string v6, "cw.prop"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_1

    .line 67
    const/4 v2, 0x0

    .line 74
    .end local v1           #is:Ljava/io/InputStream;
    .end local v3           #packageCheckSum:Ljava/lang/String;
    .end local v4           #propCheckSum:Ljava/lang/String;
    :cond_1
    :goto_0
    return v2

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "UpdaterAPK | CotaVerifier"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isChecksumSuccess() can\'t get file data!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
