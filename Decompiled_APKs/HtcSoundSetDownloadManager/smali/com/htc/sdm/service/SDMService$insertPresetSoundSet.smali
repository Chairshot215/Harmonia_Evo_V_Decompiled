.class Lcom/htc/sdm/service/SDMService$insertPresetSoundSet;
.super Ljava/lang/Thread;
.source "SDMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sdm/service/SDMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "insertPresetSoundSet"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sdm/service/SDMService;


# direct methods
.method private constructor <init>(Lcom/htc/sdm/service/SDMService;)V
    .locals 0
    .parameter

    .prologue
    .line 292
    iput-object p1, p0, Lcom/htc/sdm/service/SDMService$insertPresetSoundSet;->this$0:Lcom/htc/sdm/service/SDMService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/sdm/service/SDMService;Lcom/htc/sdm/service/SDMService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 292
    invoke-direct {p0, p1}, Lcom/htc/sdm/service/SDMService$insertPresetSoundSet;-><init>(Lcom/htc/sdm/service/SDMService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 25

    .prologue
    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/service/SDMService$insertPresetSoundSet;->this$0:Lcom/htc/sdm/service/SDMService;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/htc/sdm/service/SDMService;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    .line 297
    .local v8, context:Landroid/content/Context;
    invoke-static {v8}, Lcom/htc/sdm/util/SDMUtil;->IsCustomizedReady(Landroid/content/Context;)Z

    move-result v22

    if-nez v22, :cond_9

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/service/SDMService$insertPresetSoundSet;->this$0:Lcom/htc/sdm/service/SDMService;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/htc/sdm/service/SDMService;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v16

    .line 306
    .local v16, mAM:Landroid/content/res/AssetManager;
    const-string v4, "28c33567b07d4dec8d38d4547d595163"

    .line 310
    .local v4, Default_GUID:Ljava/lang/String;
    :try_start_0
    const-string v22, "preset"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 312
    .local v6, assetList:[Ljava/lang/String;
    move-object v5, v6

    .local v5, arr$:[Ljava/lang/String;
    array-length v15, v5

    .local v15, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    move v11, v10

    .end local v10           #i$:I
    .local v11, i$:I
    :goto_0
    if-ge v11, v15, :cond_8

    aget-object v17, v5, v11

    .line 314
    .local v17, presetFile:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/service/SDMService$insertPresetSoundSet;->this$0:Lcom/htc/sdm/service/SDMService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    #calls: Lcom/htc/sdm/service/SDMService;->ParseXML(Ljava/lang/String;)Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;
    invoke-static {v0, v1}, Lcom/htc/sdm/service/SDMService;->access$100(Lcom/htc/sdm/service/SDMService;Ljava/lang/String;)Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;

    move-result-object v21

    .line 316
    .local v21, xmlInfo:Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;
    const/16 v20, 0x0

    .line 317
    .local v20, soundSetParent:Lcom/htc/sdm/provider/SoundSetDAO;
    const/16 v18, 0x0

    .line 318
    .local v18, soundInfParent:Lcom/htc/sdm/provider/SoundSetInfoDAO;
    const/4 v13, 0x0

    .line 320
    .local v13, isInsertItem:Z
    if-eqz v21, :cond_7

    .line 322
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;->soundsetDAOs:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .end local v11           #i$:I
    .local v10, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/htc/sdm/provider/SoundSetDAO;

    .line 324
    .local v19, soundSet:Lcom/htc/sdm/provider/SoundSetDAO;
    const/16 v22, 0x1

    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/sdm/provider/SoundSetDAO;->refType:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_1

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/service/SDMService$insertPresetSoundSet;->this$0:Lcom/htc/sdm/service/SDMService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    #calls: Lcom/htc/sdm/service/SDMService;->GetSoundUri(Lcom/htc/sdm/provider/SoundSetDAO;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/sdm/service/SDMService;->access$200(Lcom/htc/sdm/service/SDMService;Lcom/htc/sdm/provider/SoundSetDAO;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/htc/sdm/provider/SoundSetDAO;->soundUri:Ljava/lang/String;

    .line 333
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/service/SDMService$insertPresetSoundSet;->this$0:Lcom/htc/sdm/service/SDMService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    #calls: Lcom/htc/sdm/service/SDMService;->SavetoSoundSetTable(Lcom/htc/sdm/provider/SoundSetDAO;)Z
    invoke-static {v0, v1}, Lcom/htc/sdm/service/SDMService;->access$300(Lcom/htc/sdm/service/SDMService;Lcom/htc/sdm/provider/SoundSetDAO;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 334
    const/4 v13, 0x1

    goto :goto_1

    .line 330
    :cond_1
    move-object/from16 v20, v19

    goto :goto_2

    .line 337
    .end local v19           #soundSet:Lcom/htc/sdm/provider/SoundSetDAO;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/service/SDMService$insertPresetSoundSet;->this$0:Lcom/htc/sdm/service/SDMService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    #calls: Lcom/htc/sdm/service/SDMService;->SavetoSoundSetInfoTable(Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;)Lcom/htc/sdm/provider/SoundSetInfoDAO;
    invoke-static {v0, v1}, Lcom/htc/sdm/service/SDMService;->access$400(Lcom/htc/sdm/service/SDMService;Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;)Lcom/htc/sdm/provider/SoundSetInfoDAO;

    move-result-object v18

    .line 343
    if-eqz v20, :cond_7

    .line 345
    const/4 v7, 0x0

    .line 346
    .local v7, childList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/sdm/provider/SoundSetChildDAO;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/service/SDMService$insertPresetSoundSet;->this$0:Lcom/htc/sdm/service/SDMService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    #calls: Lcom/htc/sdm/service/SDMService;->SaveToSoundSetChild(Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;Lcom/htc/sdm/provider/SoundSetDAO;)Ljava/util/HashMap;
    invoke-static {v0, v1, v2}, Lcom/htc/sdm/service/SDMService;->access$500(Lcom/htc/sdm/service/SDMService;Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;Lcom/htc/sdm/provider/SoundSetDAO;)Ljava/util/HashMap;

    move-result-object v7

    .line 348
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/sdm/provider/SoundSetDAO;->GUID:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 350
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/sdm/provider/SoundSetDAO;->GUID:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-static {v8, v0}, Lcom/htc/sdm/util/SDMUtil;->setCurSoundsetGUID(Landroid/content/Context;Ljava/lang/String;)V

    .line 352
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/sdm/provider/SoundSetDAO;->GUID:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v8, v0, v1}, Lcom/htc/sdm/util/SDMDBUtil;->ApplySoundSet(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v22

    if-nez v22, :cond_3

    .line 355
    const-string v22, "SDM"

    const-string v23, "[SDMService] ApplySoundSet fail!!"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_3
    if-eqz v18, :cond_4

    .line 363
    new-instance v12, Landroid/content/Intent;

    const-string v22, "com.htc.intent.ACTION_PERSONALIZE_SOUND_SET_CHANGED"

    move-object/from16 v0, v22

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 364
    .local v12, intent:Landroid/content/Intent;
    const-string v22, "com.htc.intent.EXTRA_SUMMARY"

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/htc/sdm/provider/SoundSetInfoDAO;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/service/SDMService$insertPresetSoundSet;->this$0:Lcom/htc/sdm/service/SDMService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Lcom/htc/sdm/service/SDMService;->sendBroadcast(Landroid/content/Intent;)V

    .line 369
    .end local v12           #intent:Landroid/content/Intent;
    :cond_4
    const/4 v3, 0x0

    .line 370
    .local v3, CustFilePath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/service/SDMService$insertPresetSoundSet;->this$0:Lcom/htc/sdm/service/SDMService;

    move-object/from16 v22, v0

    #calls: Lcom/htc/sdm/service/SDMService;->GetCustFilePath()Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/htc/sdm/service/SDMService;->access$600(Lcom/htc/sdm/service/SDMService;)Ljava/lang/String;

    move-result-object v3

    .line 372
    if-eqz v3, :cond_6

    .line 374
    invoke-static {v3}, Lcom/htc/sdm/service/SDMService;->ParseSIEXML(Ljava/lang/String;)Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;

    move-result-object v21

    .line 375
    const/4 v14, 0x0

    .line 377
    .local v14, isInsertSIEItem:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/service/SDMService$insertPresetSoundSet;->this$0:Lcom/htc/sdm/service/SDMService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    #calls: Lcom/htc/sdm/service/SDMService;->SaveSIEToSoundSetTable(Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;Ljava/lang/String;)Z
    invoke-static {v0, v1, v4}, Lcom/htc/sdm/service/SDMService;->access$700(Lcom/htc/sdm/service/SDMService;Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;Ljava/lang/String;)Z

    move-result v14

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/service/SDMService$insertPresetSoundSet;->this$0:Lcom/htc/sdm/service/SDMService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    #calls: Lcom/htc/sdm/service/SDMService;->SaveSIEToSoundSetInfoTable(Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;Ljava/lang/String;)V
    invoke-static {v0, v1, v4}, Lcom/htc/sdm/service/SDMService;->access$800(Lcom/htc/sdm/service/SDMService;Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;Ljava/lang/String;)V

    .line 379
    if-eqz v14, :cond_5

    .line 380
    invoke-static {v8, v4}, Lcom/htc/sdm/util/SDMDBUtil;->updateSoundSetSize(Landroid/content/Context;Ljava/lang/String;)I

    .line 381
    :cond_5
    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;->getChildList(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v7

    .line 384
    .end local v14           #isInsertSIEItem:Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/service/SDMService$insertPresetSoundSet;->this$0:Lcom/htc/sdm/service/SDMService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    #calls: Lcom/htc/sdm/service/SDMService;->SaveDefaultSetting(Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;Ljava/util/HashMap;)V
    invoke-static {v0, v1, v7}, Lcom/htc/sdm/service/SDMService;->access$900(Lcom/htc/sdm/service/SDMService;Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;Ljava/util/HashMap;)V

    .line 312
    .end local v3           #CustFilePath:Ljava/lang/String;
    .end local v7           #childList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/sdm/provider/SoundSetChildDAO;>;"
    .end local v10           #i$:Ljava/util/Iterator;
    :cond_7
    add-int/lit8 v10, v11, 0x1

    .local v10, i$:I
    move v11, v10

    .end local v10           #i$:I
    .restart local v11       #i$:I
    goto/16 :goto_0

    .line 397
    .end local v13           #isInsertItem:Z
    .end local v17           #presetFile:Ljava/lang/String;
    .end local v18           #soundInfParent:Lcom/htc/sdm/provider/SoundSetInfoDAO;
    .end local v20           #soundSetParent:Lcom/htc/sdm/provider/SoundSetDAO;
    .end local v21           #xmlInfo:Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;
    :cond_8
    invoke-static {v8}, Lcom/htc/sdm/util/SDMUtil;->SetCustomizedReady(Landroid/content/Context;)V

    .line 398
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Lcom/htc/sdm/util/SDMUtil;->generateSDMStatusNotificationUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v6           #assetList:[Ljava/lang/String;
    .end local v11           #i$:I
    .end local v15           #len$:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/service/SDMService$insertPresetSoundSet;->this$0:Lcom/htc/sdm/service/SDMService;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    #calls: Lcom/htc/sdm/service/SDMService;->onThreadFinished(I)V
    invoke-static/range {v22 .. v23}, Lcom/htc/sdm/service/SDMService;->access$1000(Lcom/htc/sdm/service/SDMService;I)V

    .line 415
    .end local v4           #Default_GUID:Ljava/lang/String;
    .end local v16           #mAM:Landroid/content/res/AssetManager;
    :goto_4
    return-void

    .line 400
    .restart local v4       #Default_GUID:Ljava/lang/String;
    .restart local v16       #mAM:Landroid/content/res/AssetManager;
    :catch_0
    move-exception v9

    .line 402
    .local v9, e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 409
    .end local v4           #Default_GUID:Ljava/lang/String;
    .end local v9           #e:Ljava/io/IOException;
    .end local v16           #mAM:Landroid/content/res/AssetManager;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/service/SDMService$insertPresetSoundSet;->this$0:Lcom/htc/sdm/service/SDMService;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    #calls: Lcom/htc/sdm/service/SDMService;->onThreadFinished(I)V
    invoke-static/range {v22 .. v23}, Lcom/htc/sdm/service/SDMService;->access$1000(Lcom/htc/sdm/service/SDMService;I)V

    goto :goto_4
.end method
