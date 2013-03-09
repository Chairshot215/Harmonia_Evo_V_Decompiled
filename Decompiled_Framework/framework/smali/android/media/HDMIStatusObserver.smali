.class public Landroid/media/HDMIStatusObserver;
.super Landroid/os/FileObserver;
.source "HDMIStatusObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/HDMIStatusObserver$HDMIStatusListener;
    }
.end annotation


# static fields
.field public static final PATH_HDMI_STATUS:Ljava/lang/String; = "/data/data/com.htc.android.psclient/hdmi_status"

.field private static final PLUG:Ljava/lang/String; = "PLUG"

.field private static final TAG:Ljava/lang/String; = "HDMIStatusObserver"

.field private static final UNPLUG:Ljava/lang/String; = "UNPLUG"


# instance fields
.field private mIsPlug:Z

.field private mStatusListener:Landroid/media/HDMIStatusObserver$HDMIStatusListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "/data/data/com.htc.android.psclient/hdmi_status"

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/HDMIStatusObserver;->mIsPlug:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/HDMIStatusObserver;->mStatusListener:Landroid/media/HDMIStatusObserver$HDMIStatusListener;

    return-void
.end method

.method public static isHDMIPlug()Z
    .locals 9

    const/4 v3, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v6, "/data/data/com.htc.android.psclient/hdmi_status"

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x0

    :cond_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    const-string v6, "HDMIStatusObserver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "status: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "PLUG"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-result v6

    if-eqz v6, :cond_4

    const/4 v2, 0x1

    :cond_1
    :goto_0
    if-eqz v4, :cond_2

    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_2
    :goto_1
    move-object v3, v4

    :cond_3
    :goto_2
    return v2

    :cond_4
    :try_start_3
    const-string v6, "UNPLUG"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    move-result v6

    if-eqz v6, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_3
    :try_start_4
    const-string v6, "HDMIStatusObserver"

    const-string/jumbo v7, "read hdmi status error!!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_3

    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v3, :cond_5

    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_5
    :goto_5
    throw v6

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_1
    move-exception v6

    move-object v3, v4

    goto :goto_4

    :catch_4
    move-exception v0

    move-object v3, v4

    goto :goto_3
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 4

    invoke-static {}, Landroid/media/HDMIStatusObserver;->isHDMIPlug()Z

    move-result v0

    const-string v1, "HDMIStatusObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onEvent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Landroid/media/HDMIStatusObserver;->mIsPlug:Z

    if-eq v1, v0, :cond_0

    iput-boolean v0, p0, Landroid/media/HDMIStatusObserver;->mIsPlug:Z

    iget-object v1, p0, Landroid/media/HDMIStatusObserver;->mStatusListener:Landroid/media/HDMIStatusObserver$HDMIStatusListener;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/media/HDMIStatusObserver;->mStatusListener:Landroid/media/HDMIStatusObserver$HDMIStatusListener;

    invoke-virtual {v1}, Landroid/media/HDMIStatusObserver$HDMIStatusListener;->onPlug()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/media/HDMIStatusObserver;->mStatusListener:Landroid/media/HDMIStatusObserver$HDMIStatusListener;

    invoke-virtual {v1}, Landroid/media/HDMIStatusObserver$HDMIStatusListener;->onUnPlug()V

    goto :goto_0
.end method

.method public setListener(Landroid/media/HDMIStatusObserver$HDMIStatusListener;)V
    .locals 0

    iput-object p1, p0, Landroid/media/HDMIStatusObserver;->mStatusListener:Landroid/media/HDMIStatusObserver$HDMIStatusListener;

    return-void
.end method
