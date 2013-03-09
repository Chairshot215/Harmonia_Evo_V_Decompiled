.class Lcom/htc/sdm/activity/SoundSetList$CheckRingtoneConsistent;
.super Ljava/lang/Object;
.source "SoundSetList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sdm/activity/SoundSetList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckRingtoneConsistent"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sdm/activity/SoundSetList;


# direct methods
.method public constructor <init>(Lcom/htc/sdm/activity/SoundSetList;)V
    .locals 0
    .parameter

    .prologue
    .line 2678
    iput-object p1, p0, Lcom/htc/sdm/activity/SoundSetList$CheckRingtoneConsistent;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2679
    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 2682
    iget-object v1, p0, Lcom/htc/sdm/activity/SoundSetList$CheckRingtoneConsistent;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    invoke-virtual {v1}, Lcom/htc/sdm/activity/SoundSetList;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2683
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 2690
    .local v6, InfoCursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Lcom/htc/sdm/activity/SoundSetList$CheckRingtoneConsistent;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    invoke-virtual {v1}, Lcom/htc/sdm/activity/SoundSetList;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v8

    .line 2691
    .local v8, curRingtone:Landroid/net/Uri;
    const/4 v12, 0x0

    .line 2692
    .local v12, soundSetRingtone:Landroid/net/Uri;
    iget-object v1, p0, Lcom/htc/sdm/activity/SoundSetList$CheckRingtoneConsistent;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    invoke-virtual {v1}, Lcom/htc/sdm/activity/SoundSetList;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/sdm/util/SDMUtil;->getCurSoundsetGUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 2693
    .local v9, curSoundSetGUID:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->PARENT_GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;

    invoke-virtual {v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->refType:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;

    invoke-virtual {v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "S_Ringtone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2700
    .local v3, ringWhere:Ljava/lang/String;
    sget-object v1, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_SOUNDSET_CHILD:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2701
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lt v1, v14, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2703
    sget-object v1, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;

    invoke-virtual {v1}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2705
    .local v11, soundGUID:Ljava/lang/String;
    if-eqz v11, :cond_0

    .line 2707
    iget-object v1, p0, Lcom/htc/sdm/activity/SoundSetList$CheckRingtoneConsistent;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    invoke-virtual {v1}, Lcom/htc/sdm/activity/SoundSetList;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2, v11}, Lcom/htc/sdm/util/SDMDBUtil;->GetSoundUri(Landroid/content/Context;ILjava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 2709
    invoke-virtual {v12, v8}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2714
    iget-object v1, p0, Lcom/htc/sdm/activity/SoundSetList$CheckRingtoneConsistent;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    invoke-virtual {v1}, Lcom/htc/sdm/activity/SoundSetList;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v8, v2}, Lcom/htc/sdm/util/SDMDBUtil;->AddNewSound(Landroid/content/Context;Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v7

    .line 2715
    .local v7, NewSoundGUID:Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 2717
    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2719
    iget-object v1, p0, Lcom/htc/sdm/activity/SoundSetList$CheckRingtoneConsistent;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    invoke-virtual {v1}, Lcom/htc/sdm/activity/SoundSetList;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v4, 0x2

    invoke-static {v4}, Lcom/htc/sdm/util/SDMUtil;->RefID2Type(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v7, v2, v4, v8}, Lcom/htc/sdm/util/SDMDBUtil;->ApplySound(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2736
    .end local v7           #NewSoundGUID:Ljava/lang/String;
    .end local v11           #soundGUID:Ljava/lang/String;
    :cond_0
    if-eqz v6, :cond_1

    .line 2738
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2740
    :cond_1
    iget-object v1, p0, Lcom/htc/sdm/activity/SoundSetList$CheckRingtoneConsistent;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #setter for: Lcom/htc/sdm/activity/SoundSetList;->m_CheckRingtoneConsistent:Ljava/lang/Thread;
    invoke-static {v1, v13}, Lcom/htc/sdm/activity/SoundSetList;->access$3602(Lcom/htc/sdm/activity/SoundSetList;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 2742
    .end local v3           #ringWhere:Ljava/lang/String;
    .end local v8           #curRingtone:Landroid/net/Uri;
    .end local v9           #curSoundSetGUID:Ljava/lang/String;
    .end local v12           #soundSetRingtone:Landroid/net/Uri;
    :goto_0
    return-void

    .line 2726
    :catch_0
    move-exception v10

    .line 2732
    .local v10, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2736
    if-eqz v6, :cond_2

    .line 2738
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2740
    :cond_2
    iget-object v1, p0, Lcom/htc/sdm/activity/SoundSetList$CheckRingtoneConsistent;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #setter for: Lcom/htc/sdm/activity/SoundSetList;->m_CheckRingtoneConsistent:Ljava/lang/Thread;
    invoke-static {v1, v13}, Lcom/htc/sdm/activity/SoundSetList;->access$3602(Lcom/htc/sdm/activity/SoundSetList;Ljava/lang/Thread;)Ljava/lang/Thread;

    goto :goto_0

    .line 2736
    .end local v10           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_3

    .line 2738
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2740
    :cond_3
    iget-object v2, p0, Lcom/htc/sdm/activity/SoundSetList$CheckRingtoneConsistent;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #setter for: Lcom/htc/sdm/activity/SoundSetList;->m_CheckRingtoneConsistent:Ljava/lang/Thread;
    invoke-static {v2, v13}, Lcom/htc/sdm/activity/SoundSetList;->access$3602(Lcom/htc/sdm/activity/SoundSetList;Ljava/lang/Thread;)Ljava/lang/Thread;

    throw v1
.end method
