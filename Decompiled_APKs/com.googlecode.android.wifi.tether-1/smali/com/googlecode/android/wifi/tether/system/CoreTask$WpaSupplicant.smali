.class public Lcom/googlecode/android/wifi/tether/system/CoreTask$WpaSupplicant;
.super Ljava/lang/Object;
.source "CoreTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/android/wifi/tether/system/CoreTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WpaSupplicant"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/googlecode/android/wifi/tether/system/CoreTask;


# direct methods
.method public constructor <init>(Lcom/googlecode/android/wifi/tether/system/CoreTask;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/googlecode/android/wifi/tether/system/CoreTask$WpaSupplicant;->this$0:Lcom/googlecode/android/wifi/tether/system/CoreTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exists()Z
    .locals 3

    .prologue
    .line 105
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/googlecode/android/wifi/tether/system/CoreTask$WpaSupplicant;->this$0:Lcom/googlecode/android/wifi/tether/system/CoreTask;

    iget-object v2, v2, Lcom/googlecode/android/wifi/tether/system/CoreTask;->DATA_FILE_PATH:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/conf/wpa_supplicant.conf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public get()Ljava/util/Hashtable;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 118
    new-instance v1, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/googlecode/android/wifi/tether/system/CoreTask$WpaSupplicant;->this$0:Lcom/googlecode/android/wifi/tether/system/CoreTask;

    iget-object v6, v6, Lcom/googlecode/android/wifi/tether/system/CoreTask;->DATA_FILE_PATH:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/conf/wpa_supplicant.conf"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 119
    .local v1, inFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 120
    const/4 v0, 0x0

    .line 133
    :cond_0
    return-object v0

    .line 122
    :cond_1
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 123
    .local v0, SuppConf:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/googlecode/android/wifi/tether/system/CoreTask$WpaSupplicant;->this$0:Lcom/googlecode/android/wifi/tether/system/CoreTask;

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/googlecode/android/wifi/tether/system/CoreTask$WpaSupplicant;->this$0:Lcom/googlecode/android/wifi/tether/system/CoreTask;

    iget-object v7, v7, Lcom/googlecode/android/wifi/tether/system/CoreTask;->DATA_FILE_PATH:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/conf/wpa_supplicant.conf"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/googlecode/android/wifi/tether/system/CoreTask;->readLinesFromFile(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 125
    .local v3, lines:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 126
    .local v2, line:Ljava/lang/String;
    const-string v6, "="

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 127
    const-string v6, "="

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 128
    .local v4, pair:[Ljava/lang/String;
    aget-object v6, v4, v8

    if-eqz v6, :cond_2

    aget-object v6, v4, v9

    if-eqz v6, :cond_2

    aget-object v6, v4, v8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    aget-object v6, v4, v9

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 129
    aget-object v6, v4, v8

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    aget-object v7, v4, v9

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public remove()Z
    .locals 3

    .prologue
    .line 110
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/googlecode/android/wifi/tether/system/CoreTask$WpaSupplicant;->this$0:Lcom/googlecode/android/wifi/tether/system/CoreTask;

    iget-object v2, v2, Lcom/googlecode/android/wifi/tether/system/CoreTask;->DATA_FILE_PATH:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/conf/wpa_supplicant.conf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 111
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    .line 114
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized write(Ljava/util/Hashtable;)Z
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, values:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 137
    monitor-enter p0

    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/googlecode/android/wifi/tether/system/CoreTask$WpaSupplicant;->this$0:Lcom/googlecode/android/wifi/tether/system/CoreTask;

    iget-object v7, v7, Lcom/googlecode/android/wifi/tether/system/CoreTask;->DATA_FILE_PATH:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/conf/wpa_supplicant.conf"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, filename:Ljava/lang/String;
    const-string v0, ""

    .line 140
    .local v0, fileString:Ljava/lang/String;
    iget-object v5, p0, Lcom/googlecode/android/wifi/tether/system/CoreTask$WpaSupplicant;->this$0:Lcom/googlecode/android/wifi/tether/system/CoreTask;

    invoke-virtual {v5, v1}, Lcom/googlecode/android/wifi/tether/system/CoreTask;->readLinesFromFile(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 141
    .local v2, inputLines:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 151
    iget-object v5, p0, Lcom/googlecode/android/wifi/tether/system/CoreTask$WpaSupplicant;->this$0:Lcom/googlecode/android/wifi/tether/system/CoreTask;

    invoke-virtual {v5, v1, v0}, Lcom/googlecode/android/wifi/tether/system/CoreTask;->writeLinesToFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 152
    iget-object v5, p0, Lcom/googlecode/android/wifi/tether/system/CoreTask$WpaSupplicant;->this$0:Lcom/googlecode/android/wifi/tether/system/CoreTask;

    const-string v6, "0644"

    invoke-virtual {v5, v1, v6}, Lcom/googlecode/android/wifi/tether/system/CoreTask;->chmod(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    const/4 v5, 0x1

    .line 155
    :goto_1
    monitor-exit p0

    return v5

    .line 141
    :cond_0
    :try_start_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 142
    .local v4, line:Ljava/lang/String;
    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 143
    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    aget-object v3, v5, v8

    .line 144
    .local v3, key:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 145
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 148
    .end local v3           #key:Ljava/lang/String;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "\n"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 149
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .end local v4           #line:Ljava/lang/String;
    :cond_2
    move v5, v6

    .line 155
    goto :goto_1

    .line 137
    .end local v0           #fileString:Ljava/lang/String;
    .end local v1           #filename:Ljava/lang/String;
    .end local v2           #inputLines:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method
