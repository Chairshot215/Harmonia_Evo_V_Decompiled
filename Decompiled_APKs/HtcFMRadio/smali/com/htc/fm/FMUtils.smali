.class public Lcom/htc/fm/FMUtils;
.super Ljava/lang/Object;
.source "FMUtils.java"


# static fields
.field private static final ACTION_FM:Ljava/lang/String; = "android.intent.action.FM"

.field private static final DefaultBufferedSize:I = 0x200

.field public static final FM_MIME_TYPE:Ljava/lang/String; = "application/fm"

.field public static FirstPresetId:I = 0x0

.field public static HeadSetPlugged:Z = false

.field public static final PresetCols:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "FMUtils"

.field public static TurnOffAtTurningOn:Z = false

.field public static currentPath:Ljava/lang/String; = null

.field public static final mDataPrefix:Ljava/lang/String; = "htcfm://"

.field private static setHeadsetFMType:Ljava/lang/reflect/Method;

.field private static svc:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 29
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "composer"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "is_music"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/fm/FMUtils;->PresetCols:[Ljava/lang/String;

    .line 149
    const/4 v0, -0x1

    sput v0, Lcom/htc/fm/FMUtils;->FirstPresetId:I

    .line 631
    sput-object v4, Lcom/htc/fm/FMUtils;->svc:Ljava/lang/Object;

    .line 632
    sput-object v4, Lcom/htc/fm/FMUtils;->setHeadsetFMType:Ljava/lang/reflect/Method;

    .line 854
    sput-boolean v3, Lcom/htc/fm/FMUtils;->TurnOffAtTurningOn:Z

    .line 856
    sput-boolean v3, Lcom/htc/fm/FMUtils;->HeadSetPlugged:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static FreqIndex()I
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x1

    return v0
.end method

.method public static RdsIndex()I
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x3

    return v0
.end method

.method public static RowIdIndex()I
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public static TitleIndex()I
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x2

    return v0
.end method

.method private static checkHeadset()Z
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 908
    invoke-static {}, Lcom/htc/fm/FMUtils;->getHeadsetName()Ljava/lang/String;

    move-result-object v4

    .line 910
    .local v4, name:Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1

    .line 960
    :cond_0
    :goto_0
    return v7

    .line 914
    :cond_1
    const/4 v6, 0x0

    .line 917
    .local v6, state:I
    :try_start_0
    invoke-static {}, Lcom/htc/fm/FMUtils;->getHeadsetState()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 922
    invoke-static {v6}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    .line 924
    .local v1, bstate:Ljava/lang/String;
    const-string v8, "FMUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[FMUtils] AudioPath:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, "headset"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 930
    if-eqz v6, :cond_0

    .line 934
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    .line 935
    .local v3, length:I
    const/16 v8, 0x8

    if-lt v3, v8, :cond_2

    .line 936
    add-int/lit8 v5, v3, -0x8

    .line 937
    .local v5, pos:I
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 938
    .local v0, bit7:C
    const/16 v8, 0x31

    if-ne v0, v8, :cond_2

    .line 939
    const-string v7, "FMUtils"

    const-string v8, "[FMController] FM Headset"

    invoke-static {v7, v8}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    const/4 v7, 0x1

    goto :goto_0

    .line 918
    .end local v0           #bit7:C
    .end local v1           #bstate:Ljava/lang/String;
    .end local v3           #length:I
    .end local v5           #pos:I
    :catch_0
    move-exception v2

    .line 919
    .local v2, e:Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 958
    .end local v2           #e:Ljava/lang/NumberFormatException;
    .restart local v1       #bstate:Ljava/lang/String;
    .restart local v3       #length:I
    :cond_2
    const-string v8, "FMUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[FMController] Not FMHeadset! "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static clearAllPresets(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 185
    const-string v3, "FMUtils"

    const-string v4, "[FMUtils] clearAllPresets() - start"

    invoke-static {v3, v4}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    if-nez p0, :cond_0

    .line 199
    :goto_0
    return-void

    .line 189
    :cond_0
    const-string v3, "internal"

    invoke-static {v3}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 190
    .local v1, tableUri:Landroid/net/Uri;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    .local v2, where:Ljava/lang/StringBuilder;
    const-string v3, "mime_type = \'application/fm\' "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :goto_1
    const-string v3, "FMUtils"

    const-string v4, "[FMUtils] clearAllPresets() - end"

    invoke-static {v3, v4}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static clearFirstChannel()V
    .locals 6

    .prologue
    .line 306
    const/4 v2, 0x0

    .line 307
    .local v2, fw:Ljava/io/FileWriter;
    const-string v4, "FMUtils"

    const-string v5, "[clearFirstChannel]+"

    invoke-static {v4, v5}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    :try_start_0
    new-instance v3, Ljava/io/FileWriter;

    const-string v4, "/data/data/com.htc.fm/firstChan"

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    .end local v2           #fw:Ljava/io/FileWriter;
    .local v3, fw:Ljava/io/FileWriter;
    :try_start_1
    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 311
    invoke-virtual {v3}, Ljava/io/FileWriter;->flush()V

    .line 312
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 313
    const/4 v2, 0x0

    .line 325
    .end local v3           #fw:Ljava/io/FileWriter;
    .restart local v2       #fw:Ljava/io/FileWriter;
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .line 326
    const-string v4, "FMUtils"

    const-string v5, "[clearFirstChannel]-"

    invoke-static {v4, v5}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    return-void

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, e:Ljava/io/IOException;
    :goto_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 316
    if-eqz v2, :cond_0

    .line 318
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 322
    :goto_2
    const/4 v2, 0x0

    goto :goto_0

    .line 319
    :catch_1
    move-exception v1

    .line 320
    .local v1, e2:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 314
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #e2:Ljava/lang/Exception;
    .end local v2           #fw:Ljava/io/FileWriter;
    .restart local v3       #fw:Ljava/io/FileWriter;
    :catch_2
    move-exception v0

    move-object v2, v3

    .end local v3           #fw:Ljava/io/FileWriter;
    .restart local v2       #fw:Ljava/io/FileWriter;
    goto :goto_1
.end method

.method public static clearNowPlaying()V
    .locals 5

    .prologue
    .line 409
    const/4 v2, 0x0

    .line 411
    .local v2, fw:Ljava/io/FileWriter;
    :try_start_0
    new-instance v3, Ljava/io/FileWriter;

    const-string v4, "/data/data/com.htc.fm/fm"

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    .end local v2           #fw:Ljava/io/FileWriter;
    .local v3, fw:Ljava/io/FileWriter;
    :try_start_1
    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 413
    invoke-virtual {v3}, Ljava/io/FileWriter;->flush()V

    .line 414
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 415
    const/4 v2, 0x0

    .line 427
    .end local v3           #fw:Ljava/io/FileWriter;
    .restart local v2       #fw:Ljava/io/FileWriter;
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .line 428
    return-void

    .line 416
    :catch_0
    move-exception v0

    .line 417
    .local v0, e:Ljava/io/IOException;
    :goto_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 418
    if-eqz v2, :cond_0

    .line 420
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 424
    :goto_2
    const/4 v2, 0x0

    goto :goto_0

    .line 421
    :catch_1
    move-exception v1

    .line 422
    .local v1, e2:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 416
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #e2:Ljava/lang/Exception;
    .end local v2           #fw:Ljava/io/FileWriter;
    .restart local v3       #fw:Ljava/io/FileWriter;
    :catch_2
    move-exception v0

    move-object v2, v3

    .end local v3           #fw:Ljava/io/FileWriter;
    .restart local v2       #fw:Ljava/io/FileWriter;
    goto :goto_1
.end method

.method public static deleteFile(Ljava/lang/String;)V
    .locals 3
    .parameter "path"

    .prologue
    .line 789
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 790
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 795
    :goto_0
    return-void

    .line 793
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    .line 794
    .local v1, ret:Z
    const/4 v0, 0x0

    .line 795
    goto :goto_0
.end method

.method public static getAudioPath(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 562
    sget-object v1, Lcom/htc/fm/FMUtils;->currentPath:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 563
    invoke-static {v0, p0}, Lcom/htc/fm/FMUtils;->setAudioPath(ILandroid/content/Context;)Z

    .line 577
    :cond_0
    :goto_0
    return v0

    .line 567
    :cond_1
    sget-object v1, Lcom/htc/fm/FMUtils;->currentPath:Ljava/lang/String;

    const-string v2, "disable"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 568
    const/4 v0, 0x2

    goto :goto_0

    .line 570
    :cond_2
    sget-object v1, Lcom/htc/fm/FMUtils;->currentPath:Ljava/lang/String;

    const-string v2, "fm_speaker"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 571
    const/4 v0, 0x1

    goto :goto_0

    .line 573
    :cond_3
    sget-object v1, Lcom/htc/fm/FMUtils;->currentPath:Ljava/lang/String;

    const-string v2, "fm_headset"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 576
    invoke-static {v0, p0}, Lcom/htc/fm/FMUtils;->setAudioPath(ILandroid/content/Context;)Z

    goto :goto_0
.end method

.method public static getAudioStreamPathIntent(I)Landroid/content/Intent;
    .locals 3
    .parameter "path"

    .prologue
    .line 700
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.FM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 701
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "state"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 702
    const-string v1, "path"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 703
    return-object v0
.end method

.method public static getAudioStreamReadyIntent(Z)Landroid/content/Intent;
    .locals 3
    .parameter "isReady"

    .prologue
    .line 692
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.FM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 693
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "state"

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 694
    const-string v1, "path"

    sget v2, Lcom/htc/fm/FMTunerController$TunerInfo;->AudioPath:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 695
    const-string v1, "FMUtils"

    const-string v2, "new Intent(Intent.ACTION_FM)"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    return-object v0

    .line 693
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getBand()I
    .locals 4

    .prologue
    .line 755
    const-string v3, "/data/data/com.htc.fm/band"

    invoke-static {v3}, Lcom/htc/fm/FMUtils;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 756
    .local v2, str:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 757
    sget v0, Lcom/htc/fm/FMDef;->BAND:I

    .line 766
    :goto_0
    return v0

    .line 759
    :cond_0
    sget v0, Lcom/htc/fm/FMDef;->BAND:I

    .line 761
    .local v0, band:I
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 765
    :goto_1
    sput v0, Lcom/htc/fm/FMDef;->BAND:I

    goto :goto_0

    .line 762
    :catch_0
    move-exception v1

    .line 763
    .local v1, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getFirstChannel(Landroid/content/Context;I)Lcom/htc/fm/Preset;
    .locals 8
    .parameter "context"
    .parameter "defFreq"

    .prologue
    .line 330
    const-string v5, "/data/data/com.htc.fm/firstChan"

    invoke-static {v5}, Lcom/htc/fm/FMUtils;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 331
    .local v1, line:Ljava/lang/String;
    const-string v5, "FMUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[getFirstChannel]+ - line("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    new-instance v2, Lcom/htc/fm/Preset;

    invoke-direct {v2}, Lcom/htc/fm/Preset;-><init>()V

    .line 333
    .local v2, preset:Lcom/htc/fm/Preset;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 334
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v5, "\t"

    invoke-direct {v3, v1, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    .local v3, st:Ljava/util/StringTokenizer;
    const/4 v0, 0x0

    .line 336
    .local v0, count:I
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 337
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 338
    .local v4, token:Ljava/lang/String;
    packed-switch v0, :pswitch_data_0

    .line 355
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 356
    goto :goto_0

    .line 341
    :pswitch_0
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/htc/fm/Preset;->rowId:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 342
    :catch_0
    move-exception v5

    goto :goto_1

    .line 347
    :pswitch_1
    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/htc/fm/Preset;->freq:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 348
    :catch_1
    move-exception v5

    goto :goto_1

    .line 352
    :pswitch_2
    iput-object v4, v2, Lcom/htc/fm/Preset;->title:Ljava/lang/String;

    goto :goto_1

    .line 359
    .end local v0           #count:I
    .end local v3           #st:Ljava/util/StringTokenizer;
    .end local v4           #token:Ljava/lang/String;
    :cond_0
    iget v5, v2, Lcom/htc/fm/Preset;->freq:I

    if-nez v5, :cond_1

    .line 360
    iput p1, v2, Lcom/htc/fm/Preset;->freq:I

    .line 363
    :cond_1
    const-string v5, "FMUtils"

    const-string v6, "[getFirstChannel]-"

    invoke-static {v5, v6}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    return-object v2

    .line 338
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static getHeadsetName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 820
    const-string v0, "/sys/class/switch/h2w/name"

    invoke-static {v0}, Lcom/htc/fm/FMUtils;->readLineEx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getHeadsetState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 850
    const-string v0, "/sys/class/switch/h2w/state"

    invoke-static {v0}, Lcom/htc/fm/FMUtils;->readLineEx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNowPlaying(Landroid/content/Context;IZ)Lcom/htc/fm/Preset;
    .locals 8
    .parameter "context"
    .parameter "defFreq"
    .parameter "bUpdatePreset"

    .prologue
    .line 431
    const-string v5, "/data/data/com.htc.fm/fm"

    invoke-static {v5}, Lcom/htc/fm/FMUtils;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 432
    .local v1, line:Ljava/lang/String;
    const-string v5, "FMUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[FMRadio][FMTuner][FMUtils] getNowPlaying() - line("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/fm/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    new-instance v2, Lcom/htc/fm/Preset;

    invoke-direct {v2}, Lcom/htc/fm/Preset;-><init>()V

    .line 434
    .local v2, preset:Lcom/htc/fm/Preset;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 435
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v5, "\t"

    invoke-direct {v3, v1, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    .local v3, st:Ljava/util/StringTokenizer;
    const/4 v0, 0x0

    .line 437
    .local v0, count:I
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 438
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 439
    .local v4, token:Ljava/lang/String;
    packed-switch v0, :pswitch_data_0

    .line 456
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 457
    goto :goto_0

    .line 442
    :pswitch_0
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/htc/fm/Preset;->rowId:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 443
    :catch_0
    move-exception v5

    goto :goto_1

    .line 448
    :pswitch_1
    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/htc/fm/Preset;->freq:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 449
    :catch_1
    move-exception v5

    goto :goto_1

    .line 453
    :pswitch_2
    iput-object v4, v2, Lcom/htc/fm/Preset;->title:Ljava/lang/String;

    goto :goto_1

    .line 459
    .end local v0           #count:I
    .end local v3           #st:Ljava/util/StringTokenizer;
    .end local v4           #token:Ljava/lang/String;
    :cond_0
    if-eqz p2, :cond_1

    .line 460
    invoke-static {p0, v2}, Lcom/htc/fm/FMUtils;->updatePreset(Landroid/content/Context;Lcom/htc/fm/Preset;)V

    .line 461
    :cond_1
    iget v5, v2, Lcom/htc/fm/Preset;->freq:I

    if-nez v5, :cond_2

    .line 462
    iput p1, v2, Lcom/htc/fm/Preset;->freq:I

    .line 464
    :cond_2
    return-object v2

    .line 439
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getOneLineInfo(I)Ljava/lang/String;
    .locals 7
    .parameter "level"

    .prologue
    .line 582
    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 583
    .local v3, ste:[Ljava/lang/StackTraceElement;
    const-string v2, ""

    .line 585
    .local v2, result:Ljava/lang/String;
    if-nez v3, :cond_1

    .line 602
    :cond_0
    return-object v2

    .line 588
    :cond_1
    array-length v0, v3

    .line 590
    .local v0, deep:I
    const/4 v4, 0x2

    if-lt v0, v4, :cond_0

    .line 595
    if-lt v0, p0, :cond_2

    .line 596
    move v0, p0

    .line 598
    :cond_2
    const/4 v1, 0x2

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 599
    const-string v4, "FMUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    [FMRadio]!!!!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v1

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v1

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "(), Line:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v1

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getPresetByFreq(Landroid/content/Context;J)Lcom/htc/fm/Preset;
    .locals 2
    .parameter "contenxt"
    .parameter "freq"

    .prologue
    .line 223
    invoke-static {p0, p1, p2}, Lcom/htc/fm/FMUtils;->queryPreset(Landroid/content/Context;J)Ljava/util/Vector;

    move-result-object v0

    .line 224
    .local v0, presets:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/htc/fm/Preset;>;"
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 225
    invoke-virtual {v0}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/fm/Preset;

    .line 227
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getPresetCursor(Landroid/content/Context;I)Landroid/database/Cursor;
    .locals 8
    .parameter "context"
    .parameter "rowId"

    .prologue
    .line 110
    if-nez p0, :cond_0

    .line 111
    const/4 v6, 0x0

    .line 127
    :goto_0
    return-object v6

    .line 113
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .local v7, where:Ljava/lang/StringBuilder;
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 116
    const-string v0, "mime_type == \'application/fm\'"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    :goto_1
    const/4 v4, 0x0

    .line 121
    .local v4, keywords:[Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 124
    .local v3, whereclause:Ljava/lang/String;
    const-string v0, "internal"

    invoke-static {v0}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 125
    .local v1, tableUri:Landroid/net/Uri;
    sget-object v2, Lcom/htc/fm/FMUtils;->PresetCols:[Ljava/lang/String;

    const-string v5, "_id ASC"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/fm/FMUtils;->queryPreset(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 127
    .local v6, cursor:Landroid/database/Cursor;
    goto :goto_0

    .line 118
    .end local v1           #tableUri:Landroid/net/Uri;
    .end local v3           #whereclause:Ljava/lang/String;
    .end local v4           #keywords:[Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id == \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static getPresetList(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 7
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/fm/Preset;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    const/4 v4, -0x1

    invoke-static {p0, v4}, Lcom/htc/fm/FMUtils;->getPresetCursor(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v1

    .line 66
    .local v1, cursor:Landroid/database/Cursor;
    if-nez v1, :cond_0

    .line 67
    const/4 v3, 0x0

    .line 88
    :goto_0
    return-object v3

    .line 69
    :cond_0
    const-string v4, "FMUtils"

    const-string v5, "[FMUtils] getPresetList() - start"

    invoke-static {v4, v5}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v3, presetVec:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/fm/Preset;>;"
    const/4 v0, 0x0

    .line 72
    .local v0, count:I
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 73
    add-int/lit8 v0, v0, 0x1

    .line 74
    new-instance v2, Lcom/htc/fm/Preset;

    invoke-direct {v2}, Lcom/htc/fm/Preset;-><init>()V

    .line 75
    .local v2, preset:Lcom/htc/fm/Preset;
    const-string v4, "FMUtils"

    invoke-virtual {v2}, Lcom/htc/fm/Preset;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iput v0, v2, Lcom/htc/fm/Preset;->id:I

    .line 77
    invoke-static {}, Lcom/htc/fm/FMUtils;->RowIdIndex()I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v2, Lcom/htc/fm/Preset;->rowId:I

    .line 78
    invoke-static {}, Lcom/htc/fm/FMUtils;->FreqIndex()I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/fm/FMUtils;->toFreq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Lcom/htc/fm/Preset;->freq:I

    .line 79
    invoke-static {}, Lcom/htc/fm/FMUtils;->TitleIndex()I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/htc/fm/Preset;->title:Ljava/lang/String;

    .line 80
    invoke-static {}, Lcom/htc/fm/FMUtils;->RdsIndex()I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/htc/fm/Preset;->rds:Ljava/lang/String;

    .line 81
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 83
    .end local v2           #preset:Lcom/htc/fm/Preset;
    :cond_1
    if-eqz v1, :cond_2

    .line 84
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 86
    :cond_2
    const/4 v1, 0x0

    .line 87
    const-string v4, "FMUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[FMUtils] getPresetList() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " presets - end"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getRds()Ljava/lang/String;
    .locals 1

    .prologue
    .line 774
    const-string v0, "/data/data/com.htc.fm/rds"

    invoke-static {v0}, Lcom/htc/fm/FMUtils;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRdsPTY()Ljava/lang/String;
    .locals 1

    .prologue
    .line 783
    const-string v0, "/data/data/com.htc.fm/rds_pty"

    invoke-static {v0}, Lcom/htc/fm/FMUtils;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRssiThreshold()I
    .locals 4

    .prologue
    const/16 v2, 0x9

    .line 807
    const-string v3, "/data/data/com.htc.fm/rssi_min"

    invoke-static {v3}, Lcom/htc/fm/FMUtils;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 808
    .local v1, line:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 814
    :cond_0
    :goto_0
    return v2

    .line 812
    :cond_1
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 813
    :catch_0
    move-exception v0

    .line 814
    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static isHeadsetPlugged()Z
    .locals 1

    .prologue
    .line 858
    invoke-static {}, Lcom/htc/fm/FMUtils;->checkHeadset()Z

    move-result v0

    sput-boolean v0, Lcom/htc/fm/FMUtils;->HeadSetPlugged:Z

    .line 859
    sget-boolean v0, Lcom/htc/fm/FMUtils;->HeadSetPlugged:Z

    return v0
.end method

.method public static presetExists(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 9
    .parameter "context"
    .parameter "freq"
    .parameter "title"

    .prologue
    .line 203
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    .local v8, where:Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mime_type = \'application/fm\' and _data = \'htcfm://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' and "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "title"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    const/4 v4, 0x0

    .line 209
    .local v4, keywords:[Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 211
    .local v3, whereclause:Ljava/lang/String;
    const-string v0, "internal"

    invoke-static {v0}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 212
    .local v1, tableUri:Landroid/net/Uri;
    sget-object v2, Lcom/htc/fm/FMUtils;->PresetCols:[Ljava/lang/String;

    const-string v5, "_id"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/fm/FMUtils;->queryPreset(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 214
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 215
    .local v7, ret:Z
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 216
    const/4 v7, 0x1

    .line 218
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 219
    return v7
.end method

.method public static queryPreset(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "context"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v7, 0x0

    .line 138
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 139
    .local v0, resolver:Landroid/content/ContentResolver;
    if-nez v0, :cond_0

    move-object v1, v7

    .line 145
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :goto_0
    return-object v1

    .restart local v0       #resolver:Landroid/content/ContentResolver;
    :cond_0
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 142
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 143
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :catch_0
    move-exception v6

    .line 144
    .local v6, ex:Ljava/lang/UnsupportedOperationException;
    invoke-virtual {v6}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    move-object v1, v7

    .line 145
    goto :goto_0
.end method

.method public static queryPreset(Landroid/content/Context;I)Lcom/htc/fm/Preset;
    .locals 3
    .parameter "context"
    .parameter "rowId"

    .prologue
    const/4 v1, 0x0

    .line 468
    invoke-static {p0, p1}, Lcom/htc/fm/FMUtils;->getPresetCursor(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v0

    .line 469
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 487
    :goto_0
    return-object v1

    .line 472
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 473
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 477
    :cond_1
    const/4 v1, 0x0

    .line 478
    .local v1, preset:Lcom/htc/fm/Preset;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 479
    new-instance v1, Lcom/htc/fm/Preset;

    .end local v1           #preset:Lcom/htc/fm/Preset;
    invoke-direct {v1}, Lcom/htc/fm/Preset;-><init>()V

    .line 480
    .restart local v1       #preset:Lcom/htc/fm/Preset;
    invoke-static {}, Lcom/htc/fm/FMUtils;->RowIdIndex()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/htc/fm/Preset;->rowId:I

    .line 481
    invoke-static {}, Lcom/htc/fm/FMUtils;->FreqIndex()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/fm/FMUtils;->toFreq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/htc/fm/Preset;->freq:I

    .line 482
    invoke-static {}, Lcom/htc/fm/FMUtils;->TitleIndex()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/fm/Preset;->title:Ljava/lang/String;

    .line 483
    invoke-static {}, Lcom/htc/fm/FMUtils;->RdsIndex()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/fm/Preset;->rds:Ljava/lang/String;

    .line 485
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 486
    const/4 v0, 0x0

    .line 487
    goto :goto_0
.end method

.method public static queryPreset(Landroid/content/Context;J)Ljava/util/Vector;
    .locals 10
    .parameter "context"
    .parameter "freq"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J)",
            "Ljava/util/Vector",
            "<",
            "Lcom/htc/fm/Preset;",
            ">;"
        }
    .end annotation

    .prologue
    .line 232
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    .local v9, where:Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mime_type = \'application/fm\'  AND _data = \'htcfm://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    const/4 v4, 0x0

    .line 236
    .local v4, keywords:[Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 238
    .local v3, whereclause:Ljava/lang/String;
    const-string v0, "internal"

    invoke-static {v0}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 242
    .local v1, tableUri:Landroid/net/Uri;
    sget-object v2, Lcom/htc/fm/FMUtils;->PresetCols:[Ljava/lang/String;

    const-string v5, "_id"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/fm/FMUtils;->queryPreset(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 245
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 246
    .local v7, preset:Lcom/htc/fm/Preset;
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    .line 247
    .local v8, vec:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/htc/fm/Preset;>;"
    if-eqz v6, :cond_2

    .line 248
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    :cond_0
    new-instance v7, Lcom/htc/fm/Preset;

    .end local v7           #preset:Lcom/htc/fm/Preset;
    invoke-direct {v7}, Lcom/htc/fm/Preset;-><init>()V

    .line 251
    .restart local v7       #preset:Lcom/htc/fm/Preset;
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lcom/htc/fm/Preset;->rowId:I

    .line 252
    invoke-static {}, Lcom/htc/fm/FMUtils;->FreqIndex()I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/fm/FMUtils;->toFreq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v7, Lcom/htc/fm/Preset;->freq:I

    .line 253
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/htc/fm/Preset;->title:Ljava/lang/String;

    .line 254
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/htc/fm/Preset;->rds:Ljava/lang/String;

    .line 255
    invoke-virtual {v8, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 256
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 260
    :cond_2
    return-object v8
.end method

.method public static readLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "filePath"

    .prologue
    .line 536
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 537
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 538
    const/4 v5, 0x0

    .line 558
    :goto_0
    return-object v5

    .line 540
    :cond_0
    const/4 v5, 0x0

    .line 545
    .local v5, line:Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 546
    .local v2, fis:Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 547
    .local v4, isr:Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    const/16 v6, 0x200

    invoke-direct {v0, v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 548
    .local v0, br:Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 549
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 550
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    .line 551
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 555
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #fis:Ljava/io/FileInputStream;
    .end local v4           #isr:Ljava/io/InputStreamReader;
    :goto_1
    const/4 v2, 0x0

    .line 556
    .restart local v2       #fis:Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 557
    .restart local v4       #isr:Ljava/io/InputStreamReader;
    const/4 v0, 0x0

    .line 558
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_0

    .line 552
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #fis:Ljava/io/FileInputStream;
    .end local v4           #isr:Ljava/io/InputStreamReader;
    :catch_0
    move-exception v3

    .line 553
    .local v3, ioe:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private static readLineEx(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "filePath"

    .prologue
    .line 824
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 825
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 826
    const/4 v5, 0x0

    .line 846
    :goto_0
    return-object v5

    .line 828
    :cond_0
    const/4 v5, 0x0

    .line 833
    .local v5, line:Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 834
    .local v2, fis:Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 835
    .local v4, isr:Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    const/16 v6, 0x200

    invoke-direct {v0, v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 836
    .local v0, br:Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 837
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 838
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    .line 839
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 843
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #fis:Ljava/io/FileInputStream;
    .end local v4           #isr:Ljava/io/InputStreamReader;
    :goto_1
    const/4 v2, 0x0

    .line 844
    .restart local v2       #fis:Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 845
    .restart local v4       #isr:Ljava/io/InputStreamReader;
    const/4 v0, 0x0

    .line 846
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_0

    .line 840
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #fis:Ljava/io/FileInputStream;
    .end local v4           #isr:Ljava/io/InputStreamReader;
    :catch_0
    move-exception v3

    .line 841
    .local v3, ioe:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private static readSettingFromResource(Landroid/content/res/Resources;I)Z
    .locals 3
    .parameter "res"
    .parameter "id"

    .prologue
    .line 893
    const/4 v0, 0x0

    .line 895
    .local v0, ret:Z
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 896
    const/4 v0, 0x1

    .line 903
    :cond_0
    :goto_0
    return v0

    .line 898
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static reflectsetAudioPath()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 635
    const-string v6, "FMUtils"

    const-string v7, "reflectsetAudioPath"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    sget-object v6, Lcom/htc/fm/FMUtils;->svc:Ljava/lang/Object;

    if-eqz v6, :cond_0

    .line 662
    .local v5, sm:Ljava/lang/Class;
    :goto_0
    return-void

    .line 641
    .end local v5           #sm:Ljava/lang/Class;
    :cond_0
    :try_start_0
    const-string v6, "android.os.ServiceManager"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 642
    .restart local v5       #sm:Ljava/lang/Class;
    const-string v6, "getService"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "htchardware"

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 645
    .local v3, hwBinder:Ljava/lang/Object;
    const-string v6, "android.os.IHtcHardwareService$Stub"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 646
    .local v4, hwsstub:Ljava/lang/Class;
    const-string v6, "asInterface"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/os/IBinder;

    aput-object v9, v7, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 647
    .local v0, asInterface:Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    check-cast v3, Landroid/os/IBinder;

    .end local v3           #hwBinder:Ljava/lang/Object;
    aput-object v3, v7, v8

    invoke-virtual {v0, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sput-object v6, Lcom/htc/fm/FMUtils;->svc:Ljava/lang/Object;

    .line 650
    sget-object v6, Lcom/htc/fm/FMUtils;->svc:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 652
    .local v2, hs:Ljava/lang/Class;
    const-string v6, "setHeadsetFMType"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sput-object v6, Lcom/htc/fm/FMUtils;->setHeadsetFMType:Ljava/lang/reflect/Method;

    .line 653
    const-string v6, "FMUtils"

    const-string v7, "setHeadsetFMType getMethod"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 655
    .end local v0           #asInterface:Ljava/lang/reflect/Method;
    .end local v2           #hs:Ljava/lang/Class;
    .end local v4           #hwsstub:Ljava/lang/Class;
    :catch_0
    move-exception v1

    .line 656
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 658
    sput-object v11, Lcom/htc/fm/FMUtils;->setHeadsetFMType:Ljava/lang/reflect/Method;

    .line 660
    const-string v6, "FMUtils"

    const-string v7, "reflectsetAudioPath fail"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static saveFirstChannel(Lcom/htc/fm/Preset;)V
    .locals 14
    .parameter "preset"

    .prologue
    .line 265
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 266
    .local v7, sT:J
    if-nez p0, :cond_0

    .line 303
    :goto_0
    return-void

    .line 268
    :cond_0
    const-string v11, "FMUtils"

    const-string v12, "[saveFirstChannel]+"

    invoke-static {v11, v12}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const/4 v5, 0x0

    .line 271
    .local v5, fw:Ljava/io/FileWriter;
    :try_start_0
    new-instance v6, Ljava/io/FileWriter;

    const-string v11, "/data/data/com.htc.fm/firstChan"

    invoke-direct {v6, v11}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    .end local v5           #fw:Ljava/io/FileWriter;
    .local v6, fw:Ljava/io/FileWriter;
    :try_start_1
    iget v11, p0, Lcom/htc/fm/Preset;->freq:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 274
    .local v4, freq:Ljava/lang/String;
    iget-object v10, p0, Lcom/htc/fm/Preset;->title:Ljava/lang/String;

    .line 276
    .local v10, title:Ljava/lang/String;
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_2

    .line 277
    :cond_1
    iget-object v11, p0, Lcom/htc/fm/Preset;->rds:Ljava/lang/String;

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/htc/fm/Preset;->rds:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_4

    .line 278
    iget-object v10, p0, Lcom/htc/fm/Preset;->rds:Ljava/lang/String;

    .line 283
    :cond_2
    :goto_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget v12, p0, Lcom/htc/fm/Preset;->rowId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\t"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\t"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 284
    .local v9, strPreset:Ljava/lang/String;
    const-string v11, "FMUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[FMUtils][FMTuner] saveNowPlaying() "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    invoke-virtual {v6, v9}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 286
    invoke-virtual {v6}, Ljava/io/FileWriter;->flush()V

    .line 287
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 288
    const/4 v5, 0x0

    .line 300
    .end local v4           #freq:Ljava/lang/String;
    .end local v6           #fw:Ljava/io/FileWriter;
    .end local v9           #strPreset:Ljava/lang/String;
    .end local v10           #title:Ljava/lang/String;
    .restart local v5       #fw:Ljava/io/FileWriter;
    :cond_3
    :goto_2
    const/4 v5, 0x0

    .line 301
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 302
    .local v2, eT:J
    const-string v11, "FMUtils"

    const-string v12, "[saveFirstChannel]-"

    invoke-static {v11, v12}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 280
    .end local v2           #eT:J
    .end local v5           #fw:Ljava/io/FileWriter;
    .restart local v4       #freq:Ljava/lang/String;
    .restart local v6       #fw:Ljava/io/FileWriter;
    .restart local v10       #title:Ljava/lang/String;
    :cond_4
    :try_start_2
    const-string v10, ""
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 289
    .end local v4           #freq:Ljava/lang/String;
    .end local v6           #fw:Ljava/io/FileWriter;
    .end local v10           #title:Ljava/lang/String;
    .restart local v5       #fw:Ljava/io/FileWriter;
    :catch_0
    move-exception v0

    .line 290
    .local v0, e:Ljava/io/IOException;
    :goto_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 291
    if-eqz v5, :cond_3

    .line 293
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 297
    :goto_4
    const/4 v5, 0x0

    goto :goto_2

    .line 294
    :catch_1
    move-exception v1

    .line 295
    .local v1, e2:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 289
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #e2:Ljava/lang/Exception;
    .end local v5           #fw:Ljava/io/FileWriter;
    .restart local v6       #fw:Ljava/io/FileWriter;
    :catch_2
    move-exception v0

    move-object v5, v6

    .end local v6           #fw:Ljava/io/FileWriter;
    .restart local v5       #fw:Ljava/io/FileWriter;
    goto :goto_3
.end method

.method public static saveNowPlaying(Lcom/htc/fm/Preset;)V
    .locals 14
    .parameter "preset"

    .prologue
    .line 369
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 370
    .local v7, sT:J
    if-nez p0, :cond_0

    .line 406
    :goto_0
    return-void

    .line 373
    :cond_0
    const/4 v5, 0x0

    .line 375
    .local v5, fw:Ljava/io/FileWriter;
    :try_start_0
    new-instance v6, Ljava/io/FileWriter;

    const-string v11, "/data/data/com.htc.fm/fm"

    invoke-direct {v6, v11}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    .end local v5           #fw:Ljava/io/FileWriter;
    .local v6, fw:Ljava/io/FileWriter;
    :try_start_1
    iget v11, p0, Lcom/htc/fm/Preset;->freq:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 378
    .local v4, freq:Ljava/lang/String;
    iget-object v10, p0, Lcom/htc/fm/Preset;->title:Ljava/lang/String;

    .line 380
    .local v10, title:Ljava/lang/String;
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_2

    .line 381
    :cond_1
    iget-object v11, p0, Lcom/htc/fm/Preset;->rds:Ljava/lang/String;

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/htc/fm/Preset;->rds:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_4

    .line 382
    iget-object v10, p0, Lcom/htc/fm/Preset;->rds:Ljava/lang/String;

    .line 387
    :cond_2
    :goto_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget v12, p0, Lcom/htc/fm/Preset;->rowId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\t"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\t"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 388
    .local v9, strPreset:Ljava/lang/String;
    const-string v11, "FMUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[FMUtils][FMTuner] saveNowPlaying() "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    invoke-virtual {v6, v9}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 390
    invoke-virtual {v6}, Ljava/io/FileWriter;->flush()V

    .line 391
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 392
    const/4 v5, 0x0

    .line 404
    .end local v4           #freq:Ljava/lang/String;
    .end local v6           #fw:Ljava/io/FileWriter;
    .end local v9           #strPreset:Ljava/lang/String;
    .end local v10           #title:Ljava/lang/String;
    .restart local v5       #fw:Ljava/io/FileWriter;
    :cond_3
    :goto_2
    const/4 v5, 0x0

    .line 405
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 406
    .local v2, eT:J
    goto :goto_0

    .line 384
    .end local v2           #eT:J
    .end local v5           #fw:Ljava/io/FileWriter;
    .restart local v4       #freq:Ljava/lang/String;
    .restart local v6       #fw:Ljava/io/FileWriter;
    .restart local v10       #title:Ljava/lang/String;
    :cond_4
    :try_start_2
    const-string v10, ""
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 393
    .end local v4           #freq:Ljava/lang/String;
    .end local v6           #fw:Ljava/io/FileWriter;
    .end local v10           #title:Ljava/lang/String;
    .restart local v5       #fw:Ljava/io/FileWriter;
    :catch_0
    move-exception v0

    .line 394
    .local v0, e:Ljava/io/IOException;
    :goto_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 395
    if-eqz v5, :cond_3

    .line 397
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 401
    :goto_4
    const/4 v5, 0x0

    goto :goto_2

    .line 398
    :catch_1
    move-exception v1

    .line 399
    .local v1, e2:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 393
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #e2:Ljava/lang/Exception;
    .end local v5           #fw:Ljava/io/FileWriter;
    .restart local v6       #fw:Ljava/io/FileWriter;
    :catch_2
    move-exception v0

    move-object v5, v6

    .end local v6           #fw:Ljava/io/FileWriter;
    .restart local v5       #fw:Ljava/io/FileWriter;
    goto :goto_3
.end method

.method public static savePresetToDB(Landroid/content/IContentProvider;Lcom/htc/fm/Preset;)I
    .locals 10
    .parameter "mMediaProvider"
    .parameter "preset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v3, -0x1

    .line 153
    if-nez p1, :cond_1

    .line 169
    :cond_0
    :goto_0
    return v3

    .line 156
    :cond_1
    const-string v4, "internal"

    invoke-static {v4}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 157
    .local v1, tableUri:Landroid/net/Uri;
    const/4 v4, 0x0

    iget v5, p1, Lcom/htc/fm/Preset;->freq:I

    int-to-long v5, v5

    iget-object v7, p1, Lcom/htc/fm/Preset;->title:Ljava/lang/String;

    iget-object v8, p1, Lcom/htc/fm/Preset;->rds:Ljava/lang/String;

    invoke-static {v4, v5, v6, v7, v8}, Lcom/htc/fm/FMUtils;->toContentValues(ZJLjava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v2

    .line 159
    .local v2, values:Landroid/content/ContentValues;
    iget v4, p1, Lcom/htc/fm/Preset;->rowId:I

    if-ne v4, v3, :cond_2

    .line 160
    invoke-interface {p0, v1, v2}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 166
    .local v0, result:Landroid/net/Uri;
    :goto_1
    if-eqz v0, :cond_0

    .line 167
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    long-to-int v3, v3

    goto :goto_0

    .line 162
    .end local v0           #result:Landroid/net/Uri;
    :cond_2
    iget v4, p1, Lcom/htc/fm/Preset;->rowId:I

    int-to-long v4, v4

    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 163
    .restart local v0       #result:Landroid/net/Uri;
    invoke-interface {p0, v0, v2, v9, v9}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static setAudioPath(ILandroid/content/Context;)Z
    .locals 3
    .parameter "outPath"
    .parameter "context"

    .prologue
    .line 708
    const-string v0, "FMUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMUtils] setAudioPath("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 710
    const-string v0, "disable"

    sput-object v0, Lcom/htc/fm/FMUtils;->currentPath:Ljava/lang/String;

    .line 711
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/htc/fm/FMUtils;->getAudioStreamReadyIntent(Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 725
    :goto_0
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/htc/fm/FMUtils;->getOneLineInfo(I)Ljava/lang/String;

    .line 729
    const/4 v0, 0x1

    return v0

    .line 713
    :cond_0
    invoke-static {p0}, Lcom/htc/fm/FMUtils;->getAudioStreamPathIntent(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 714
    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 719
    :pswitch_0
    const-string v0, "fm_headset"

    sput-object v0, Lcom/htc/fm/FMUtils;->currentPath:Ljava/lang/String;

    goto :goto_0

    .line 716
    :pswitch_1
    const-string v0, "fm_speaker"

    sput-object v0, Lcom/htc/fm/FMUtils;->currentPath:Ljava/lang/String;

    goto :goto_0

    .line 714
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static setAudioPathByFramework(Ljava/lang/String;)V
    .locals 5
    .parameter "outPath"

    .prologue
    .line 665
    sget-object v1, Lcom/htc/fm/FMUtils;->setHeadsetFMType:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 685
    :goto_0
    return-void

    .line 668
    :cond_0
    const-string v1, "FMUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FMUtils] setAudioPathByFramework("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    :try_start_0
    sget-object v1, Lcom/htc/fm/FMUtils;->setHeadsetFMType:Ljava/lang/reflect/Method;

    sget-object v2, Lcom/htc/fm/FMUtils;->svc:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 672
    :catch_0
    move-exception v0

    .line 674
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    .line 675
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 677
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 678
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 680
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 681
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 683
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method public static setBand(I)V
    .locals 3
    .parameter "band"

    .prologue
    .line 750
    sput p0, Lcom/htc/fm/FMDef;->BAND:I

    .line 751
    const-string v0, "/data/data/com.htc.fm/band"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMUtils;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    return-void
.end method

.method public static setPublicPermission(Ljava/lang/String;)V
    .locals 4
    .parameter "path"

    .prologue
    .line 799
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chmod 655 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 804
    :goto_0
    return-void

    .line 801
    :catch_0
    move-exception v0

    .line 802
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setRds(Ljava/lang/String;)V
    .locals 1
    .parameter "rds"

    .prologue
    .line 770
    const-string v0, "/data/data/com.htc.fm/rds"

    invoke-static {v0, p0}, Lcom/htc/fm/FMUtils;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    return-void
.end method

.method public static setRdsPTY(I)V
    .locals 2
    .parameter "nCode"

    .prologue
    .line 779
    const-string v0, "/data/data/com.htc.fm/rds_pty"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMUtils;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    return-void
.end method

.method public static showStack(ILjava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "level"
    .parameter "tag"

    .prologue
    .line 607
    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 608
    .local v3, ste:[Ljava/lang/StackTraceElement;
    const-string v2, ""

    .line 610
    .local v2, result:Ljava/lang/String;
    if-nez v3, :cond_1

    .line 627
    :cond_0
    return-object v2

    .line 613
    :cond_1
    array-length v0, v3

    .line 615
    .local v0, deep:I
    const/4 v4, 0x2

    if-lt v0, v4, :cond_0

    .line 620
    if-lt v0, p0, :cond_2

    .line 621
    move v0, p0

    .line 623
    :cond_2
    const/4 v1, 0x2

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 624
    const-string v4, "FMUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v1

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v1

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "(), Line:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v1

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static toContentValues(ZJLjava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 4
    .parameter "isNowPlaying"
    .parameter "freq"
    .parameter "title"
    .parameter "rds"

    .prologue
    .line 173
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 174
    .local v0, map:Landroid/content/ContentValues;
    const-string v1, "_data"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "htcfm://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v1, "mime_type"

    const-string v2, "application/fm"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v1, "title"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v1, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 178
    const-string v1, "_size"

    long-to-int v2, p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 179
    const-string v1, "composer"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v1, "is_music"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 181
    return-object v0
.end method

.method public static toFreq(Ljava/lang/String;I)I
    .locals 2
    .parameter "freq"
    .parameter "defaultVal"

    .prologue
    .line 100
    move v0, p1

    .line 102
    .local v0, val:I
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 105
    :goto_0
    return v0

    .line 103
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static toFreq(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "preFreq"

    .prologue
    .line 92
    if-nez p0, :cond_1

    .line 93
    const/4 p0, 0x0

    .line 96
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 94
    .restart local p0
    :cond_1
    const-string v0, "htcfm://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 96
    const-string v0, "htcfm://"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static updatePreset(Landroid/content/Context;Lcom/htc/fm/Preset;)V
    .locals 5
    .parameter "context"
    .parameter "preset"

    .prologue
    .line 491
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 533
    :cond_0
    :goto_0
    return-void

    .line 495
    :cond_1
    iget v1, p1, Lcom/htc/fm/Preset;->rowId:I

    .line 497
    .local v1, id:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 501
    invoke-static {p0, v1}, Lcom/htc/fm/FMUtils;->getPresetCursor(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v0

    .line 502
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 506
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_2

    .line 507
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 508
    const/4 v0, 0x0

    .line 509
    goto :goto_0

    .line 512
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 513
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 514
    const/4 v0, 0x0

    .line 515
    goto :goto_0

    .line 518
    :cond_3
    invoke-static {}, Lcom/htc/fm/FMUtils;->TitleIndex()I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/htc/fm/Preset;->title:Ljava/lang/String;

    .line 519
    invoke-static {}, Lcom/htc/fm/FMUtils;->RdsIndex()I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/htc/fm/Preset;->rds:Ljava/lang/String;

    .line 522
    :try_start_0
    invoke-static {}, Lcom/htc/fm/FMUtils;->FreqIndex()I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/fm/FMUtils;->toFreq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p1, Lcom/htc/fm/Preset;->freq:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 532
    const/4 v0, 0x0

    .line 533
    goto :goto_0

    .line 524
    :catch_0
    move-exception v2

    .line 525
    .local v2, nfe:Ljava/lang/NumberFormatException;
    const-string v3, "FMUtils"

    const-string v4, "[FMRadio][FMUtils][updatePreset]: set preset empty due to frequency in data base is not a number"

    invoke-static {v3, v4}, Lcom/htc/fm/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    const-string v3, ""

    iput-object v3, p1, Lcom/htc/fm/Preset;->title:Ljava/lang/String;

    .line 527
    const-string v3, ""

    iput-object v3, p1, Lcom/htc/fm/Preset;->rds:Ljava/lang/String;

    .line 528
    const/4 v3, 0x0

    iput v3, p1, Lcom/htc/fm/Preset;->freq:I

    goto :goto_1
.end method

.method public static useCommonAddButon(Landroid/content/res/Resources;)Z
    .locals 1
    .parameter "res"

    .prologue
    .line 869
    const v0, 0x7f080001

    invoke-static {p0, v0}, Lcom/htc/fm/FMUtils;->readSettingFromResource(Landroid/content/res/Resources;I)Z

    move-result v0

    return v0
.end method

.method public static useCommonPowerButton(Landroid/content/res/Resources;)Z
    .locals 1
    .parameter "res"

    .prologue
    .line 873
    const v0, 0x7f080002

    invoke-static {p0, v0}, Lcom/htc/fm/FMUtils;->readSettingFromResource(Landroid/content/res/Resources;I)Z

    move-result v0

    return v0
.end method

.method public static useSenseLandscape(Landroid/content/res/Resources;)Z
    .locals 1
    .parameter "res"

    .prologue
    .line 865
    const/high16 v0, 0x7f08

    invoke-static {p0, v0}, Lcom/htc/fm/FMUtils;->readSettingFromResource(Landroid/content/res/Resources;I)Z

    move-result v0

    return v0
.end method

.method public static useTaskbar2Label(Landroid/content/res/Resources;)Z
    .locals 1
    .parameter "res"

    .prologue
    .line 888
    const v0, 0x7f080004

    invoke-static {p0, v0}, Lcom/htc/fm/FMUtils;->readSettingFromResource(Landroid/content/res/Resources;I)Z

    move-result v0

    return v0
.end method

.method public static useThemeChange(Landroid/content/res/Resources;)Z
    .locals 1
    .parameter "res"

    .prologue
    .line 878
    const v0, 0x7f080003

    invoke-static {p0, v0}, Lcom/htc/fm/FMUtils;->readSettingFromResource(Landroid/content/res/Resources;I)Z

    move-result v0

    return v0
.end method

.method public static write(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "path"
    .parameter "msg"

    .prologue
    .line 736
    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, p0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 737
    .local v0, fw:Ljava/io/FileWriter;
    invoke-virtual {v0, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 738
    invoke-virtual {v0}, Ljava/io/FileWriter;->flush()V

    .line 739
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 740
    const/4 v0, 0x0

    .line 746
    const/4 v0, 0x0

    .line 747
    :goto_0
    return-void

    .line 741
    .end local v0           #fw:Ljava/io/FileWriter;
    :catch_0
    move-exception v1

    .line 742
    .local v1, ioe:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 743
    const/4 v0, 0x0

    .line 744
    .restart local v0       #fw:Ljava/io/FileWriter;
    goto :goto_0
.end method
