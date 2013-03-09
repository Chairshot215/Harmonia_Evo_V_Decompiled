.class public Lcom/futuredial/service/CHistoryManager;
.super Ljava/lang/Object;
.source "CHistoryManager.java"


# static fields
.field static final TAG:Ljava/lang/String; = "HistoryManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized load_history_file(Landroid/content/Context;Lcom/futuredial/service/DMIPhone;)Lcom/futuredial/ui/DataStructures$SerialOpHistory;
    .locals 12
    .parameter "m_context"
    .parameter "m_phone"

    .prologue
    .line 22
    const-class v10, Lcom/futuredial/service/CHistoryManager;

    monitor-enter v10

    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/data/data/"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "/files"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .local v2, df:Ljava/io/File;
    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "chmod 777 "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 25
    .local v1, command:Ljava/lang/String;
    const-string v9, "HistoryManager"

    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    .line 27
    .local v8, runtime:Ljava/lang/Runtime;
    invoke-virtual {v8, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 31
    .end local v1           #command:Ljava/lang/String;
    .end local v8           #runtime:Ljava/lang/Runtime;
    :goto_0
    :try_start_2
    new-instance v4, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/data/data/"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "/files"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v11, "op_history.txt"

    invoke-direct {v4, v9, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33
    .local v4, f:Ljava/io/File;
    :try_start_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "chmod 777 "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 34
    .restart local v1       #command:Ljava/lang/String;
    const-string v9, "HistoryManager"

    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    .line 36
    .restart local v8       #runtime:Ljava/lang/Runtime;
    invoke-virtual {v8, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 57
    .end local v1           #command:Ljava/lang/String;
    .end local v8           #runtime:Ljava/lang/Runtime;
    :goto_1
    :try_start_4
    new-instance v7, Lcom/futuredial/ui/DataStructures$SerialOpHistory;

    invoke-direct {v7}, Lcom/futuredial/ui/DataStructures$SerialOpHistory;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 59
    .local v7, opHistory:Lcom/futuredial/ui/DataStructures$SerialOpHistory;
    :try_start_5
    const-string v9, "op_history.txt"

    invoke-virtual {p0, v9}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v5

    .line 60
    .local v5, fis:Ljava/io/FileInputStream;
    new-instance v6, Ljava/io/ObjectInputStream;

    invoke-direct {v6, v5}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 61
    .local v6, ois:Ljava/io/ObjectInputStream;
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lcom/futuredial/ui/DataStructures$SerialOpHistory;

    move-object v7, v0

    .line 62
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->close()V

    .line 63
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 67
    .end local v5           #fis:Ljava/io/FileInputStream;
    .end local v6           #ois:Ljava/io/ObjectInputStream;
    :goto_2
    monitor-exit v10

    return-object v7

    .line 28
    .end local v4           #f:Ljava/io/File;
    .end local v7           #opHistory:Lcom/futuredial/ui/DataStructures$SerialOpHistory;
    :catch_0
    move-exception v3

    .line 29
    .local v3, e:Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 22
    .end local v2           #df:Ljava/io/File;
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9

    .line 37
    .restart local v2       #df:Ljava/io/File;
    .restart local v4       #f:Ljava/io/File;
    :catch_1
    move-exception v3

    .line 38
    .restart local v3       #e:Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 64
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v7       #opHistory:Lcom/futuredial/ui/DataStructures$SerialOpHistory;
    :catch_2
    move-exception v3

    .line 65
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v9, "HistoryManager"

    const-string v11, "op history load failed(first run?)"

    invoke-static {v9, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2
.end method

.method public static declared-synchronized writeback_history_file(Landroid/content/Context;Lcom/futuredial/service/DMIPhone;Lcom/futuredial/ui/DataStructures$SerialOpHistory;)V
    .locals 11
    .parameter "m_context"
    .parameter "m_phone"
    .parameter "history"

    .prologue
    const/4 v10, 0x1

    .line 74
    const-class v8, Lcom/futuredial/service/CHistoryManager;

    monitor-enter v8

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 111
    :cond_0
    :goto_0
    monitor-exit v8

    return-void

    .line 76
    :cond_1
    :try_start_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 77
    .local v6, preRes:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz p2, :cond_2

    iget-object v7, p1, Lcom/futuredial/service/DMIPhone;->m_bt:Lcom/futuredial/service/DMIBTDevice;

    iget-object v7, v7, Lcom/futuredial/service/DMIBTDevice;->m_address:Ljava/lang/String;

    invoke-virtual {p2, v7}, Lcom/futuredial/ui/DataStructures$SerialOpHistory;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 78
    iget-object v7, p1, Lcom/futuredial/service/DMIPhone;->m_bt:Lcom/futuredial/service/DMIBTDevice;

    iget-object v7, v7, Lcom/futuredial/service/DMIBTDevice;->m_address:Ljava/lang/String;

    invoke-virtual {p2, v7}, Lcom/futuredial/ui/DataStructures$SerialOpHistory;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #preRes:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    check-cast v6, Ljava/util/HashMap;

    .line 83
    .restart local v6       #preRes:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v6}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 84
    .local v0, curRes:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget-object v7, p1, Lcom/futuredial/service/DMIPhone;->m_supportMods:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_6

    .line 86
    iget-object v7, p1, Lcom/futuredial/service/DMIPhone;->m_supportMods:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;

    .line 87
    .local v4, m:Lcom/futuredial/service/DMIPhone$DMIPhoneModule;
    iget-boolean v7, v4, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_bSelected:Z

    if-eqz v7, :cond_5

    .line 89
    iget-boolean v7, v4, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_bImported:Z

    if-eqz v7, :cond_4

    iget v7, v4, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_result:I

    if-ne v7, v10, :cond_4

    .line 90
    iget-object v7, v4, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_moduleIndex:Ljava/lang/Integer;

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 92
    :cond_4
    iget-object v7, v4, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_moduleIndex:Ljava/lang/Integer;

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 74
    .end local v0           #curRes:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v3           #i:I
    .end local v4           #m:Lcom/futuredial/service/DMIPhone$DMIPhoneModule;
    .end local v6           #preRes:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    .line 94
    .restart local v0       #curRes:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v3       #i:I
    .restart local v4       #m:Lcom/futuredial/service/DMIPhone$DMIPhoneModule;
    .restart local v6       #preRes:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_5
    :try_start_1
    iget v7, v4, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_preResult:I

    if-eq v7, v10, :cond_3

    .line 95
    iget-object v7, v4, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_moduleIndex:Ljava/lang/Integer;

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 98
    .end local v4           #m:Lcom/futuredial/service/DMIPhone$DMIPhoneModule;
    :cond_6
    iget-object v7, p1, Lcom/futuredial/service/DMIPhone;->m_bt:Lcom/futuredial/service/DMIBTDevice;

    iget-object v7, v7, Lcom/futuredial/service/DMIBTDevice;->m_address:Ljava/lang/String;

    invoke-virtual {p2, v7, v0}, Lcom/futuredial/ui/DataStructures$SerialOpHistory;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v7, "HistoryManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "pre-op result:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";now result:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    :try_start_2
    const-string v7, "op_history.txt"

    const/4 v9, 0x3

    invoke-virtual {p0, v7, v9}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 104
    .local v2, fos:Ljava/io/FileOutputStream;
    new-instance v5, Ljava/io/ObjectOutputStream;

    invoke-direct {v5, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 105
    .local v5, oos:Ljava/io/ObjectOutputStream;
    invoke-virtual {v5, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 106
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V

    .line 107
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 108
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .end local v5           #oos:Ljava/io/ObjectOutputStream;
    :catch_0
    move-exception v1

    .line 109
    .local v1, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method
