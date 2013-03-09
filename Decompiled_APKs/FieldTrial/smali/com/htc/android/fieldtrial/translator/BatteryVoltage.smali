.class public Lcom/htc/android/fieldtrial/translator/BatteryVoltage;
.super Lcom/htc/android/fieldtrial/translator/Translator;
.source "BatteryVoltage.java"


# instance fields
.field private BATTERY_VOLTAGE_PATH:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field mAccessible:Z

.field mFile:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/htc/android/fieldtrial/translator/Translator;-><init>()V

    .line 23
    const-string v0, "BatteryVoltage"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/translator/BatteryVoltage;->TAG:Ljava/lang/String;

    .line 24
    const-string v0, "/sys/class/power_supply/battery/batt_vol"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/translator/BatteryVoltage;->BATTERY_VOLTAGE_PATH:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/fieldtrial/translator/BatteryVoltage;->mFile:Ljava/io/File;

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/fieldtrial/translator/BatteryVoltage;->mAccessible:Z

    return-void
.end method


# virtual methods
.method public BatteryAttribute()I
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 72
    const/4 v5, 0x0

    .line 73
    .local v5, voltage:I
    const/4 v3, 0x0

    .line 74
    .local v3, fileReader:Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 76
    .local v0, bufferReader:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    iget-object v6, p0, Lcom/htc/android/fieldtrial/translator/BatteryVoltage;->mFile:Ljava/io/File;

    invoke-direct {v4, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 77
    .end local v3           #fileReader:Ljava/io/FileReader;
    .local v4, fileReader:Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 78
    .end local v0           #bufferReader:Ljava/io/BufferedReader;
    .local v1, bufferReader:Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xa

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 79
    iget-object v6, p0, Lcom/htc/android/fieldtrial/translator/BatteryVoltage;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BatteryAttribute:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    .line 85
    if-eqz v1, :cond_2

    .line 87
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v0, v1

    .end local v1           #bufferReader:Ljava/io/BufferedReader;
    .restart local v0       #bufferReader:Ljava/io/BufferedReader;
    move-object v3, v4

    .line 93
    .end local v4           #fileReader:Ljava/io/FileReader;
    .restart local v3       #fileReader:Ljava/io/FileReader;
    :cond_0
    :goto_0
    return v5

    .line 88
    .end local v0           #bufferReader:Ljava/io/BufferedReader;
    .end local v3           #fileReader:Ljava/io/FileReader;
    .restart local v1       #bufferReader:Ljava/io/BufferedReader;
    .restart local v4       #fileReader:Ljava/io/FileReader;
    :catch_0
    move-exception v2

    .line 89
    .local v2, e:Ljava/io/IOException;
    iget-object v6, p0, Lcom/htc/android/fieldtrial/translator/BatteryVoltage;->TAG:Ljava/lang/String;

    const-string v7, "isEnable() {close file to cause IOException :  %s }\n"

    new-array v8, v12, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .end local v1           #bufferReader:Ljava/io/BufferedReader;
    .restart local v0       #bufferReader:Ljava/io/BufferedReader;
    move-object v3, v4

    .line 90
    .end local v4           #fileReader:Ljava/io/FileReader;
    .restart local v3       #fileReader:Ljava/io/FileReader;
    goto :goto_0

    .line 80
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 81
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_4
    iget-object v6, p0, Lcom/htc/android/fieldtrial/translator/BatteryVoltage;->TAG:Ljava/lang/String;

    const-string v7, "isEnable() {FileNotFoundException : %s }\n"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 85
    if-eqz v0, :cond_0

    .line 87
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 88
    :catch_2
    move-exception v2

    .line 89
    .local v2, e:Ljava/io/IOException;
    iget-object v6, p0, Lcom/htc/android/fieldtrial/translator/BatteryVoltage;->TAG:Ljava/lang/String;

    const-string v7, "isEnable() {close file to cause IOException :  %s }\n"

    new-array v8, v12, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 82
    .end local v2           #e:Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 83
    .restart local v2       #e:Ljava/io/IOException;
    :goto_2
    :try_start_6
    iget-object v6, p0, Lcom/htc/android/fieldtrial/translator/BatteryVoltage;->TAG:Ljava/lang/String;

    const-string v7, "isEnable() {IOException : %s }\n"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 85
    if-eqz v0, :cond_0

    .line 87
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_0

    .line 88
    :catch_4
    move-exception v2

    .line 89
    iget-object v6, p0, Lcom/htc/android/fieldtrial/translator/BatteryVoltage;->TAG:Ljava/lang/String;

    const-string v7, "isEnable() {close file to cause IOException :  %s }\n"

    new-array v8, v12, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 85
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v0, :cond_1

    .line 87
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 90
    :cond_1
    :goto_4
    throw v6

    .line 88
    :catch_5
    move-exception v2

    .line 89
    .restart local v2       #e:Ljava/io/IOException;
    iget-object v7, p0, Lcom/htc/android/fieldtrial/translator/BatteryVoltage;->TAG:Ljava/lang/String;

    const-string v8, "isEnable() {close file to cause IOException :  %s }\n"

    new-array v9, v12, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 85
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #fileReader:Ljava/io/FileReader;
    .restart local v4       #fileReader:Ljava/io/FileReader;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4           #fileReader:Ljava/io/FileReader;
    .restart local v3       #fileReader:Ljava/io/FileReader;
    goto :goto_3

    .end local v0           #bufferReader:Ljava/io/BufferedReader;
    .end local v3           #fileReader:Ljava/io/FileReader;
    .restart local v1       #bufferReader:Ljava/io/BufferedReader;
    .restart local v4       #fileReader:Ljava/io/FileReader;
    :catchall_2
    move-exception v6

    move-object v0, v1

    .end local v1           #bufferReader:Ljava/io/BufferedReader;
    .restart local v0       #bufferReader:Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4           #fileReader:Ljava/io/FileReader;
    .restart local v3       #fileReader:Ljava/io/FileReader;
    goto :goto_3

    .line 82
    .end local v3           #fileReader:Ljava/io/FileReader;
    .restart local v4       #fileReader:Ljava/io/FileReader;
    :catch_6
    move-exception v2

    move-object v3, v4

    .end local v4           #fileReader:Ljava/io/FileReader;
    .restart local v3       #fileReader:Ljava/io/FileReader;
    goto :goto_2

    .end local v0           #bufferReader:Ljava/io/BufferedReader;
    .end local v3           #fileReader:Ljava/io/FileReader;
    .restart local v1       #bufferReader:Ljava/io/BufferedReader;
    .restart local v4       #fileReader:Ljava/io/FileReader;
    :catch_7
    move-exception v2

    move-object v0, v1

    .end local v1           #bufferReader:Ljava/io/BufferedReader;
    .restart local v0       #bufferReader:Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4           #fileReader:Ljava/io/FileReader;
    .restart local v3       #fileReader:Ljava/io/FileReader;
    goto :goto_2

    .line 80
    .end local v3           #fileReader:Ljava/io/FileReader;
    .restart local v4       #fileReader:Ljava/io/FileReader;
    :catch_8
    move-exception v2

    move-object v3, v4

    .end local v4           #fileReader:Ljava/io/FileReader;
    .restart local v3       #fileReader:Ljava/io/FileReader;
    goto/16 :goto_1

    .end local v0           #bufferReader:Ljava/io/BufferedReader;
    .end local v3           #fileReader:Ljava/io/FileReader;
    .restart local v1       #bufferReader:Ljava/io/BufferedReader;
    .restart local v4       #fileReader:Ljava/io/FileReader;
    :catch_9
    move-exception v2

    move-object v0, v1

    .end local v1           #bufferReader:Ljava/io/BufferedReader;
    .restart local v0       #bufferReader:Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4           #fileReader:Ljava/io/FileReader;
    .restart local v3       #fileReader:Ljava/io/FileReader;
    goto/16 :goto_1

    .end local v0           #bufferReader:Ljava/io/BufferedReader;
    .end local v3           #fileReader:Ljava/io/FileReader;
    .restart local v1       #bufferReader:Ljava/io/BufferedReader;
    .restart local v4       #fileReader:Ljava/io/FileReader;
    :cond_2
    move-object v0, v1

    .end local v1           #bufferReader:Ljava/io/BufferedReader;
    .restart local v0       #bufferReader:Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4           #fileReader:Ljava/io/FileReader;
    .restart local v3       #fileReader:Ljava/io/FileReader;
    goto/16 :goto_0
.end method

.method protected getSettingValue(I)Ljava/lang/String;
    .locals 5
    .parameter "itemId"

    .prologue
    .line 30
    iget-object v2, p0, Lcom/htc/android/fieldtrial/translator/BatteryVoltage;->mFile:Ljava/io/File;

    if-nez v2, :cond_0

    .line 31
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/htc/android/fieldtrial/translator/BatteryVoltage;->BATTERY_VOLTAGE_PATH:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/htc/android/fieldtrial/translator/BatteryVoltage;->mFile:Ljava/io/File;

    .line 38
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/fieldtrial/translator/BatteryVoltage;->BatteryAttribute()I

    move-result v0

    .line 39
    .local v0, voltage:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    int-to-float v3, v0

    const/high16 v4, 0x447a

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " V"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, voltageS:Ljava/lang/String;
    return-object v1
.end method

.method protected sendRequest(I)V
    .locals 3
    .parameter "itemId"

    .prologue
    .line 45
    invoke-static {}, Lcom/htc/android/fieldtrial/Port;->getSingleton()Lcom/htc/android/fieldtrial/Port;

    move-result-object v0

    const/16 v1, 0xcd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Lcom/htc/android/fieldtrial/Port;->requestDmCmdRead(IILcom/htc/android/fieldtrial/translator/Translator;)V

    .line 46
    invoke-static {}, Lcom/htc/android/fieldtrial/Port;->getSingleton()Lcom/htc/android/fieldtrial/Port;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1, p1, p0}, Lcom/htc/android/fieldtrial/Port;->requestDmCmdRead(IILcom/htc/android/fieldtrial/translator/Translator;)V

    .line 47
    return-void
.end method
