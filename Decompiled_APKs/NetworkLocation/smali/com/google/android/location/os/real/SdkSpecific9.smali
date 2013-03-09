.class public Lcom/google/android/location/os/real/SdkSpecific9;
.super Lcom/google/android/location/os/real/SdkSpecific8;
.source "SdkSpecific9.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/google/android/location/os/real/SdkSpecific8;-><init>()V

    return-void
.end method


# virtual methods
.method public makeFilePrivate(Ljava/io/File;)V
    .locals 4
    .parameter "file"

    .prologue
    .line 21
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1, v1}, Ljava/io/File;->setReadable(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 22
    const-string v1, "SdkSpecific9"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to set readability of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :cond_0
    :goto_0
    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {p1, v1}, Ljava/io/File;->setWritable(Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 29
    const-string v1, "SdkSpecific9"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to set writability of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 34
    :cond_1
    :goto_1
    return-void

    .line 24
    :catch_0
    move-exception v0

    .line 25
    .local v0, e:Ljava/lang/SecurityException;
    const-string v1, "SdkSpecific9"

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 31
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 32
    .restart local v0       #e:Ljava/lang/SecurityException;
    const-string v1, "SdkSpecific9"

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
