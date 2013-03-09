.class public Lcom/s0up/goomanager/ReadJson;
.super Ljava/lang/Object;
.source "ReadJson.java"


# static fields
.field private static final DOWNLOAD_LINK:Ljava/lang/String; = "http://goo.im/json2/&path="


# instance fields
.field public fileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ListFiles(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 21
    return-void
.end method

.method public getFileArray(Landroid/os/Bundle;)Ljava/util/ArrayList;
    .locals 19
    .parameter "extras"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 33
    const-string v15, "path"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 34
    .local v12, path:Ljava/lang/String;
    if-nez v12, :cond_0

    const-string v12, "/"

    .line 35
    :cond_0
    const-string v15, "board"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, board:Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .local v14, urlStringBuilder:Ljava/lang/StringBuilder;
    const-string v15, "query"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 40
    const-string v15, "http://goo.im/json2/&action=search&query="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    const-string v15, "query"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    :cond_1
    :goto_0
    new-instance v6, Lcom/s0up/goomanager/WebRequest;

    invoke-direct {v6}, Lcom/s0up/goomanager/WebRequest;-><init>()V

    .line 50
    .local v6, http:Lcom/s0up/goomanager/WebRequest;
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Lcom/s0up/goomanager/WebRequest;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 51
    .local v13, result:Ljava/lang/String;
    if-eqz v13, :cond_2

    const-string v15, ""

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 52
    :cond_2
    const/4 v4, 0x0

    .line 96
    :goto_1
    return-object v4

    .line 43
    .end local v6           #http:Lcom/s0up/goomanager/WebRequest;
    .end local v13           #result:Ljava/lang/String;
    :cond_3
    const-string v15, "http://goo.im/json2/&path="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    if-eqz v1, :cond_1

    .line 45
    const-string v15, "&ro_board="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 54
    .restart local v6       #http:Lcom/s0up/goomanager/WebRequest;
    .restart local v13       #result:Ljava/lang/String;
    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v4, fileItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v9, 0x0

    .line 58
    .local v9, json:Lorg/json/JSONObject;
    :try_start_0
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 59
    .end local v9           #json:Lorg/json/JSONObject;
    .local v10, json:Lorg/json/JSONObject;
    const/4 v5, 0x0

    .line 60
    .local v5, fileList:Lorg/json/JSONArray;
    :try_start_1
    const-string v15, "query"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 61
    const-string v15, "search_result"

    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 66
    :goto_2
    const/4 v7, 0x0

    .local v7, i:I
    :goto_3
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-lt v7, v15, :cond_6

    move-object v9, v10

    .end local v10           #json:Lorg/json/JSONObject;
    .restart local v9       #json:Lorg/json/JSONObject;
    goto :goto_1

    .line 63
    .end local v7           #i:I
    .end local v9           #json:Lorg/json/JSONObject;
    .restart local v10       #json:Lorg/json/JSONObject;
    :cond_5
    const-string v15, "list"

    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    goto :goto_2

    .line 67
    .restart local v7       #i:I
    :cond_6
    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 68
    .local v3, fileItem:Lorg/json/JSONObject;
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 70
    .local v8, item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v15, "filename"

    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 71
    const/16 v15, 0xf

    new-array v0, v15, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v15, 0x0

    .line 72
    const-string v17, "id"

    aput-object v17, v16, v15

    const/4 v15, 0x1

    const-string v17, "filename"

    aput-object v17, v16, v15

    const/4 v15, 0x2

    const-string v17, "path"

    aput-object v17, v16, v15

    const/4 v15, 0x3

    const-string v17, "folder"

    aput-object v17, v16, v15

    const/4 v15, 0x4

    const-string v17, "md5"

    aput-object v17, v16, v15

    const/4 v15, 0x5

    const-string v17, "type"

    aput-object v17, v16, v15

    const/4 v15, 0x6

    const-string v17, "description"

    aput-object v17, v16, v15

    const/4 v15, 0x7

    .line 73
    const-string v17, "is_flashable"

    aput-object v17, v16, v15

    const/16 v15, 0x8

    const-string v17, "modified"

    aput-object v17, v16, v15

    const/16 v15, 0x9

    const-string v17, "downloads"

    aput-object v17, v16, v15

    const/16 v15, 0xa

    const-string v17, "status"

    aput-object v17, v16, v15

    const/16 v15, 0xb

    const-string v17, "additional_info"

    aput-object v17, v16, v15

    const/16 v15, 0xc

    .line 74
    const-string v17, "short_url"

    aput-object v17, v16, v15

    const/16 v15, 0xd

    const-string v17, "gapps_link"

    aput-object v17, v16, v15

    const/16 v15, 0xe

    const-string v17, "gapps_md5"

    aput-object v17, v16, v15

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    const/4 v15, 0x0

    .line 71
    :goto_4
    move/from16 v0, v17

    if-lt v15, v0, :cond_9

    .line 79
    const-string v16, "title"

    const-string v15, "filename"

    invoke-virtual {v8, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v8, v0, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :cond_7
    :goto_5
    invoke-virtual {v8}, Ljava/util/HashMap;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_8

    .line 91
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    .line 74
    :cond_9
    aget-object v11, v16, v15

    .line 76
    .local v11, key:Ljava/lang/String;
    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 77
    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v8, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_a
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 81
    .end local v11           #key:Ljava/lang/String;
    :cond_b
    const-string v15, "folder"

    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 82
    const-string v15, "folder"

    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, directoryPath:Ljava/lang/String;
    const-string v15, "folder"

    invoke-virtual {v8, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string v15, "path"

    invoke-virtual {v8, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v15, "title"

    .line 86
    const/16 v16, 0x2f

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v16

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 85
    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 93
    .end local v2           #directoryPath:Ljava/lang/String;
    .end local v3           #fileItem:Lorg/json/JSONObject;
    .end local v7           #i:I
    .end local v8           #item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v15

    move-object v9, v10

    .end local v10           #json:Lorg/json/JSONObject;
    .restart local v9       #json:Lorg/json/JSONObject;
    goto/16 :goto_1

    .end local v5           #fileList:Lorg/json/JSONArray;
    :catch_1
    move-exception v15

    goto/16 :goto_1
.end method

.method public getFileList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcom/s0up/goomanager/ReadJson;->fileList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setFileList(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p1, fileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    iput-object p1, p0, Lcom/s0up/goomanager/ReadJson;->fileList:Ljava/util/ArrayList;

    .line 25
    return-void
.end method
