.class public abstract Lcom/android/phone/FlagSetting;
.super Ljava/lang/Object;
.source "FlagSetting.java"


# static fields
.field static final DISABLED:Ljava/lang/String; = "disable\n"

.field static final ENABLED:Ljava/lang/String; = "enable\n"

.field private static final TAG:Ljava/lang/String; = "FlagSetting"


# instance fields
.field mAccessible:Ljava/lang/Boolean;

.field mCM:Lcom/android/internal/telephony/CallManager;

.field mFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/CallManager;Ljava/lang/String;)V
    .locals 1
    .parameter "cm"
    .parameter "path"

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 32
    invoke-static {p2}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 33
    iput-object p1, p0, Lcom/android/phone/FlagSetting;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 34
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/FlagSetting;->mFile:Ljava/io/File;

    .line 35
    return-void
.end method

.method private checkAccessible()Z
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/phone/FlagSetting;->mAccessible:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/android/phone/FlagSetting;->isAccessible()Z

    move-result v0

    .line 88
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/FlagSetting;->mAccessible:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public isAccessible()Z
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 38
    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, v9}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v5, p0, Lcom/android/phone/FlagSetting;->mAccessible:Ljava/lang/Boolean;

    .line 39
    iget-object v5, p0, Lcom/android/phone/FlagSetting;->mFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 40
    const-string v5, "FlagSetting"

    const-string v6, "isAccessble() { %s file not exist.}"

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/phone/FlagSetting;->mFile:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget-object v5, p0, Lcom/android/phone/FlagSetting;->mAccessible:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 55
    :goto_0
    return v5

    .line 44
    :cond_0
    const/4 v1, 0x0

    .line 45
    .local v1, fileReader:Ljava/io/FileReader;
    const/4 v3, 0x0

    .line 47
    .local v3, fileWriter:Ljava/io/FileWriter;
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    iget-object v5, p0, Lcom/android/phone/FlagSetting;->mFile:Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 48
    .end local v1           #fileReader:Ljava/io/FileReader;
    .local v2, fileReader:Ljava/io/FileReader;
    :try_start_1
    new-instance v4, Ljava/io/FileWriter;

    iget-object v5, p0, Lcom/android/phone/FlagSetting;->mFile:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 49
    .end local v3           #fileWriter:Ljava/io/FileWriter;
    .local v4, fileWriter:Ljava/io/FileWriter;
    :try_start_2
    new-instance v5, Ljava/lang/Boolean;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v5, p0, Lcom/android/phone/FlagSetting;->mAccessible:Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v3, v4

    .end local v4           #fileWriter:Ljava/io/FileWriter;
    .restart local v3       #fileWriter:Ljava/io/FileWriter;
    move-object v1, v2

    .line 55
    .end local v2           #fileReader:Ljava/io/FileReader;
    .restart local v1       #fileReader:Ljava/io/FileReader;
    :goto_1
    iget-object v5, p0, Lcom/android/phone/FlagSetting;->mAccessible:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_2
    const-string v5, "FlagSetting"

    const-string v6, "isAccessible() { No access right to read : %s }"

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/phone/FlagSetting;->mFile:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 52
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 53
    .local v0, e:Ljava/io/IOException;
    :goto_3
    const-string v5, "FlagSetting"

    const-string v6, "isAccessible() { No access right to write : %s }\n"

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/phone/FlagSetting;->mFile:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 52
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #fileReader:Ljava/io/FileReader;
    .restart local v2       #fileReader:Ljava/io/FileReader;
    :catch_2
    move-exception v0

    move-object v1, v2

    .end local v2           #fileReader:Ljava/io/FileReader;
    .restart local v1       #fileReader:Ljava/io/FileReader;
    goto :goto_3

    .end local v1           #fileReader:Ljava/io/FileReader;
    .end local v3           #fileWriter:Ljava/io/FileWriter;
    .restart local v2       #fileReader:Ljava/io/FileReader;
    .restart local v4       #fileWriter:Ljava/io/FileWriter;
    :catch_3
    move-exception v0

    move-object v3, v4

    .end local v4           #fileWriter:Ljava/io/FileWriter;
    .restart local v3       #fileWriter:Ljava/io/FileWriter;
    move-object v1, v2

    .end local v2           #fileReader:Ljava/io/FileReader;
    .restart local v1       #fileReader:Ljava/io/FileReader;
    goto :goto_3

    .line 50
    .end local v1           #fileReader:Ljava/io/FileReader;
    .restart local v2       #fileReader:Ljava/io/FileReader;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2           #fileReader:Ljava/io/FileReader;
    .restart local v1       #fileReader:Ljava/io/FileReader;
    goto :goto_2

    .end local v1           #fileReader:Ljava/io/FileReader;
    .end local v3           #fileWriter:Ljava/io/FileWriter;
    .restart local v2       #fileReader:Ljava/io/FileReader;
    .restart local v4       #fileWriter:Ljava/io/FileWriter;
    :catch_5
    move-exception v0

    move-object v3, v4

    .end local v4           #fileWriter:Ljava/io/FileWriter;
    .restart local v3       #fileWriter:Ljava/io/FileWriter;
    move-object v1, v2

    .end local v2           #fileReader:Ljava/io/FileReader;
    .restart local v1       #fileReader:Ljava/io/FileReader;
    goto :goto_2
