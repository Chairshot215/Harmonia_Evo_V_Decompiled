.class public Lcom/htc/weatheridlescreen/fusion/EMCFxScreen;
.super Ljava/lang/Object;
.source "EMCFxScreen.java"


# static fields
.field private static final LOG_FLAG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "WIS"

.field private static final PREFIX:Ljava/lang/String; = "[EMCFxScreen] "


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFxScene:Lcom/htc/fusion/fx/FxScene;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/fusion/fx/FxScene;)V
    .locals 1
    .parameter "context"
    .parameter "fxScene"

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/htc/weatheridlescreen/fusion/EMCFxScreen;->mContext:Landroid/content/Context;

    .line 26
    iput-object v0, p0, Lcom/htc/weatheridlescreen/fusion/EMCFxScreen;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    .line 30
    iput-object p1, p0, Lcom/htc/weatheridlescreen/fusion/EMCFxScreen;->mContext:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/htc/weatheridlescreen/fusion/EMCFxScreen;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    .line 32
    invoke-direct {p0}, Lcom/htc/weatheridlescreen/fusion/EMCFxScreen;->hideOthersTimeLineControl()V

    .line 33
    invoke-direct {p0}, Lcom/htc/weatheridlescreen/fusion/EMCFxScreen;->initErrorMessageControl()V

    .line 34
    return-void
.end method

