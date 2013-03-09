.class public Lcom/htc/android/fieldtrial/translator/BluetoothMAC;
.super Lcom/htc/android/fieldtrial/translator/Translator;
.source "BluetoothMAC.java"


# instance fields
.field private BluetoothFile:Ljava/lang/String;

.field private LOG_TAG:Ljava/lang/String;

.field private mBluetooth:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/htc/android/fieldtrial/translator/Translator;-><init>()V

    .line 17
    const-string v0, "/sys/module/board_supersonic/parameters/bdaddress"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/translator/BluetoothMAC;->BluetoothFile:Ljava/lang/String;

    .line 18
    const-string v0, "BluetoothMAC"

    iput-object v0, p0, Lcom/htc/android/fieldtrial/translator/BluetoothMAC;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private getBluetoothFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "iFile"

    .prologue
    .line 46
    const/16 v1, 0x100

    .line 47
    .local v1, max_buf_length:I
    const/4 v3, 0x0

    .line 48
    .local v3, reader:Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 50
    .local v2, nMACAddress:Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v6, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .end local v3           #reader:Ljava/io/BufferedReader;
    .local v4, reader:Ljava/io/BufferedReader;
    :try_start_1
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    .line 52
    .local v5, s:Ljava/lang/String;
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v5

    if-eqz v5, :cond_0

    .line 53
    move-object v2, v5

    goto :goto_0

    :cond_0
    move-object v3, v4

    .line 60
    .end local v4           #reader:Ljava/io/BufferedReader;
    .end local v5           #s:Ljava/lang/String;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    :goto_1
    if-eqz v3, :cond_1

    .line 61
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 65
    :cond_1
    :goto_2
    return-object v2

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, e:Ljava/io/IOException;
    :goto_3
    iget-object v6, p0, Lcom/htc/android/fieldtrial/translator/BluetoothMAC;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "read "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " failed!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 62
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v6

    goto :goto_2

    .line 55
    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    :catch_2
    move-exception v0

    move-object v3, v4

    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    goto :goto_3
.end method


# virtual methods
.method protected getSettingValue(I)Ljava/lang/String;
    .locals 5
    .parameter "itemId"

    .prologue
    .line 22
    invoke-static {}, Lcom/htc/android/fieldtrial/Utility;->getSingleton()Lcom/htc/android/fieldtrial/Utility;

    move-result-object v2

    const v3, 0x7f050033

    invoke-virtual {v2, v3}, Lcom/htc/android/fieldtrial/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 24
    .local v1, nResult:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/fieldtrial/translator/BluetoothMAC;->mBluetooth:Landroid/bluetooth/BluetoothAdapter;

    .line 25
    iget-object v2, p0, Lcom/htc/android/fieldtrial/translator/BluetoothMAC;->mBluetooth:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 30
    :goto_0
    iget-object v2, p0, Lcom/htc/android/fieldtrial/translator/BluetoothMAC;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BluetoothMAC:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 33
    :cond_0
    iget-object v2, p0, Lcom/htc/android/fieldtrial/translator/BluetoothMAC;->BluetoothFile:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/htc/android/fieldtrial/translator/BluetoothMAC;->getBluetoothFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 35
    :cond_1
    return-object v1

    .line 26
    :catch_0
    move-exception v0

    .line 27
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/htc/android/fieldtrial/translator/BluetoothMAC;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAddress error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected sendRequest(I)V
    .locals 1
    .parameter "itemId"

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/android/fieldtrial/translator/BluetoothMAC;->retrieveItemAndUpdate(II)V

    .line 42
    return-void
.end method