.end method

.method public isEnable()Z
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v6, 0x0

    .line 59
    const/4 v5, 0x0

    .line 60
    .local v5, mState:Z
    invoke-direct {p0}, Lcom/android/phone/FlagSetting;->checkAccessible()Z

    move-result v7

    if-nez v7, :cond_0

    .line 81
    :goto_0
    return v6

    .line 63
    :cond_0
    const/4 v3, 0x0

    .line 64
    .local v3, fileReader:Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 66
    .local v0, bufferReader:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    iget-object v7, p0, Lcom/android/phone/FlagSetting;->mFile:Ljava/io/File;

    invoke-direct {v4, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 67
    .end local v3           #fileReader:Ljava/io/FileReader;
    .local v4, fileReader:Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 68
    .end local v0           #bufferReader:Ljava/io/BufferedReader;
    .local v1, bufferReader:Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    const-string v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    move-result v5

    .line 74
    if-eqz v1, :cond_1

    .line 76
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    :goto_1
    move v6, v5

    .line 81
    goto :goto_0

    .line 77
    :catch_0
    move-exception v2

    .line 78
    .local v2, e:Ljava/io/IOException;
    const-string v7, "FlagSetting"

    const-string v8, "isEnable() {close file to cause IOException :  %s }\n"

    new-array v9, v12, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 69
    .end local v1           #bufferReader:Ljava/io/BufferedReader;
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #fileReader:Ljava/io/FileReader;
    .restart local v0       #bufferReader:Ljava/io/BufferedReader;
    .restart local v3       #fileReader:Ljava/io/FileReader;
    :catch_1
    move-exception v2

    .line 70
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_4
    const-string v7, "FlagSetting"

    const-string v8, "isEnable() {FileNotFoundException : %s }\n"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 74
    if-eqz v0, :cond_2

    .line 76
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .end local v2           #e:Ljava/io/FileNotFoundException;
    :cond_2
    :goto_3
    move v6, v5

    .line 81
    goto :goto_0

    .line 77
    .restart local v2       #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v2

    .line 78
    .local v2, e:Ljava/io/IOException;
    const-string v7, "FlagSetting"

    const-string v8, "isEnable() {close file to cause IOException :  %s }\n"

    new-array v9, v12, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 71
    .end local v2           #e:Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 72
    .restart local v2       #e:Ljava/io/IOException;
    :goto_4
    :try_start_6
    const-string v7, "FlagSetting"

    const-string v8, "isEnable() {IOException : %s }\n"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 74
    if-eqz v0, :cond_3

    .line 76
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :cond_3
    :goto_5
    move v6, v5

    .line 81
    goto/16 :goto_0

    .line 77
    :catch_4
    move-exception v2

    .line 78
    const-string v7, "FlagSetting"

    const-string v8, "isEnable() {close file to cause IOException :  %s }\n"

    new-array v9, v12, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 74
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_6
    if-eqz v0, :cond_4

    .line 76
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :cond_4
    :goto_7
    move v6, v5

    .line 81
    goto/16 :goto_0

    .line 77
    :catch_5
    move-exception v2

    .line 78
    .restart local v2       #e:Ljava/io/IOException;
    const-string v7, "FlagSetting"

    const-string v8, "isEnable() {close file to cause IOException :  %s }\n"

    new-array v9, v12, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 74
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #fileReader:Ljava/io/FileReader;
    .restart local v4       #fileReader:Ljava/io/FileReader;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4           #fileReader:Ljava/io/FileReader;
    .restart local v3       #fileReader:Ljava/io/FileReader;
    goto :goto_6

    .end local v0           #bufferReader:Ljava/io/BufferedReader;
    .end local v3           #fileReader:Ljava/io/FileReader;
    .restart local v1       #bufferReader:Ljava/io/BufferedReader;
    .restart local v4       #fileReader:Ljava/io/FileReader;
    :catchall_2
    move-exception v7

    move-object v0, v1

    .end local v1           #bufferReader:Ljava/io/BufferedReader;
    .restart local v0       #bufferReader:Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4           #fileReader:Ljava/io/FileReader;
    .restart local v3       #fileReader:Ljava/io/FileReader;
    goto :goto_6

    .line 71
    .end local v3           #fileReader:Ljava/io/FileReader;
    .restart local v4       #fileReader:Ljava/io/FileReader;
    :catch_6
    move-exception v2

    move-object v3, v4

    .end local v4           #fileReader:Ljava/io/FileReader;
    .restart local v3       #fileReader:Ljava/io/FileReader;
    goto :goto_4

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
    goto :goto_4

    .line 69
    .end local v3           #fileReader:Ljava/io/FileReader;
    .restart local v4       #fileReader:Ljava/io/FileReader;
    :catch_8
    move-exception v2

    move-object v3, v4

    .end local v4           #fileReader:Ljava/io/FileReader;
    .restart local v3       #fileReader:Ljava/io/FileReader;
    goto/16 :goto_2

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
    goto/16 :goto_2
.end method

.method protected postToggle(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 122
    return-void
.end method

.method public toggle(Z)V
    .locals 12
    .parameter "enable"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 92
    invoke-direct {p0}, Lcom/android/phone/FlagSetting;->checkAccessible()Z

    move-result v5

    if-nez v5, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    const/4 v3, 0x0

    .line 96
    .local v3, fileWriter:Ljava/io/FileWriter;
    const/4 v0, 0x0

    .line 99
    .local v0, bufferWriter:Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v4, Ljava/io/FileWriter;

    iget-object v5, p0, Lcom/android/phone/FlagSetting;->mFile:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 100
    .end local v3           #fileWriter:Ljava/io/FileWriter;
    .local v4, fileWriter:Ljava/io/FileWriter;
    :try_start_1
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 101
    .end local v0           #bufferWriter:Ljava/io/BufferedWriter;
    .local v1, bufferWriter:Ljava/io/BufferedWriter;
    if-eqz p1, :cond_2

    .line 102
    :try_start_2
    const-string v5, "enable\n"

    invoke-virtual {v1, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 105
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/phone/FlagSetting;->postToggle(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    .line 111
    if-eqz v1, :cond_4

    .line 113
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v0, v1

    .end local v1           #bufferWriter:Ljava/io/BufferedWriter;
    .restart local v0       #bufferWriter:Ljava/io/BufferedWriter;
    move-object v3, v4

    .line 116
    .end local v4           #fileWriter:Ljava/io/FileWriter;
    .restart local v3       #fileWriter:Ljava/io/FileWriter;
    goto :goto_0

    .line 104
    .end local v0           #bufferWriter:Ljava/io/BufferedWriter;
    .end local v3           #fileWriter:Ljava/io/FileWriter;
    .restart local v1       #bufferWriter:Ljava/io/BufferedWriter;
    .restart local v4       #fileWriter:Ljava/io/FileWriter;
    :cond_2
    :try_start_4
    const-string v5, "disable\n"

    invoke-virtual {v1, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    goto :goto_1

    .line 106
    :catch_0
    move-exception v2

    move-object v0, v1

    .end local v1           #bufferWriter:Ljava/io/BufferedWriter;
    .restart local v0       #bufferWriter:Ljava/io/BufferedWriter;
    move-object v3, v4

    .line 107
    .end local v4           #fileWriter:Ljava/io/FileWriter;
    .local v2, e:Ljava/io/FileNotFoundException;
    .restart local v3       #fileWriter:Ljava/io/FileWriter;
    :goto_2
    :try_start_5
    const-string v5, "FlagSetting"

    const-string v6, "toggle() {FileNotFoundException : %s }"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 111
    if-eqz v0, :cond_0

    .line 113
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 114
    :catch_1
    move-exception v2

    .line 115
    .local v2, e:Ljava/io/IOException;
    const-string v5, "FlagSetting"

    const-string v6, "toggle() {close file to cause IOException : %s }"

    new-array v7, v11, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 114
    .end local v0           #bufferWriter:Ljava/io/BufferedWriter;
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #fileWriter:Ljava/io/FileWriter;
    .restart local v1       #bufferWriter:Ljava/io/BufferedWriter;
    .restart local v4       #fileWriter:Ljava/io/FileWriter;
    :catch_2
    move-exception v2

    .line 115
    .restart local v2       #e:Ljava/io/IOException;
    const-string v5, "FlagSetting"

    const-string v6, "toggle() {close file to cause IOException : %s }"

    new-array v7, v11, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .end local v1           #bufferWriter:Ljava/io/BufferedWriter;
    .restart local v0       #bufferWriter:Ljava/io/BufferedWriter;
    move-object v3, v4

    .line 116
    .end local v4           #fileWriter:Ljava/io/FileWriter;
    .restart local v3       #fileWriter:Ljava/io/FileWriter;
    goto :goto_0

    .line 108
    .end local v2           #e:Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 109
    .restart local v2       #e:Ljava/io/IOException;
    :goto_3
    :try_start_7
    const-string v5, "FlagSetting"

    const-string v6, "toggle() {IOException: %s }"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 111
    if-eqz v0, :cond_0

    .line 113
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_0

    .line 114
    :catch_4
    move-exception v2

    .line 115
    const-string v5, "FlagSetting"

    const-string v6, "toggle() {close file to cause IOException : %s }"

    new-array v7, v11, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 111
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_4
    if-eqz v0, :cond_3

    .line 113
    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 116
    :cond_3
    :goto_5
    throw v5

    .line 114
    :catch_5
    move-exception v2

    .line 115
    .restart local v2       #e:Ljava/io/IOException;
    const-string v6, "FlagSetting"

    const-string v7, "toggle() {close file to cause IOException : %s }"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 111
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #fileWriter:Ljava/io/FileWriter;
    .restart local v4       #fileWriter:Ljava/io/FileWriter;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #fileWriter:Ljava/io/FileWriter;
    .restart local v3       #fileWriter:Ljava/io/FileWriter;
    goto :goto_4

    .end local v0           #bufferWriter:Ljava/io/BufferedWriter;
    .end local v3           #fileWriter:Ljava/io/FileWriter;
    .restart local v1       #bufferWriter:Ljava/io/BufferedWriter;
    .restart local v4       #fileWriter:Ljava/io/FileWriter;
    :catchall_2
    move-exception v5

    move-object v0, v1

    .end local v1           #bufferWriter:Ljava/io/BufferedWriter;
    .restart local v0       #bufferWriter:Ljava/io/BufferedWriter;
    move-object v3, v4

    .end local v4           #fileWriter:Ljava/io/FileWriter;
    .restart local v3       #fileWriter:Ljava/io/FileWriter;
    goto :goto_4

    .line 108
    .end local v3           #fileWriter:Ljava/io/FileWriter;
    .restart local v4       #fileWriter:Ljava/io/FileWriter;
    :catch_6
    move-exception v2

    move-object v3, v4

    .end local v4           #fileWriter:Ljava/io/FileWriter;
    .restart local v3       #fileWriter:Ljava/io/FileWriter;
    goto :goto_3

    .end local v0           #bufferWriter:Ljava/io/BufferedWriter;
    .end local v3           #fileWriter:Ljava/io/FileWriter;
    .restart local v1       #bufferWriter:Ljava/io/BufferedWriter;
    .restart local v4       #fileWriter:Ljava/io/FileWriter;
    :catch_7
    move-exception v2

    move-object v0, v1

    .end local v1           #bufferWriter:Ljava/io/BufferedWriter;
    .restart local v0       #bufferWriter:Ljava/io/BufferedWriter;
    move-object v3, v4

    .end local v4           #fileWriter:Ljava/io/FileWriter;
    .restart local v3       #fileWriter:Ljava/io/FileWriter;
    goto :goto_3

    .line 106
    :catch_8
    move-exception v2

    goto/16 :goto_2

    .end local v3           #fileWriter:Ljava/io/FileWriter;
    .restart local v4       #fileWriter:Ljava/io/FileWriter;
    :catch_9
    move-exception v2

    move-object v3, v4

    .end local v4           #fileWriter:Ljava/io/FileWriter;
    .restart local v3       #fileWriter:Ljava/io/FileWriter;
    goto/16 :goto_2

    .end local v0           #bufferWriter:Ljava/io/BufferedWriter;
    .end local v3           #fileWriter:Ljava/io/FileWriter;
    .restart local v1       #bufferWriter:Ljava/io/BufferedWriter;
    .restart local v4       #fileWriter:Ljava/io/FileWriter;
    :cond_4
    move-object v0, v1

    .end local v1           #bufferWriter:Ljava/io/BufferedWriter;
    .restart local v0       #bufferWriter:Ljava/io/BufferedWriter;
    move-object v3, v4

    .end local v4           #fileWriter:Ljava/io/FileWriter;
    .restart local v3       #fileWriter:Ljava/io/FileWriter;
    goto/16 :goto_0
.end method
