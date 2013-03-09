.class Lcom/google/android/tts/GeneralSettingsFragment$LicenseFileLoader;
.super Ljava/lang/Object;
.source "GeneralSettingsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/tts/GeneralSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LicenseFileLoader"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/tts/GeneralSettingsFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/tts/GeneralSettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/google/android/tts/GeneralSettingsFragment$LicenseFileLoader;->this$0:Lcom/google/android/tts/GeneralSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/16 v8, 0x800

    .line 126
    const/4 v6, 0x0

    .line 128
    .local v6, status:I
    const/4 v2, 0x0

    .line 129
    .local v2, inputReader:Ljava/io/InputStreamReader;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 131
    .local v0, data:Ljava/lang/StringBuilder;
    const/16 v8, 0x800

    :try_start_0
    new-array v7, v8, [C

    .line 133
    .local v7, tmp:[C
    new-instance v3, Ljava/io/InputStreamReader;

    iget-object v8, p0, Lcom/google/android/tts/GeneralSettingsFragment$LicenseFileLoader;->this$0:Lcom/google/android/tts/GeneralSettingsFragment;

    #getter for: Lcom/google/android/tts/GeneralSettingsFragment;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/google/android/tts/GeneralSettingsFragment;->access$500(Lcom/google/android/tts/GeneralSettingsFragment;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    const-string v9, "licenses.txt"

    invoke-virtual {v8, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 134
    .end local v2           #inputReader:Ljava/io/InputStreamReader;
    .local v3, inputReader:Ljava/io/InputStreamReader;
    :goto_0
    :try_start_1
    invoke-virtual {v3, v7}, Ljava/io/InputStreamReader;->read([C)I

    move-result v5

    .local v5, numRead:I
    if-ltz v5, :cond_2

    .line 135
    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 137
    .end local v5           #numRead:I
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 138
    .end local v3           #inputReader:Ljava/io/InputStreamReader;
    .end local v7           #tmp:[C
    .local v1, e:Ljava/io/IOException;
    .restart local v2       #inputReader:Ljava/io/InputStreamReader;
    :goto_1
    const/4 v6, 0x2

    .line 141
    if-eqz v2, :cond_0

    .line 142
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 149
    .end local v1           #e:Ljava/io/IOException;
    :cond_0
    :goto_2
    iget-object v8, p0, Lcom/google/android/tts/GeneralSettingsFragment$LicenseFileLoader;->this$0:Lcom/google/android/tts/GeneralSettingsFragment;

    #getter for: Lcom/google/android/tts/GeneralSettingsFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/google/android/tts/GeneralSettingsFragment;->access$600(Lcom/google/android/tts/GeneralSettingsFragment;)Landroid/os/Handler;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v6, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 150
    .local v4, msg:Landroid/os/Message;
    if-nez v6, :cond_1

    .line 151
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 153
    :cond_1
    iget-object v8, p0, Lcom/google/android/tts/GeneralSettingsFragment$LicenseFileLoader;->this$0:Lcom/google/android/tts/GeneralSettingsFragment;

    #getter for: Lcom/google/android/tts/GeneralSettingsFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/google/android/tts/GeneralSettingsFragment;->access$600(Lcom/google/android/tts/GeneralSettingsFragment;)Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 154
    return-void

    .line 141
    .end local v2           #inputReader:Ljava/io/InputStreamReader;
    .end local v4           #msg:Landroid/os/Message;
    .restart local v3       #inputReader:Ljava/io/InputStreamReader;
    .restart local v5       #numRead:I
    .restart local v7       #tmp:[C
    :cond_2
    if-eqz v3, :cond_3

    .line 142
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_3
    move-object v2, v3

    .line 145
    .end local v3           #inputReader:Ljava/io/InputStreamReader;
    .restart local v2       #inputReader:Ljava/io/InputStreamReader;
    goto :goto_2

    .line 144
    .end local v2           #inputReader:Ljava/io/InputStreamReader;
    .restart local v3       #inputReader:Ljava/io/InputStreamReader;
    :catch_1
    move-exception v8

    move-object v2, v3

    .line 146
    .end local v3           #inputReader:Ljava/io/InputStreamReader;
    .restart local v2       #inputReader:Ljava/io/InputStreamReader;
    goto :goto_2

    .line 140
    .end local v5           #numRead:I
    .end local v7           #tmp:[C
    :catchall_0
    move-exception v8

    .line 141
    :goto_3
    if-eqz v2, :cond_4

    .line 142
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 145
    :cond_4
    :goto_4
    throw v8

    .line 144
    .restart local v1       #e:Ljava/io/IOException;
    :catch_2
    move-exception v8

    goto :goto_2

    .end local v1           #e:Ljava/io/IOException;
    :catch_3
    move-exception v9

    goto :goto_4

    .line 140
    .end local v2           #inputReader:Ljava/io/InputStreamReader;
    .restart local v3       #inputReader:Ljava/io/InputStreamReader;
    .restart local v7       #tmp:[C
    :catchall_1
    move-exception v8

    move-object v2, v3

    .end local v3           #inputReader:Ljava/io/InputStreamReader;
    .restart local v2       #inputReader:Ljava/io/InputStreamReader;
    goto :goto_3

    .line 137
    .end local v7           #tmp:[C
    :catch_4
    move-exception v1

    goto :goto_1
.end method
