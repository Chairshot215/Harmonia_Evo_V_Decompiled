.class public Lcom/s0up/goomanager/RomUpdateBootReciever;
.super Landroid/content/BroadcastReceiver;
.source "RomUpdateBootReciever.java"


# static fields
.field public static final PREFERENCES_FILE:Ljava/lang/String; = "goomanager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static checkForGappsUpdate()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 127
    invoke-static {}, Lcom/s0up/goomanager/RomUpdateBootReciever;->getGappsPlatform()Ljava/lang/String;

    move-result-object v2

    .line 128
    .local v2, mGooAddonPlatform:Ljava/lang/String;
    invoke-static {}, Lcom/s0up/goomanager/RomUpdateBootReciever;->getGappsVersion()Ljava/lang/String;

    move-result-object v3

    .line 130
    .local v3, mGooAddonVersion:Ljava/lang/String;
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 131
    :cond_0
    const-string v5, "GooManager"

    .line 132
    const-string v6, "GooManager updates are not supported for this gapps package. Aborting checks..."

    .line 131
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const-string v1, "no_gapps_props"

    .line 161
    :goto_0
    return-object v1

    .line 136
    :cond_1
    new-instance v4, Lcom/s0up/goomanager/RomUpdateBootReciever$1;

    invoke-direct {v4, v2, v3}, Lcom/s0up/goomanager/RomUpdateBootReciever$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .local v4, webReq:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/String;>;"
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Void;

    invoke-virtual {v4, v6}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 152
    const/4 v1, 0x0

    .line 154
    .local v1, jsonResult:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v4}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #jsonResult:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .restart local v1       #jsonResult:Ljava/lang/String;
    goto :goto_0

    .line 155
    .end local v1           #jsonResult:Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/InterruptedException;
    move-object v1, v5

    .line 156
    goto :goto_0

    .line 157
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .local v0, e:Ljava/util/concurrent/ExecutionException;
    move-object v1, v5

    .line 158
    goto :goto_0
.end method

.method public static checkForUpdate()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 171
    invoke-static {}, Lcom/s0up/goomanager/RomUpdateBootReciever;->getDeveloperId()Ljava/lang/String;

    move-result-object v3

    .line 172
    .local v3, mGooDeveloperId:Ljava/lang/String;
    invoke-static {}, Lcom/s0up/goomanager/RomUpdateBootReciever;->getBoardName()Ljava/lang/String;

    move-result-object v2

    .line 173
    .local v2, mGooBoardName:Ljava/lang/String;
    invoke-static {}, Lcom/s0up/goomanager/RomUpdateBootReciever;->getRomName()Ljava/lang/String;

    move-result-object v4

    .line 174
    .local v4, mGooRomName:Ljava/lang/String;
    invoke-static {}, Lcom/s0up/goomanager/RomUpdateBootReciever;->getRomVersion()Ljava/lang/String;

    move-result-object v5

    .line 184
    .local v5, mGooRomVersion:Ljava/lang/String;
    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    if-eqz v4, :cond_0

    .line 185
    if-eqz v5, :cond_0

    const-string v8, ""

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, ""

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 186
    const-string v8, ""

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 187
    :cond_0
    const-string v7, "GooManager"

    .line 188
    const-string v8, "GooManager updates are not supported in this rom. Aborting checks..."

    .line 187
    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const-string v1, "no_props"

    .line 216
    :goto_0
    return-object v1

    .line 192
    :cond_1
    new-instance v6, Lcom/s0up/goomanager/RomUpdateBootReciever$2;

    invoke-direct {v6, v3, v2, v4, v5}, Lcom/s0up/goomanager/RomUpdateBootReciever$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    .local v6, webReq:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/String;>;"
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Void;

    invoke-virtual {v6, v8}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 207
    const/4 v1, 0x0

    .line 209
    .local v1, jsonResult:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v6}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #jsonResult:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .restart local v1       #jsonResult:Ljava/lang/String;
    goto :goto_0

    .line 210
    .end local v1           #jsonResult:Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/InterruptedException;
    move-object v1, v7

    .line 211
    goto :goto_0

    .line 212
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .local v0, e:Ljava/util/concurrent/ExecutionException;
    move-object v1, v7

    .line 213
    goto :goto_0
.end method

