.class final Lcom/htc/server/ulog/MyLogStream;
.super Ljava/lang/Object;
.source "StatLogStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/server/ulog/MyLogStream$CipherStream;
    }
.end annotation


# static fields
.field private static final ENTITY_BUFFER_SIZE:I = 0x1000

.field private static final HEAD_BUFFER_SIZE:I = 0x14

.field public static final SIG0:I = 0x6716e3aa

.field public static final SIG1:I = 0x11d74057

.field public static final SIG2:I = -0x7d594989

.field public static final SIG3:I = -0x3c46f836

.field private static final TAG:Ljava/lang/String; = "LogStream"

.field private static final VERSION:I = 0x1

.field private static final ZIP_FILE_ENTITY:Ljava/lang/String; = "file_entity"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static concatenateInputStream(Ljava/io/InputStream;Lcom/htc/utils/ulog/io/LogStream$SeedGetter;)Ljava/io/InputStream;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_1

    const/4 v6, 0x0

    :cond_0
    :goto_0
    return-object v6

    :cond_1
    const/4 v6, 0x0

    new-instance v0, Ljava/io/BufferedInputStream;

    const/16 v12, 0x14

    invoke-direct {v0, p0, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v3}, Lcom/htc/server/ulog/MyLogStream;->isLogStreamInternal(Ljava/io/DataInputStream;)Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v9

    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v2

    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v7

    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v8

    and-int/lit8 v12, v2, 0x1

    const/4 v13, 0x1

    if-ne v12, v13, :cond_4

    const/4 v4, 0x1

    :goto_1
    ushr-int/lit8 v12, v2, 0x1

    and-int/lit8 v12, v12, 0x1

    if-nez v12, :cond_5

    const/4 v5, 0x1

    :goto_2
    const/4 v3, 0x0

    const/4 v12, 0x1

    if-ne v9, v12, :cond_9

    new-instance v0, Ljava/io/BufferedInputStream;

    const/16 v12, 0x1000

    invoke-direct {v0, p0, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    const/4 v1, 0x0

    if-eqz v4, :cond_7

    if-eqz p1, :cond_6

    invoke-interface/range {p1 .. p1}, Lcom/htc/utils/ulog/io/LogStream$SeedGetter;->get()[B

    move-result-object v12

    invoke-static {v0, v12}, Lcom/htc/server/ulog/MyLogStream$CipherStream;->getCipherInputStream(Ljava/io/InputStream;[B)Ljavax/crypto/CipherInputStream;

    move-result-object v1

    :goto_3
    if-eqz v1, :cond_3

    if-eqz v5, :cond_8

    new-instance v11, Lcom/htc/utils/ulog/io/SafeZipInputStream;

    invoke-direct {v11, v1}, Lcom/htc/utils/ulog/io/SafeZipInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v10, 0x0

    :cond_2
    invoke-virtual {v11}, Lcom/htc/utils/ulog/io/SafeZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v10

    if-eqz v10, :cond_3

    const-string v12, "file_entity"

    invoke-virtual {v10}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    move-object v6, v11

    :cond_3
    :goto_4
    if-nez v6, :cond_0

    const-string v12, "LogStream"

    const-string v13, "InputStream is null ???"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    goto :goto_2

    :cond_6
    const-string v12, "LogStream"

    const-string v13, "[concatenateInputStream] SeedGetter is null"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_7
    move-object v1, v0

    goto :goto_3

    :cond_8
    move-object v6, v1

    goto :goto_4

    :cond_9
    const-string v12, "LogStream"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "wrong file version: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", isEncrypted:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static concatenateOutputStream(Ljava/io/OutputStream;ZZLcom/htc/utils/ulog/io/LogStream$SeedGetter;)Ljava/io/OutputStream;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez p0, :cond_1

    const/4 v4, 0x0

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    const/4 v4, 0x0

    new-instance v0, Ljava/io/BufferedOutputStream;

    const/16 v9, 0x14

    invoke-direct {v0, p0, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v3}, Lcom/htc/server/ulog/MyLogStream;->writeLogStreamSignature(Ljava/io/DataOutputStream;)V

    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->write(I)V

    if-eqz p1, :cond_3

    move v9, v7

    :goto_1
    if-eqz p2, :cond_2

    move v7, v8

    :cond_2
    shl-int/lit8 v7, v7, 0x1

    or-int v2, v9, v7

    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->write(I)V

    invoke-virtual {v3, v8}, Ljava/io/DataOutputStream;->write(I)V

    invoke-virtual {v3, v8}, Ljava/io/DataOutputStream;->write(I)V

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    const/4 v3, 0x0

    new-instance v0, Ljava/io/BufferedOutputStream;

    const/16 v7, 0x1000

    invoke-direct {v0, p0, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    if-eqz p3, :cond_4

    invoke-interface {p3}, Lcom/htc/utils/ulog/io/LogStream$SeedGetter;->get()[B

    move-result-object v7

    invoke-static {v0, v7}, Lcom/htc/server/ulog/MyLogStream$CipherStream;->getCipherOutputStream(Ljava/io/OutputStream;[B)Ljavax/crypto/CipherOutputStream;

    move-result-object v1

    :goto_2
    if-eqz v1, :cond_0

    if-eqz p2, :cond_5

    new-instance v6, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v6, v1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v5, Ljava/util/zip/ZipEntry;

    const-string v7, "file_entity"

    invoke-direct {v5, v7}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    move-object v4, v6

    goto :goto_0

    :cond_3
    move v9, v8

    goto :goto_1

    :cond_4
    move-object v1, v0

    goto :goto_2

    :cond_5
    move-object v4, v1

    goto :goto_0
.end method

.method public static isLogStream(Ljava/io/InputStream;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    new-instance v0, Ljava/io/BufferedInputStream;

    const/16 v2, 0x14

    invoke-direct {v0, p0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1}, Lcom/htc/server/ulog/MyLogStream;->isLogStreamInternal(Ljava/io/DataInputStream;)Z

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isLogStreamInternal(Ljava/io/DataInputStream;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    :cond_0
    const v4, 0x6716e3aa

    if-ne v0, v4, :cond_1

    const v4, 0x11d74057

    if-ne v1, v4, :cond_1

    const v4, -0x7d594989

    if-ne v2, v4, :cond_1

    const v4, -0x3c46f836

    if-ne v3, v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private static writeLogStreamSignature(Ljava/io/DataOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v0, 0x6716e3aa

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    const v0, 0x11d74057

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    const v0, -0x7d594989

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    const v0, -0x3c46f836

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    return-void
.end method
