.class Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter$2;
.super Ljava/lang/Object;
.source "SoundSetList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;


# direct methods
.method constructor <init>(Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1919
    iput-object p1, p0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter$2;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 22
    .parameter "v"

    .prologue
    .line 1922
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter$2;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentListType:I
    invoke-static/range {v17 .. v17}, Lcom/htc/sdm/activity/SoundSetList;->access$900(Lcom/htc/sdm/activity/SoundSetList;)I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/htc/sdm/util/SDMDBUtil;->getListTableUri(I)Landroid/net/Uri;

    move-result-object v12

    .line 1923
    .local v12, tableUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter$2;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sdm/activity/SoundSetList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 1924
    .local v6, cr:Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter$2;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->m_deleteSet_dl:Ljava/util/HashMap;
    invoke-static/range {v17 .. v17}, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->access$600(Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;)Ljava/util/HashMap;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_4

    .line 1926
    const-string v15, ""

    .line 1927
    .local v15, where:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1929
    .local v4, bOR:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter$2;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->m_deleteSet_dl:Ljava/util/HashMap;
    invoke-static/range {v17 .. v17}, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->access$600(Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;)Ljava/util/HashMap;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/sdm/SoundSetParcelable;

    .line 1931
    .local v3, SoundObj:Lcom/htc/sdm/SoundSetParcelable;
    if-nez v4, :cond_1

    .line 1933
    const/4 v4, 0x1

    :goto_1
    move-object v13, v3

    .line 1939
    check-cast v13, Lcom/htc/sdm/SoundSetParcelable;

    .line 1942
    .local v13, target:Lcom/htc/sdm/SoundSetParcelable;
    :try_start_0
    invoke-virtual {v13}, Lcom/htc/sdm/SoundSetParcelable;->getLocalFileUri()Landroid/net/Uri;

    move-result-object v14

    .line 1943
    .local v14, targetFileUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter$2;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->context:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->access$2700(Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;)Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter$2;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentListType:I
    invoke-static/range {v18 .. v18}, Lcom/htc/sdm/activity/SoundSetList;->access$900(Lcom/htc/sdm/activity/SoundSetList;)I

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v0, v14, v1}, Lcom/htc/sdm/util/SDMUtil;->removeMediaStoreAudioFlag(Landroid/content/Context;Landroid/net/Uri;I)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1954
    .end local v14           #targetFileUri:Landroid/net/Uri;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter$2;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->context:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->access$2700(Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;)Landroid/content/Context;

    move-result-object v17

    invoke-virtual {v13}, Lcom/htc/sdm/SoundSetParcelable;->getGUID()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter$2;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    move-object/from16 v19, v0

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentListType:I
    invoke-static/range {v19 .. v19}, Lcom/htc/sdm/activity/SoundSetList;->access$900(Lcom/htc/sdm/activity/SoundSetList;)I

    move-result v19

    invoke-static/range {v19 .. v19}, Lcom/htc/sdm/util/SDMUtil;->typeIdToString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    const-string v21, ""

    invoke-static/range {v17 .. v21}, Lcom/htc/sdm/util/SDMUtil;->SendDeleteIntentToHub(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1956
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v13}, Lcom/htc/sdm/SoundSetParcelable;->getGUID()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1957
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter$2;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentListType:I
    invoke-static/range {v17 .. v17}, Lcom/htc/sdm/activity/SoundSetList;->access$900(Lcom/htc/sdm/activity/SoundSetList;)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    .line 1963
    const/16 v17, 0x1

    invoke-virtual {v13}, Lcom/htc/sdm/SoundSetParcelable;->getSrcType()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 1965
    invoke-virtual {v13}, Lcom/htc/sdm/SoundSetParcelable;->getLocalFileUri()Landroid/net/Uri;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v6, v0}, Lcom/htc/sdm/util/SDMUtil;->deleteFileAndRemoveFromMediaStore(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 1937
    .end local v13           #target:Lcom/htc/sdm/SoundSetParcelable;
    :cond_1
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_1

    .line 1945
    .restart local v13       #target:Lcom/htc/sdm/SoundSetParcelable;
    :catch_0
    move-exception v7

    .line 1951
    .local v7, e:Ljava/lang/UnsupportedOperationException;
    invoke-virtual {v7}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto/16 :goto_2

    .line 2062
    .end local v3           #SoundObj:Lcom/htc/sdm/SoundSetParcelable;
    .end local v7           #e:Ljava/lang/UnsupportedOperationException;
    .end local v13           #target:Lcom/htc/sdm/SoundSetParcelable;
    :cond_2
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_4

    .line 2064
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v18, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual/range {v18 .. v18}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " IN ("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ")"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2070
    .local v8, guidwhere:Ljava/lang/String;
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v6, v12, v8, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2071
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter$2;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentListType:I
    invoke-static/range {v17 .. v17}, Lcom/htc/sdm/activity/SoundSetList;->access$900(Lcom/htc/sdm/activity/SoundSetList;)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 2077
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter$2;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v15}, Lcom/htc/sdm/util/SDMDBUtil;->loadUninstallDefSoundList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    .line 2078
    .local v11, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/sdm/SoundParcelable;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/sdm/SoundParcelable;

    .line 2080
    .local v5, child:Lcom/htc/sdm/SoundParcelable;
    invoke-virtual {v5}, Lcom/htc/sdm/SoundParcelable;->getDownloadStatus()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 2082
    invoke-virtual {v5}, Lcom/htc/sdm/SoundParcelable;->getDlDbUri()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v6, v0}, Lcom/htc/sdm/util/SDMUtil;->deleteFileAndRemoveFromMediaStore(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 2083
    invoke-virtual {v5}, Lcom/htc/sdm/SoundParcelable;->getSoundUri()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v6, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_3

    .line 2177
    .end local v4           #bOR:Z
    .end local v5           #child:Lcom/htc/sdm/SoundParcelable;
    .end local v8           #guidwhere:Ljava/lang/String;
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v11           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/sdm/SoundParcelable;>;"
    .end local v15           #where:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter$2;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->m_deleteSet_uc:Ljava/util/HashMap;
    invoke-static/range {v17 .. v17}, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->access$700(Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;)Ljava/util/HashMap;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_b

    .line 2179
    const-string v15, ""

    .line 2180
    .restart local v15       #where:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter$2;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentListType:I
    invoke-static/range {v17 .. v17}, Lcom/htc/sdm/activity/SoundSetList;->access$900(Lcom/htc/sdm/activity/SoundSetList;)I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/htc/sdm/util/SDMDBUtil;->getInfoTableUri(I)Landroid/net/Uri;

    move-result-object v10

    .line 2186
    .local v10, infotableUri:Landroid/net/Uri;
    const/4 v4, 0x0

    .line 2187
    .restart local v4       #bOR:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter$2;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->m_deleteSet_uc:Ljava/util/HashMap;
    invoke-static/range {v17 .. v17}, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->access$700(Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;)Ljava/util/HashMap;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9       #i$:Ljava/util/Iterator;
    :cond_5
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/sdm/SoundSetParcelable;

    .line 2189
    .restart local v3       #SoundObj:Lcom/htc/sdm/SoundSetParcelable;
    if-nez v4, :cond_6

    .line 2191
    const/4 v4, 0x1

    :goto_5
    move-object v13, v3

    .line 2197
    check-cast v13, Lcom/htc/sdm/SoundSetParcelable;

    .line 2198
    .restart local v13       #target:Lcom/htc/sdm/SoundSetParcelable;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v13}, Lcom/htc/sdm/SoundSetParcelable;->getGUID()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 2201
    :try_start_1
    invoke-virtual {v13}, Lcom/htc/sdm/SoundSetParcelable;->getLocalFileUri()Landroid/net/Uri;

    move-result-object v14

    .line 2202
    .restart local v14       #targetFileUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter$2;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->context:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->access$2700(Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;)Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter$2;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentListType:I
    invoke-static/range {v18 .. v18}, Lcom/htc/sdm/activity/SoundSetList;->access$900(Lcom/htc/sdm/activity/SoundSetList;)I

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v0, v14, v1}, Lcom/htc/sdm/util/SDMUtil;->removeMediaStoreAudioFlag(Landroid/content/Context;Landroid/net/Uri;I)V
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 2204
    .end local v14           #targetFileUri:Landroid/net/Uri;
    :catch_1
    move-exception v7

    .line 2210
    .restart local v7       #e:Ljava/lang/UnsupportedOperationException;
    invoke-virtual {v7}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    .line 2211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter$2;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentListType:I
    invoke-static/range {v17 .. v17}, Lcom/htc/sdm/activity/SoundSetList;->access$900(Lcom/htc/sdm/activity/SoundSetList;)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    goto :goto_4

    .line 2195
    .end local v7           #e:Ljava/lang/UnsupportedOperationException;
    .end local v13           #target:Lcom/htc/sdm/SoundSetParcelable;
    :cond_6
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto :goto_5

    .line 2221
    .end local v3           #SoundObj:Lcom/htc/sdm/SoundSetParcelable;
    :cond_7
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_8

    .line 2223
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v18, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual/range {v18 .. v18}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " IN ("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ")"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 2228
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v6, v12, v15, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2233
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v6, v10, v15, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2235
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter$2;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentListType:I
    invoke-static/range {v17 .. v17}, Lcom/htc/sdm/activity/SoundSetList;->access$900(Lcom/htc/sdm/activity/SoundSetList;)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    .line 2237
    const-string v16, ""

    .line 2239
    .local v16, whereChild:Ljava/lang/String;
    const/4 v4, 0x0

    .line 2240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter$2;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->m_deleteSet_uc:Ljava/util/HashMap;
    invoke-static/range {v17 .. v17}, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->access$700(Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;)Ljava/util/HashMap;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/sdm/SoundSetParcelable;

    .line 2242
    .restart local v3       #SoundObj:Lcom/htc/sdm/SoundSetParcelable;
    if-nez v4, :cond_9

    .line 2244
    const/4 v4, 0x1

    :goto_7
    move-object v13, v3

    .line 2250
    check-cast v13, Lcom/htc/sdm/SoundSetParcelable;

    .line 2251
    .restart local v13       #target:Lcom/htc/sdm/SoundSetParcelable;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget-object v18, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->PARENT_GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;

    invoke-virtual/range {v18 .. v18}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->name()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " = \'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v13}, Lcom/htc/sdm/SoundSetParcelable;->getGUID()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 2252
    goto :goto_6

    .line 2248
    .end local v13           #target:Lcom/htc/sdm/SoundSetParcelable;
    :cond_9
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " OR "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto :goto_7

    .line 2257
    .end local v3           #SoundObj:Lcom/htc/sdm/SoundSetParcelable;
    :cond_a
    sget-object v17, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_SOUNDSET_CHILD:Landroid/net/Uri;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    invoke-virtual {v6, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2260
    .end local v4           #bOR:Z
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #infotableUri:Landroid/net/Uri;
    .end local v15           #where:Ljava/lang/String;
    .end local v16           #whereChild:Ljava/lang/String;
    :cond_b
    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Lcom/htc/sdm/util/SDMUtil;->generateSDMStatusNotificationUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter$2;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    move-object/from16 v17, v0

    const/16 v18, -0x1

    invoke-virtual/range {v17 .. v18}, Lcom/htc/sdm/activity/SoundSetList;->setResult(I)V

    .line 2262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter$2;->this$1:Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sdm/activity/SoundSetList;->finish()V

    .line 2263
    return-void
.end method
