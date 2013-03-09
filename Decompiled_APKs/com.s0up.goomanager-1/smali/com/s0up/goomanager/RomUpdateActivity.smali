.class public Lcom/s0up/goomanager/RomUpdateActivity;
.super Landroid/app/Activity;
.source "RomUpdateActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s0up/goomanager/RomUpdateActivity$ButtonListener;
    }
.end annotation


# instance fields
.field adapter:Landroid/widget/ListAdapter;

.field fileMd5:Ljava/lang/String;

.field gappsFilePath:Ljava/lang/String;

.field gappsMd5:Ljava/lang/String;

.field private has_gapps:Ljava/lang/Boolean;

.field private has_incremental:Ljava/lang/Boolean;

.field incrementalFilePath:Ljava/lang/String;

.field incrementalMd5:Ljava/lang/String;

.field list:Landroid/widget/ListView;

.field romFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/s0up/goomanager/RomUpdateActivity;->romFilePath:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/s0up/goomanager/RomUpdateActivity;->incrementalFilePath:Ljava/lang/String;

    .line 31
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/s0up/goomanager/RomUpdateActivity;->has_gapps:Ljava/lang/Boolean;

    .line 32
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/s0up/goomanager/RomUpdateActivity;->has_incremental:Ljava/lang/Boolean;

    .line 24
    return-void
.end method

.method static synthetic access$0(Lcom/s0up/goomanager/RomUpdateActivity;)Ljava/lang/Boolean;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/s0up/goomanager/RomUpdateActivity;->has_gapps:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$1(Lcom/s0up/goomanager/RomUpdateActivity;)Ljava/lang/Boolean;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/s0up/goomanager/RomUpdateActivity;->has_incremental:Ljava/lang/Boolean;

    return-object v0
.end method


