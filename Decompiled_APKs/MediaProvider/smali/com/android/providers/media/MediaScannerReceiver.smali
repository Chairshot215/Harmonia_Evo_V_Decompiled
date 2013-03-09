.class public Lcom/android/providers/media/MediaScannerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MediaScannerReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaScannerReceiver"

.field public static final mbMyLog:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private scan(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "volume"

    .prologue
    .line 201
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 202
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "volume"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/providers/media/MediaScannerService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 205
    return-void
.end method

.method private scan2(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "volume"
    .parameter "action"

    .prologue
    .line 175
    const-string v4, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 176
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->stopScan()V

    .line 180
    :cond_0
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->getVirtualRemovableStorageDirectory()Ljava/lang/String;

    move-result-object v2

    .line 182
    .local v2, virtual:Ljava/lang/String;
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->getRemovableStorageDirectory()Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, path:Ljava/lang/String;
    invoke-static {v1}, Landroid/os/FileUtils;->getFatVolumeId(Ljava/lang/String;)I

    move-result v3

    .line 191
    .local v3, volumeID:I
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 192
    .local v0, args:Landroid/os/Bundle;
    const-string v4, "volume"

    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v4, "action"

    invoke-virtual {v0, v4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/android/providers/media/MediaScannerService;

    invoke-direct {v4, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v4, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 197
    return-void
.end method

.method private scanFile(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "path"

    .prologue
    .line 208
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 209
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "filepath"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/providers/media/MediaScannerService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 212
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 47
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    .line 50
    .local v8, uri:Landroid/net/Uri;
    const-string v11, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 52
    const-string v11, "internal"

    invoke-direct {p0, p1, v11}, Lcom/android/providers/media/MediaScannerReceiver;->scan(Landroid/content/Context;Ljava/lang/String;)V

    .line 56
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    const-string v12, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 58
    new-instance v7, Landroid/content/Intent;

    const-class v11, Lcom/android/providers/media/MediaDBMigrationService;

    invoke-direct {v7, p1, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 59
    .local v7, upgradeIntent:Landroid/content/Intent;
    invoke-virtual {p1, v7}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 61
    .end local v7           #upgradeIntent:Landroid/content/Intent;
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    const-string v12, "com.htc.providers.media.ID_UPDATE_REQUEST"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 63
    const-string v11, "media_type"

    const/4 v12, 0x2

    invoke-virtual {p2, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 68
    .local v6, type:I
    const-string v11, "category"

    invoke-virtual {p2, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, category:Ljava/lang/String;
    const-string v11, "media_ids_req"

    invoke-virtual {p2, v11}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 71
    .local v9, uriList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    new-instance v7, Landroid/content/Intent;

    const-class v11, Lcom/android/providers/media/MediaDBMigrationService;

    invoke-direct {v7, p1, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 72
    .restart local v7       #upgradeIntent:Landroid/content/Intent;
    const-string v11, "com.htc.providers.media.ID_UPDATE_REQUEST"

    invoke-virtual {v7, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    const-string v11, "media_type"

    invoke-virtual {v7, v11, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 74
    const-string v11, "media_ids_req"

    invoke-virtual {v7, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 75
    const-string v11, "category"

    invoke-virtual {v7, v11, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    invoke-virtual {p1, v7}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 169
    .end local v1           #category:Ljava/lang/String;
    .end local v6           #type:I
    .end local v7           #upgradeIntent:Landroid/content/Intent;
    .end local v9           #uriList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_2
    :goto_0
    return-void

    .line 83
    :cond_3
    if-eqz v8, :cond_2

    .line 86
    invoke-virtual {v8}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 89
    .local v4, path:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, externalStoragePath:Ljava/lang/String;
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->getRemovableStorageDirectory()Ljava/lang/String;

    move-result-object v5

    .line 99
    .local v5, removableStoragePath:Ljava/lang/String;
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->getUsbStorageDirectory()Ljava/lang/String;

    move-result-object v3

    .line 101
    .local v3, extusb:Ljava/lang/String;
    invoke-static {v5}, Landroid/os/FileUtils;->getFatVolumeId(Ljava/lang/String;)I

    move-result v10

    .line 108
    .local v10, volumeID:I
    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v11

    const-string v12, "file"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 116
    const-string v11, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 119
    const-string v11, "external"

    invoke-direct {p0, p1, v11}, Lcom/android/providers/media/MediaScannerReceiver;->scan(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 125
    :cond_4
    const-string v11, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    if-eqz v4, :cond_5

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 127
    invoke-direct {p0, p1, v4}, Lcom/android/providers/media/MediaScannerReceiver;->scanFile(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 143
    :cond_5
    const-string v11, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_6

    .line 145
    const-string v11, "exdsdcard"

    invoke-direct {p0, p1, v11, v0}, Lcom/android/providers/media/MediaScannerReceiver;->scan2(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 146
    :cond_6
    const-string v11, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_7

    .line 148
    const-string v11, "exdsdcard"

    invoke-direct {p0, p1, v11, v0}, Lcom/android/providers/media/MediaScannerReceiver;->scan2(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 160
    :cond_7
    const-string v11, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    if-eqz v4, :cond_8

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 162
    const-string v11, "exdusb"

    invoke-direct {p0, p1, v11}, Lcom/android/providers/media/MediaScannerReceiver;->scan(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 163
    :cond_8
    const-string v11, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    if-eqz v4, :cond_2

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 165
    const-string v11, "exdusb"

    invoke-direct {p0, p1, v11}, Lcom/android/providers/media/MediaScannerReceiver;->scan(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
