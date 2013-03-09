.class Lcom/android/settings/bluetooth/CachedBluetoothDevice$ConnectThread;
.super Ljava/lang/Thread;
.source "CachedBluetoothDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/CachedBluetoothDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectThread"
.end annotation


# instance fields
.field private mCacheDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

.field private mDelay:Z

.field private mPreferedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/bluetooth/CachedBluetoothDevice;


# direct methods
.method public constructor <init>(Lcom/android/settings/bluetooth/CachedBluetoothDevice;Ljava/util/List;Lcom/android/settings/bluetooth/CachedBluetoothDevice;Z)V
    .locals 0
    .parameter
    .parameter "profiles"
    .parameter "cacheDevice"
    .parameter "delay"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice$ConnectThread;->this$0:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 125
    iput-object p2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice$ConnectThread;->mPreferedList:Ljava/util/List;

    .line 126
    iput-object p3, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice$ConnectThread;->mCacheDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    .line 127
    iput-boolean p4, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice$ConnectThread;->mDelay:Z

    .line 128
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 131
    iget-object v8, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice$ConnectThread;->mPreferedList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    .line 132
    .local v5, job:I
    iget-boolean v8, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice$ConnectThread;->mDelay:Z

    if-eqz v8, :cond_1

    .line 133
    iget-object v8, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice$ConnectThread;->this$0:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    #calls: Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isCarkit()Z
    invoke-static {v8}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->access$000(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-wide/16 v2, 0x3a98

    .line 135
    .local v2, delayTime:J
    :goto_0
    iget-object v8, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice$ConnectThread;->this$0:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    #getter for: Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v8}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->access$100(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v8

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 136
    iget-object v8, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice$ConnectThread;->this$0:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    #getter for: Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDelayMapping:Ljava/util/HashMap;
    invoke-static {v8}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->access$200(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)Ljava/util/HashMap;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice$ConnectThread;->this$0:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    #getter for: Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v9}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->access$100(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v9

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 137
    .local v7, value:Ljava/lang/Long;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 141
    .end local v7           #value:Ljava/lang/Long;
    :cond_0
    :try_start_0
    const-string v8, "CachedBluetoothDevice"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Take "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ms sleep to make sure remote L2CAP is ready for connection"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-static {v2, v3}, Lcom/android/settings/bluetooth/CachedBluetoothDevice$ConnectThread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 146
    .end local v2           #delayTime:J
    :cond_1
    :goto_1
    iget-object v8, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice$ConnectThread;->mPreferedList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    .line 147
    .local v6, profile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    iget-object v8, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice$ConnectThread;->this$0:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    #getter for: Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
    invoke-static {v8}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->access$300(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v8

    const/16 v9, 0xc

    if-eq v8, v9, :cond_5

    .line 162
    .end local v6           #profile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    :cond_3
    iget-object v8, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice$ConnectThread;->this$0:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    const/4 v9, 0x0

    #setter for: Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mConnectThread:Lcom/android/settings/bluetooth/CachedBluetoothDevice$ConnectThread;
    invoke-static {v8, v9}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->access$502(Lcom/android/settings/bluetooth/CachedBluetoothDevice;Lcom/android/settings/bluetooth/CachedBluetoothDevice$ConnectThread;)Lcom/android/settings/bluetooth/CachedBluetoothDevice$ConnectThread;

    .line 163
    return-void

    .line 133
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_4
    const-wide/16 v2, 0x1388

    goto :goto_0

    .line 149
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v6       #profile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    :cond_5
    iget-object v8, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice$ConnectThread;->this$0:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    #calls: Lcom/android/settings/bluetooth/CachedBluetoothDevice;->connectInt(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V
    invoke-static {v8, v6}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->access$400(Lcom/android/settings/bluetooth/CachedBluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V

    .line 150
    add-int/lit8 v5, v5, -0x1

    .line 151
    if-lez v5, :cond_2

    .line 153
    const-wide/16 v0, 0x1388

    .line 154
    .local v0, delay:J
    :try_start_1
    iget-object v8, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice$ConnectThread;->this$0:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    #getter for: Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v8}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->access$100(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v8

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    const-string v9, "00:1C:D7"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 155
    const-string v8, "CachedBluetoothDevice"

    const-string v9, "workaround for HARMAN1!!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const-wide/16 v0, 0xbb8

    .line 158
    :cond_6
    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice$ConnectThread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 159
    :catch_0
    move-exception v8

    goto :goto_2

    .line 143
    .end local v0           #delay:J
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #profile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    .restart local v2       #delayTime:J
    :catch_1
    move-exception v8

    goto :goto_1
.end method