# virtual methods
.method concat([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter "first"
    .parameter "second"

    .prologue
    .line 335
    if-nez p1, :cond_0

    .line 341
    .end local p2
    :goto_0
    return-object p2

    .line 338
    .restart local p2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    array-length v2, p2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 339
    .local v0, both:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 340
    invoke-static {v0, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 341
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    move-object p2, v1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 20
    .parameter "savedInstanceState"

    .prologue
    .line 39
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v18, 0x7f03000f

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/s0up/goomanager/RomUpdateActivity;->setContentView(I)V

    .line 43
    const/4 v4, 0x0

    .line 44
    .local v4, fileName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 46
    .local v3, fileDescription:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/s0up/goomanager/RomUpdateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v18

    const-string v19, "json"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_3

    .line 47
    invoke-virtual/range {p0 .. p0}, Lcom/s0up/goomanager/RomUpdateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v18

    const-string v19, "json"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 51
    .local v7, json:Ljava/lang/String;
    :goto_0
    if-nez v7, :cond_0

    .line 52
    invoke-virtual/range {p0 .. p0}, Lcom/s0up/goomanager/RomUpdateActivity;->finish()V

    .line 55
    :cond_0
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 56
    .local v8, jsonRoot:Lorg/json/JSONObject;
    const-string v18, "update_info"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    .line 58
    .local v17, updateInfo:Lorg/json/JSONObject;
    const-string v18, "filename"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 59
    const-string v18, "path"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/s0up/goomanager/RomUpdateActivity;->romFilePath:Ljava/lang/String;

    .line 60
    const-string v18, "description"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 61
    const-string v18, "md5"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/s0up/goomanager/RomUpdateActivity;->fileMd5:Ljava/lang/String;

    .line 63
    const-string v18, "gapps_package"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v18

    if-lez v18, :cond_4

    .line 64
    const-string v18, "gapps_package"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 65
    .local v5, gapps:Lorg/json/JSONObject;
    const-string v18, "path"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/s0up/goomanager/RomUpdateActivity;->gappsFilePath:Ljava/lang/String;

    .line 66
    const-string v18, "md5"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/s0up/goomanager/RomUpdateActivity;->gappsMd5:Ljava/lang/String;

    .line 67
    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/s0up/goomanager/RomUpdateActivity;->has_gapps:Ljava/lang/Boolean;

    .line 72
    .end local v5           #gapps:Lorg/json/JSONObject;
    :goto_1
    const-string v18, "incremental_file"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v18

    if-lez v18, :cond_5

    .line 73
    const-string v18, "incremental_package"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 74
    .local v6, incremental_package:Lorg/json/JSONObject;
    const-string v18, "filename"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/s0up/goomanager/RomUpdateActivity;->incrementalFilePath:Ljava/lang/String;

    .line 75
    const-string v18, "md5"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/s0up/goomanager/RomUpdateActivity;->incrementalMd5:Ljava/lang/String;

    .line 76
    invoke-static {}, Lcom/s0up/goomanager/RomUpdateBootReciever;->getRomVersion()Ljava/lang/String;

    move-result-object v10

    .line 77
    .local v10, mRomVersion:Ljava/lang/String;
    const-string v18, "previous_ro_version"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 78
    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/s0up/goomanager/RomUpdateActivity;->has_incremental:Ljava/lang/Boolean;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .end local v6           #incremental_package:Lorg/json/JSONObject;
    .end local v8           #jsonRoot:Lorg/json/JSONObject;
    .end local v10           #mRomVersion:Ljava/lang/String;
    .end local v17           #updateInfo:Lorg/json/JSONObject;
    :cond_1
    :goto_2
    const v18, 0x7f090035

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/s0up/goomanager/RomUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TabHost;

    .line 92
    .local v14, tabs:Landroid/widget/TabHost;
    invoke-virtual {v14}, Landroid/widget/TabHost;->setup()V

    .line 94
    const-string v18, "tab_one_btn_tab"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v12

    .line 95
    .local v12, tab_one:Landroid/widget/TabHost$TabSpec;
    const v18, 0x7f090036

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 96
    const-string v18, "Download and share"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    .line 97
    invoke-virtual {v14, v12}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 99
    const-string v18, "tab_two_btn_tab"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v13

    .line 100
    .local v13, tab_two:Landroid/widget/TabHost$TabSpec;
    const v18, 0x7f090037

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 101
    const-string v18, "View Changelog"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    .line 102
    invoke-virtual {v14, v13}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/s0up/goomanager/RomUpdateActivity;->has_gapps:Ljava/lang/Boolean;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-nez v18, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/s0up/goomanager/RomUpdateActivity;->has_incremental:Ljava/lang/Boolean;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-nez v18, :cond_6

    .line 106
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v11, v0, [Ljava/lang/String;

    const/16 v18, 0x0

    .line 107
    const-string v19, "download"

    aput-object v19, v11, v18

    const/16 v18, 0x1

    .line 108
    const-string v19, "share"

    aput-object v19, v11, v18

    .line 110
    .local v11, mStrings:[Ljava/lang/String;
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v9, v0, [Ljava/lang/String;

    const/16 v18, 0x0

    .line 111
    const-string v19, "Begin download"

    aput-object v19, v9, v18

    const/16 v18, 0x1

    .line 112
    const-string v19, "Share"

    aput-object v19, v9, v18

    .line 114
    .local v9, mCaption:[Ljava/lang/String;
    const v18, 0x7f09002c

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/s0up/goomanager/RomUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ListView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/s0up/goomanager/RomUpdateActivity;->list:Landroid/widget/ListView;

    .line 115
    new-instance v18, Lcom/s0up/goomanager/LazyAdapter;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11, v9}, Lcom/s0up/goomanager/LazyAdapter;-><init>(Landroid/app/Activity;[Ljava/lang/String;[Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/s0up/goomanager/RomUpdateActivity;->adapter:Landroid/widget/ListAdapter;

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/s0up/goomanager/RomUpdateActivity;->list:Landroid/widget/ListView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/s0up/goomanager/RomUpdateActivity;->adapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 168
    .end local v9           #mCaption:[Ljava/lang/String;
    .end local v11           #mStrings:[Ljava/lang/String;
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/s0up/goomanager/RomUpdateActivity;->list:Landroid/widget/ListView;

    move-object/from16 v18, v0

    new-instance v19, Lcom/s0up/goomanager/RomUpdateActivity$1;

    invoke-direct/range {v19 .. v20}, Lcom/s0up/goomanager/RomUpdateActivity$1;-><init>(Lcom/s0up/goomanager/RomUpdateActivity;)V

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 261
    const v18, 0x7f090009

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/s0up/goomanager/RomUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 262
    .local v16, txtFileName:Landroid/widget/TextView;
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "File name\n"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    const v18, 0x7f09000e

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/s0up/goomanager/RomUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 266
    .local v15, txtFileDescription:Landroid/widget/TextView;
    if-eqz v3, :cond_9

    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_9

    .line 267
    invoke-virtual {v15, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    new-instance v18, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct/range {v18 .. v18}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 286
    :goto_4
    return-void

    .line 49
    .end local v7           #json:Ljava/lang/String;
    .end local v12           #tab_one:Landroid/widget/TabHost$TabSpec;
    .end local v13           #tab_two:Landroid/widget/TabHost$TabSpec;
    .end local v14           #tabs:Landroid/widget/TabHost;
    .end local v15           #txtFileDescription:Landroid/widget/TextView;
    .end local v16           #txtFileName:Landroid/widget/TextView;
    :cond_3
    invoke-static {}, Lcom/s0up/goomanager/RomUpdateBootReciever;->checkForUpdate()Ljava/lang/String;

    move-result-object v7

    .restart local v7       #json:Ljava/lang/String;
    goto/16 :goto_0

    .line 69
    .restart local v8       #jsonRoot:Lorg/json/JSONObject;
    .restart local v17       #updateInfo:Lorg/json/JSONObject;
    :cond_4
    const/16 v18, 0x0

    :try_start_1
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/s0up/goomanager/RomUpdateActivity;->has_gapps:Ljava/lang/Boolean;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 84
    .end local v8           #jsonRoot:Lorg/json/JSONObject;
    .end local v17           #updateInfo:Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 86
    .local v2, e:Lorg/json/JSONException;
    invoke-virtual/range {p0 .. p0}, Lcom/s0up/goomanager/RomUpdateActivity;->finish()V

    .line 87
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_2

    .line 81
    .end local v2           #e:Lorg/json/JSONException;
    .restart local v8       #jsonRoot:Lorg/json/JSONObject;
    .restart local v17       #updateInfo:Lorg/json/JSONObject;
    :cond_5
    const/16 v18, 0x0

    :try_start_2
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/s0up/goomanager/RomUpdateActivity;->has_incremental:Ljava/lang/Boolean;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 118
    .end local v8           #jsonRoot:Lorg/json/JSONObject;
    .end local v17           #updateInfo:Lorg/json/JSONObject;
    .restart local v12       #tab_one:Landroid/widget/TabHost$TabSpec;
    .restart local v13       #tab_two:Landroid/widget/TabHost$TabSpec;
    .restart local v14       #tabs:Landroid/widget/TabHost;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/s0up/goomanager/RomUpdateActivity;->has_gapps:Ljava/lang/Boolean;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-eqz v18, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/s0up/goomanager/RomUpdateActivity;->has_incremental:Ljava/lang/Boolean;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-nez v18, :cond_7

    .line 119
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v11, v0, [Ljava/lang/String;

    const/16 v18, 0x0

    .line 120
    const-string v19, "download"

    aput-object v19, v11, v18

    const/16 v18, 0x1

    .line 121
    const-string v19, "download"

    aput-object v19, v11, v18

    const/16 v18, 0x2

    .line 122
    const-string v19, "share"

    aput-object v19, v11, v18

    .line 125
    .restart local v11       #mStrings:[Ljava/lang/String;
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v9, v0, [Ljava/lang/String;

    const/16 v18, 0x0

    .line 126
    const-string v19, "Begin download"

    aput-object v19, v9, v18

    const/16 v18, 0x1

    .line 127
    const-string v19, "Download GApps"

    aput-object v19, v9, v18

    const/16 v18, 0x2

    .line 128
    const-string v19, "Share"

    aput-object v19, v9, v18

    .line 130
    .restart local v9       #mCaption:[Ljava/lang/String;
    const v18, 0x7f09002c

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/s0up/goomanager/RomUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ListView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/s0up/goomanager/RomUpdateActivity;->list:Landroid/widget/ListView;

    .line 131
    new-instance v18, Lcom/s0up/goomanager/LazyAdapter;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11, v9}, Lcom/s0up/goomanager/LazyAdapter;-><init>(Landroid/app/Activity;[Ljava/lang/String;[Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/s0up/goomanager/RomUpdateActivity;->adapter:Landroid/widget/ListAdapter;

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/s0up/goomanager/RomUpdateActivity;->list:Landroid/widget/ListView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/s0up/goomanager/RomUpdateActivity;->adapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_3

    .line 133
    .end local v9           #mCaption:[Ljava/lang/String;
    .end local v11           #mStrings:[Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/s0up/goomanager/RomUpdateActivity;->has_gapps:Ljava/lang/Boolean;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-nez v18, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/s0up/goomanager/RomUpdateActivity;->has_incremental:Ljava/lang/Boolean;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-eqz v18, :cond_8

    .line 134
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v11, v0, [Ljava/lang/String;

    const/16 v18, 0x0

    .line 135
    const-string v19, "download"

    aput-object v19, v11, v18

    const/16 v18, 0x1

    .line 136
    const-string v19, "download"

    aput-object v19, v11, v18

    const/16 v18, 0x2

    .line 137
    const-string v19, "share"

    aput-object v19, v11, v18

    .line 140
    .restart local v11       #mStrings:[Ljava/lang/String;
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v9, v0, [Ljava/lang/String;

    const/16 v18, 0x0

    .line 141
    const-string v19, "Begin download"

    aput-object v19, v9, v18

    const/16 v18, 0x1

    .line 142
    const-string v19, "Download incremental update (experimental)"

    aput-object v19, v9, v18

    const/16 v18, 0x2

    .line 143
    const-string v19, "Share"

    aput-object v19, v9, v18

    .line 145
    .restart local v9       #mCaption:[Ljava/lang/String;
    const v18, 0x7f09002c

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/s0up/goomanager/RomUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ListView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/s0up/goomanager/RomUpdateActivity;->list:Landroid/widget/ListView;

    .line 146
    new-instance v18, Lcom/s0up/goomanager/LazyAdapter;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11, v9}, Lcom/s0up/goomanager/LazyAdapter;-><init>(Landroid/app/Activity;[Ljava/lang/String;[Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/s0up/goomanager/RomUpdateActivity;->adapter:Landroid/widget/ListAdapter;

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/s0up/goomanager/RomUpdateActivity;->list:Landroid/widget/ListView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/s0up/goomanager/RomUpdateActivity;->adapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_3

    .line 148
    .end local v9           #mCaption:[Ljava/lang/String;
    .end local v11           #mStrings:[Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/s0up/goomanager/RomUpdateActivity;->has_gapps:Ljava/lang/Boolean;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/s0up/goomanager/RomUpdateActivity;->has_incremental:Ljava/lang/Boolean;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 149
    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v11, v0, [Ljava/lang/String;

    const/16 v18, 0x0

    .line 150
    const-string v19, "download"

    aput-object v19, v11, v18

    const/16 v18, 0x1

    .line 151
    const-string v19, "download"

    aput-object v19, v11, v18

    const/16 v18, 0x2

    .line 152
    const-string v19, "download"

    aput-object v19, v11, v18

    const/16 v18, 0x3

    .line 153
    const-string v19, "share"

    aput-object v19, v11, v18

    .line 156
    .restart local v11       #mStrings:[Ljava/lang/String;
    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v9, v0, [Ljava/lang/String;

    const/16 v18, 0x0

    .line 157
    const-string v19, "Begin download"

    aput-object v19, v9, v18

    const/16 v18, 0x1

    .line 158
    const-string v19, "Download GApps"

    aput-object v19, v9, v18

    const/16 v18, 0x2

    .line 159
    const-string v19, "Download incremental update (experimental)"

    aput-object v19, v9, v18

    const/16 v18, 0x3

    .line 160
    const-string v19, "Share"

    aput-object v19, v9, v18

    .line 162
    .restart local v9       #mCaption:[Ljava/lang/String;
    const v18, 0x7f09002c

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/s0up/goomanager/RomUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ListView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/s0up/goomanager/RomUpdateActivity;->list:Landroid/widget/ListView;

    .line 163
    new-instance v18, Lcom/s0up/goomanager/LazyAdapter;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11, v9}, Lcom/s0up/goomanager/LazyAdapter;-><init>(Landroid/app/Activity;[Ljava/lang/String;[Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/s0up/goomanager/RomUpdateActivity;->adapter:Landroid/widget/ListAdapter;

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/s0up/goomanager/RomUpdateActivity;->list:Landroid/widget/ListView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/s0up/goomanager/RomUpdateActivity;->adapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_3

    .line 271
    .end local v9           #mCaption:[Ljava/lang/String;
    .end local v11           #mStrings:[Ljava/lang/String;
    .restart local v15       #txtFileDescription:Landroid/widget/TextView;
    .restart local v16       #txtFileName:Landroid/widget/TextView;
    :cond_9
    const-string v18, "The developer has not input any information about this file."

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4
.end method

.method public share(Ljava/lang/String;)V
    .locals 3
    .parameter "link"

    .prologue
    .line 289
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 290
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    const-string v1, "android.intent.extra.SUBJECT"

    const-string v2, "Via goo-inside.me"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 292
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    const-string v1, "Select an action for sharing"

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/s0up/goomanager/RomUpdateActivity;->startActivity(Landroid/content/Intent;)V

    .line 294
    return-void
.end method
