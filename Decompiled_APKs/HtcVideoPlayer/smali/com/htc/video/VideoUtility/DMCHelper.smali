.class public Lcom/htc/video/VideoUtility/DMCHelper;
.super Ljava/lang/Object;
.source "DMCHelper.java"


# static fields
.field public static final CLASS_DMC:Ljava/lang/String; = "com.htc.dmc.HtcDMCAlbum"

.field public static final DMRSERVER_PICKPHOTO:I = 0x1

.field public static final DMRSERVER_PICKVIDEO:I = 0x2

.field public static final LOG_TAG:Ljava/lang/String; = "DMCHelper"

.field public static final PACKAGE_DMC:Ljava/lang/String; = "com.htc.dmc"

.field private static gDMR:Ljava/lang/String;

.field private static gDMS:Ljava/lang/String;

.field private static gFilterCap:I

.field private static gInDirect:Z

.field private static gPickDMRParam:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    sput-object v1, Lcom/htc/video/VideoUtility/DMCHelper;->gDMR:Ljava/lang/String;

    .line 20
    sput-object v1, Lcom/htc/video/VideoUtility/DMCHelper;->gDMS:Ljava/lang/String;

    .line 21
    const/4 v0, -0x1

    sput v0, Lcom/htc/video/VideoUtility/DMCHelper;->gFilterCap:I

    .line 22
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/video/VideoUtility/DMCHelper;->gInDirect:Z

    .line 23
    sput-object v1, Lcom/htc/video/VideoUtility/DMCHelper;->gPickDMRParam:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDMR(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "bRefresh"

    .prologue
    .line 213
    sget-boolean v1, Lcom/htc/video/Common/Constants;->DISABLE_DLNA:Z

    if-eqz v1, :cond_0

    .line 214
    const/4 v1, 0x0

    .line 223
    :goto_0
    return-object v1

    .line 216
    :cond_0
    if-nez p1, :cond_1

    sget-object v1, Lcom/htc/video/VideoUtility/DMCHelper;->gDMR:Ljava/lang/String;

    goto :goto_0

    .line 218
    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 219
    .local v0, sr:Landroid/content/SharedPreferences;
    if-nez v0, :cond_2

    sget-object v1, Lcom/htc/video/VideoUtility/DMCHelper;->gDMR:Ljava/lang/String;

    goto :goto_0

    .line 221
    :cond_2
    const-string v1, "DMR"

    sget-object v2, Lcom/htc/video/VideoUtility/DMCHelper;->gDMR:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/htc/video/VideoUtility/DMCHelper;->gDMR:Ljava/lang/String;

    .line 223
    sget-object v1, Lcom/htc/video/VideoUtility/DMCHelper;->gDMR:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getDMS(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "bRefresh"

    .prologue
    .line 246
    sget-boolean v1, Lcom/htc/video/Common/Constants;->DISABLE_DLNA:Z

    if-eqz v1, :cond_0

    .line 247
    const/4 v1, 0x0

    .line 256
    :goto_0
    return-object v1

    .line 249
    :cond_0
    if-nez p1, :cond_1

    sget-object v1, Lcom/htc/video/VideoUtility/DMCHelper;->gDMS:Ljava/lang/String;

    goto :goto_0

    .line 251
    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 252
    .local v0, sr:Landroid/content/SharedPreferences;
    if-nez v0, :cond_2

    sget-object v1, Lcom/htc/video/VideoUtility/DMCHelper;->gDMS:Ljava/lang/String;

    goto :goto_0

    .line 254
    :cond_2
    const-string v1, "DMS"

    sget-object v2, Lcom/htc/video/VideoUtility/DMCHelper;->gDMS:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/htc/video/VideoUtility/DMCHelper;->gDMS:Ljava/lang/String;

    .line 256
    sget-object v1, Lcom/htc/video/VideoUtility/DMCHelper;->gDMS:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getFilterCap(Landroid/content/Context;Z)I
    .locals 3
    .parameter "context"
    .parameter "bRefresh"

    .prologue
    .line 279
    sget-boolean v1, Lcom/htc/video/Common/Constants;->DISABLE_DLNA:Z

    if-eqz v1, :cond_0

    .line 280
    const/4 v1, -0x1

    .line 289
    :goto_0
    return v1

    .line 282
    :cond_0
    if-nez p1, :cond_1

    sget v1, Lcom/htc/video/VideoUtility/DMCHelper;->gFilterCap:I

    goto :goto_0

    .line 284
    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 285
    .local v0, sr:Landroid/content/SharedPreferences;
    if-nez v0, :cond_2

    sget v1, Lcom/htc/video/VideoUtility/DMCHelper;->gFilterCap:I

    goto :goto_0

    .line 287
    :cond_2
    const-string v1, "FilterCap"

    sget v2, Lcom/htc/video/VideoUtility/DMCHelper;->gFilterCap:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/htc/video/VideoUtility/DMCHelper;->gFilterCap:I

    .line 289
    sget v1, Lcom/htc/video/VideoUtility/DMCHelper;->gFilterCap:I

    goto :goto_0
.end method

.method public static getPickDMRParam()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/htc/video/VideoUtility/DMCHelper;->gPickDMRParam:Ljava/lang/Object;

    return-object v0
.end method

.method public static launchDMCLocalVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7
    .parameter "activity"
    .parameter "dmr"
    .parameter "filePath"
    .parameter "mimetype"
    .parameter "params"

    .prologue
    .line 178
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/htc/video/VideoUtility/DMCHelper;->setFilterCap(Landroid/content/Context;I)V

    .line 181
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/htc/video/VideoUtility/DMCHelper;->launchLocalDMC(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static launchDMCServerVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 8
    .parameter "activity"
    .parameter "dmr"
    .parameter "server"
    .parameter "container"
    .parameter "content"
    .parameter "params"

    .prologue
    .line 186
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/htc/video/VideoUtility/DMCHelper;->setFilterCap(Landroid/content/Context;I)V

    .line 190
    const-string v5, "com.htc.album/video"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    invoke-static/range {v0 .. v7}, Lcom/htc/video/VideoUtility/DMCHelper;->launchServerDMC(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method private static launchLocalDMC(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 9
    .parameter "activity"
    .parameter "dmr"
    .parameter "mode"
    .parameter "filePath"
    .parameter "content"
    .parameter "type"
    .parameter "params"

    .prologue
    const/4 v1, 0x0

    .line 62
    const/4 v3, 0x0

    .line 63
    .local v3, idArray:[I
    if-eqz p6, :cond_0

    .line 64
    const-string v6, "DLNA_IDLIST"

    invoke-virtual {p6, v6}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    .line 66
    :cond_0
    const-string v7, "DMCHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "launch local DMC. dmr: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", filePath "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", list "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v3, :cond_4

    const-string v6, "None"

    :goto_0
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/4 v5, 0x3

    .line 70
    .local v5, interval:I
    :try_start_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "slide_show_duration_setting"

    const-string v8, "3"

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    .line 77
    :goto_1
    invoke-static {p0, v1}, Lcom/htc/video/VideoUtility/DMCHelper;->setDMS(Landroid/content/Context;Ljava/lang/String;)V

    .line 78
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 79
    .local v4, intent:Landroid/content/Intent;
    const-string v6, "Render"

    invoke-virtual {v4, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    const-string v6, "cookie"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 81
    const-string v6, "Mode"

    invoke-virtual {v4, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 82
    const-string v6, "filepath"

    invoke-virtual {v4, v6, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    const-string v6, "content"

    invoke-virtual {v4, v6, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    const-string v6, "Extras"

    invoke-virtual {v4, v6, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 85
    const-string v6, "interval"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 86
    if-eqz v3, :cond_1

    .line 87
    const-string v6, "pushlist"

    invoke-virtual {v4, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 88
    :cond_1
    const-string v6, "com.htc.dmc"

    const-string v7, "com.htc.dmc.HtcDMCAlbum"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    invoke-virtual {v4, p5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    const/high16 v6, 0x400

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 94
    :try_start_1
    invoke-virtual {p0, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 102
    const-string v6, "DMCHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Finish activity "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {p0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 106
    .local v0, actParent:Landroid/app/Activity;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v1

    .line 107
    .local v1, actTop:Landroid/app/Activity;
    :cond_2
    if-nez v1, :cond_5

    if-nez v0, :cond_3

    move-object v0, p0

    .line 108
    :cond_3
    :goto_2
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 109
    .end local v0           #actParent:Landroid/app/Activity;
    .end local v1           #actTop:Landroid/app/Activity;
    :goto_3
    return-void

    .line 66
    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #interval:I
    :cond_4
    array-length v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto/16 :goto_0

    .line 96
    .restart local v4       #intent:Landroid/content/Intent;
    .restart local v5       #interval:I
    :catch_0
    move-exception v2

    .line 98
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "DMCHelper"

    const-string v7, "start dmc activity fail"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #actParent:Landroid/app/Activity;
    .restart local v1       #actTop:Landroid/app/Activity;
    :cond_5
    move-object v0, v1

    .line 107
    goto :goto_2

    .line 72
    .end local v0           #actParent:Landroid/app/Activity;
    .end local v1           #actTop:Landroid/app/Activity;
    .end local v4           #intent:Landroid/content/Intent;
    :catch_1
    move-exception v6

    goto/16 :goto_1
.end method

.method private static launchServerDMC(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 15
    .parameter "activity"
    .parameter "dmr"
    .parameter "server"
    .parameter "container"
    .parameter "content"
    .parameter "type"
    .parameter "mode"
    .parameter "params"

    .prologue
    .line 113
    const-string v12, "DMCHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "launch server DMC. dmr: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", server "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", content "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p4

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    move-object/from16 v0, p2

    invoke-static {p0, v0}, Lcom/htc/video/VideoUtility/DMCHelper;->setDMS(Landroid/content/Context;Ljava/lang/String;)V

    .line 116
    const/4 v8, 0x3

    .line 119
    .local v8, interval:I
    :try_start_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v12

    const-string v13, "slide_show_duration_setting"

    const-string v14, "3"

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    .line 126
    :goto_0
    const-wide/16 v10, -0x1

    .local v10, startIdx:J
    const-wide/16 v5, -0x1

    .line 127
    .local v5, endIdx:J
    const/4 v3, 0x0

    .line 128
    .local v3, direction:I
    const/4 v9, 0x0

    .line 130
    .local v9, location:Ljava/lang/String;
    if-eqz p7, :cond_0

    .line 132
    const-string v12, "startIdx"

    const-wide/16 v13, -0x1

    move-object/from16 v0, p7

    invoke-virtual {v0, v12, v13, v14}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 133
    const-string v12, "endIdx"

    const-wide/16 v13, -0x1

    move-object/from16 v0, p7

    invoke-virtual {v0, v12, v13, v14}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 134
    const-string v12, "direction"

    const/4 v13, 0x0

    move-object/from16 v0, p7

    invoke-virtual {v0, v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 135
    const-string v12, "location"

    move-object/from16 v0, p7

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 137
    const-string v12, "tab_default"

    const v13, 0x7f040017

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p7

    invoke-virtual {v0, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_0
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 141
    .local v7, intent:Landroid/content/Intent;
    const-string v12, "Render"

    move-object/from16 v0, p1

    invoke-virtual {v7, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    const-string v12, "Server"

    move-object/from16 v0, p2

    invoke-virtual {v7, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    const-string v12, "container"

    move-object/from16 v0, p3

    invoke-virtual {v7, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    const-string v12, "cookie"

    const/4 v13, 0x0

    invoke-virtual {v7, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 145
    const-string v12, "Mode"

    move/from16 v0, p6

    invoke-virtual {v7, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 146
    const-string v12, "content"

    move-object/from16 v0, p4

    invoke-virtual {v7, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    const-string v12, "startIdx"

    invoke-virtual {v7, v12, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 148
    const-string v12, "endIdx"

    invoke-virtual {v7, v12, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 149
    const-string v12, "direction"

    invoke-virtual {v7, v12, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 150
    const-string v12, "Extras"

    move-object/from16 v0, p7

    invoke-virtual {v7, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 151
    const-string v12, "interval"

    invoke-virtual {v7, v12, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 152
    if-eqz v9, :cond_1

    .line 153
    const-string v12, "filepath"

    invoke-virtual {v7, v12, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    :cond_1
    const-string v12, "com.htc.dmc"

    const-string v13, "com.htc.dmc.HtcDMCAlbum"

    invoke-virtual {v7, v12, v13}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    const/high16 v12, 0x400

    invoke-virtual {v7, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 159
    :try_start_1
    invoke-virtual {p0, v7}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 167
    const-string v12, "DMCHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Finish activity "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-virtual {p0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v1

    .line 171
    .local v1, actParent:Landroid/app/Activity;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v2

    .line 172
    .local v2, actTop:Landroid/app/Activity;
    :goto_1
    if-nez v2, :cond_4

    if-nez v1, :cond_2

    move-object v1, p0

    .line 173
    :cond_2
    :goto_2
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 174
    .end local v1           #actParent:Landroid/app/Activity;
    .end local v2           #actTop:Landroid/app/Activity;
    :goto_3
    return-void

    .line 161
    :catch_0
    move-exception v4

    .line 163
    .local v4, e:Ljava/lang/Exception;
    const-string v12, "DMCHelper"

    const-string v13, "start dmc activity fail"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 171
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v1       #actParent:Landroid/app/Activity;
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .restart local v2       #actTop:Landroid/app/Activity;
    :cond_4
    move-object v1, v2

    .line 172
    goto :goto_2

    .line 121
    .end local v1           #actParent:Landroid/app/Activity;
    .end local v2           #actTop:Landroid/app/Activity;
    .end local v3           #direction:I
    .end local v5           #endIdx:J
    .end local v7           #intent:Landroid/content/Intent;
    .end local v9           #location:Ljava/lang/String;
    .end local v10           #startIdx:J
    :catch_1
    move-exception v12

    goto/16 :goto_0
.end method

.method public static pickDMR(Landroid/app/Activity;IILjava/lang/Object;)V
    .locals 5
    .parameter "activity"
    .parameter "serverType"
    .parameter "resultMsgId"
    .parameter "param"

    .prologue
    .line 30
    if-nez p0, :cond_0

    .line 53
    :goto_0
    return-void

    .line 32
    :cond_0
    sput-object p3, Lcom/htc/video/VideoUtility/DMCHelper;->gPickDMRParam:Ljava/lang/Object;

    .line 34
    const/4 v1, 0x0

    .line 35
    .local v1, filter:I
    and-int/lit8 v3, p1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 36
    or-int/lit8 v1, v1, 0x2

    .line 37
    :cond_1
    and-int/lit8 v3, p1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 38
    or-int/lit8 v1, v1, 0x4

    .line 40
    :cond_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 41
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "com.htc.dmc"

    const-string v4, "com.htc.dmc.DmrListActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    const-string v3, "cookie"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 43
    const-string v3, "filter"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 47
    :try_start_0
    invoke-virtual {p0, v2, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 51
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "DMCHelper"

    const-string v4, "start DMR list activity fail"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setDMR(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "dmr"

    .prologue
    .line 195
    sput-object p1, Lcom/htc/video/VideoUtility/DMCHelper;->gDMR:Ljava/lang/String;

    .line 197
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 198
    .local v1, sr:Landroid/content/SharedPreferences;
    if-nez v1, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 201
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_0

    .line 203
    if-nez p1, :cond_2

    .line 204
    const-string v2, "DMR"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 208
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 206
    :cond_2
    const-string v2, "DMR"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method public static setDMS(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "dms"

    .prologue
    .line 228
    sput-object p1, Lcom/htc/video/VideoUtility/DMCHelper;->gDMS:Ljava/lang/String;

    .line 230
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 231
    .local v1, sr:Landroid/content/SharedPreferences;
    if-nez v1, :cond_1

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 234
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_0

    .line 236
    if-nez p1, :cond_2

    .line 237
    const-string v2, "DMS"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 241
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 239
    :cond_2
    const-string v2, "DMS"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method public static setFilterCap(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "filterCap"

    .prologue
    .line 261
    sput p1, Lcom/htc/video/VideoUtility/DMCHelper;->gFilterCap:I

    .line 263
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 264
    .local v1, sr:Landroid/content/SharedPreferences;
    if-nez v1, :cond_1

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 267
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_0

    .line 269
    const/4 v2, -0x1

    if-ne p1, v2, :cond_2

    .line 270
    const-string v2, "FilterCap"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 274
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 272
    :cond_2
    const-string v2, "FilterCap"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method
