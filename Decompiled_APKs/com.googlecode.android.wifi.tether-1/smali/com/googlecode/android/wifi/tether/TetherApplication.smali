.class public Lcom/googlecode/android/wifi/tether/TetherApplication;
.super Landroid/app/Application;
.source "TetherApplication.java"


# static fields
.field private static final APPLICATION_DOWNLOAD_URL:Ljava/lang/String; = "http://android-wifi-tether.googlecode.com/files/"

.field private static final APPLICATION_PROPERTIES_URL:Ljava/lang/String; = "http://android-wifi-tether.googlecode.com/svn/download/update/wifi-tether/application.properties"

.field public static final AUTHORS:Ljava/lang/String; = "<HTML><a href=\"https://plus.google.com/u/0/107088765107518450541\">Harald M&uuml;ller</a>, Sofia Lemons, Ben Buxton, Andrew Robinson, <a href=\"http://sirgatez.blogspot.com\">Joshua Briefman</a></HTML>"

.field public static final CLIENT_CONNECT_ACDISABLED:I = 0x0

.field public static final CLIENT_CONNECT_AUTHORIZED:I = 0x1

.field public static final CLIENT_CONNECT_NOTAUTHORIZED:I = 0x2

.field public static final MSG_TAG:Ljava/lang/String; = "TETHER -> TetherApplication"


# instance fields
.field public final DEFAULT_ENCSETUP:Ljava/lang/String;

.field public final DEFAULT_LANNETWORK:Ljava/lang/String;

.field public final DEFAULT_PASSPHRASE:Ljava/lang/String;

.field private accessControlIntent:Landroid/app/PendingIntent;

.field accessControlSupported:Z

.field clientConnectHandler:Landroid/os/Handler;

.field clientDataAddList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/googlecode/android/wifi/tether/data/ClientData;",
            ">;"
        }
    .end annotation
.end field

.field clientMacRemoveList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private clientNotificationCount:I

.field configuration:Lcom/googlecode/android/wifi/tether/system/Configuration;

.field public coretask:Lcom/googlecode/android/wifi/tether/system/CoreTask;

.field displayMessageHandler:Landroid/os/Handler;

.field public hostapdcfg:Lcom/googlecode/android/wifi/tether/system/CoreTask$HostapdConfig;

.field private mainIntent:Landroid/app/PendingIntent;

.field private notification:Landroid/app/Notification;

.field public notificationManager:Landroid/app/NotificationManager;

.field private powerManager:Landroid/os/PowerManager;

.field public preferenceEditor:Landroid/content/SharedPreferences$Editor;

.field public settings:Landroid/content/SharedPreferences;

.field shutdownHandler:Landroid/os/Handler;

.field public startupCheckPerformed:Z

.field public tethercfg:Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;

.field public tiwlan:Lcom/googlecode/android/wifi/tether/system/CoreTask$TiWlanConf;

.field private wakeLock:Landroid/os/PowerManager$WakeLock;

.field public webserviceTask:Lcom/googlecode/android/wifi/tether/system/WebserviceTask;

.field public whitelist:Lcom/googlecode/android/wifi/tether/system/CoreTask$Whitelist;

.field public wpasupplicant:Lcom/googlecode/android/wifi/tether/system/CoreTask$WpaSupplicant;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 53
    const-string v0, "abcdefghijklm"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->DEFAULT_PASSPHRASE:Ljava/lang/String;

    .line 54
    const-string v0, "192.168.2.0/24"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->DEFAULT_LANNETWORK:Ljava/lang/String;

    .line 55
    const-string v0, "wpa_supplicant"

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->DEFAULT_ENCSETUP:Ljava/lang/String;

    .line 61
    iput-boolean v2, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->startupCheckPerformed:Z

    .line 71
    iput-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->powerManager:Landroid/os/PowerManager;

    .line 72
    iput-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 75
    iput-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    .line 76
    iput-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    .line 81
    iput v2, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->clientNotificationCount:I

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->clientDataAddList:Ljava/util/ArrayList;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->clientMacRemoveList:Ljava/util/ArrayList;

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->accessControlSupported:Z

    .line 95
    iput-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->whitelist:Lcom/googlecode/android/wifi/tether/system/CoreTask$Whitelist;

    .line 97
    iput-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->wpasupplicant:Lcom/googlecode/android/wifi/tether/system/CoreTask$WpaSupplicant;

    .line 99
    iput-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->tiwlan:Lcom/googlecode/android/wifi/tether/system/CoreTask$TiWlanConf;

    .line 101
    iput-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->tethercfg:Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;

    .line 103
    iput-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->hostapdcfg:Lcom/googlecode/android/wifi/tether/system/CoreTask$HostapdConfig;

    .line 107
    iput-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->coretask:Lcom/googlecode/android/wifi/tether/system/CoreTask;

    .line 110
    iput-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->webserviceTask:Lcom/googlecode/android/wifi/tether/system/WebserviceTask;

    .line 117
    iput-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->configuration:Lcom/googlecode/android/wifi/tether/system/Configuration;

    .line 544
    new-instance v0, Lcom/googlecode/android/wifi/tether/TetherApplication$1;

    invoke-direct {v0, p0}, Lcom/googlecode/android/wifi/tether/TetherApplication$1;-><init>(Lcom/googlecode/android/wifi/tether/TetherApplication;)V

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->clientConnectHandler:Landroid/os/Handler;

    .line 551
    new-instance v0, Lcom/googlecode/android/wifi/tether/TetherApplication$2;

    invoke-direct {v0, p0}, Lcom/googlecode/android/wifi/tether/TetherApplication$2;-><init>(Lcom/googlecode/android/wifi/tether/TetherApplication;)V

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->shutdownHandler:Landroid/os/Handler;

    .line 634
    new-instance v0, Lcom/googlecode/android/wifi/tether/TetherApplication$3;

    invoke-direct {v0, p0}, Lcom/googlecode/android/wifi/tether/TetherApplication$3;-><init>(Lcom/googlecode/android/wifi/tether/TetherApplication;)V

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->displayMessageHandler:Landroid/os/Handler;

    .line 46
    return-void
.end method

