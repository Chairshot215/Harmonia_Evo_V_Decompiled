.class Lcom/android/providers/media/MediaDBMigrationService$IdMigrationThread;
.super Ljava/lang/Thread;
.source "MediaDBMigrationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MediaDBMigrationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdMigrationThread"
.end annotation


# instance fields
.field private category:Ljava/lang/String;

.field private idContext:Landroid/content/Context;

.field private mIntent:Landroid/content/Intent;

.field private mType:I

.field final synthetic this$0:Lcom/android/providers/media/MediaDBMigrationService;


# direct methods
.method public constructor <init>(Lcom/android/providers/media/MediaDBMigrationService;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter "_context"
    .parameter "_intent"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/providers/media/MediaDBMigrationService$IdMigrationThread;->this$0:Lcom/android/providers/media/MediaDBMigrationService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 113
    iput-object p2, p0, Lcom/android/providers/media/MediaDBMigrationService$IdMigrationThread;->idContext:Landroid/content/Context;

    .line 114
    iput-object p3, p0, Lcom/android/providers/media/MediaDBMigrationService$IdMigrationThread;->mIntent:Landroid/content/Intent;

    .line 115
    return-void
.end method

.method private dispatchStorageQuery(Landroid/content/Context;Ljava/util/ArrayList;I)Ljava/util/ArrayList;
    .locals 31
    .parameter "context"
    .parameter
    .parameter "mediaType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    .local p2, oldUri:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-nez p2, :cond_1

    .line 182
    const-string v28, "MediaIntentService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "[dispatchStorageQuery] oldUri is null :"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaDBMigrationService$IdMigrationThread;->category:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 323
    :cond_0
    :goto_0
    return-object v19

    .line 186
    :cond_1
    new-instance v19, Ljava/util/ArrayList;

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v28

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 188
    .local v19, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v10, 0x0

    .local v10, i:I
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v16

    .local v16, max:I
    :goto_1
    move/from16 v0, v16

    if-ge v10, v0, :cond_2

    .line 189
    const/16 v28, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 192
    :cond_2
    packed-switch p3, :pswitch_data_0

    .line 198
    const-string v28, "MediaIntentService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "[dispatchStorageQuery]- wrong mediaType "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " :"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaDBMigrationService$IdMigrationThread;->category:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 203
    :pswitch_0
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 206
    .local v7, dbMap:Ljava/util/Map;,"Ljava/util/Map<Lcom/android/providers/media/MediaProvider$STORAGE;Landroid/database/sqlite/SQLiteDatabase;>;"
    :try_start_0
    new-instance v27, Ljava/util/HashMap;

    invoke-direct/range {v27 .. v27}, Ljava/util/HashMap;-><init>()V

    .line 209
    .local v27, uriToIndexList:Ljava/util/Map;,"Ljava/util/Map<Landroid/net/Uri;Ljava/util/List<Ljava/lang/Integer;>;>;"
    new-instance v20, Ljava/util/ArrayList;

    const-class v28, Lcom/android/providers/media/MediaProvider$STORAGE;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v28

    check-cast v28, [Lcom/android/providers/media/MediaProvider$STORAGE;

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 212
    .local v20, storageDispatchMap:Ljava/util/List;,"Ljava/util/List<Ljava/util/Set<Landroid/net/Uri;>;>;"
    const-class v28, Lcom/android/providers/media/MediaProvider$STORAGE;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/android/providers/media/MediaProvider$STORAGE;

    .local v3, arr$:[Lcom/android/providers/media/MediaProvider$STORAGE;
    array-length v15, v3

    .local v15, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_2
    if-ge v11, v15, :cond_7

    aget-object v23, v3, v11

    .line 213
    .local v23, type:Lcom/android/providers/media/MediaProvider$STORAGE;
    new-instance v28, Ljava/util/HashSet;

    invoke-direct/range {v28 .. v28}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    invoke-static/range {v23 .. v23}, Lcom/android/providers/media/MediaProvider;->getDatabaseFileName(Lcom/android/providers/media/MediaProvider$STORAGE;)Ljava/lang/String;

    move-result-object v4

    .line 216
    .local v4, databaseFileName:Ljava/lang/String;
    if-nez v4, :cond_4

    .line 212
    :cond_3
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 219
    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 221
    .local v5, databaseFilePath:Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 223
    .local v9, file:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v28

    if-nez v28, :cond_5

    const-string v28, "external-ffffffff.db"

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_3

    .line 227
    :cond_5
    const/16 v28, 0x0

    const/16 v29, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-static {v5, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v28

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 300
    .end local v3           #arr$:[Lcom/android/providers/media/MediaProvider$STORAGE;
    .end local v4           #databaseFileName:Ljava/lang/String;
    .end local v5           #databaseFilePath:Ljava/lang/String;
    .end local v9           #file:Ljava/io/File;
    .end local v11           #i$:I
    .end local v15           #len$:I
    .end local v20           #storageDispatchMap:Ljava/util/List;,"Ljava/util/List<Ljava/util/Set<Landroid/net/Uri;>;>;"
    .end local v23           #type:Lcom/android/providers/media/MediaProvider$STORAGE;
    .end local v27           #uriToIndexList:Ljava/util/Map;,"Ljava/util/Map<Landroid/net/Uri;Ljava/util/List<Ljava/lang/Integer;>;>;"
    :catch_0
    move-exception v8

    .line 301
    .local v8, e:Ljava/lang/Exception;
    :try_start_1
    const-string v28, "MediaIntentService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "dispatchStorageQuery error when map for "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaDBMigrationService$IdMigrationThread;->category:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 303
    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_6
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/database/sqlite/SQLiteDatabase;

    .line 304
    .local v6, db:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v6, :cond_6

    .line 305
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_4

    .line 236
    .end local v6           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v3       #arr$:[Lcom/android/providers/media/MediaProvider$STORAGE;
    .local v11, i$:I
    .restart local v15       #len$:I
    .restart local v20       #storageDispatchMap:Ljava/util/List;,"Ljava/util/List<Ljava/util/Set<Landroid/net/Uri;>;>;"
    .restart local v27       #uriToIndexList:Ljava/util/Map;,"Ljava/util/Map<Landroid/net/Uri;Ljava/util/List<Ljava/lang/Integer;>;>;"
    :cond_7
    const/16 v21, 0x0

    .line 237
    .local v21, storageType:Lcom/android/providers/media/MediaProvider$STORAGE;
    const/4 v10, 0x0

    :try_start_2
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v16

    :goto_5
    move/from16 v0, v16

    if-ge v10, v0, :cond_d

    .line 238
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    if-nez v28, :cond_8

    .line 239
    const-string v28, "MediaIntentService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "[dispatchStorageQuery] null uri at pos "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " :"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaDBMigrationService$IdMigrationThread;->category:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :goto_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 244
    :cond_8
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/net/Uri;

    invoke-virtual/range {v28 .. v28}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v28

    const/16 v29, 0x3

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_a

    .line 245
    const-string v28, "MediaIntentService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "[dispatchStorageQuery] invalid uri : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " :"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaDBMigrationService$IdMigrationThread;->category:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    .line 303
    .end local v3           #arr$:[Lcom/android/providers/media/MediaProvider$STORAGE;
    .end local v11           #i$:I
    .end local v15           #len$:I
    .end local v20           #storageDispatchMap:Ljava/util/List;,"Ljava/util/List<Ljava/util/Set<Landroid/net/Uri;>;>;"
    .end local v21           #storageType:Lcom/android/providers/media/MediaProvider$STORAGE;
    .end local v27           #uriToIndexList:Ljava/util/Map;,"Ljava/util/Map<Landroid/net/Uri;Ljava/util/List<Ljava/lang/Integer;>;>;"
    :catchall_0
    move-exception v28

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_9
    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_14

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/database/sqlite/SQLiteDatabase;

    .line 304
    .restart local v6       #db:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v6, :cond_9

    .line 305
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_7

    .line 249
    .end local v6           #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3       #arr$:[Lcom/android/providers/media/MediaProvider$STORAGE;
    .local v11, i$:I
    .restart local v15       #len$:I
    .restart local v20       #storageDispatchMap:Ljava/util/List;,"Ljava/util/List<Ljava/util/Set<Landroid/net/Uri;>;>;"
    .restart local v21       #storageType:Lcom/android/providers/media/MediaProvider$STORAGE;
    .restart local v27       #uriToIndexList:Ljava/util/Map;,"Ljava/util/Map<Landroid/net/Uri;Ljava/util/List<Ljava/lang/Integer;>;>;"
    :cond_a
    :try_start_3
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/providers/media/MediaDBMigrationService$IdMigrationThread;->getStorageType(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$STORAGE;

    move-result-object v21

    .line 250
    if-nez v21, :cond_b

    .line 251
    const-string v28, "MediaIntentService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "[dispatchStorageQuery] storage type not found for uri : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " :"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaDBMigrationService$IdMigrationThread;->category:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 256
    :cond_b
    invoke-virtual/range {v21 .. v21}, Lcom/android/providers/media/MediaProvider$STORAGE;->ordinal()I

    move-result v28

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/util/Set;

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 258
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    invoke-interface/range {v27 .. v28}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    if-nez v28, :cond_c

    .line 259
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {v27 .. v29}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    :cond_c
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    invoke-interface/range {v27 .. v28}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/util/List;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 265
    :cond_d
    const-class v28, Lcom/android/providers/media/MediaProvider$STORAGE;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v3

    .end local v3           #arr$:[Lcom/android/providers/media/MediaProvider$STORAGE;
    check-cast v3, [Lcom/android/providers/media/MediaProvider$STORAGE;

    .restart local v3       #arr$:[Lcom/android/providers/media/MediaProvider$STORAGE;
    array-length v15, v3

    const/4 v11, 0x0

    move v12, v11

    .end local v11           #i$:I
    .local v12, i$:I
    :goto_8
    if-ge v12, v15, :cond_12

    aget-object v23, v3, v12

    .line 266
    .restart local v23       #type:Lcom/android/providers/media/MediaProvider$STORAGE;
    move-object/from16 v0, v23

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/database/sqlite/SQLiteDatabase;

    .line 268
    .restart local v6       #db:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v6, :cond_e

    invoke-virtual/range {v23 .. v23}, Lcom/android/providers/media/MediaProvider$STORAGE;->ordinal()I

    move-result v28

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/util/Set;

    invoke-interface/range {v28 .. v28}, Ljava/util/Set;->size()I

    move-result v28

    if-nez v28, :cond_f

    .line 265
    .end local v12           #i$:I
    :cond_e
    add-int/lit8 v11, v12, 0x1

    .restart local v11       #i$:I
    move v12, v11

    .end local v11           #i$:I
    .restart local v12       #i$:I
    goto :goto_8

    .line 271
    :cond_f
    invoke-virtual/range {v23 .. v23}, Lcom/android/providers/media/MediaProvider$STORAGE;->ordinal()I

    move-result v28

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/Set;

    .line 272
    .local v25, uriList:Ljava/util/Set;,"Ljava/util/Set<Landroid/net/Uri;>;"
    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->size()I

    move-result v28

    move/from16 v0, v28

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .line 274
    .local v18, oldIds:[I
    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 275
    .local v14, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/net/Uri;>;"
    const/16 v24, 0x0

    .line 276
    .local v24, uri:Landroid/net/Uri;
    const/4 v10, 0x0

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->size()I

    move-result v16

    :goto_9
    move/from16 v0, v16

    if-ge v10, v0, :cond_10

    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_10

    .line 277
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    .end local v24           #uri:Landroid/net/Uri;
    check-cast v24, Landroid/net/Uri;

    .line 278
    .restart local v24       #uri:Landroid/net/Uri;
    invoke-virtual/range {v24 .. v24}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v28

    const/16 v29, 0x3

    invoke-interface/range {v28 .. v29}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v28

    aput v28, v18, v10

    .line 276
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    .line 281
    :cond_10
    invoke-virtual/range {v24 .. v24}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v22

    .line 282
    .local v22, stringForUriTemplate:Ljava/lang/String;
    const/16 v28, 0x0

    const/16 v29, 0x2f

    move-object/from16 v0, v22

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v29

    move-object/from16 v0, v22

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v26

    .line 285
    .local v26, uriTemplate:Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, p3

    invoke-direct {v0, v6, v1, v2}, Lcom/android/providers/media/MediaDBMigrationService$IdMigrationThread;->doQuery(Landroid/database/sqlite/SQLiteDatabase;[II)[I

    move-result-object v17

    .line 287
    .local v17, newIds:[I
    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 288
    const/16 v24, 0x0

    .line 289
    const/4 v10, 0x0

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->size()I

    move-result v16

    .end local v12           #i$:I
    :goto_a
    move/from16 v0, v16

    if-ge v10, v0, :cond_e

    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_e

    .line 290
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    .end local v24           #uri:Landroid/net/Uri;
    check-cast v24, Landroid/net/Uri;

    .line 291
    .restart local v24       #uri:Landroid/net/Uri;
    aget v28, v17, v10

    if-eqz v28, :cond_11

    .line 292
    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/util/List;

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_11

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    .line 293
    .local v13, index:Ljava/lang/Integer;
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v28

    aget v29, v17, v10

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v29, v0

    move-object/from16 v0, v26

    move-wide/from16 v1, v29

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v29

    move-object/from16 v0, v19

    move/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_b

    .line 289
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v13           #index:Ljava/lang/Integer;
    :cond_11
    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    .line 303
    .end local v6           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v14           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/net/Uri;>;"
    .end local v17           #newIds:[I
    .end local v18           #oldIds:[I
    .end local v22           #stringForUriTemplate:Ljava/lang/String;
    .end local v23           #type:Lcom/android/providers/media/MediaProvider$STORAGE;
    .end local v24           #uri:Landroid/net/Uri;
    .end local v25           #uriList:Ljava/util/Set;,"Ljava/util/Set<Landroid/net/Uri;>;"
    .end local v26           #uriTemplate:Landroid/net/Uri;
    .restart local v12       #i$:I
    :cond_12
    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .end local v12           #i$:I
    .restart local v11       #i$:Ljava/util/Iterator;
    :cond_13
    :goto_c
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/database/sqlite/SQLiteDatabase;

    .line 304
    .restart local v6       #db:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v6, :cond_13

    .line 305
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_c

    .end local v3           #arr$:[Lcom/android/providers/media/MediaProvider$STORAGE;
    .end local v6           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v15           #len$:I
    .end local v20           #storageDispatchMap:Ljava/util/List;,"Ljava/util/List<Ljava/util/Set<Landroid/net/Uri;>;>;"
    .end local v21           #storageType:Lcom/android/providers/media/MediaProvider$STORAGE;
    .end local v27           #uriToIndexList:Ljava/util/Map;,"Ljava/util/Map<Landroid/net/Uri;Ljava/util/List<Ljava/lang/Integer;>;>;"
    :cond_14
    throw v28

    .line 192
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private doQuery(Landroid/database/sqlite/SQLiteDatabase;[II)[I
    .locals 18
    .parameter "db"
    .parameter "oldIds"
    .parameter "mediaType"

    .prologue
    .line 330
    move-object/from16 v0, p2

    array-length v1, v0

    new-array v15, v1, [I

    .line 331
    .local v15, result:[I
    invoke-static {}, Lcom/android/providers/media/MediaDBMigrationService;->access$000()[Ljava/lang/String;

    move-result-object v1

    aget-object v17, v1, p3

    .line 332
    .local v17, table:Ljava/lang/String;
    if-nez v17, :cond_0

    .line 381
    :goto_0
    return-object v15

    .line 336
    :cond_0
    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "old_table._id AS old_id"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string v2, "files._id AS new_id"

    aput-object v2, v3, v1

    .line 342
    .local v3, columns:[Ljava/lang/String;
    new-instance v11, Ljava/util/HashMap;

    move-object/from16 v0, p2

    array-length v1, v0

    invoke-direct {v11, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 346
    .local v11, idToIndexMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    new-instance v16, Ljava/lang/StringBuilder;

    const-string v1, "("

    move-object/from16 v0, v16

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 347
    .local v16, strBuilder:Ljava/lang/StringBuilder;
    const/4 v10, 0x0

    .local v10, i:I
    move-object/from16 v0, p2

    array-length v12, v0

    .local v12, max:I
    :goto_1
    if-ge v10, v12, :cond_1

    .line 348
    aget v1, p2, v10

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 349
    const/16 v1, 0x2c

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 351
    aget v1, p2, v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v11, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 353
    :cond_1
    const-string v1, ","

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x29

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 355
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AS old_table LEFT OUTER JOIN files ON old_table._data = files._data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " old_table._id IN "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 362
    .local v9, cursor:Landroid/database/Cursor;
    const/4 v14, 0x0

    .line 363
    .local v14, oldId:I
    const/4 v13, 0x0

    .line 364
    .local v13, newId:I
    :cond_2
    :goto_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 365
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 367
    const/4 v13, 0x0

    .line 369
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 372
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 374
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v13, v15, v1

    goto :goto_2

    .line 377
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method private getStorageType(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$STORAGE;
    .locals 4
    .parameter "uri"

    .prologue
    const/4 v1, 0x0

    .line 164
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-object v1

    .line 167
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 168
    .local v0, storage:Ljava/lang/String;
    const-string v2, "external"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 169
    sget-object v1, Lcom/android/providers/media/MediaProvider$STORAGE;->EXTERNAL:Lcom/android/providers/media/MediaProvider$STORAGE;

    goto :goto_0

    .line 170
    :cond_2
    const-string v2, "internal"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 171
    sget-object v1, Lcom/android/providers/media/MediaProvider$STORAGE;->INTERNAL:Lcom/android/providers/media/MediaProvider$STORAGE;

    goto :goto_0
.end method

.method private sendResponse(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 153
    .local p1, _newUriList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 154
    .local v0, upgradeIntent:Landroid/content/Intent;
    const-string v1, "com.htc.providers.media.ID_UPDATE_RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    const-string v1, "media_type"

    iget v2, p0, Lcom/android/providers/media/MediaDBMigrationService$IdMigrationThread;->mType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 156
    const-string v1, "media_ids_res"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 159
    iget-object v1, p0, Lcom/android/providers/media/MediaDBMigrationService$IdMigrationThread;->category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    iget-object v1, p0, Lcom/android/providers/media/MediaDBMigrationService$IdMigrationThread;->this$0:Lcom/android/providers/media/MediaDBMigrationService;

    invoke-virtual {v1, v0}, Lcom/android/providers/media/MediaDBMigrationService;->sendBroadcast(Landroid/content/Intent;)V

    .line 161
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 118
    const/16 v5, 0xa

    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    .line 120
    const/4 v2, 0x0

    .line 121
    .local v2, size:I
    const/4 v4, 0x0

    .line 122
    .local v4, uris:[Landroid/net/Uri;
    const/4 v3, 0x0

    .line 124
    .local v3, uriList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :try_start_0
    iget-object v5, p0, Lcom/android/providers/media/MediaDBMigrationService$IdMigrationThread;->mIntent:Landroid/content/Intent;

    const-string v6, "media_type"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/providers/media/MediaDBMigrationService$IdMigrationThread;->mType:I

    .line 125
    iget-object v5, p0, Lcom/android/providers/media/MediaDBMigrationService$IdMigrationThread;->mIntent:Landroid/content/Intent;

    const-string v6, "category"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/providers/media/MediaDBMigrationService$IdMigrationThread;->category:Ljava/lang/String;

    .line 126
    iget-object v5, p0, Lcom/android/providers/media/MediaDBMigrationService$IdMigrationThread;->mIntent:Landroid/content/Intent;

    const-string v6, "media_ids_req"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 127
    if-nez v3, :cond_0

    .line 128
    const/4 v2, -0x1

    .line 143
    :goto_0
    iget-object v5, p0, Lcom/android/providers/media/MediaDBMigrationService$IdMigrationThread;->idContext:Landroid/content/Context;

    iget v6, p0, Lcom/android/providers/media/MediaDBMigrationService$IdMigrationThread;->mType:I

    invoke-direct {p0, v5, v3, v6}, Lcom/android/providers/media/MediaDBMigrationService$IdMigrationThread;->dispatchStorageQuery(Landroid/content/Context;Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v1

    .line 144
    .local v1, newUriList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-direct {p0, v1}, Lcom/android/providers/media/MediaDBMigrationService$IdMigrationThread;->sendResponse(Ljava/util/ArrayList;)V

    .line 145
    iget-object v5, p0, Lcom/android/providers/media/MediaDBMigrationService$IdMigrationThread;->this$0:Lcom/android/providers/media/MediaDBMigrationService;

    invoke-virtual {v5}, Lcom/android/providers/media/MediaDBMigrationService;->stopSelf()V

    .line 146
    return-void

    .line 130
    .end local v1           #newUriList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "MediaIntentService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parse intent error, uri size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const-string v5, "MediaIntentService"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
