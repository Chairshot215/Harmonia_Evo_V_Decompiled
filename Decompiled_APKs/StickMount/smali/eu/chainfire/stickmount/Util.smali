.class public Leu/chainfire/stickmount/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "StickMount"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static executeSU(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .parameter "command"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 225
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 226
    .local v0, commands:[Ljava/lang/String;
    invoke-static {v0}, Leu/chainfire/stickmount/Util;->executeSU([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static executeSU(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 230
    .local p0, commands:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    .line 231
    .local v0, cmds:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    .line 234
    invoke-static {v0}, Leu/chainfire/stickmount/Util;->executeSU([Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 232
    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v1

    .line 231
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static executeSU([Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .parameter "commands"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 238
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 242
    .local v6, res:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    const-string v10, "su"

    invoke-virtual {v9, v10}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 243
    .local v4, process:Ljava/lang/Process;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {v4}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    invoke-direct {v1, v9}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 244
    .local v1, os:Ljava/io/DataOutputStream;
    new-instance v3, Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 245
    .local v3, osRes:Ljava/io/DataInputStream;
    new-instance v2, Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 246
    .local v2, osError:Ljava/io/DataInputStream;
    array-length v10, p0

    const/4 v9, 0x0

    :goto_0
    if-lt v9, v10, :cond_1

    .line 251
    const-string v9, "exit\n"

    invoke-virtual {v1, v9}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 252
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 254
    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I

    .line 255
    invoke-virtual {v4}, Ljava/lang/Process;->exitValue()I

    move-result v9

    const/16 v10, 0xff

    if-ne v9, v10, :cond_3

    move-object v6, v8

    .line 277
    .end local v1           #os:Ljava/io/DataOutputStream;
    .end local v2           #osError:Ljava/io/DataInputStream;
    .end local v3           #osRes:Ljava/io/DataInputStream;
    .end local v4           #process:Ljava/lang/Process;
    .end local v6           #res:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_1
    return-object v6

    .line 246
    .restart local v1       #os:Ljava/io/DataOutputStream;
    .restart local v2       #osError:Ljava/io/DataInputStream;
    .restart local v3       #osRes:Ljava/io/DataInputStream;
    .restart local v4       #process:Ljava/lang/Process;
    .restart local v6       #res:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    aget-object v7, p0, v9

    .line 247
    .local v7, single:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "[SU+] "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Leu/chainfire/stickmount/Util;->log(Ljava/lang/String;)V

    .line 248
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 246
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 261
    .end local v7           #single:Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 262
    .local v5, read:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "[SU-] "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Leu/chainfire/stickmount/Util;->log(Ljava/lang/String;)V

    .line 260
    .end local v5           #read:Ljava/lang/String;
    :cond_3
    invoke-virtual {v2}, Ljava/io/DataInputStream;->available()I

    move-result v9

    if-gtz v9, :cond_2

    .line 264
    :goto_2
    invoke-virtual {v3}, Ljava/io/DataInputStream;->available()I

    move-result v9

    if-lez v9, :cond_0

    .line 265
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 266
    .restart local v5       #read:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "[SU*] "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Leu/chainfire/stickmount/Util;->log(Ljava/lang/String;)V

    .line 267
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 269
    .end local v1           #os:Ljava/io/DataOutputStream;
    .end local v2           #osError:Ljava/io/DataInputStream;
    .end local v3           #osRes:Ljava/io/DataInputStream;
    .end local v4           #process:Ljava/lang/Process;
    .end local v5           #read:Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    move-object v6, v8

    .line 271
    goto :goto_1

    .line 272
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .local v0, e:Ljava/lang/InterruptedException;
    move-object v6, v8

    .line 274
    goto :goto_1
.end method

.method public static fileList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .parameter "path"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .local v3, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    .local v2, p:Ljava/io/File;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 33
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 34
    .local v1, list:[Ljava/io/File;
    if-eqz v1, :cond_0

    .line 35
    array-length v5, v1

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v5, :cond_1

    .line 41
    .end local v1           #list:[Ljava/io/File;
    :cond_0
    return-object v3

    .line 35
    .restart local v1       #list:[Ljava/io/File;
    :cond_1
    aget-object v0, v1, v4

    .line 36
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static getMounts()Ljava/util/ArrayList;
    .locals 1
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
    .line 61
    const-string v0, "/mnt/sdcard/usbStorage"

    invoke-static {v0}, Leu/chainfire/stickmount/Util;->fileList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getNewDeviceCount()I
    .locals 7

    .prologue
    .line 45
    const/4 v3, 0x0

    .line 47
    .local v3, result:I
    const-string v4, "/dev/block"

    invoke-static {v4}, Leu/chainfire/stickmount/Util;->fileList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 48
    .local v1, list_block:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "/mnt/sdcard/usbStorage"

    invoke-static {v4}, Leu/chainfire/stickmount/Util;->fileList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 49
    .local v2, list_storage:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 57
    return v3

    .line 49
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 50
    .local v0, f:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    :cond_2
    const-string v5, "sd"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 51
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 52
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static log(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 26
    return-void
.end method

.method public static mountDevices(Landroid/content/Context;Z)V
    .locals 24
    .parameter "context"
    .parameter "unmountAll"

    .prologue
    .line 91
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 93
    .local v16, prefs:Landroid/content/SharedPreferences;
    const-string v19, "/dev/block"

    invoke-static/range {v19 .. v19}, Leu/chainfire/stickmount/Util;->fileList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 94
    .local v10, list_block:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Leu/chainfire/stickmount/Util;->getMounts()Ljava/util/ArrayList;

    move-result-object v11

    .line 95
    .local v11, list_storage:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v5, commands:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v17, ""

    .line 99
    .local v17, s:Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v4, checked:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    if-nez v17, :cond_7

    .line 140
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_1
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_12

    .line 150
    if-nez p1, :cond_3

    .line 151
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_2
    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_14

    .line 186
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_4

    .line 187
    invoke-static {v5}, Leu/chainfire/stickmount/Util;->executeSU(Ljava/util/List;)Ljava/util/List;

    .line 191
    :cond_4
    invoke-static {}, Leu/chainfire/stickmount/Util;->getMounts()Ljava/util/ArrayList;

    move-result-object v11

    .line 192
    const-string v19, "show_toast_notifications"

    const/16 v20, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 193
    const-string v12, ""

    .line 195
    .local v12, mounts:Ljava/lang/String;
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_18

    .line 198
    const-string v19, ""

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 199
    const-string v12, "\nNone"

    .line 203
    :cond_5
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "Active mounts: \n"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0xa

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 203
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 202
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Leu/chainfire/stickmount/Util;->notifyUser(Landroid/content/Context;Ljava/lang/String;)V

    .line 210
    .end local v12           #mounts:Ljava/lang/String;
    :cond_6
    const-string v19, "notification"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/NotificationManager;

    .line 211
    .local v13, nm:Landroid/app/NotificationManager;
    const-string v19, "show_statusbar_notifications"

    const/16 v20, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    if-eqz v19, :cond_19

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_19

    .line 213
    new-instance v14, Landroid/app/Notification;

    const v19, 0x7f020001

    const-string v20, "Mass storage device mounted"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    move/from16 v0, v19

    move-object/from16 v1, v20

    move-wide/from16 v2, v21

    invoke-direct {v14, v0, v1, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 214
    .local v14, not:Landroid/app/Notification;
    new-instance v15, Landroid/content/Intent;

    const-string v19, "eu.chainfire.stickmount.unmountall"

    move-object/from16 v0, v19

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 215
    .local v15, notIntent:Landroid/content/Intent;
    const/16 v19, 0x0

    const/16 v20, 0x30

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v15, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v18

    .line 216
    .local v18, unmountIntent:Landroid/app/PendingIntent;
    const-string v19, "StickMount"

    const-string v20, "Tap to unmount mass storage devices"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v18

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 217
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v13, v0, v14}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 222
    .end local v14           #not:Landroid/app/Notification;
    .end local v15           #notIntent:Landroid/content/Intent;
    .end local v18           #unmountIntent:Landroid/app/PendingIntent;
    :goto_3
    return-void

    .line 101
    .end local v13           #nm:Landroid/app/NotificationManager;
    :cond_7
    const/16 v17, 0x0

    .line 102
    const/4 v9, 0x0

    .local v9, i:I
    :goto_4
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-lt v9, v0, :cond_b

    .line 108
    :goto_5
    if-nez v17, :cond_8

    .line 109
    const/4 v9, 0x0

    :goto_6
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-lt v9, v0, :cond_d

    .line 117
    :cond_8
    :goto_7
    if-eqz v17, :cond_9

    .line 118
    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_f

    .line 119
    const/16 v17, 0x0

    .line 125
    :cond_9
    :goto_8
    if-eqz v17, :cond_0

    .line 126
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v19

    add-int/lit8 v9, v19, -0x1

    :goto_9
    if-gez v9, :cond_10

    .line 131
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v19

    add-int/lit8 v9, v19, -0x1

    :goto_a
    if-ltz v9, :cond_0

    .line 132
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 133
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 131
    :cond_a
    add-int/lit8 v9, v9, -0x1

    goto :goto_a

    .line 103
    :cond_b
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    .line 104
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    const/16 v20, 0x0

    const/16 v21, 0x3

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 105
    goto :goto_5

    .line 102
    :cond_c
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 110
    :cond_d
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    .line 111
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    const/16 v20, 0x0

    const/16 v21, 0x3

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 112
    goto :goto_7

    .line 109
    :cond_e
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_6

    .line 121
    :cond_f
    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 127
    :cond_10
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_11

    .line 128
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 126
    :cond_11
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_9

    .line 140
    .end local v9           #i:I
    :cond_12
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 141
    .local v8, f:Ljava/lang/String;
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v20

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_13

    if-eqz p1, :cond_1

    .line 142
    :cond_13
    const-string v20, "Removing: %s"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v8, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Leu/chainfire/stickmount/Util;->log(Ljava/lang/String;)V

    .line 143
    const-string v20, "toolbox umount /mnt/sdcard/usbStorage/%s"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v8, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    const-string v20, "toolbox rmdir /mnt/sdcard/usbStorage/%s"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v8, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    const-string v20, "toolbox rmdir /mnt/sdcard/usbStorage"

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 151
    .end local v8           #f:Ljava/lang/String;
    :cond_14
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 152
    .restart local v8       #f:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_15

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    :cond_15
    const-string v20, "sd"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 153
    const-string v20, "Adding: %s"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v8, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Leu/chainfire/stickmount/Util;->log(Ljava/lang/String;)V

    .line 155
    const-string v7, ""

    .line 157
    .local v7, extraopts:Ljava/lang/String;
    const-string v20, "mount_cp"

    const-string v21, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 158
    .local v6, cp:Ljava/lang/String;
    if-eqz v6, :cond_16

    const-string v20, ""

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_16

    .line 159
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, ",codepage="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 162
    :cond_16
    const-string v20, "mount_utf8"

    const/16 v21, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    if-eqz v20, :cond_17

    .line 163
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, ",iocharset=utf8"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 166
    :cond_17
    const-string v20, "mkdir /mnt/sdcard/usbStorage"

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    const-string v20, "mkdir /mnt/sdcard/usbStorage/%s"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v8, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    const-string v20, "toolbox mount -t vfat -o rw,nosuid,nodev,umask=0,dmask=0,fmask=0%s /dev/block/%s /sdcard/usbStorage/%s"

    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v7, v21, v22

    const/16 v22, 0x1

    aput-object v8, v21, v22

    const/16 v22, 0x2

    aput-object v8, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    const-string v20, "toolbox mount -t vfat -o rw,nosuid,nodev,umask=0,dmask=0,fmask=0 /dev/block/%s /sdcard/usbStorage/%s"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v8, v21, v22

    const/16 v22, 0x1

    aput-object v8, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    const-string v20, "toolbox mount -t ext4 -o rw,nosuid,nodev,umask=0,dmask=0,fmask=0%s /dev/block/%s /sdcard/usbStorage/%s"

    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v7, v21, v22

    const/16 v22, 0x1

    aput-object v8, v21, v22

    const/16 v22, 0x2

    aput-object v8, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    const-string v20, "toolbox mount -t ext4 -o rw,nosuid,nodev,umask=0,dmask=0,fmask=0 /dev/block/%s /sdcard/usbStorage/%s"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v8, v21, v22

    const/16 v22, 0x1

    aput-object v8, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    const-string v20, "toolbox mount -t ext3 -o rw,nosuid,nodev,umask=0,dmask=0,fmask=0%s /dev/block/%s /sdcard/usbStorage/%s"

    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v7, v21, v22

    const/16 v22, 0x1

    aput-object v8, v21, v22

    const/16 v22, 0x2

    aput-object v8, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    const-string v20, "toolbox mount -t ext3 -o rw,nosuid,nodev,umask=0,dmask=0,fmask=0 /dev/block/%s /sdcard/usbStorage/%s"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v8, v21, v22

    const/16 v22, 0x1

    aput-object v8, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    const-string v20, "toolbox mount -t ext2 -o rw,nosuid,nodev,umask=0,dmask=0,fmask=0%s /dev/block/%s /sdcard/usbStorage/%s"

    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v7, v21, v22

    const/16 v22, 0x1

    aput-object v8, v21, v22

    const/16 v22, 0x2

    aput-object v8, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    const-string v20, "toolbox mount -t ext2 -o rw,nosuid,nodev,umask=0,dmask=0,fmask=0 /dev/block/%s /sdcard/usbStorage/%s"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v8, v21, v22

    const/16 v22, 0x1

    aput-object v8, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    const-string v20, "insmod ntfs.ko"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    const-string v20, "insmod fuse.ko"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    const-string v20, "toolbox mount -t ntfs -o rw,nosuid,nodev,umask=0,dmask=0,fmask=0%s /dev/block/%s /sdcard/usbStorage/%s"

    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v7, v21, v22

    const/16 v22, 0x1

    aput-object v8, v21, v22

    const/16 v22, 0x2

    aput-object v8, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    const-string v20, "toolbox mount -t ntfs -o rw,nosuid,nodev,umask=0,dmask=0,fmask=0 /dev/block/%s /sdcard/usbStorage/%s"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v8, v21, v22

    const/16 v22, 0x1

    aput-object v8, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    const-string v20, "ntfs-3g /dev/block/%s /sdcard/usbStorage/%s"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v8, v21, v22

    const/16 v22, 0x1

    aput-object v8, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 195
    .end local v6           #cp:Ljava/lang/String;
    .end local v7           #extraopts:Ljava/lang/String;
    .end local v8           #f:Ljava/lang/String;
    .restart local v12       #mounts:Ljava/lang/String;
    :cond_18
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 196
    .restart local v8       #f:Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, "\n/sdcard/usbStorage/%s"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v8, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_2

    .line 220
    .end local v8           #f:Ljava/lang/String;
    .end local v12           #mounts:Ljava/lang/String;
    .restart local v13       #nm:Landroid/app/NotificationManager;
    :cond_19
    invoke-virtual {v13}, Landroid/app/NotificationManager;->cancelAll()V

    goto/16 :goto_3
.end method

.method public static notifyUser(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "message"

    .prologue
    const/16 v7, 0xa

    .line 65
    const-string v0, "StickMount"

    .line 67
    .local v0, APP_TITLE:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 68
    .local v4, pm:Landroid/content/pm/PackageManager;
    if-eqz v4, :cond_0

    .line 70
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 71
    .local v3, pi:Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_0

    .line 72
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " v"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 78
    .end local v3           #pi:Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    instance-of v5, p0, Leu/chainfire/stickmount/StickMountApplication;

    if-eqz v5, :cond_1

    .line 79
    move-object v1, p0

    .line 80
    .local v1, c:Landroid/content/Context;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " - (C) 2011/12 - Chainfire"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, m:Ljava/lang/String;
    check-cast p0, Leu/chainfire/stickmount/StickMountApplication;

    .end local p0
    sget-object v5, Leu/chainfire/stickmount/StickMountApplication;->InternalHandler:Landroid/os/Handler;

    new-instance v6, Leu/chainfire/stickmount/Util$1;

    invoke-direct {v6, v1, v2}, Leu/chainfire/stickmount/Util$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 88
    .end local v1           #c:Landroid/content/Context;
    .end local v2           #m:Ljava/lang/String;
    :cond_1
    return-void

    .line 74
    .restart local p0
    :catch_0
    move-exception v5

    goto :goto_0
.end method
