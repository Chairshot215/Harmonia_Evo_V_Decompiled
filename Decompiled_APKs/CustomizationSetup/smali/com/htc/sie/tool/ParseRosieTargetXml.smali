.class public Lcom/htc/sie/tool/ParseRosieTargetXml;
.super Lcom/htc/sie/tool/ParseTargetXml;
.source "ParseRosieTargetXml.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mRosieCWModuleBundle:Landroid/os/Bundle;

.field private mRosieModuleBundle:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/htc/sie/tool/ParseRosieTargetXml;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sie/tool/ParseRosieTargetXml;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1}, Lcom/htc/sie/tool/ParseTargetXml;-><init>(Landroid/content/Context;)V

    .line 18
    iput-object v0, p0, Lcom/htc/sie/tool/ParseRosieTargetXml;->mRosieModuleBundle:Landroid/os/Bundle;

    .line 19
    iput-object v0, p0, Lcom/htc/sie/tool/ParseRosieTargetXml;->mRosieCWModuleBundle:Landroid/os/Bundle;

    .line 24
    return-void
.end method

.method private rosieParsePostprocess()V
    .locals 27

    .prologue
    .line 28
    sget-object v24, Lcom/htc/sie/tool/ParseRosieTargetXml;->TAG:Ljava/lang/String;

    const-string v25, "rosieParserPostprocess()+"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sie/tool/ParseTargetXml;->mRunXUtil:Lcom/htc/sie/tool/RunXUtility;

    move-object/from16 v24, v0

    const-string v25, "application_Launcher"

    invoke-virtual/range {v24 .. v25}, Lcom/htc/sie/tool/RunXUtility;->getModule(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/sie/tool/ParseRosieTargetXml;->mRosieModuleBundle:Landroid/os/Bundle;

    .line 31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sie/tool/ParseRosieTargetXml;->mRosieModuleBundle:Landroid/os/Bundle;

    move-object/from16 v24, v0

    const-string v25, "scene_list"

    invoke-virtual/range {v24 .. v25}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v19

    .line 32
    .local v19, siescenelistbundle:Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sie/tool/ParseRosieTargetXml;->mRosieCWModuleBundle:Landroid/os/Bundle;

    move-object/from16 v24, v0

    const-string v25, "scene_list"

    invoke-virtual/range {v24 .. v25}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    .line 33
    .local v11, cwscenelistbundle:Landroid/os/Bundle;
    invoke-virtual/range {v19 .. v19}, Landroid/os/Bundle;->size()I

    move-result v18

    .line 34
    .local v18, sieScenelistSize:I
    const/4 v6, 0x0

    .line 35
    .local v6, cwbScenelistSize:I
    if-eqz v11, :cond_0

    .line 36
    invoke-virtual {v11}, Landroid/os/Bundle;->size()I

    move-result v6

    .line 43
    :goto_0
    const/4 v15, 0x1

    .local v15, i:I
    :goto_1
    move/from16 v0, v18

    if-gt v15, v0, :cond_1

    .line 44
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "plenty_set"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 45
    .local v4, b:Landroid/os/Bundle;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "plenty_set"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    add-int v25, v15, v6

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v11, v0, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 43
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 39
    .end local v4           #b:Landroid/os/Bundle;
    .end local v15           #i:I
    :cond_0
    new-instance v11, Landroid/os/Bundle;

    .end local v11           #cwscenelistbundle:Landroid/os/Bundle;
    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .restart local v11       #cwscenelistbundle:Landroid/os/Bundle;
    goto :goto_0

    .line 47
    .restart local v15       #i:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sie/tool/ParseRosieTargetXml;->mRosieCWModuleBundle:Landroid/os/Bundle;

    move-object/from16 v24, v0

    const-string v25, "scene_list"

    invoke-virtual/range {v24 .. v25}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 48
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sie/tool/ParseRosieTargetXml;->mRosieCWModuleBundle:Landroid/os/Bundle;

    move-object/from16 v24, v0

    const-string v25, "scene_list"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v11}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 51
    const/16 v24, 0x6

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v24, 0x0

    const-string v25, "_wallpaper"

    aput-object v25, v17, v24

    const/16 v24, 0x1

    const-string v25, "_shortcuts"

    aput-object v25, v17, v24

    const/16 v24, 0x2

    const-string v25, "_widgets"

    aput-object v25, v17, v24

    const/16 v24, 0x3

    const-string v25, "_app_widgets"

    aput-object v25, v17, v24

    const/16 v24, 0x4

    const-string v25, "_fx_widgets"

    aput-object v25, v17, v24

    const/16 v24, 0x5

    const-string v25, "_quicklaunch"

    aput-object v25, v17, v24

    .line 52
    .local v17, rosiefunction:[Ljava/lang/String;
    const/4 v15, 0x1

    :goto_2
    move/from16 v0, v18

    if-gt v15, v0, :cond_4

    .line 53
    sget-object v24, Lcom/htc/sie/tool/ParseRosieTargetXml;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Proces original rosie scene "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const/16 v16, 0x0

    .local v16, j:I
    :goto_3
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v16

    move/from16 v1, v24

    if-ge v0, v1, :cond_3

    .line 55
    aget-object v23, v17, v16

    .line 56
    .local v23, strfunction:Ljava/lang/String;
    sget-object v24, Lcom/htc/sie/tool/ParseRosieTargetXml;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Proces original rosie function "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sie/tool/ParseRosieTargetXml;->mRosieModuleBundle:Landroid/os/Bundle;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 58
    .restart local v4       #b:Landroid/os/Bundle;
    if-eqz v4, :cond_2

    .line 59
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    add-int v25, v15, v6

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 60
    .local v14, functionName:Ljava/lang/String;
    sget-object v24, Lcom/htc/sie/tool/ParseRosieTargetXml;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Put function bundle to cw rosie module bundle : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sie/tool/ParseRosieTargetXml;->mRosieCWModuleBundle:Landroid/os/Bundle;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v14, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 54
    .end local v14           #functionName:Ljava/lang/String;
    :cond_2
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_3

    .line 52
    .end local v4           #b:Landroid/os/Bundle;
    .end local v23           #strfunction:Ljava/lang/String;
    :cond_3
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2

    .line 67
    .end local v16           #j:I
    :cond_4
    sget-object v24, Lcom/htc/sie/tool/ParseRosieTargetXml;->TAG:Ljava/lang/String;

    const-string v25, "start process extra_wallpapers."

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sie/tool/ParseRosieTargetXml;->mRosieModuleBundle:Landroid/os/Bundle;

    move-object/from16 v24, v0

    const-string v25, "extra_wallpapers"

    invoke-virtual/range {v24 .. v25}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v12

    .line 69
    .local v12, extrawallpaperbundle:Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sie/tool/ParseRosieTargetXml;->mRosieCWModuleBundle:Landroid/os/Bundle;

    move-object/from16 v24, v0

    const-string v25, "extra_wallpapers"

    invoke-virtual/range {v24 .. v25}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    .line 70
    .local v9, cwextrawallpaperbundle:Landroid/os/Bundle;
    if-eqz v12, :cond_6

    .line 71
    if-nez v9, :cond_7

    .line 72
    sget-object v24, Lcom/htc/sie/tool/ParseRosieTargetXml;->TAG:Ljava/lang/String;

    const-string v25, "CW does not contain extra wallpaper."

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    new-instance v9, Landroid/os/Bundle;

    .end local v9           #cwextrawallpaperbundle:Landroid/os/Bundle;
    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 74
    .restart local v9       #cwextrawallpaperbundle:Landroid/os/Bundle;
    invoke-virtual {v12}, Landroid/os/Bundle;->size()I

    move-result v13

    .line 75
    .local v13, extrawallpapersize:I
    const/4 v15, 0x1

    :goto_4
    if-gt v15, v13, :cond_5

    .line 76
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "plenty_set"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 77
    .restart local v4       #b:Landroid/os/Bundle;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "plenty_set"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v9, v0, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 75
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 79
    .end local v4           #b:Landroid/os/Bundle;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sie/tool/ParseRosieTargetXml;->mRosieCWModuleBundle:Landroid/os/Bundle;

    move-object/from16 v24, v0

    const-string v25, "extra_wallpapers"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v12}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 92
    .end local v13           #extrawallpapersize:I
    :cond_6
    const/16 v24, 0x4

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v24, 0x0

    const-string v25, "applications_hide"

    aput-object v25, v20, v24

    const/16 v24, 0x1

    const-string v25, "htc_widgets_hide"

    aput-object v25, v20, v24

    const/16 v24, 0x2

    const-string v25, "htc_fusion_widgets_hide"

    aput-object v25, v20, v24

    const/16 v24, 0x3

    const-string v25, "default_quicklaunch"

    aput-object v25, v20, v24

    .line 93
    .local v20, specialfuncs:[Ljava/lang/String;
    const/4 v15, 0x0

    :goto_5
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v15, v0, :cond_b

    .line 94
    aget-object v22, v20, v15

    .line 95
    .local v22, strfuncs:Ljava/lang/String;
    sget-object v24, Lcom/htc/sie/tool/ParseRosieTargetXml;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Proces function "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sie/tool/ParseRosieTargetXml;->mRosieModuleBundle:Landroid/os/Bundle;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v21

    .line 97
    .local v21, srcbundle:Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sie/tool/ParseRosieTargetXml;->mRosieCWModuleBundle:Landroid/os/Bundle;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 98
    .local v7, cwbundle:Landroid/os/Bundle;
    if-nez v7, :cond_a

    .line 99
    sget-object v24, Lcom/htc/sie/tool/ParseRosieTargetXml;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "CW does not contain function "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    if-eqz v21, :cond_9

    .line 101
    new-instance v7, Landroid/os/Bundle;

    .end local v7           #cwbundle:Landroid/os/Bundle;
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 102
    .restart local v7       #cwbundle:Landroid/os/Bundle;
    invoke-virtual/range {v21 .. v21}, Landroid/os/Bundle;->size()I

    move-result v5

    .line 103
    .local v5, bundlesize:I
    const/16 v16, 0x1

    .restart local v16       #j:I
    :goto_6
    move/from16 v0, v16

    if-gt v0, v5, :cond_8

    .line 104
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "plenty_set"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 105
    .restart local v4       #b:Landroid/os/Bundle;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "plenty_set"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v7, v0, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 103
    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    .line 81
    .end local v4           #b:Landroid/os/Bundle;
    .end local v5           #bundlesize:I
    .end local v7           #cwbundle:Landroid/os/Bundle;
    .end local v16           #j:I
    .end local v20           #specialfuncs:[Ljava/lang/String;
    .end local v21           #srcbundle:Landroid/os/Bundle;
    .end local v22           #strfuncs:Ljava/lang/String;
    :cond_7
    sget-object v24, Lcom/htc/sie/tool/ParseRosieTargetXml;->TAG:Ljava/lang/String;

    const-string v25, "CW dcontain extra wallpaper, append original extrawallpaper."

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {v12}, Landroid/os/Bundle;->size()I

    move-result v13

    .line 83
    .restart local v13       #extrawallpapersize:I
    invoke-virtual {v9}, Landroid/os/Bundle;->size()I

    move-result v10

    .line 84
    .local v10, cwextrawallpapersize:I
    const/4 v15, 0x1

    :goto_7
    if-gt v15, v13, :cond_6

    .line 85
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "plenty_set"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 86
    .restart local v4       #b:Landroid/os/Bundle;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "plenty_set"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    add-int v25, v15, v10

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v9, v0, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 84
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    .line 107
    .end local v4           #b:Landroid/os/Bundle;
    .end local v10           #cwextrawallpapersize:I
    .end local v13           #extrawallpapersize:I
    .restart local v5       #bundlesize:I
    .restart local v7       #cwbundle:Landroid/os/Bundle;
    .restart local v16       #j:I
    .restart local v20       #specialfuncs:[Ljava/lang/String;
    .restart local v21       #srcbundle:Landroid/os/Bundle;
    .restart local v22       #strfuncs:Ljava/lang/String;
    :cond_8
    sget-object v24, Lcom/htc/sie/tool/ParseRosieTargetXml;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Put function bundle to cw bundle: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sie/tool/ParseRosieTargetXml;->mRosieCWModuleBundle:Landroid/os/Bundle;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 93
    .end local v5           #bundlesize:I
    .end local v16           #j:I
    :cond_9
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_5

    .line 111
    :cond_a
    sget-object v24, Lcom/htc/sie/tool/ParseRosieTargetXml;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "CW contain function "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    if-eqz v21, :cond_9

    .line 114
    invoke-virtual/range {v21 .. v21}, Landroid/os/Bundle;->size()I

    move-result v5

    .line 115
    .restart local v5       #bundlesize:I
    invoke-virtual {v7}, Landroid/os/Bundle;->size()I

    move-result v8

    .line 116
    .local v8, cwbundlesize:I
    const/16 v16, 0x1

    .restart local v16       #j:I
    :goto_8
    move/from16 v0, v16

    if-gt v0, v5, :cond_9

    .line 117
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "plenty_set"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 118
    .restart local v4       #b:Landroid/os/Bundle;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "plenty_set"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    add-int v25, v16, v8

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v7, v0, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 116
    add-int/lit8 v16, v16, 0x1

    goto :goto_8

    .line 125
    .end local v4           #b:Landroid/os/Bundle;
    .end local v5           #bundlesize:I
    .end local v7           #cwbundle:Landroid/os/Bundle;
    .end local v8           #cwbundlesize:I
    .end local v16           #j:I
    .end local v21           #srcbundle:Landroid/os/Bundle;
    .end local v22           #strfuncs:Ljava/lang/String;
    :cond_b
    const-string v24, "application"

    const-string v25, "Launcher"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sie/tool/ParseRosieTargetXml;->mRosieCWModuleBundle:Landroid/os/Bundle;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/sie/tool/ParseRosieTargetXml;->saveToDb(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 126
    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;Z)Z
    .locals 9
    .parameter "path"
    .parameter "bSaveAll"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 129
    sget-object v7, Lcom/htc/sie/tool/ParseRosieTargetXml;->TAG:Ljava/lang/String;

    const-string v8, "Start parsing"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const/4 v2, 0x0

    .line 132
    .local v2, fis:Ljava/io/FileInputStream;
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    iput-object v7, p0, Lcom/htc/sie/tool/ParseRosieTargetXml;->mRosieCWModuleBundle:Landroid/os/Bundle;

    .line 133
    const/4 v1, 0x0

    .line 135
    .local v1, eventType:I
    iput-boolean p2, p0, Lcom/htc/sie/tool/ParseTargetXml;->mSaveAll:Z

    .line 138
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v7

    invoke-virtual {v7}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/sie/tool/ParseTargetXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 139
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2

    .line 141
    .end local v2           #fis:Ljava/io/FileInputStream;
    .local v3, fis:Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v7

    if-gtz v7, :cond_0

    move-object v2, v3

    .line 199
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :goto_0
    return v5

    .line 145
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :cond_0
    iget-object v7, p0, Lcom/htc/sie/tool/ParseTargetXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v8, 0x0

    invoke-interface {v7, v3, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 146
    iget-object v7, p0, Lcom/htc/sie/tool/ParseTargetXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_7

    move-result v1

    .line 156
    :cond_1
    if-nez v1, :cond_4

    .line 173
    :cond_2
    :goto_1
    :try_start_2
    iget-object v5, p0, Lcom/htc/sie/tool/ParseTargetXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    move-result v1

    .line 181
    if-ne v1, v6, :cond_1

    .line 184
    :goto_2
    :try_start_3
    iget-object v5, p0, Lcom/htc/sie/tool/ParseTargetXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v7, 0x0

    invoke-interface {v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 186
    if-eqz v3, :cond_3

    .line 187
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    .line 197
    :cond_3
    :goto_3
    invoke-direct {p0}, Lcom/htc/sie/tool/ParseRosieTargetXml;->rosieParsePostprocess()V

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    move v5, v6

    .line 199
    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_4
    goto :goto_0

    .line 149
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 150
    .local v0, e:Ljava/io/IOException;
    :goto_5
    goto :goto_0

    .line 151
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 152
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_6
    goto :goto_0

    .line 158
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :cond_4
    if-eq v1, v6, :cond_2

    .line 160
    const/4 v5, 0x2

    if-ne v1, v5, :cond_5

    .line 161
    iget-object v5, p0, Lcom/htc/sie/tool/ParseTargetXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 163
    .local v4, name:Ljava/lang/String;
    const-string v5, "customization_form"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 164
    invoke-virtual {p0}, Lcom/htc/sie/tool/ParseRosieTargetXml;->parseCustomziationForm()V

    goto :goto_1

    .line 166
    .end local v4           #name:Ljava/lang/String;
    :cond_5
    const/4 v5, 0x3

    if-eq v1, v5, :cond_2

    .line 168
    const/4 v5, 0x4

    if-ne v1, v5, :cond_2

    goto :goto_1

    .line 174
    :catch_3
    move-exception v0

    .line 175
    .restart local v0       #e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_2

    .line 177
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_4
    move-exception v0

    .line 178
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 189
    .end local v0           #e:Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 190
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_3

    .line 192
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_6
    move-exception v0

    .line 193
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 151
    .end local v0           #e:Ljava/io/IOException;
    :catch_7
    move-exception v0

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_6

    .line 149
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_8
    move-exception v0

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_5

    .line 147
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_9
    move-exception v0

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_4
.end method

.method protected parseCategory(Ljava/lang/String;)V
    .locals 8
    .parameter "category"

    .prologue
    .line 205
    const/4 v0, 0x0

    .line 209
    .local v0, bEnd:Z
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/htc/sie/tool/ParseTargetXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 220
    .local v2, eventType:I
    const/4 v5, 0x2

    if-ne v2, v5, :cond_2

    .line 221
    iget-object v5, p0, Lcom/htc/sie/tool/ParseTargetXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 223
    .local v4, name:Ljava/lang/String;
    const-string v5, "module"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 224
    iget-object v5, p0, Lcom/htc/sie/tool/ParseTargetXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v6, 0x0

    const-string v7, "name"

    invoke-interface {v5, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 226
    .local v3, module:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 227
    iget-object v5, p0, Lcom/htc/sie/tool/ParseRosieTargetXml;->mRosieCWModuleBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v5}, Lcom/htc/sie/tool/ParseRosieTargetXml;->parseModule(Landroid/os/Bundle;)V

    .line 240
    .end local v3           #module:Ljava/lang/String;
    .end local v4           #name:Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v0, :cond_0

    .line 241
    .end local v2           #eventType:I
    :goto_1
    return-void

    .line 210
    :catch_0
    move-exception v1

    .line 211
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 212
    const/4 v0, 0x1

    .line 213
    goto :goto_1

    .line 214
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v1

    .line 215
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 216
    const/4 v0, 0x1

    .line 217
    goto :goto_1

    .line 231
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #eventType:I
    :cond_2
    const/4 v5, 0x3

    if-ne v2, v5, :cond_3

    .line 232
    iget-object v5, p0, Lcom/htc/sie/tool/ParseTargetXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 234
    .restart local v4       #name:Ljava/lang/String;
    const-string v5, "category"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 235
    const/4 v0, 0x1

    goto :goto_0

    .line 237
    .end local v4           #name:Ljava/lang/String;
    :cond_3
    const/4 v5, 0x1

    if-ne v2, v5, :cond_1

    .line 238
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected parseFunction(Landroid/os/Bundle;)V
    .locals 8
    .parameter "bundle"

    .prologue
    .line 246
    const/4 v0, 0x0

    .line 247
    .local v0, bEnd:Z
    const/4 v5, 0x0

    iput v5, p0, Lcom/htc/sie/tool/ParseTargetXml;->mSetCount:I

    .line 252
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/htc/sie/tool/ParseTargetXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 263
    .local v2, eventType:I
    const/4 v5, 0x2

    if-ne v2, v5, :cond_2

    .line 264
    iget-object v5, p0, Lcom/htc/sie/tool/ParseTargetXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 266
    .local v3, name:Ljava/lang/String;
    const-string v5, "set"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 267
    iget-object v5, p0, Lcom/htc/sie/tool/ParseTargetXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v6, 0x0

    const-string v7, "name"

    invoke-interface {v5, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 269
    .local v4, set:Ljava/lang/String;
    iget v5, p0, Lcom/htc/sie/tool/ParseTargetXml;->mSetCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/htc/sie/tool/ParseTargetXml;->mSetCount:I

    .line 270
    invoke-virtual {p0, p1, v4}, Lcom/htc/sie/tool/ParseRosieTargetXml;->parseSet(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 281
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #set:Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v0, :cond_0

    .line 282
    .end local v2           #eventType:I
    :goto_1
    return-void

    .line 253
    :catch_0
    move-exception v1

    .line 254
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 255
    const/4 v0, 0x1

    .line 256
    goto :goto_1

    .line 257
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v1

    .line 258
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 259
    const/4 v0, 0x1

    .line 260
    goto :goto_1

    .line 272
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #eventType:I
    :cond_2
    const/4 v5, 0x3

    if-ne v2, v5, :cond_3

    .line 273
    iget-object v5, p0, Lcom/htc/sie/tool/ParseTargetXml;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 275
    .restart local v3       #name:Ljava/lang/String;
    const-string v5, "function"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 276
    const/4 v0, 0x1

    goto :goto_0

    .line 278
    .end local v3           #name:Ljava/lang/String;
    :cond_3
    const/4 v5, 0x1

    if-ne v2, v5, :cond_1

    .line 279
    const/4 v0, 0x1

    goto :goto_0
.end method