.method private hideOthersTimeLineControl()V
    .locals 17

    .prologue
    .line 64
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/weatheridlescreen/fusion/EMCFxScreen;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    if-nez v14, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    const/4 v5, 0x0

    .line 82
    .local v5, mFxTCLNoPhoto:Lcom/htc/fusion/fx/FxTimelineControl;
    const/4 v6, 0x0

    .line 83
    .local v6, mFxTCLNoSD:Lcom/htc/fusion/fx/FxTimelineControl;
    const/4 v9, 0x0

    .line 84
    .local v9, mFxTCLSDBroken:Lcom/htc/fusion/fx/FxTimelineControl;
    const/4 v10, 0x0

    .line 85
    .local v10, mFxTCLSDUsb:Lcom/htc/fusion/fx/FxTimelineControl;
    const/4 v7, 0x0

    .line 86
    .local v7, mFxTCLNoStock:Lcom/htc/fusion/fx/FxTimelineControl;
    const/4 v8, 0x0

    .line 87
    .local v8, mFxTCLPeople:Lcom/htc/fusion/fx/FxTimelineControl;
    const/4 v12, 0x0

    .line 88
    .local v12, mFxTCLSNUpdate:Lcom/htc/fusion/fx/FxTimelineControl;
    const/4 v11, 0x0

    .line 89
    .local v11, mFxTCLSNLogin:Lcom/htc/fusion/fx/FxTimelineControl;
    const/4 v3, 0x0

    .line 90
    .local v3, mFxTCLBTNLogin:Lcom/htc/fusion/fx/FxTimelineControl;
    const/4 v4, 0x0

    .line 92
    .local v4, mFxTCLCOMP:Lcom/htc/fusion/fx/FxTimelineControl;
    const/16 v14, 0xa

    new-array v13, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "timeline.error_nophoto"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    const-string v15, "timeline.error_nosd"

    aput-object v15, v13, v14

    const/4 v14, 0x2

    const-string v15, "timeline.error_sdbroken"

    aput-object v15, v13, v14

    const/4 v14, 0x3

    const-string v15, "timeline.error_sdusb"

    aput-object v15, v13, v14

    const/4 v14, 0x4

    const-string v15, "timeline.error_nostock"

    aput-object v15, v13, v14

    const/4 v14, 0x5

    const-string v15, "timeline.error_people"

    aput-object v15, v13, v14

    const/4 v14, 0x6

    const-string v15, "timeline.error_sn_update"

    aput-object v15, v13, v14

    const/4 v14, 0x7

    const-string v15, "timeline.error_snlogin"

    aput-object v15, v13, v14

    const/16 v14, 0x8

    const-string v15, "t.btn_login_positionY"

    aput-object v15, v13, v14

    const/16 v14, 0x9

    const-string v15, "comp.textcomp_error"

    aput-object v15, v13, v14

    .line 104
    .local v13, mNameArray:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/weatheridlescreen/fusion/EMCFxScreen;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v14, v13}, Lcom/htc/fusion/fx/FxScene;->getDescendants([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;

    move-result-object v2

    .line 108
    .local v2, mFxItemArray:[Lcom/htc/fusion/fx/FxObject;
    const/4 v14, 0x0

    :try_start_0
    aget-object v14, v2, v14

    move-object v0, v14

    check-cast v0, Lcom/htc/fusion/fx/FxTimelineControl;

    move-object v5, v0

    .line 109
    const/4 v14, 0x1

    aget-object v14, v2, v14

    move-object v0, v14

    check-cast v0, Lcom/htc/fusion/fx/FxTimelineControl;

    move-object v6, v0

    .line 110
    const/4 v14, 0x2

    aget-object v14, v2, v14

    move-object v0, v14

    check-cast v0, Lcom/htc/fusion/fx/FxTimelineControl;

    move-object v9, v0

    .line 111
    const/4 v14, 0x3

    aget-object v14, v2, v14

    move-object v0, v14

    check-cast v0, Lcom/htc/fusion/fx/FxTimelineControl;

    move-object v10, v0

    .line 112
    const/4 v14, 0x4

    aget-object v14, v2, v14

    move-object v0, v14

    check-cast v0, Lcom/htc/fusion/fx/FxTimelineControl;

    move-object v7, v0

    .line 113
    const/4 v14, 0x5

    aget-object v14, v2, v14

    move-object v0, v14

    check-cast v0, Lcom/htc/fusion/fx/FxTimelineControl;

    move-object v8, v0

    .line 114
    const/4 v14, 0x6

    aget-object v14, v2, v14

    move-object v0, v14

    check-cast v0, Lcom/htc/fusion/fx/FxTimelineControl;

    move-object v12, v0

    .line 115
    const/4 v14, 0x7

    aget-object v14, v2, v14

    move-object v0, v14

    check-cast v0, Lcom/htc/fusion/fx/FxTimelineControl;

    move-object v11, v0

    .line 116
    const/16 v14, 0x8

    aget-object v14, v2, v14

    move-object v0, v14

    check-cast v0, Lcom/htc/fusion/fx/FxTimelineControl;

    move-object v3, v0

    .line 117
    const/16 v14, 0x9

    aget-object v14, v2, v14

    move-object v0, v14

    check-cast v0, Lcom/htc/fusion/fx/FxTimelineControl;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_1
    if-eqz v5, :cond_2

    .line 140
    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 141
    :cond_2
    if-eqz v6, :cond_3

    .line 142
    const/4 v14, 0x0

    invoke-virtual {v6, v14}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 143
    :cond_3
    if-eqz v9, :cond_4

    .line 144
    const/4 v14, 0x0

    invoke-virtual {v9, v14}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 145
    :cond_4
    if-eqz v10, :cond_5

    .line 146
    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 147
    :cond_5
    if-eqz v7, :cond_6

    .line 148
    const/4 v14, 0x0

    invoke-virtual {v7, v14}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 149
    :cond_6
    if-eqz v8, :cond_7

    .line 150
    const/4 v14, 0x0

    invoke-virtual {v8, v14}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 151
    :cond_7
    if-eqz v11, :cond_8

    .line 152
    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 153
    :cond_8
    if-eqz v3, :cond_9

    .line 154
    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 155
    :cond_9
    if-eqz v12, :cond_a

    .line 156
    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 157
    :cond_a
    if-eqz v4, :cond_0

    .line 158
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 119
    :catch_0
    move-exception v1

    .line 121
    .local v1, e:Ljava/lang/Exception;
    const-string v14, "WIS"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[EMCFxScreen] hideOthersTimeLineControl() - Exception = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private initErrorMessageControl()V
    .locals 5

    .prologue
    .line 39
    iget-object v3, p0, Lcom/htc/weatheridlescreen/fusion/EMCFxScreen;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    if-nez v3, :cond_1

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    iget-object v3, p0, Lcom/htc/weatheridlescreen/fusion/EMCFxScreen;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    const-string v4, "timeline.error_noweather"

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/FxTimelineControl;

    .line 44
    .local v0, mFxTLCNoWeather:Lcom/htc/fusion/fx/FxTimelineControl;
    if-eqz v0, :cond_0

    .line 46
    const-string v3, "textlabel.error_weather_eventtime"

    invoke-virtual {v0, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v2

    check-cast v2, Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 48
    .local v2, tlErrorMessageET:Lcom/htc/fusion/fx/controls/FxTextLabel;
    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/htc/weatheridlescreen/fusion/EMCFxScreen;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_2

    .line 49
    iget-object v3, p0, Lcom/htc/weatheridlescreen/fusion/EMCFxScreen;->mContext:Landroid/content/Context;

    const v4, 0x7f050006

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 51
    :cond_2
    const-string v3, "textlabel.error_weather"

    invoke-virtual {v0, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 53
    .local v1, tlErrorMessage:Lcom/htc/fusion/fx/controls/FxTextLabel;
    if-eqz v1, :cond_3

    .line 54
    iget-object v3, p0, Lcom/htc/weatheridlescreen/fusion/EMCFxScreen;->mContext:Landroid/content/Context;

    const v4, 0x7f050007

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 56
    :cond_3
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 57
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    goto :goto_0
.end method
