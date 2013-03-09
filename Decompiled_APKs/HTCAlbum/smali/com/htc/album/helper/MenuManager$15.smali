.class Lcom/htc/album/helper/MenuManager$15;
.super Ljava/lang/Object;
.source "MenuManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/helper/MenuManager;->renameFile(Landroid/content/Context;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;ILcom/htc/opensense2/album/util/ImageManager$IImage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/helper/MenuManager;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

.field final synthetic val$dialog:Lcom/htc/app/HtcProgressDialog;

.field final synthetic val$newName:Ljava/lang/String;

.field final synthetic val$oldName:Ljava/lang/String;

.field final synthetic val$subFileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/htc/album/helper/MenuManager;Lcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/app/HtcProgressDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4135
    iput-object p1, p0, Lcom/htc/album/helper/MenuManager$15;->this$0:Lcom/htc/album/helper/MenuManager;

    iput-object p2, p0, Lcom/htc/album/helper/MenuManager$15;->val$curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    iput-object p3, p0, Lcom/htc/album/helper/MenuManager$15;->val$dialog:Lcom/htc/app/HtcProgressDialog;

    iput-object p4, p0, Lcom/htc/album/helper/MenuManager$15;->val$oldName:Ljava/lang/String;

    iput-object p5, p0, Lcom/htc/album/helper/MenuManager$15;->val$newName:Ljava/lang/String;

    iput-object p6, p0, Lcom/htc/album/helper/MenuManager$15;->val$subFileName:Ljava/lang/String;

    iput-object p7, p0, Lcom/htc/album/helper/MenuManager$15;->val$context:Landroid/content/Context;

    iput-object p8, p0, Lcom/htc/album/helper/MenuManager$15;->val$adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    iput-object p9, p0, Lcom/htc/album/helper/MenuManager$15;->val$activity:Landroid/app/Activity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 30

    .prologue
    .line 4138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/MenuManager$15;->val$curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v18

    .line 4139
    .local v18, oldPath:Ljava/lang/String;
    if-nez v18, :cond_1

    .line 4141
    invoke-static {}, Lcom/htc/album/helper/MenuManager;->access$000()Ljava/lang/String;

    move-result-object v27

    const-string v28, "[renameFile][run] Null path found..."

    invoke-static/range {v27 .. v28}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/MenuManager$15;->val$dialog:Lcom/htc/app/HtcProgressDialog;

    move-object/from16 v27, v0

    if-eqz v27, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/MenuManager$15;->val$dialog:Lcom/htc/app/HtcProgressDialog;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/htc/app/HtcProgressDialog;->isShowing()Z

    move-result v27

    if-eqz v27, :cond_0

    .line 4143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/MenuManager$15;->val$dialog:Lcom/htc/app/HtcProgressDialog;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 4236
    :cond_0
    :goto_0
    return-void

    .line 4146
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/MenuManager$15;->val$curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDateModified()J

    move-result-wide v12

    .line 4147
    .local v12, modifiedTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/MenuManager$15;->val$curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getSize()J

    move-result-wide v7

    .line 4148
    .local v7, fileSize:J
    move-object/from16 v16, v18

    .line 4149
    .local v16, newPath:Ljava/lang/String;
    const-string v27, "/"

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    .line 4150
    .local v11, lastSlashIdx:I
    const/4 v10, -0x1

    .line 4151
    .local v10, index:I
    const/16 v27, -0x1

    move/from16 v0, v27

    if-eq v11, v0, :cond_2

    .line 4152
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    .line 4153
    .local v22, tmp:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/MenuManager$15;->val$oldName:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v27

    add-int v10, v11, v27

    .line 4158
    .end local v22           #tmp:Ljava/lang/String;
    :goto_1
    const/16 v27, -0x1

    move/from16 v0, v27

    if-ne v10, v0, :cond_3

    .line 4159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/MenuManager$15;->val$dialog:Lcom/htc/app/HtcProgressDialog;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    goto :goto_0

    .line 4155
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/MenuManager$15;->val$oldName:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    goto :goto_1

    .line 4163
    :cond_3
    const/16 v27, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 4164
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/MenuManager$15;->val$newName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 4165
    .local v23, updateData:Ljava/lang/String;
    new-instance v17, Ljava/io/File;

    invoke-direct/range {v17 .. v18}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4166
    .local v17, oldFile:Ljava/io/File;
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, v23

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4167
    .local v14, newFile:Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v5

    .line 4168
    .local v5, duplicate:Z
    if-nez v5, :cond_5

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v21

    .line 4169
    .local v21, success:Z
    :goto_2
    if-eqz v21, :cond_6

    const v20, 0x7f0b0085

    .line 4171
    .local v20, showMsg:I
    :goto_3
    if-eqz v21, :cond_4

    .line 4180
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/MenuManager$15;->val$curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v26

    .line 4181
    .local v26, updateUri:Landroid/net/Uri;
    const/16 v24, 0x0

    .line 4182
    .local v24, updateDisplayName:Ljava/lang/String;
    const/16 v25, 0x0

    .line 4184
    .local v25, updateTitle:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/MenuManager$15;->val$newName:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/MenuManager$15;->val$subFileName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 4185
    .local v9, idxOfSubName:I
    const/4 v15, 0x0

    .line 4186
    .local v15, newNameWithoutSubName:Ljava/lang/String;
    const/16 v27, -0x1

    move/from16 v0, v27

    if-eq v9, v0, :cond_7

    .line 4187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/MenuManager$15;->val$newName:Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 4191
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/MenuManager$15;->val$newName:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 4192
    move-object/from16 v25, v15

    .line 4193
    invoke-static {}, Lcom/htc/album/helper/MenuManager;->access$000()Ljava/lang/String;

    move-result-object v27

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "[rename] oldPath "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", newPath "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", newDisplayName "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", newTitle "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4194
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 4195
    .local v4, contentVals:Landroid/content/ContentValues;
    const-string v27, "_data"

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4196
    const-string v27, "_display_name"

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4197
    const-string v27, "title"

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4199
    const/16 v19, 0x0

    .line 4202
    .local v19, rowId:I
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/MenuManager$15;->val$context:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v19

    .line 4209
    :goto_5
    :try_start_2
    invoke-static {}, Lcom/htc/album/helper/MenuManager;->access$000()Ljava/lang/String;

    move-result-object v27

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "update data base after rename, got rowId "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/MenuManager$15;->val$adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    move-object/from16 v27, v0

    if-eqz v27, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/MenuManager$15;->val$activity:Landroid/app/Activity;

    move-object/from16 v27, v0

    if-eqz v27, :cond_4

    .line 4213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/MenuManager$15;->val$activity:Landroid/app/Activity;

    move-object/from16 v27, v0

    new-instance v28, Lcom/htc/album/helper/MenuManager$15$1;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/album/helper/MenuManager$15$1;-><init>(Lcom/htc/album/helper/MenuManager$15;)V

    invoke-virtual/range {v27 .. v28}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4227
    .end local v4           #contentVals:Landroid/content/ContentValues;
    .end local v9           #idxOfSubName:I
    .end local v15           #newNameWithoutSubName:Ljava/lang/String;
    .end local v19           #rowId:I
    .end local v24           #updateDisplayName:Ljava/lang/String;
    .end local v25           #updateTitle:Ljava/lang/String;
    .end local v26           #updateUri:Landroid/net/Uri;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/MenuManager$15;->val$context:Landroid/content/Context;

    move-object/from16 v27, v0

    check-cast v27, Landroid/app/Activity;

    new-instance v28, Lcom/htc/album/helper/MenuManager$15$2;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/htc/album/helper/MenuManager$15$2;-><init>(Lcom/htc/album/helper/MenuManager$15;I)V

    invoke-virtual/range {v27 .. v28}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 4168
    .end local v20           #showMsg:I
    .end local v21           #success:Z
    :cond_5
    const/16 v21, 0x0

    goto/16 :goto_2

    .line 4169
    .restart local v21       #success:Z
    :cond_6
    const v20, 0x7f0b0084

    goto/16 :goto_3

    .line 4189
    .restart local v9       #idxOfSubName:I
    .restart local v15       #newNameWithoutSubName:Ljava/lang/String;
    .restart local v20       #showMsg:I
    .restart local v24       #updateDisplayName:Ljava/lang/String;
    .restart local v25       #updateTitle:Ljava/lang/String;
    .restart local v26       #updateUri:Landroid/net/Uri;
    :cond_7
    :try_start_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/album/helper/MenuManager$15;->val$newName:Ljava/lang/String;

    goto/16 :goto_4

    .line 4204
    .restart local v4       #contentVals:Landroid/content/ContentValues;
    .restart local v19       #rowId:I
    :catch_0
    move-exception v6

    .line 4206
    .local v6, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/htc/album/helper/MenuManager;->access$000()Ljava/lang/String;

    move-result-object v27

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "[HTCAlbum][MenuManager][renameFile]: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_5

    .line 4220
    .end local v4           #contentVals:Landroid/content/ContentValues;
    .end local v6           #e:Ljava/lang/Exception;
    .end local v9           #idxOfSubName:I
    .end local v15           #newNameWithoutSubName:Ljava/lang/String;
    .end local v19           #rowId:I
    .end local v24           #updateDisplayName:Ljava/lang/String;
    .end local v25           #updateTitle:Ljava/lang/String;
    .end local v26           #updateUri:Landroid/net/Uri;
    :catchall_0
    move-exception v27

    throw v27
.end method