.method public static getBoardName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 113
    const-string v0, "ro.product.device"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/s0up/goomanager/RomUpdateBootReciever;->getPropertyValues(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeveloperId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    const-string v0, "ro.goo.developerid"

    const-string v1, "ro.rommanager.developerid"

    invoke-static {v0, v1}, Lcom/s0up/goomanager/RomUpdateBootReciever;->getPropertyValues(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getGappsPlatform()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    const-string v0, "ro.addon.platform"

    invoke-static {v0}, Lcom/s0up/goomanager/RomUpdateBootReciever;->getGappsPropertyValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getGappsPropertyValues(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "property"

    .prologue
    const/4 v5, 0x0

    .line 73
    new-instance v2, Ljava/io/File;

    const-string v6, "/system/etc/g.prop"

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 74
    .local v2, gProp:Ljava/io/File;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 76
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 79
    .local v0, br:Ljava/io/BufferedReader;
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, line:Ljava/lang/String;
    if-nez v3, :cond_2

    .line 91
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #line:Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v5

    .line 80
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v3       #line:Ljava/lang/String;
    :cond_2
    invoke-virtual {v3, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 81
    const-string v6, "="

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 82
    .local v4, parts:[Ljava/lang/String;
    const/4 v6, 0x1

    aget-object v5, v4, v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 86
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #line:Ljava/lang/String;
    .end local v4           #parts:[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 88
    .local v1, e:Ljava/io/IOException;
    goto :goto_0
.end method

.method public static getGappsVersion()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 97
    const-string v2, "ro.addon.version"

    invoke-static {v2}, Lcom/s0up/goomanager/RomUpdateBootReciever;->getGappsPropertyValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, version:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 99
    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 100
    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, parts:[Ljava/lang/String;
    aget-object v2, v0, v4

    if-eqz v2, :cond_0

    aget-object v2, v0, v4

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 102
    aget-object v2, v0, v4

    .line 106
    .end local v0           #parts:[Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static getPropertyValues(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "primaryProperty"
    .parameter "secondaryProperty"

    .prologue
    .line 50
    const/4 v3, 0x0

    .line 51
    .local v3, output:Ljava/lang/String;
    const/4 v2, 0x0

    .line 53
    .local v2, input:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getprop "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 54
    .local v4, p:Ljava/lang/Process;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 55
    .local v0, br:Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 56
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 57
    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V

    .line 58
    if-eqz v2, :cond_1

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 59
    move-object v3, v2

    :cond_0
    :goto_0
    move-object v5, v3

    .line 70
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v4           #p:Ljava/lang/Process;
    :goto_1
    return-object v5

    .line 60
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v4       #p:Ljava/lang/Process;
    :cond_1
    if-eqz p1, :cond_0

    .line 61
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getprop "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 62
    new-instance v0, Ljava/io/BufferedReader;

    .end local v0           #br:Ljava/io/BufferedReader;
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 63
    .restart local v0       #br:Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 64
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 65
    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 67
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v4           #p:Ljava/lang/Process;
    :catch_0
    move-exception v1

    .line 68
    .local v1, e:Ljava/io/IOException;
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static getRomName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 117
    const-string v0, "ro.goo.rom"

    const-string v1, "ro.rommanager.developerid"

    invoke-static {v0, v1}, Lcom/s0up/goomanager/RomUpdateBootReciever;->getPropertyValues(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRomVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 121
    const-string v0, "ro.goo.version"

    const-string v1, "ro.build.date.utc"

    invoke-static {v0, v1}, Lcom/s0up/goomanager/RomUpdateBootReciever;->getPropertyValues(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 27
    const-string v2, "goomanager"

    invoke-virtual {p1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 30
    .local v9, preferences:Landroid/content/SharedPreferences;
    const-string v2, "check_for_updates"

    invoke-interface {v9, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 34
    :cond_1
    const-string v2, "update_hours_interval"

    const/16 v3, 0xc

    invoke-interface {v9, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 35
    .local v8, hrInterval:I
    if-lez v8, :cond_0

    .line 36
    new-instance v7, Landroid/content/Intent;

    const-class v2, Lcom/s0up/goomanager/RomUpdateReciever;

    invoke-direct {v7, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    .local v7, checkForUpdatesIntent:Landroid/content/Intent;
    invoke-static {p1, v4, v7, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 40
    .local v6, pendingIntent:Landroid/app/PendingIntent;
    const-string v2, "alarm"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 39
    check-cast v0, Landroid/app/AlarmManager;

    .line 41
    .local v0, alarmManager:Landroid/app/AlarmManager;
    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 43
    const-wide/32 v4, 0x36ee80

    int-to-long v10, v8

    mul-long/2addr v4, v10

    .line 42
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method
