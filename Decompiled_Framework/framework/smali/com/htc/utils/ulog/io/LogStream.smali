.class public final Lcom/htc/utils/ulog/io/LogStream;
.super Ljava/lang/Object;
.source "LogStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/utils/ulog/io/LogStream$CipherStream;,
        Lcom/htc/utils/ulog/io/LogStream$SeedGetter;
    }
.end annotation


# static fields
.field private static final ENTITY_BUFFER_SIZE:I = 0x1000

.field private static final HEAD_BUFFER_SIZE:I = 0x14

.field private static final SIG0:I = 0x6716e3aa

.field private static final SIG1:I = 0x11d74057

.field private static final SIG2:I = -0x7d594989

.field private static final SIG3:I = -0x3c46f836

.field private static final TAG:Ljava/lang/String; = "LogStream"

.field private static final VERSION:I = 0x1

.field private static final ZIP_FILE_ENTITY:Ljava/lang/String; = "file_entity"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static concatenateInputStream(Ljava/io/InputStream;Lcom/htc/utils/ulog/io/LogStream$SeedGetter;)Ljava/io/InputStream;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_1

    const/4 v4, 0x0

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    const/4 v4, 0x0

    new-instance v0, Ljava/io/BufferedInputStream;

    const/16 v10, 0x14

    invoke-direct {v0, p0, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v2}, Lcom/htc/utils/ulog/io/LogStream;->isLogStreamInternal(Ljava/io/DataInputStream;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v2}, Ljava/io/DataInputStream;->read()I

    move-result v7

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v3

    invoke-virtual {v2}, Ljava/io/DataInputStream;->read()I

    move-result v5

    invoke-virtual {v2}, Ljava/io/DataInputStream;->read()I

    move-result v6

    const/4 v2, 0x0

    const/4 v10, 0x1

    if-ne v7, v10, :cond_6

    new-instance v0, Ljava/io/BufferedInputStream;

    const/16 v10, 0x1000

    invoke-direct {v0, p0, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    const/4 v1, 0x0

    if-eqz v3, :cond_5

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/htc/utils/ulog/io/LogStream$SeedGetter;->get()[B

    move-result-object v10

    invoke-static {v0, v10}, Lcom/htc/utils/ulog/io/LogStream$CipherStream;->getCipherInputStream(Ljava/io/InputStream;[B)Ljavax/crypto/CipherInputStream;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_3

    new-instance v9, Lcom/htc/utils/ulog/io/SafeZipInputStream;

    invoke-direct {v9, v1}, Lcom/htc/utils/ulog/io/SafeZipInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v8, 0x0

    :cond_2
    invoke-virtual {v9}, Lcom/htc/utils/ulog/io/SafeZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v8

    if-eqz v8, :cond_3

    const-string v10, "file_entity"

    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    move-object v4, v9

    :cond_3
    if-nez v4, :cond_0

    const-string v10, "LogStream"

    const-string v11, "InputStream is null ???"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string v10, "LogStream"

    const-string v11, "[concatenateInputStream] SeedGetter is null"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    move-object v1, v0

    goto :goto_1

    :cond_6
    const-string v10, "LogStream"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "wrong file version: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", isEncrypted:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static concatenateOutputStream(Ljava/io/OutputStream;ZLcom/htc/utils/ulog/io/LogStream$SeedGetter;)Ljava/io/OutputStream;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v7, 0x0

    if-nez p0, :cond_1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    new-instance v0, Ljava/io/BufferedOutputStream;

    const/16 v6, 0x14

    invoke-direct {v0, p0, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v2}, Lcom/htc/utils/ulog/io/LogStream;->writeLogStreamSignature(Ljava/io/DataOutputStream;)V

    invoke-virtual {v2, v8}, Ljava/io/DataOutputStream;->write(I)V

    invoke-virtual {v2, v8}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->write(I)V

    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->write(I)V

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    const/4 v2, 0x0

    new-instance v0, Ljava/io/BufferedOutputStream;

    const/16 v6, 0x1000

    invoke-direct {v0, p0, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    invoke-interface {p2}, Lcom/htc/utils/ulog/io/LogStream$SeedGetter;->get()[B

    move-result-object v6

    invoke-static {v0, v6}, Lcom/htc/utils/ulog/io/LogStream$CipherStream;->getCipherOutputStream(Ljava/io/OutputStream;[B)Ljavax/crypto/CipherOutputStream;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_0

    new-instance v5, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v5, v1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v4, Ljava/util/zip/ZipEntry;

    const-string v6, "file_entity"

    invoke-direct {v4, v6}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    move-object v3, v5

    goto :goto_0

    :cond_2
    move-object v1, v0

    goto :goto_1
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

    invoke-static {v1}, Lcom/htc/utils/ulog/io/LogStream;->isLogStreamInternal(Ljava/io/DataInputStream;)Z

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