.method private checkDirs()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 787
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->coretask:Lcom/googlecode/android/wifi/tether/system/CoreTask;

    iget-object v4, v4, Lcom/googlecode/android/wifi/tether/system/CoreTask;->DATA_FILE_PATH:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 788
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 789
    const-string v3, "Application data-dir does not exist!"

    invoke-virtual {p0, v3}, Lcom/googlecode/android/wifi/tether/TetherApplication;->displayToastMessage(Ljava/lang/String;)V

    .line 806
    :cond_0
    return-void

    .line 793
    :cond_1
    const/4 v4, 0x3

    new-array v2, v4, [Ljava/lang/String;

    const-string v4, "/bin"

    aput-object v4, v2, v3

    const/4 v4, 0x1

    const-string v5, "/var"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "/conf"

    aput-object v5, v2, v4

    .line 794
    .local v2, dirs:[Ljava/lang/String;
    array-length v4, v2

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v2, v3

    .line 795
    .local v1, dirname:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    .end local v0           #dir:Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->coretask:Lcom/googlecode/android/wifi/tether/system/CoreTask;

    iget-object v6, v6, Lcom/googlecode/android/wifi/tether/system/CoreTask;->DATA_FILE_PATH:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 796
    .restart local v0       #dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    .line 797
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v5

    if-nez v5, :cond_2

    .line 798
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Couldn\'t create "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " directory!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/googlecode/android/wifi/tether/TetherApplication;->displayToastMessage(Ljava/lang/String;)V

    .line 794
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 802
    :cond_3
    const-string v5, "TETHER -> TetherApplication"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Directory \'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' already exists!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private copyFile(Ljava/lang/String;I)Ljava/lang/String;
    .locals 9
    .parameter "filename"
    .parameter "ressource"

    .prologue
    .line 768
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 769
    .local v5, outFile:Ljava/io/File;
    const-string v6, "TETHER -> TetherApplication"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Copying file \'"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' ..."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    invoke-virtual {p0}, Lcom/googlecode/android/wifi/tether/TetherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 771
    .local v2, is:Ljava/io/InputStream;
    const/16 v6, 0x400

    new-array v0, v6, [B

    .line 774
    .local v0, buf:[B
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 775
    .local v4, out:Ljava/io/OutputStream;
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, len:I
    if-gtz v3, :cond_0

    .line 778
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 779
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 783
    const/4 v6, 0x0

    .end local v3           #len:I
    .end local v4           #out:Ljava/io/OutputStream;
    :goto_1
    return-object v6

    .line 776
    .restart local v3       #len:I
    .restart local v4       #out:Ljava/io/OutputStream;
    :cond_0
    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 780
    .end local v3           #len:I
    .end local v4           #out:Ljava/io/OutputStream;
    :catch_0
    move-exception v1

    .line 781
    .local v1, e:Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Couldn\'t install file - "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1
.end method

.method private copyFile(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter "filename"
    .parameter "permission"
    .parameter "ressource"

    .prologue
    .line 757
    invoke-direct {p0, p1, p3}, Lcom/googlecode/android/wifi/tether/TetherApplication;->copyFile(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 758
    .local v0, result:Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 764
    .end local v0           #result:Ljava/lang/String;
    .local v1, result:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 761
    .end local v1           #result:Ljava/lang/String;
    .restart local v0       #result:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->coretask:Lcom/googlecode/android/wifi/tether/system/CoreTask;

    invoke-virtual {v2, p1, p2}, Lcom/googlecode/android/wifi/tether/system/CoreTask;->chmod(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 762
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t change file-permission for \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v1, v0

    .line 764
    .end local v0           #result:Ljava/lang/String;
    .restart local v1       #result:Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public acquireWakeLock()V
    .locals 4

    .prologue
    .line 523
    :try_start_0
    invoke-virtual {p0}, Lcom/googlecode/android/wifi/tether/TetherApplication;->isWakeLockDisabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 524
    const-string v1, "TETHER -> TetherApplication"

    const-string v2, "Trying to acquire WakeLock NOW!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    :cond_0
    :goto_0
    return-void

    .line 527
    :catch_0
    move-exception v0

    .line 528
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "TETHER -> TetherApplication"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Ups ... an exception happend while trying to acquire WakeLock - Here is what I know: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized addClientData(Lcom/googlecode/android/wifi/tether/data/ClientData;)V
    .locals 1
    .parameter "clientData"

    .prologue
    .line 181
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->clientDataAddList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    monitor-exit p0

    return-void

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public binariesExists()Z
    .locals 3

    .prologue
    .line 614
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->coretask:Lcom/googlecode/android/wifi/tether/system/CoreTask;

    iget-object v2, v2, Lcom/googlecode/android/wifi/tether/system/CoreTask;->DATA_FILE_PATH:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/bin/tether"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 615
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public checkForUpdate()V
    .locals 2

    .prologue
    .line 714
    invoke-virtual {p0}, Lcom/googlecode/android/wifi/tether/TetherApplication;->isUpdatecDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 715
    const-string v0, "TETHER -> TetherApplication"

    const-string v1, "Update-checks are disabled!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    :goto_0
    return-void

    .line 718
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/googlecode/android/wifi/tether/TetherApplication$4;

    invoke-direct {v1, p0}, Lcom/googlecode/android/wifi/tether/TetherApplication$4;-><init>(Lcom/googlecode/android/wifi/tether/TetherApplication;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 738
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public displayToastMessage(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 810
    invoke-virtual {p0}, Lcom/googlecode/android/wifi/tether/TetherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 811
    return-void
.end method

.method public downloadUpdate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "downloadFileUrl"
    .parameter "fileName"

    .prologue
    .line 742
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/googlecode/android/wifi/tether/TetherApplication$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/googlecode/android/wifi/tether/TetherApplication$5;-><init>(Lcom/googlecode/android/wifi/tether/TetherApplication;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 753
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 754
    return-void
.end method

.method public declared-synchronized getClientDataAddList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/googlecode/android/wifi/tether/data/ClientData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->clientDataAddList:Ljava/util/ArrayList;

    .line 190
    .local v0, tmp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/googlecode/android/wifi/tether/data/ClientData;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->clientDataAddList:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    monitor-exit p0

    return-object v0

    .line 189
    .end local v0           #tmp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/googlecode/android/wifi/tether/data/ClientData;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getClientMacRemoveList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 195
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->clientMacRemoveList:Ljava/util/ArrayList;

    .line 196
    .local v0, tmp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->clientMacRemoveList:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    monitor-exit p0

    return-object v0

    .line 195
    .end local v0           #tmp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getDeviceParameters()Lcom/googlecode/android/wifi/tether/system/Configuration;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->configuration:Lcom/googlecode/android/wifi/tether/system/Configuration;

    return-object v0
.end method

.method public getNotificationType()I
    .locals 3

    .prologue
    .line 533
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    const-string v1, "notificationpref"

    const-string v2, "2"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getStartNotification()Landroid/app/Notification;
    .locals 4

    .prologue
    .line 538
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->notification:Landroid/app/Notification;

    const/4 v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 539
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->notification:Landroid/app/Notification;

    const/high16 v1, 0x7f07

    invoke-virtual {p0, v1}, Lcom/googlecode/android/wifi/tether/TetherApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f070003

    invoke-virtual {p0, v2}, Lcom/googlecode/android/wifi/tether/TetherApplication;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->mainIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 540
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->notificationManager:Landroid/app/NotificationManager;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->notification:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 541
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->notification:Landroid/app/Notification;

    return-object v0
.end method

.method public getTetherNetworkDevice()Ljava/lang/String;
    .locals 2

    .prologue
    .line 485
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->tethercfg:Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;

    const-string v1, "tether.interface"

    invoke-virtual {v0, v1}, Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 825
    const-string v2, "?"

    .line 827
    .local v2, version:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/googlecode/android/wifi/tether/TetherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/googlecode/android/wifi/tether/TetherApplication;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 828
    .local v1, pi:Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 832
    .end local v1           #pi:Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v2

    .line 829
    :catch_0
    move-exception v0

    .line 830
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "TETHER -> TetherApplication"

    const-string v4, "Package name not found"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getVersionNumber()I
    .locals 6

    .prologue
    .line 814
    const/4 v2, -0x1

    .line 816
    .local v2, version:I
    :try_start_0
    invoke-virtual {p0}, Lcom/googlecode/android/wifi/tether/TetherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/googlecode/android/wifi/tether/TetherApplication;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 817
    .local v1, pi:Landroid/content/pm/PackageInfo;
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 821
    .end local v1           #pi:Landroid/content/pm/PackageInfo;
    :goto_0
    return v2

    .line 818
    :catch_0
    move-exception v0

    .line 819
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "TETHER -> TetherApplication"

    const-string v4, "Package name not found"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public installFiles()V
    .locals 5

    .prologue
    .line 644
    const/4 v0, 0x0

    .line 646
    .local v0, message:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 647
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->coretask:Lcom/googlecode/android/wifi/tether/system/CoreTask;

    iget-object v3, v3, Lcom/googlecode/android/wifi/tether/system/CoreTask;->DATA_FILE_PATH:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/bin/tether"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0755"

    const v4, 0x7f050009

    invoke-direct {p0, v2, v3, v4}, Lcom/googlecode/android/wifi/tether/TetherApplication;->copyFile(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 650
    :cond_0
    if-nez v0, :cond_1

    .line 651
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->coretask:Lcom/googlecode/android/wifi/tether/system/CoreTask;

    iget-object v3, v3, Lcom/googlecode/android/wifi/tether/system/CoreTask;->DATA_FILE_PATH:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/bin/dnsmasq"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0755"

    const/high16 v4, 0x7f05

    invoke-direct {p0, v2, v3, v4}, Lcom/googlecode/android/wifi/tether/TetherApplication;->copyFile(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 654
    :cond_1
    if-nez v0, :cond_2

    .line 655
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->coretask:Lcom/googlecode/android/wifi/tether/system/CoreTask;

    iget-object v3, v3, Lcom/googlecode/android/wifi/tether/system/CoreTask;->DATA_FILE_PATH:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/bin/iptables"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0755"

    const v4, 0x7f050006

    invoke-direct {p0, v2, v3, v4}, Lcom/googlecode/android/wifi/tether/TetherApplication;->copyFile(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 658
    :cond_2
    if-nez v0, :cond_3

    .line 659
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->coretask:Lcom/googlecode/android/wifi/tether/system/CoreTask;

    iget-object v3, v3, Lcom/googlecode/android/wifi/tether/system/CoreTask;->DATA_FILE_PATH:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/bin/iwconfig"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0755"

    const v4, 0x7f050007

    invoke-direct {p0, v2, v3, v4}, Lcom/googlecode/android/wifi/tether/TetherApplication;->copyFile(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 662
    :cond_3
    if-nez v0, :cond_4

    .line 663
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->coretask:Lcom/googlecode/android/wifi/tether/system/CoreTask;

    iget-object v3, v3, Lcom/googlecode/android/wifi/tether/system/CoreTask;->DATA_FILE_PATH:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/bin/ifconfig"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0755"

    const v4, 0x7f050005

    invoke-direct {p0, v2, v3, v4}, Lcom/googlecode/android/wifi/tether/TetherApplication;->copyFile(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 666
    :cond_4
    if-nez v0, :cond_5

    .line 667
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->coretask:Lcom/googlecode/android/wifi/tether/system/CoreTask;

    iget-object v3, v3, Lcom/googlecode/android/wifi/tether/system/CoreTask;->DATA_FILE_PATH:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/bin/rfkill"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0755"

    const v4, 0x7f050008

    invoke-direct {p0, v2, v3, v4}, Lcom/googlecode/android/wifi/tether/TetherApplication;->copyFile(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 677
    :cond_5
    if-nez v0, :cond_6

    .line 678
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->coretask:Lcom/googlecode/android/wifi/tether/system/CoreTask;

    iget-object v3, v3, Lcom/googlecode/android/wifi/tether/system/CoreTask;->DATA_FILE_PATH:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/conf/tether.edify"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0644"

    const v4, 0x7f05000a

    invoke-direct {p0, v2, v3, v4}, Lcom/googlecode/android/wifi/tether/TetherApplication;->copyFile(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 687
    :cond_6
    iget-object v2, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->coretask:Lcom/googlecode/android/wifi/tether/system/CoreTask;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->coretask:Lcom/googlecode/android/wifi/tether/system/CoreTask;

    iget-object v4, v4, Lcom/googlecode/android/wifi/tether/system/CoreTask;->DATA_FILE_PATH:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/conf/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0755"

    invoke-virtual {v2, v3, v4}, Lcom/googlecode/android/wifi/tether/system/CoreTask;->chmod(Ljava/lang/String;Ljava/lang/String;)Z

    .line 689
    if-nez v0, :cond_7

    .line 690
    const v2, 0x7f070001

    invoke-virtual {p0, v2}, Lcom/googlecode/android/wifi/tether/TetherApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 694
    :cond_7
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 695
    .local v1, msg:Landroid/os/Message;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 696
    iget-object v2, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->displayMessageHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 697
    return-void
.end method

.method public installHostapdConfig(Ljava/lang/String;)V
    .locals 3
    .parameter "hostapdTemplate"

    .prologue
    .line 623
    const-string v0, "droi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 624
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->coretask:Lcom/googlecode/android/wifi/tether/system/CoreTask;

    iget-object v1, v1, Lcom/googlecode/android/wifi/tether/system/CoreTask;->DATA_FILE_PATH:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/conf/hostapd.conf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0644"

    const v2, 0x7f050002

    invoke-direct {p0, v0, v1, v2}, Lcom/googlecode/android/wifi/tether/TetherApplication;->copyFile(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 632
    :cond_0
    :goto_0
    return-void

    .line 626
    :cond_1
    const-string v0, "mini"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 627
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->coretask:Lcom/googlecode/android/wifi/tether/system/CoreTask;

    iget-object v1, v1, Lcom/googlecode/android/wifi/tether/system/CoreTask;->DATA_FILE_PATH:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/conf/hostapd.conf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0644"

    const v2, 0x7f050003

    invoke-direct {p0, v0, v1, v2}, Lcom/googlecode/android/wifi/tether/TetherApplication;->copyFile(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    goto :goto_0

    .line 629
    :cond_2
    const-string v0, "tiap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 630
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->coretask:Lcom/googlecode/android/wifi/tether/system/CoreTask;

    iget-object v1, v1, Lcom/googlecode/android/wifi/tether/system/CoreTask;->DATA_FILE_PATH:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/conf/hostapd.conf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0644"

    const v2, 0x7f050004

    invoke-direct {p0, v0, v1, v2}, Lcom/googlecode/android/wifi/tether/TetherApplication;->copyFile(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    goto :goto_0
.end method

.method public installWpaSupplicantConfig()V
    .locals 3

    .prologue
    .line 619
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->coretask:Lcom/googlecode/android/wifi/tether/system/CoreTask;

    iget-object v1, v1, Lcom/googlecode/android/wifi/tether/system/CoreTask;->DATA_FILE_PATH:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/conf/wpa_supplicant.conf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0644"

    const v2, 0x7f05000c

    invoke-direct {p0, v0, v1, v2}, Lcom/googlecode/android/wifi/tether/TetherApplication;->copyFile(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 620
    return-void
.end method

.method public isSyncDisabled()Z
    .locals 3

    .prologue
    .line 495
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    const-string v1, "syncpref"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isTransmitPowerSupported()Z
    .locals 1

    .prologue
    .line 846
    const/4 v0, 0x1

    return v0
.end method

.method public isUpdatecDisabled()Z
    .locals 3

    .prologue
    .line 500
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    const-string v1, "updatepref"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isWakeLockDisabled()Z
    .locals 3

    .prologue
    .line 490
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    const-string v1, "wakelockpref"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 121
    const-string v0, "TETHER -> TetherApplication"

    const-string v1, "Calling onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    new-instance v0, Lcom/googlecode/android/wifi/tether/system/CoreTask;

    invoke-direct {v0}, Lcom/googlecode/android/wifi/tether/system/CoreTask;-><init>()V

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->coretask:Lcom/googlecode/android/wifi/tether/system/CoreTask;

    .line 125
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->coretask:Lcom/googlecode/android/wifi/tether/system/CoreTask;

    invoke-virtual {p0}, Lcom/googlecode/android/wifi/tether/TetherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/googlecode/android/wifi/tether/system/CoreTask;->setPath(Ljava/lang/String;)V

    .line 126
    const-string v0, "TETHER -> TetherApplication"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Current directory is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/googlecode/android/wifi/tether/TetherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    new-instance v0, Lcom/googlecode/android/wifi/tether/system/WebserviceTask;

    invoke-direct {v0}, Lcom/googlecode/android/wifi/tether/system/WebserviceTask;-><init>()V

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->webserviceTask:Lcom/googlecode/android/wifi/tether/system/WebserviceTask;

    .line 132
    invoke-direct {p0}, Lcom/googlecode/android/wifi/tether/TetherApplication;->checkDirs()V

    .line 135
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    .line 138
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    .line 141
    new-instance v0, Lcom/googlecode/android/wifi/tether/system/CoreTask$Whitelist;

    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->coretask:Lcom/googlecode/android/wifi/tether/system/CoreTask;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/googlecode/android/wifi/tether/system/CoreTask$Whitelist;-><init>(Lcom/googlecode/android/wifi/tether/system/CoreTask;)V

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->whitelist:Lcom/googlecode/android/wifi/tether/system/CoreTask$Whitelist;

    .line 144
    new-instance v0, Lcom/googlecode/android/wifi/tether/system/CoreTask$WpaSupplicant;

    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->coretask:Lcom/googlecode/android/wifi/tether/system/CoreTask;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/googlecode/android/wifi/tether/system/CoreTask$WpaSupplicant;-><init>(Lcom/googlecode/android/wifi/tether/system/CoreTask;)V

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->wpasupplicant:Lcom/googlecode/android/wifi/tether/system/CoreTask$WpaSupplicant;

    .line 147
    new-instance v0, Lcom/googlecode/android/wifi/tether/system/CoreTask$TiWlanConf;

    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->coretask:Lcom/googlecode/android/wifi/tether/system/CoreTask;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/googlecode/android/wifi/tether/system/CoreTask$TiWlanConf;-><init>(Lcom/googlecode/android/wifi/tether/system/CoreTask;)V

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->tiwlan:Lcom/googlecode/android/wifi/tether/system/CoreTask$TiWlanConf;

    .line 150
    new-instance v0, Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;

    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->coretask:Lcom/googlecode/android/wifi/tether/system/CoreTask;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;-><init>(Lcom/googlecode/android/wifi/tether/system/CoreTask;)V

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->tethercfg:Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;

    .line 151
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->tethercfg:Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;

    invoke-virtual {v0}, Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;->read()Ljava/util/HashMap;

    .line 154
    new-instance v0, Lcom/googlecode/android/wifi/tether/system/CoreTask$HostapdConfig;

    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->coretask:Lcom/googlecode/android/wifi/tether/system/CoreTask;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/googlecode/android/wifi/tether/system/CoreTask$HostapdConfig;-><init>(Lcom/googlecode/android/wifi/tether/system/CoreTask;)V

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->hostapdcfg:Lcom/googlecode/android/wifi/tether/system/CoreTask$HostapdConfig;

    .line 157
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/googlecode/android/wifi/tether/TetherApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->powerManager:Landroid/os/PowerManager;

    .line 158
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->powerManager:Landroid/os/PowerManager;

    const/4 v1, 0x6

    const-string v2, "TETHER_WAKE_LOCK"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 161
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/googlecode/android/wifi/tether/TetherApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->notificationManager:Landroid/app/NotificationManager;

    .line 162
    new-instance v0, Landroid/app/Notification;

    const v1, 0x7f02000f

    const-string v2, "WiFi Tether"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->notification:Landroid/app/Notification;

    .line 163
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/googlecode/android/wifi/tether/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v5, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->mainIntent:Landroid/app/PendingIntent;

    .line 164
    const/4 v0, 0x1

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/googlecode/android/wifi/tether/AccessControlActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v0, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->accessControlIntent:Landroid/app/PendingIntent;

    .line 167
    invoke-virtual {p0}, Lcom/googlecode/android/wifi/tether/TetherApplication;->updateDeviceParameters()V

    .line 168
    return-void
.end method

.method public onTerminate()V
    .locals 2

    .prologue
    .line 172
    const-string v0, "TETHER -> TetherApplication"

    const-string v1, "Calling onTerminate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 177
    return-void
.end method

.method public releaseWakeLock()V
    .locals 4

    .prologue
    .line 512
    :try_start_0
    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 513
    const-string v1, "TETHER -> TetherApplication"

    const-string v2, "Trying to release WakeLock NOW!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 519
    :cond_0
    :goto_0
    return-void

    .line 516
    :catch_0
    move-exception v0

    .line 517
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "TETHER -> TetherApplication"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Ups ... an exception happend while trying to release WakeLock - Here is what I know: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized removeClientMac(Ljava/lang/String;)V
    .locals 1
    .parameter "mac"

    .prologue
    .line 185
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->clientMacRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    monitor-exit p0

    return-void

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resetClientMacLists()V
    .locals 1

    .prologue
    .line 201
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->clientDataAddList:Ljava/util/ArrayList;

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->clientMacRemoveList:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    monitor-exit p0

    return-void

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public showClientConnectNotification(Lcom/googlecode/android/wifi/tether/data/ClientData;I)V
    .locals 8
    .parameter "clientData"
    .parameter "authType"

    .prologue
    const v7, 0x7f070007

    const v3, 0x7f070005

    const/high16 v6, 0x7f07

    .line 579
    const v1, 0x7f02000d

    .line 580
    .local v1, notificationIcon:I
    const-string v2, ""

    .line 581
    .local v2, notificationString:Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 594
    :goto_0
    const-string v3, "TETHER -> TetherApplication"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "New ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") client connected ==> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/googlecode/android/wifi/tether/data/ClientData;->getClientName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/googlecode/android/wifi/tether/data/ClientData;->getMacAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    new-instance v0, Landroid/app/Notification;

    invoke-virtual {p0, v6}, Lcom/googlecode/android/wifi/tether/TetherApplication;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v0, v1, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 596
    .local v0, clientConnectNotification:Landroid/app/Notification;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/googlecode/android/wifi/tether/data/ClientData;->getClientName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/googlecode/android/wifi/tether/data/ClientData;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 597
    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    const-string v4, "notifyring"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 598
    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    const-string v4, "notifyring"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 600
    :cond_0
    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    const-string v4, "notifyvibrate"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 601
    const/4 v3, 0x4

    new-array v3, v3, [J

    fill-array-data v3, :array_0

    iput-object v3, v0, Landroid/app/Notification;->vibrate:[J

    .line 603
    :cond_1
    iget-boolean v3, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->accessControlSupported:Z

    if-eqz v3, :cond_2

    .line 604
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Lcom/googlecode/android/wifi/tether/TetherApplication;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/googlecode/android/wifi/tether/data/ClientData;->getClientName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/googlecode/android/wifi/tether/data/ClientData;->getMacAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v7}, Lcom/googlecode/android/wifi/tether/TetherApplication;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->accessControlIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p0, v3, v4, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 608
    :goto_1
    const/16 v3, 0x10

    iput v3, v0, Landroid/app/Notification;->flags:I

    .line 609
    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->notificationManager:Landroid/app/NotificationManager;

    iget v4, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->clientNotificationCount:I

    invoke-virtual {v3, v4, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 610
    iget v3, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->clientNotificationCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->clientNotificationCount:I

    .line 611
    return-void

    .line 583
    .end local v0           #clientConnectNotification:Landroid/app/Notification;
    :pswitch_0
    const v1, 0x7f02000d

    .line 584
    const v3, 0x7f070004

    invoke-virtual {p0, v3}, Lcom/googlecode/android/wifi/tether/TetherApplication;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 585
    goto/16 :goto_0

    .line 587
    :pswitch_1
    const v1, 0x7f02000b

    .line 588
    invoke-virtual {p0, v3}, Lcom/googlecode/android/wifi/tether/TetherApplication;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 589
    goto/16 :goto_0

    .line 591
    :pswitch_2
    const v1, 0x7f02000c

    .line 592
    invoke-virtual {p0, v3}, Lcom/googlecode/android/wifi/tether/TetherApplication;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 606
    .restart local v0       #clientConnectNotification:Landroid/app/Notification;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Lcom/googlecode/android/wifi/tether/TetherApplication;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/googlecode/android/wifi/tether/data/ClientData;->getClientName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/googlecode/android/wifi/tether/data/ClientData;->getMacAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v7}, Lcom/googlecode/android/wifi/tether/TetherApplication;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->mainIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p0, v3, v4, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto/16 :goto_1

    .line 581
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 601
    :array_0
    .array-data 0x8
        0x64t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public showDonationDialog()Z
    .locals 3

    .prologue
    .line 505
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    const-string v1, "donatepref"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public showShutdownNotification()V
    .locals 8

    .prologue
    const/high16 v7, 0x7f07

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 558
    new-instance v0, Landroid/app/Notification;

    const v1, 0x7f020011

    invoke-virtual {p0, v7}, Lcom/googlecode/android/wifi/tether/TetherApplication;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 559
    .local v0, shutdownNotification:Landroid/app/Notification;
    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    const-string v2, "autoshutdownidle"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 560
    const v1, 0x7f07006b

    invoke-virtual {p0, v1}, Lcom/googlecode/android/wifi/tether/TetherApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 568
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "autoshutdownidle"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 569
    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "autoshutdowntimer"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 570
    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "autoshutdownquota"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 571
    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "autoshutdownkeepalive"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 572
    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 573
    invoke-virtual {p0, v7}, Lcom/googlecode/android/wifi/tether/TetherApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->mainIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 574
    const/16 v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 575
    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->notificationManager:Landroid/app/NotificationManager;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 576
    return-void

    .line 561
    :cond_1
    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    const-string v2, "autoshutdowntimer"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 562
    const v1, 0x7f070064

    invoke-virtual {p0, v1}, Lcom/googlecode/android/wifi/tether/TetherApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    goto :goto_0

    .line 563
    :cond_2
    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    const-string v2, "autoshutdownquota"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 564
    const v1, 0x7f07007e

    invoke-virtual {p0, v1}, Lcom/googlecode/android/wifi/tether/TetherApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    goto :goto_0

    .line 565
    :cond_3
    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    const-string v2, "autoshutdownkeepalive"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 566
    const v1, 0x7f070079

    invoke-virtual {p0, v1}, Lcom/googlecode/android/wifi/tether/TetherApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public updateConfiguration()V
    .locals 31

    .prologue
    .line 221
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 224
    .local v18, startStamp:J
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/android/wifi/tether/TetherApplication;->updateDeviceParameters()V

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    const-string v27, "encpref"

    const/16 v28, 0x0

    invoke-interface/range {v26 .. v28}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 227
    .local v7, encEnabled:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    const-string v27, "acpref"

    const/16 v28, 0x0

    invoke-interface/range {v26 .. v28}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 228
    .local v4, acEnabled:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    const-string v27, "ssidpref"

    const-string v28, "AndroidTether"

    invoke-interface/range {v26 .. v28}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 229
    .local v17, ssid:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    const-string v27, "txpowerpref"

    const-string v28, "disabled"

    invoke-interface/range {v26 .. v28}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 230
    .local v22, txpower:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    const-string v27, "lannetworkpref"

    const-string v28, "192.168.2.0/24"

    invoke-interface/range {v26 .. v28}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 231
    .local v9, lannetwork:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    const-string v27, "passphrasepref"

    const-string v28, "abcdefghijklm"

    invoke-interface/range {v26 .. v28}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 232
    .local v24, wepkey:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    const-string v27, "encsetuppref"

    const-string v28, "wpa_supplicant"

    invoke-interface/range {v26 .. v28}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 233
    .local v25, wepsetupMethod:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    const-string v27, "channelpref"

    const-string v28, "1"

    invoke-interface/range {v26 .. v28}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 234
    .local v5, channel:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    const-string v27, "mssclampingpref"

    const/16 v28, 0x0

    invoke-interface/range {v26 .. v28}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 235
    .local v11, mssclampingEnabled:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    const-string v27, "routefixpref"

    const/16 v28, 0x0

    invoke-interface/range {v26 .. v28}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .line 236
    .local v14, routefixEnabled:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    const-string v27, "dnsprimarypref"

    const-string v28, "8.8.8.8"

    invoke-interface/range {v26 .. v28}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 237
    .local v12, primaryDns:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    const-string v27, "dnssecondarypref"

    const-string v28, "8.8.4.4"

    invoke-interface/range {v26 .. v28}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 238
    .local v15, secondaryDns:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    const-string v27, "hidessidpref"

    const/16 v28, 0x0

    invoke-interface/range {v26 .. v28}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 239
    .local v8, hideSSID:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    const-string v27, "driverreloadpref"

    const/16 v28, 0x1

    invoke-interface/range {v26 .. v28}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 242
    .local v13, reloadDriver:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    const-string v27, "setuppref"

    const-string v28, "auto"

    invoke-interface/range {v26 .. v28}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 244
    .local v16, setupMethod:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->configuration:Lcom/googlecode/android/wifi/tether/system/Configuration;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/googlecode/android/wifi/tether/system/Configuration;->isTiadhocSupported()Z

    move-result v26

    if-nez v26, :cond_a

    .line 245
    const-string v26, "auto"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_0

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->configuration:Lcom/googlecode/android/wifi/tether/system/Configuration;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/googlecode/android/wifi/tether/system/Configuration;->getAutoSetupMethod()Ljava/lang/String;

    move-result-object v16

    .line 254
    :cond_0
    :goto_0
    const/16 v26, 0x0

    const-string v27, "."

    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 256
    .local v20, subnet:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->tethercfg:Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;

    move-object/from16 v26, v0

    const-string v27, "device.type"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->configuration:Lcom/googlecode/android/wifi/tether/system/Configuration;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/googlecode/android/wifi/tether/system/Configuration;->getDevice()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->tethercfg:Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;

    move-object/from16 v26, v0

    const-string v27, "wifi.essid"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->tethercfg:Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;

    move-object/from16 v26, v0

    const-string v27, "wifi.channel"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v5}, Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->tethercfg:Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;

    move-object/from16 v26, v0

    const-string v27, "ip.network"

    const-string v28, "/"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    aget-object v28, v28, v29

    invoke-virtual/range {v26 .. v28}, Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->tethercfg:Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;

    move-object/from16 v26, v0

    const-string v27, "ip.gateway"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v29, ".254"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->tethercfg:Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;

    move-object/from16 v26, v0

    const-string v27, "ip.netmask"

    const-string v28, "255.255.255.0"

    invoke-virtual/range {v26 .. v28}, Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->tethercfg:Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;

    move-object/from16 v26, v0

    const-string v27, "dns.primary"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v12}, Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->tethercfg:Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;

    move-object/from16 v26, v0

    const-string v27, "dns.secondary"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v15}, Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    if-eqz v11, :cond_b

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->tethercfg:Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;

    move-object/from16 v26, v0

    const-string v27, "mss.clamping"

    const-string v28, "true"

    invoke-virtual/range {v26 .. v28}, Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    :goto_1
    if-eqz v8, :cond_c

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->tethercfg:Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;

    move-object/from16 v26, v0

    const-string v27, "wifi.essid.hide"

    const-string v28, "1"

    invoke-virtual/range {v26 .. v28}, Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    :goto_2
    if-eqz v13, :cond_d

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->tethercfg:Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;

    move-object/from16 v26, v0

    const-string v27, "wifi.driver.reload"

    const-string v28, "true"

    invoke-virtual/range {v26 .. v28}, Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    :goto_3
    if-eqz v14, :cond_e

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->tethercfg:Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;

    move-object/from16 v26, v0

    const-string v27, "tether.fix.route"

    const-string v28, "true"

    invoke-virtual/range {v26 .. v28}, Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->tethercfg:Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;

    move-object/from16 v26, v0

    const-string v27, "setup.section.generic"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->configuration:Lcom/googlecode/android/wifi/tether/system/Configuration;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/googlecode/android/wifi/tether/system/Configuration;->isGenericSetupSection()Z

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->tethercfg:Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;

    move-object/from16 v26, v0

    const-string v27, "wifi.interface"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->coretask:Lcom/googlecode/android/wifi/tether/system/CoreTask;

    move-object/from16 v28, v0

    const-string v29, "wifi.interface"

    invoke-virtual/range {v28 .. v29}, Lcom/googlecode/android/wifi/tether/system/CoreTask;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->tethercfg:Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;

    move-object/from16 v26, v0

    const-string v27, "wifi.driver"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    const-string v26, "wext"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_f

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->tethercfg:Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;

    move-object/from16 v27, v0

    const-string v28, "tether.interface"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->tethercfg:Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;

    move-object/from16 v26, v0

    const-string v29, "wifi.interface"

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    if-eqz v7, :cond_1

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->tethercfg:Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;

    move-object/from16 v26, v0

    const-string v27, "wifi.encryption"

    const-string v28, "wep"

    invoke-virtual/range {v26 .. v28}, Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    :cond_1
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->tethercfg:Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;

    move-object/from16 v26, v0

    const-string v27, "wifi.load.cmd"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->configuration:Lcom/googlecode/android/wifi/tether/system/Configuration;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/googlecode/android/wifi/tether/system/Configuration;->getWifiLoadCmd()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->tethercfg:Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;

    move-object/from16 v26, v0

    const-string v27, "wifi.unload.cmd"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->configuration:Lcom/googlecode/android/wifi/tether/system/Configuration;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/googlecode/android/wifi/tether/system/Configuration;->getWifiUnloadCmd()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->tethercfg:Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;

    move-object/from16 v26, v0

    const-string v27, "wifi.txpower"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    if-eqz v7, :cond_1a

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->tethercfg:Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;

    move-object/from16 v26, v0

    const-string v27, "wifi.encryption.key"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    const-string v26, "auto"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_2

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->configuration:Lcom/googlecode/android/wifi/tether/system/Configuration;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/googlecode/android/wifi/tether/system/Configuration;->isWextSupported()Z

    move-result v26

    if-eqz v26, :cond_19

    .line 362
    const-string v25, "iwconfig"

    .line 369
    :cond_2
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->tethercfg:Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;

    move-object/from16 v26, v0

    const-string v27, "wifi.setup"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    const-string v26, "wpa_supplicant"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_4

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->wpasupplicant:Lcom/googlecode/android/wifi/tether/system/CoreTask$WpaSupplicant;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/googlecode/android/wifi/tether/system/CoreTask$WpaSupplicant;->exists()Z

    move-result v26

    if-nez v26, :cond_3

    .line 374
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/android/wifi/tether/TetherApplication;->installWpaSupplicantConfig()V

    .line 378
    :cond_3
    new-instance v23, Ljava/util/Hashtable;

    invoke-direct/range {v23 .. v23}, Ljava/util/Hashtable;-><init>()V

    .line 379
    .local v23, values:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v26, "ssid"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "\""

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    move-object/from16 v28, v0

    const-string v29, "ssidpref"

    const-string v30, "AndroidTether"

    invoke-interface/range {v28 .. v30}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\""

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    const-string v26, "wep_key0"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "\""

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    move-object/from16 v28, v0

    const-string v29, "passphrasepref"

    const-string v30, "abcdefghijklm"

    invoke-interface/range {v28 .. v30}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\""

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->wpasupplicant:Lcom/googlecode/android/wifi/tether/system/CoreTask$WpaSupplicant;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/googlecode/android/wifi/tether/system/CoreTask$WpaSupplicant;->write(Ljava/util/Hashtable;)Z

    .line 395
    .end local v23           #values:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    :goto_7
    const-string v26, "\\."

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 396
    .local v10, lanparts:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->tethercfg:Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;

    move-object/from16 v26, v0

    const-string v27, "dhcp.iprange"

    new-instance v28, Ljava/lang/StringBuilder;

    const/16 v29, 0x0

    aget-object v29, v10, v29

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v29, "."

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const/16 v29, 0x1

    aget-object v29, v10, v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "."

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const/16 v29, 0x2

    aget-object v29, v10, v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ".100,"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const/16 v29, 0x0

    aget-object v29, v10, v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "."

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const/16 v29, 0x1

    aget-object v29, v10, v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "."

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const/16 v29, 0x2

    aget-object v29, v10, v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ".108,12h"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->tethercfg:Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;->write()Z

    move-result v26

    if-nez v26, :cond_5

    .line 400
    const-string v26, "TETHER -> TetherApplication"

    const-string v27, "Unable to update tether.conf!"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_5
    const-string v26, "hostapd"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_7

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->configuration:Lcom/googlecode/android/wifi/tether/system/Configuration;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/googlecode/android/wifi/tether/system/Configuration;->getHostapdTemplate()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/googlecode/android/wifi/tether/TetherApplication;->installHostapdConfig(Ljava/lang/String;)V

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->hostapdcfg:Lcom/googlecode/android/wifi/tether/system/CoreTask$HostapdConfig;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/googlecode/android/wifi/tether/system/CoreTask$HostapdConfig;->read()Ljava/util/HashMap;

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->configuration:Lcom/googlecode/android/wifi/tether/system/Configuration;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/googlecode/android/wifi/tether/system/Configuration;->getHostapdTemplate()Ljava/lang/String;

    move-result-object v26

    const-string v27, "droi"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1b

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->hostapdcfg:Lcom/googlecode/android/wifi/tether/system/CoreTask$HostapdConfig;

    move-object/from16 v26, v0

    const-string v27, "ssid"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/android/wifi/tether/system/CoreTask$HostapdConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->hostapdcfg:Lcom/googlecode/android/wifi/tether/system/CoreTask$HostapdConfig;

    move-object/from16 v26, v0

    const-string v27, "channel"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v5}, Lcom/googlecode/android/wifi/tether/system/CoreTask$HostapdConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->hostapdcfg:Lcom/googlecode/android/wifi/tether/system/CoreTask$HostapdConfig;

    move-object/from16 v26, v0

    const-string v27, "interface"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->configuration:Lcom/googlecode/android/wifi/tether/system/Configuration;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/googlecode/android/wifi/tether/system/Configuration;->getHostapdInterface()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Lcom/googlecode/android/wifi/tether/system/CoreTask$HostapdConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    if-eqz v7, :cond_6

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->hostapdcfg:Lcom/googlecode/android/wifi/tether/system/CoreTask$HostapdConfig;

    move-object/from16 v26, v0

    const-string v27, "wpa"

    const-string v28, "2"

    invoke-virtual/range {v26 .. v28}, Lcom/googlecode/android/wifi/tether/system/CoreTask$HostapdConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->hostapdcfg:Lcom/googlecode/android/wifi/tether/system/CoreTask$HostapdConfig;

    move-object/from16 v26, v0

    const-string v27, "wpa_pairwise"

    const-string v28, "CCMP"

    invoke-virtual/range {v26 .. v28}, Lcom/googlecode/android/wifi/tether/system/CoreTask$HostapdConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->hostapdcfg:Lcom/googlecode/android/wifi/tether/system/CoreTask$HostapdConfig;

    move-object/from16 v26, v0

    const-string v27, "rsn_pairwise"

    const-string v28, "CCMP"

    invoke-virtual/range {v26 .. v28}, Lcom/googlecode/android/wifi/tether/system/CoreTask$HostapdConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->hostapdcfg:Lcom/googlecode/android/wifi/tether/system/CoreTask$HostapdConfig;

    move-object/from16 v26, v0

    const-string v27, "wpa_passphrase"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/android/wifi/tether/system/CoreTask$HostapdConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    :cond_6
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->hostapdcfg:Lcom/googlecode/android/wifi/tether/system/CoreTask$HostapdConfig;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/googlecode/android/wifi/tether/system/CoreTask$HostapdConfig;->write()Z

    move-result v26

    if-nez v26, :cond_7

    .line 445
    const-string v26, "TETHER -> TetherApplication"

    const-string v27, "Unable to update hostapd.conf!"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :cond_7
    if-eqz v4, :cond_1d

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->whitelist:Lcom/googlecode/android/wifi/tether/system/CoreTask$Whitelist;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/googlecode/android/wifi/tether/system/CoreTask$Whitelist;->exists()Z

    move-result v26

    if-nez v26, :cond_8

    .line 453
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->whitelist:Lcom/googlecode/android/wifi/tether/system/CoreTask$Whitelist;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/googlecode/android/wifi/tether/system/CoreTask$Whitelist;->touch()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    :cond_8
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->configuration:Lcom/googlecode/android/wifi/tether/system/Configuration;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/googlecode/android/wifi/tether/system/Configuration;->isTiadhocSupported()Z

    move-result v26

    if-eqz v26, :cond_1e

    .line 467
    new-instance v26, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->coretask:Lcom/googlecode/android/wifi/tether/system/CoreTask;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/system/CoreTask;->DATA_FILE_PATH:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v27, "/conf/tiwlan.ini"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const-string v27, "0644"

    const v28, 0x7f05000b

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/googlecode/android/wifi/tether/TetherApplication;->copyFile(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->tiwlan:Lcom/googlecode/android/wifi/tether/system/CoreTask$TiWlanConf;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/googlecode/android/wifi/tether/system/CoreTask$TiWlanConf;->get()Ljava/util/Hashtable;

    move-result-object v23

    .line 469
    .restart local v23       #values:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v26, "dot11DesiredSSID"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    move-object/from16 v27, v0

    const-string v28, "ssidpref"

    const-string v29, "AndroidTether"

    invoke-interface/range {v27 .. v29}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    const-string v26, "dot11DesiredChannel"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    move-object/from16 v27, v0

    const-string v28, "channelpref"

    const-string v29, "1"

    invoke-interface/range {v27 .. v29}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->tiwlan:Lcom/googlecode/android/wifi/tether/system/CoreTask$TiWlanConf;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/googlecode/android/wifi/tether/system/CoreTask$TiWlanConf;->write(Ljava/util/Hashtable;)Z

    .line 481
    .end local v23           #values:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_9
    :goto_a
    const-string v26, "TETHER -> TetherApplication"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "Creation of configuration-files took ==> "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    sub-long v28, v28, v18

    invoke-virtual/range {v27 .. v29}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " milliseconds."

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    return-void

    .line 250
    .end local v10           #lanparts:[Ljava/lang/String;
    .end local v20           #subnet:Ljava/lang/String;
    :cond_a
    const-string v16, "tiwlan0"

    goto/16 :goto_0

    .line 271
    .restart local v20       #subnet:Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->tethercfg:Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;

    move-object/from16 v26, v0

    const-string v27, "mss.clamping"

    const-string v28, "false"

    invoke-virtual/range {v26 .. v28}, Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 278
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->tethercfg:Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;

    move-object/from16 v26, v0

    const-string v27, "wifi.essid.hide"

    const-string v28, "0"

    invoke-virtual/range {v26 .. v28}, Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 285
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->tethercfg:Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;

    move-object/from16 v26, v0

    const-string v27, "wifi.driver.reload"

    const-string v28, "false"

    invoke-virtual/range {v26 .. v28}, Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 292
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->tethercfg:Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;

    move-object/from16 v26, v0

    const-string v27, "tether.fix.route"

    const-string v28, "false"

    invoke-virtual/range {v26 .. v28}, Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 308
    :cond_f
    const-string v26, "netd"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_10

    const-string v26, "netdndc"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_12

    .line 309
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->tethercfg:Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;

    move-object/from16 v26, v0

    const-string v27, "tether.interface"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->configuration:Lcom/googlecode/android/wifi/tether/system/Configuration;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/googlecode/android/wifi/tether/system/Configuration;->getNetdInterface()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    if-eqz v7, :cond_11

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->tethercfg:Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;

    move-object/from16 v26, v0

    const-string v27, "wifi.encryption"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->configuration:Lcom/googlecode/android/wifi/tether/system/Configuration;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/googlecode/android/wifi/tether/system/Configuration;->getEncryptionIdentifier()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 314
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->tethercfg:Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;

    move-object/from16 v26, v0

    const-string v27, "wifi.encryption"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->configuration:Lcom/googlecode/android/wifi/tether/system/Configuration;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/googlecode/android/wifi/tether/system/Configuration;->getOpennetworkIdentifier()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 317
    :cond_12
    const-string v26, "hostapd"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_16

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->tethercfg:Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;

    move-object/from16 v26, v0

    const-string v27, "hostapd.module.path"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->configuration:Lcom/googlecode/android/wifi/tether/system/Configuration;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/googlecode/android/wifi/tether/system/Configuration;->getHostapdKernelModulePath()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->tethercfg:Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;

    move-object/from16 v26, v0

    const-string v27, "hostapd.module.name"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->configuration:Lcom/googlecode/android/wifi/tether/system/Configuration;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/googlecode/android/wifi/tether/system/Configuration;->getHostapdKernelModuleName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->tethercfg:Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;

    move-object/from16 v26, v0

    const-string v27, "hostapd.bin.path"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->configuration:Lcom/googlecode/android/wifi/tether/system/Configuration;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/googlecode/android/wifi/tether/system/Configuration;->getHostapdPath()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->tethercfg:Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;

    move-object/from16 v26, v0

    const-string v27, "tether.interface"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->configuration:Lcom/googlecode/android/wifi/tether/system/Configuration;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/googlecode/android/wifi/tether/system/Configuration;->getHostapdInterface()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    if-eqz v7, :cond_13

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->tethercfg:Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;

    move-object/from16 v26, v0

    const-string v27, "wifi.encryption"

    const-string v28, "unused"

    invoke-virtual/range {v26 .. v28}, Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->configuration:Lcom/googlecode/android/wifi/tether/system/Configuration;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/googlecode/android/wifi/tether/system/Configuration;->getHostapdLoaderCmd()Ljava/lang/String;

    move-result-object v26

    if-eqz v26, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->configuration:Lcom/googlecode/android/wifi/tether/system/Configuration;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/googlecode/android/wifi/tether/system/Configuration;->getHostapdLoaderCmd()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    if-gtz v26, :cond_15

    .line 326
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->tethercfg:Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;

    move-object/from16 v26, v0

    const-string v27, "hostapd.loader.cmd"

    const-string v28, "disabled"

    invoke-virtual/range {v26 .. v28}, Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 329
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->tethercfg:Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;

    move-object/from16 v26, v0

    const-string v27, "hostapd.loader.cmd"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->configuration:Lcom/googlecode/android/wifi/tether/system/Configuration;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/googlecode/android/wifi/tether/system/Configuration;->getHostapdLoaderCmd()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 332
    :cond_16
    const-string v26, "tiwlan0"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_17

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->tethercfg:Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;

    move-object/from16 v26, v0

    const-string v27, "tether.interface"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->configuration:Lcom/googlecode/android/wifi/tether/system/Configuration;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/googlecode/android/wifi/tether/system/Configuration;->getTiadhocInterface()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    if-eqz v7, :cond_1

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->tethercfg:Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;

    move-object/from16 v26, v0

    const-string v27, "wifi.encryption"

    const-string v28, "wep"

    invoke-virtual/range {v26 .. v28}, Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 338
    :cond_17
    const-string v26, "softap"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_1

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->tethercfg:Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;

    move-object/from16 v26, v0

    const-string v27, "tether.interface"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->configuration:Lcom/googlecode/android/wifi/tether/system/Configuration;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/googlecode/android/wifi/tether/system/Configuration;->getSoftapInterface()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->tethercfg:Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;

    move-object/from16 v26, v0

    const-string v27, "wifi.firmware.path"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->configuration:Lcom/googlecode/android/wifi/tether/system/Configuration;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/googlecode/android/wifi/tether/system/Configuration;->getSoftapFirmwarePath()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    if-eqz v7, :cond_18

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->tethercfg:Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;

    move-object/from16 v26, v0

    const-string v27, "wifi.encryption"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->configuration:Lcom/googlecode/android/wifi/tether/system/Configuration;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/googlecode/android/wifi/tether/system/Configuration;->getEncryptionIdentifier()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 345
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->tethercfg:Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;

    move-object/from16 v26, v0

    const-string v27, "wifi.encryption"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->configuration:Lcom/googlecode/android/wifi/tether/system/Configuration;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/googlecode/android/wifi/tether/system/Configuration;->getOpennetworkIdentifier()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 364
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->configuration:Lcom/googlecode/android/wifi/tether/system/Configuration;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/googlecode/android/wifi/tether/system/Configuration;->isTiadhocSupported()Z

    move-result v26

    if-eqz v26, :cond_2

    .line 365
    const-string v25, "wpa_supplicant"

    goto/16 :goto_6

    .line 385
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->tethercfg:Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;

    move-object/from16 v26, v0

    const-string v27, "wifi.encryption"

    const-string v28, "open"

    invoke-virtual/range {v26 .. v28}, Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->tethercfg:Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;

    move-object/from16 v26, v0

    const-string v27, "wifi.encryption.key"

    const-string v28, "none"

    invoke-virtual/range {v26 .. v28}, Lcom/googlecode/android/wifi/tether/system/CoreTask$TetherConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->wpasupplicant:Lcom/googlecode/android/wifi/tether/system/CoreTask$WpaSupplicant;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/googlecode/android/wifi/tether/system/CoreTask$WpaSupplicant;->exists()Z

    move-result v26

    if-eqz v26, :cond_4

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->wpasupplicant:Lcom/googlecode/android/wifi/tether/system/CoreTask$WpaSupplicant;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/googlecode/android/wifi/tether/system/CoreTask$WpaSupplicant;->remove()Z

    goto/16 :goto_7

    .line 421
    .restart local v10       #lanparts:[Ljava/lang/String;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->configuration:Lcom/googlecode/android/wifi/tether/system/Configuration;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/googlecode/android/wifi/tether/system/Configuration;->getHostapdTemplate()Ljava/lang/String;

    move-result-object v26

    const-string v27, "mini"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1c

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->hostapdcfg:Lcom/googlecode/android/wifi/tether/system/CoreTask$HostapdConfig;

    move-object/from16 v26, v0

    const-string v27, "ssid"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/android/wifi/tether/system/CoreTask$HostapdConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->hostapdcfg:Lcom/googlecode/android/wifi/tether/system/CoreTask$HostapdConfig;

    move-object/from16 v26, v0

    const-string v27, "channel_num"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v5}, Lcom/googlecode/android/wifi/tether/system/CoreTask$HostapdConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    if-eqz v7, :cond_6

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->hostapdcfg:Lcom/googlecode/android/wifi/tether/system/CoreTask$HostapdConfig;

    move-object/from16 v26, v0

    const-string v27, "wpa"

    const-string v28, "2"

    invoke-virtual/range {v26 .. v28}, Lcom/googlecode/android/wifi/tether/system/CoreTask$HostapdConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->hostapdcfg:Lcom/googlecode/android/wifi/tether/system/CoreTask$HostapdConfig;

    move-object/from16 v26, v0

    const-string v27, "wpa_key_mgmt"

    const-string v28, "WPA-PSK"

    invoke-virtual/range {v26 .. v28}, Lcom/googlecode/android/wifi/tether/system/CoreTask$HostapdConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->hostapdcfg:Lcom/googlecode/android/wifi/tether/system/CoreTask$HostapdConfig;

    move-object/from16 v26, v0

    const-string v27, "wpa_pairwise"

    const-string v28, "CCMP"

    invoke-virtual/range {v26 .. v28}, Lcom/googlecode/android/wifi/tether/system/CoreTask$HostapdConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->hostapdcfg:Lcom/googlecode/android/wifi/tether/system/CoreTask$HostapdConfig;

    move-object/from16 v26, v0

    const-string v27, "wpa_passphrase"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/android/wifi/tether/system/CoreTask$HostapdConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 432
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->configuration:Lcom/googlecode/android/wifi/tether/system/Configuration;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/googlecode/android/wifi/tether/system/Configuration;->getHostapdTemplate()Ljava/lang/String;

    move-result-object v26

    const-string v27, "tiap"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_6

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->hostapdcfg:Lcom/googlecode/android/wifi/tether/system/CoreTask$HostapdConfig;

    move-object/from16 v26, v0

    const-string v27, "ssid"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/android/wifi/tether/system/CoreTask$HostapdConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->hostapdcfg:Lcom/googlecode/android/wifi/tether/system/CoreTask$HostapdConfig;

    move-object/from16 v26, v0

    const-string v27, "channel"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v5}, Lcom/googlecode/android/wifi/tether/system/CoreTask$HostapdConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->hostapdcfg:Lcom/googlecode/android/wifi/tether/system/CoreTask$HostapdConfig;

    move-object/from16 v26, v0

    const-string v27, "interface"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->configuration:Lcom/googlecode/android/wifi/tether/system/Configuration;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/googlecode/android/wifi/tether/system/Configuration;->getHostapdInterface()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Lcom/googlecode/android/wifi/tether/system/CoreTask$HostapdConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    if-eqz v7, :cond_6

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->hostapdcfg:Lcom/googlecode/android/wifi/tether/system/CoreTask$HostapdConfig;

    move-object/from16 v26, v0

    const-string v27, "wpa"

    const-string v28, "2"

    invoke-virtual/range {v26 .. v28}, Lcom/googlecode/android/wifi/tether/system/CoreTask$HostapdConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->hostapdcfg:Lcom/googlecode/android/wifi/tether/system/CoreTask$HostapdConfig;

    move-object/from16 v26, v0

    const-string v27, "wpa_pairwise"

    const-string v28, "CCMP"

    invoke-virtual/range {v26 .. v28}, Lcom/googlecode/android/wifi/tether/system/CoreTask$HostapdConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->hostapdcfg:Lcom/googlecode/android/wifi/tether/system/CoreTask$HostapdConfig;

    move-object/from16 v26, v0

    const-string v27, "rsn_pairwise"

    const-string v28, "CCMP"

    invoke-virtual/range {v26 .. v28}, Lcom/googlecode/android/wifi/tether/system/CoreTask$HostapdConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->hostapdcfg:Lcom/googlecode/android/wifi/tether/system/CoreTask$HostapdConfig;

    move-object/from16 v26, v0

    const-string v27, "wpa_passphrase"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/android/wifi/tether/system/CoreTask$HostapdConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 454
    :catch_0
    move-exception v6

    .line 455
    .local v6, e:Ljava/io/IOException;
    const-string v26, "TETHER -> TetherApplication"

    const-string v27, "Unable to update whitelist-file!"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_9

    .line 461
    .end local v6           #e:Ljava/io/IOException;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->whitelist:Lcom/googlecode/android/wifi/tether/system/CoreTask$Whitelist;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/googlecode/android/wifi/tether/system/CoreTask$Whitelist;->exists()Z

    move-result v26

    if-eqz v26, :cond_8

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->whitelist:Lcom/googlecode/android/wifi/tether/system/CoreTask$Whitelist;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/googlecode/android/wifi/tether/system/CoreTask$Whitelist;->remove()Z

    goto/16 :goto_9

    .line 474
    :cond_1e
    new-instance v21, Ljava/io/File;

    new-instance v26, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->coretask:Lcom/googlecode/android/wifi/tether/system/CoreTask;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/system/CoreTask;->DATA_FILE_PATH:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v27, "/conf/tiwlan.ini"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 475
    .local v21, tiwlanconf:Ljava/io/File;
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v26

    if-eqz v26, :cond_9

    .line 476
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->delete()Z

    goto/16 :goto_a
.end method

.method public updateDeviceParameters()V
    .locals 4

    .prologue
    .line 206
    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    const-string v2, "devicepref"

    const-string v3, "auto"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, device:Ljava/lang/String;
    const-string v1, "auto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    new-instance v1, Lcom/googlecode/android/wifi/tether/system/Configuration;

    invoke-direct {v1}, Lcom/googlecode/android/wifi/tether/system/Configuration;-><init>()V

    iput-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->configuration:Lcom/googlecode/android/wifi/tether/system/Configuration;

    .line 213
    :goto_0
    return-void

    .line 211
    :cond_0
    new-instance v1, Lcom/googlecode/android/wifi/tether/system/Configuration;

    invoke-direct {v1, v0}, Lcom/googlecode/android/wifi/tether/system/Configuration;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherApplication;->configuration:Lcom/googlecode/android/wifi/tether/system/Configuration;

    goto :goto_0
.end method
