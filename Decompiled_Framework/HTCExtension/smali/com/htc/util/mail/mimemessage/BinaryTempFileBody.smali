.class public Lcom/htc/util/mail/mimemessage/BinaryTempFileBody;
.super Ljava/lang/Object;
.source "BinaryTempFileBody.java"

# interfaces
.implements Lcom/htc/util/mail/mimemessage/Body;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/util/mail/mimemessage/BinaryTempFileBody$BinaryTempFileBodyInputStream;
    }
.end annotation


# static fields
.field private static mTempDirectory:Ljava/io/File;


# instance fields
.field private mFile:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/htc/util/mail/mimemessage/BinaryTempFileBody;->mTempDirectory:Ljava/io/File;

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/util/mail/mimemessage/MimeUtility;->mLastContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/htc/util/mail/mimemessage/MimeUtility;->mLastContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/htc/util/mail/mimemessage/BinaryTempFileBody;->mTempDirectory:Ljava/io/File;

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/local/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/htc/util/mail/mimemessage/BinaryTempFileBody;->mTempDirectory:Ljava/io/File;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/htc/util/mail/mimemessage/BinaryTempFileBody;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/htc/util/mail/mimemessage/BinaryTempFileBody;->mFile:Ljava/io/File;

    return-object v0
.end method

.method public static setTempDirectory(Ljava/io/File;)V
    .locals 0

    sput-object p0, Lcom/htc/util/mail/mimemessage/BinaryTempFileBody;->mTempDirectory:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation

    :try_start_0
    new-instance v1, Lcom/htc/util/mail/mimemessage/BinaryTempFileBody$BinaryTempFileBodyInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/htc/util/mail/mimemessage/BinaryTempFileBody;->mFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, p0, v2}, Lcom/htc/util/mail/mimemessage/BinaryTempFileBody$BinaryTempFileBodyInputStream;-><init>(Lcom/htc/util/mail/mimemessage/BinaryTempFileBody;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/htc/util/mail/mimemessage/MessagingException;

    const-string v2, "Unable to open body"

    invoke-direct {v1, v2, v0}, Lcom/htc/util/mail/mimemessage/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "body"

    const/4 v1, 0x0

    sget-object v2, Lcom/htc/util/mail/mimemessage/BinaryTempFileBody;->mTempDirectory:Ljava/io/File;

    invoke-static {v0, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/mail/mimemessage/BinaryTempFileBody;->mFile:Ljava/io/File;

    iget-object v0, p0, Lcom/htc/util/mail/mimemessage/BinaryTempFileBody;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/htc/util/mail/mimemessage/BinaryTempFileBody;->mFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public setFile(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/util/mail/mimemessage/BinaryTempFileBody;->mFile:Ljava/io/File;

    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/htc/util/mail/mimemessage/MessagingException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/util/mail/mimemessage/BinaryTempFileBody;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    new-instance v0, Lcom/htc/util/mail/mimemessage/Base64OutputStream;

    invoke-direct {v0, p1}, Lcom/htc/util/mail/mimemessage/Base64OutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v1, v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    invoke-virtual {v0}, Lcom/htc/util/mail/mimemessage/Base64OutputStream;->close()V

    iget-object v2, p0, Lcom/htc/util/mail/mimemessage/BinaryTempFileBody;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    return-void
.end method
