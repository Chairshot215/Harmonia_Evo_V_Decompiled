.class public Lcom/htc/demoflopackageinstaller/VideoReportHelper;
.super Ljava/lang/Object;
.source "VideoReportHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DFPI"


# instance fields
.field private mFilePathHour:Ljava/lang/String;

.field private mFilePathTemp:Ljava/lang/String;

.field private sp:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/htc/demoflopackageinstaller/VideoReportHelper;->mFilePathTemp:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/htc/demoflopackageinstaller/VideoReportHelper;->mFilePathHour:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/htc/demoflopackageinstaller/VideoReportHelper;->sp:Landroid/content/SharedPreferences;

    .line 34
    const-string v0, "DFPI"

    const-string v1, "VideoReportHelper()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/temp/videoReport/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/demoflopackageinstaller/VideoReportHelper;->mFilePathTemp:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/upload/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/demoflopackageinstaller/VideoReportHelper;->mFilePathHour:Ljava/lang/String;

    .line 37
    const-string v0, "VIDEOPLAYPREFERENCE"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/demoflopackageinstaller/VideoReportHelper;->sp:Landroid/content/SharedPreferences;

    .line 38
    return-void
.end method

.method private combineReport()V
    .locals 37

    .prologue
    .line 166
    const-string v33, "DFPI"

    const-string v34, "VideoReportHelper.combineReport()"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .local v11, filepaths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v33, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/demoflopackageinstaller/VideoReportHelper;->mFilePathTemp:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-direct/range {v33 .. v34}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v33 .. v33}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v12

    .line 169
    .local v12, files:[Ljava/io/File;
    if-nez v12, :cond_0

    .line 286
    :goto_0
    return-void

    .line 171
    :cond_0
    move-object v4, v12

    .local v4, arr$:[Ljava/io/File;
    array-length v0, v4

    move/from16 v18, v0

    .local v18, len$:I
    const/4 v15, 0x0

    .local v15, i$:I
    :goto_1
    move/from16 v0, v18

    if-ge v15, v0, :cond_1

    aget-object v10, v4, v15

    .line 172
    .local v10, file:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 175
    .end local v10           #file:Ljava/io/File;
    :cond_1
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 176
    .local v20, names:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v29, times:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 178
    .local v6, counts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .local v16, interrupts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_5

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 182
    .local v21, path:Ljava/lang/String;
    const-string v33, "VIDEONAME"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/htc/demoflopackageinstaller/VideoReportHelper;->readXmlByTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 183
    .local v19, n:Ljava/lang/String;
    const-string v33, "ENDTIME"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/htc/demoflopackageinstaller/VideoReportHelper;->readXmlByTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v33

    const-string v35, "BEGINTIME"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lcom/htc/demoflopackageinstaller/VideoReportHelper;->readXmlByTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v35

    sub-long v25, v33, v35

    .line 184
    .local v25, t:J
    const-string v33, "ISINTERRUPT"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/htc/demoflopackageinstaller/VideoReportHelper;->readXmlByTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 185
    .local v14, i:I
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_3

    .line 187
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v17

    .line 188
    .local v17, j:I
    move-object/from16 v0, v29

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/Long;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Long;->longValue()J

    move-result-wide v33

    add-long v33, v33, v25

    invoke-static/range {v33 .. v34}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v33

    move-object/from16 v0, v29

    move/from16 v1, v17

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 189
    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/Integer;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Integer;->intValue()I

    move-result v33

    add-int/lit8 v33, v33, 0x1

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    move/from16 v0, v17

    move-object/from16 v1, v33

    invoke-virtual {v6, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 190
    const/16 v33, 0x1

    move/from16 v0, v33

    if-ne v14, v0, :cond_2

    .line 191
    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/Integer;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Integer;->intValue()I

    move-result v33

    add-int/lit8 v33, v33, 0x1

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    move-object/from16 v0, v16

    move/from16 v1, v17

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 203
    .end local v17           #j:I
    :cond_2
    :goto_3
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, v21

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 204
    .local v9, f:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    goto/16 :goto_2

    .line 195
    .end local v9           #f:Ljava/io/File;
    :cond_3
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v33

    move-object/from16 v0, v29

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    const/16 v33, 0x1

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    const/16 v33, 0x1

    move/from16 v0, v33

    if-ne v14, v0, :cond_4

    .line 199
    const/16 v33, 0x1

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 201
    :cond_4
    const/16 v33, 0x0

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 206
    .end local v14           #i:I
    .end local v19           #n:Ljava/lang/String;
    .end local v21           #path:Ljava/lang/String;
    .end local v25           #t:J
    :cond_5
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/demoflopackageinstaller/VideoReportHelper;->mFilePathHour:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 207
    .local v13, hourFile:Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v33

    if-nez v33, :cond_6

    .line 208
    invoke-virtual {v13}, Ljava/io/File;->mkdirs()Z

    .line 210
    :cond_6
    new-instance v30, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/demoflopackageinstaller/VideoReportHelper;->mFilePathHour:Ljava/lang/String;

    move-object/from16 v33, v0

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/htc/demoflopackageinstaller/VideoReportHelper;->getUTCTime()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ".xml"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v30

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    .local v30, xmlFile:Ljava/io/File;
    const/16 v31, 0x0

    .line 212
    .local v31, xmlOutStream:Ljava/io/FileOutputStream;
    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->exists()Z

    move-result v33

    if-eqz v33, :cond_7

    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->isFile()Z

    move-result v33

    if-eqz v33, :cond_7

    .line 214
    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->delete()Z

    .line 216
    :cond_7
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v33

    if-eqz v33, :cond_8

    .line 217
    const-string v33, "DFPI"

    const-string v34, "There is no records for video report. Do not write xml file"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 222
    :cond_8
    :try_start_0
    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->createNewFile()Z

    .line 223
    new-instance v32, Ljava/io/FileOutputStream;

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v31           #xmlOutStream:Ljava/io/FileOutputStream;
    .local v32, xmlOutStream:Ljava/io/FileOutputStream;
    move-object/from16 v31, v32

    .line 229
    .end local v32           #xmlOutStream:Ljava/io/FileOutputStream;
    .restart local v31       #xmlOutStream:Ljava/io/FileOutputStream;
    :goto_4
    if-nez v31, :cond_9

    .line 231
    const-string v33, "DFPI"

    const-string v34, "xmlOutStream = null"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 225
    :catch_0
    move-exception v8

    .line 227
    .local v8, e:Ljava/lang/Exception;
    const-string v33, "DFPI"

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 234
    .end local v8           #e:Ljava/lang/Exception;
    :cond_9
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v24

    .line 237
    .local v24, serializer:Lorg/xmlpull/v1/XmlSerializer;
    :try_start_1
    const-string v33, "UTF-8"

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 238
    const/16 v33, 0x0

    const/16 v34, 0x1

    invoke-static/range {v34 .. v34}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v34

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 240
    const-string v33, ""

    const-string v34, "FeatureUsage"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 241
    sget-object v33, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mDeviceInfoHelper:Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;

    if-eqz v33, :cond_a

    .line 243
    const-string v33, ""

    const-string v34, "longitude"

    sget-object v35, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mDeviceInfoHelper:Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;

    invoke-virtual/range {v35 .. v35}, Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;->getLog()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 244
    const-string v33, ""

    const-string v34, "latitude"

    sget-object v35, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mDeviceInfoHelper:Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;

    invoke-virtual/range {v35 .. v35}, Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;->getLat()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 245
    const-string v33, ""

    const-string v34, "cityName"

    sget-object v35, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mDeviceInfoHelper:Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;

    invoke-virtual/range {v35 .. v35}, Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;->getCityName()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 246
    const-string v33, ""

    const-string v34, "countryCode"

    sget-object v35, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mDeviceInfoHelper:Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;

    invoke-virtual/range {v35 .. v35}, Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;->getCountryCode()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 247
    const-string v33, ""

    const-string v34, "mccMnc"

    sget-object v35, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mDeviceInfoHelper:Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;

    invoke-virtual/range {v35 .. v35}, Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;->getMNC_MCC()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 248
    const-string v33, ""

    const-string v34, "modelId"

    sget-object v35, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mDeviceInfoHelper:Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;

    invoke-virtual/range {v35 .. v35}, Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;->getMID()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 249
    const-string v33, ""

    const-string v34, "customerId"

    sget-object v35, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mDeviceInfoHelper:Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;

    invoke-virtual/range {v35 .. v35}, Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;->getCID()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 250
    const-string v33, ""

    const-string v34, "deviceId"

    sget-object v35, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mDeviceInfoHelper:Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;

    invoke-virtual/range {v35 .. v35}, Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;->getDeviceId()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 251
    const-string v33, ""

    const-string v34, "swSku"

    sget-object v35, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mDeviceInfoHelper:Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;

    invoke-virtual/range {v35 .. v35}, Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;->getSKU()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 252
    const-string v33, ""

    const-string v34, "usageDateStart"

    invoke-direct/range {p0 .. p0}, Lcom/htc/demoflopackageinstaller/VideoReportHelper;->getUsageDateStart()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 253
    const-string v33, ""

    const-string v34, "deviceLocale"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 254
    const-string v33, ""

    const-string v34, "romCode"

    sget-object v35, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mDeviceInfoHelper:Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;

    invoke-virtual/range {v35 .. v35}, Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;->getRomVersion()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 257
    :cond_a
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_b

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 259
    .local v23, s:Ljava/lang/String;
    const-string v33, ""

    const-string v34, "Usage"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 260
    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 261
    .local v7, cursor:I
    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/Long;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Long;->longValue()J

    move-result-wide v27

    .line 262
    .local v27, time:J
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/Integer;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 263
    .local v5, count:I
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/Integer;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Integer;->intValue()I

    move-result v22

    .line 265
    .local v22, rupt:I
    const-string v33, ""

    const-string v34, "featureId"

    const-string v35, "0"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 266
    const-string v33, ""

    const-string v34, "featureName"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move-object/from16 v3, v23

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 267
    const-string v33, ""

    const-string v34, "featureVersion"

    const-string v35, "0"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 268
    const-string v33, ""

    const-string v34, "featureCategory"

    const-string v35, "UN_KNOWN"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 269
    const-string v33, ""

    const-string v34, "featureType"

    const-string v35, "DVIDEO"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 270
    const-string v33, ""

    const-string v34, "usageCount"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 271
    const-string v33, ""

    const-string v34, "usageDuration"

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 272
    const-string v33, ""

    const-string v34, "interruptCount"

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 274
    const-string v33, ""

    const-string v34, "Usage"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_5

    .line 281
    .end local v5           #count:I
    .end local v7           #cursor:I
    .end local v22           #rupt:I
    .end local v23           #s:Ljava/lang/String;
    .end local v27           #time:J
    :catch_1
    move-exception v8

    .line 283
    .restart local v8       #e:Ljava/lang/Exception;
    const-string v33, "DFPI"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, ""

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->delete()Z

    goto/16 :goto_0

    .line 276
    .end local v8           #e:Ljava/lang/Exception;
    :cond_b
    :try_start_2
    const-string v33, ""

    const-string v34, "FeatureUsage"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 277
    invoke-interface/range {v24 .. v24}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 278
    invoke-interface/range {v24 .. v24}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 279
    invoke-virtual/range {v31 .. v31}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method

.method private getUTCTime()Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUsageDateStart()Ljava/lang/String;
    .locals 14

    .prologue
    const/16 v13, 0xc

    const/16 v12, 0xb

    const/4 v11, 0x5

    const/4 v10, 0x2

    const/16 v9, 0xa

    .line 323
    const-string v7, "DFPI"

    const-string v8, "VideoReportHelper.getUsageDateStart()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 325
    .local v0, c:Ljava/util/Calendar;
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 326
    .local v6, year:Ljava/lang/String;
    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    if-ge v7, v9, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 327
    .local v4, month:Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ge v7, v9, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 328
    .local v1, day:Ljava/lang/String;
    :goto_1
    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ge v7, v9, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 329
    .local v2, hour:Ljava/lang/String;
    :goto_2
    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ge v7, v9, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 330
    .local v3, min:Ljava/lang/String;
    :goto_3
    const/16 v7, 0xd

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ge v7, v9, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0xd

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 331
    .local v5, sec:Ljava/lang/String;
    :goto_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "T"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 326
    .end local v1           #day:Ljava/lang/String;
    .end local v2           #hour:Ljava/lang/String;
    .end local v3           #min:Ljava/lang/String;
    .end local v4           #month:Ljava/lang/String;
    .end local v5           #sec:Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 327
    .restart local v4       #month:Ljava/lang/String;
    :cond_1
    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 328
    .restart local v1       #day:Ljava/lang/String;
    :cond_2
    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 329
    .restart local v2       #hour:Ljava/lang/String;
    :cond_3
    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    .line 330
    .restart local v3       #min:Ljava/lang/String;
    :cond_4
    const/16 v7, 0xd

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_4
.end method

.method private readXmlByTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "filepath"
    .parameter "tag"

    .prologue
    const/4 v6, 0x0

    .line 290
    const-string v7, "DFPI"

    const-string v8, "VideoReportHelper.readXmlByTag()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    const/4 v0, 0x0

    .line 292
    .local v0, db:Ljavax/xml/parsers/DocumentBuilder;
    const/4 v1, 0x0

    .line 295
    .local v1, doc:Lorg/w3c/dom/Document;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v7

    invoke-virtual {v7}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 296
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 305
    invoke-interface {v1, p2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 306
    .local v5, nodelist:Lorg/w3c/dom/NodeList;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v4, v7, :cond_1

    .line 308
    invoke-interface {v5, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 310
    invoke-interface {v5, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    .line 311
    .local v3, ele:Lorg/w3c/dom/Element;
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 313
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v6

    .line 318
    .end local v3           #ele:Lorg/w3c/dom/Element;
    .end local v4           #i:I
    .end local v5           #nodelist:Lorg/w3c/dom/NodeList;
    :goto_1
    return-object v6

    .line 298
    :catch_0
    move-exception v2

    .line 300
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "DFPI"

    const-string v8, "parse file to xml failed"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const-string v7, "DFPI"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 306
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v4       #i:I
    .restart local v5       #nodelist:Lorg/w3c/dom/NodeList;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 317
    :cond_1
    const-string v7, "DFPI"

    const-string v8, "get string : null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private writeXml(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 9
    .parameter "BeginTime"
    .parameter "EndTime"
    .parameter "isInterrupt"
    .parameter "videoName"

    .prologue
    .line 94
    const-string v6, "DFPI"

    const-string v7, "VideoReportHelper.writeXml()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    new-instance v3, Ljava/io/File;

    iget-object v6, p0, Lcom/htc/demoflopackageinstaller/VideoReportHelper;->mFilePathTemp:Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 96
    .local v3, tempFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 97
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 98
    :cond_0
    new-instance v4, Ljava/io/File;

    iget-object v6, p0, Lcom/htc/demoflopackageinstaller/VideoReportHelper;->mFilePathTemp:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/htc/demoflopackageinstaller/VideoReportHelper;->getUTCTime()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".xml"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .local v4, xmlFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 101
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 105
    :cond_1
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    const/4 v5, 0x0

    .line 116
    .local v5, xmlOutStream:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    .end local v5           #xmlOutStream:Ljava/io/FileOutputStream;
    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 124
    .restart local v5       #xmlOutStream:Ljava/io/FileOutputStream;
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    .line 127
    .local v2, serializer:Lorg/xmlpull/v1/XmlSerializer;
    :try_start_2
    const-string v6, "UTF-8"

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 128
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 130
    const-string v6, ""

    const-string v7, "VIDEO"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 132
    const-string v6, ""

    const-string v7, "VIDEONAME"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 133
    invoke-interface {v2, p4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 134
    const-string v6, ""

    const-string v7, "VIDEONAME"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 136
    const-string v6, ""

    const-string v7, "ISINTERRUPT"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 137
    if-eqz p3, :cond_2

    .line 138
    const-string v6, "1"

    invoke-interface {v2, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 141
    :goto_0
    const-string v6, ""

    const-string v7, "ISINTERRUPT"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 143
    const-string v6, ""

    const-string v7, "BEGINTIME"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 145
    invoke-interface {v2, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 146
    const-string v6, ""

    const-string v7, "BEGINTIME"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 148
    const-string v6, ""

    const-string v7, "ENDTIME"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 149
    invoke-interface {v2, p2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 150
    const-string v6, ""

    const-string v7, "ENDTIME"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 152
    const-string v6, ""

    const-string v7, "VIDEO"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 154
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 155
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 156
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 162
    .end local v2           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .end local v5           #xmlOutStream:Ljava/io/FileOutputStream;
    :goto_1
    return-void

    .line 107
    :catch_0
    move-exception v1

    .line 109
    .local v1, e1:Ljava/io/IOException;
    const-string v6, "DFPI"

    const-string v7, "createNewFile() get exception"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const-string v6, "DFPI"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 118
    .end local v1           #e1:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 120
    .local v1, e1:Ljava/io/FileNotFoundException;
    const-string v6, "DFPI"

    const-string v7, "new FileOutputStream() get exception"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const-string v6, "DFPI"

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 140
    .end local v1           #e1:Ljava/io/FileNotFoundException;
    .restart local v2       #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .restart local v5       #xmlOutStream:Ljava/io/FileOutputStream;
    :cond_2
    :try_start_3
    const-string v6, "0"

    invoke-interface {v2, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 158
    :catch_2
    move-exception v0

    .line 160
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "DFPI"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public getReport()V
    .locals 2

    .prologue
    .line 336
    const-string v0, "DFPI"

    const-string v1, "VideoReportHelper.getReport()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-direct {p0}, Lcom/htc/demoflopackageinstaller/VideoReportHelper;->combineReport()V

    .line 338
    return-void
.end method

.method public videoBegin()V
    .locals 3

    .prologue
    .line 42
    const-string v1, "DFPI"

    const-string v2, "VideoReportHelper.videoBegin()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object v1, p0, Lcom/htc/demoflopackageinstaller/VideoReportHelper;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 45
    .local v0, pEditor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "VIDEOBEGINTIMEPREFERENCE"

    invoke-direct {p0}, Lcom/htc/demoflopackageinstaller/VideoReportHelper;->getUTCTime()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 46
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 48
    return-void
.end method

.method public videoEnd(Ljava/lang/String;)V
    .locals 7
    .parameter "videoName"

    .prologue
    const/4 v6, 0x0

    .line 52
    const-string v3, "DFPI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VideoReportHelper.videoEnd(), video name is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-direct {p0}, Lcom/htc/demoflopackageinstaller/VideoReportHelper;->getUTCTime()Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, endTime:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/demoflopackageinstaller/VideoReportHelper;->sp:Landroid/content/SharedPreferences;

    const-string v4, "VIDEOBEGINTIMEPREFERENCE"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, beginTime:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 67
    :goto_0
    return-void

    .line 60
    :cond_0
    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v3, p1}, Lcom/htc/demoflopackageinstaller/VideoReportHelper;->writeXml(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 62
    iget-object v3, p0, Lcom/htc/demoflopackageinstaller/VideoReportHelper;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 63
    .local v2, pEditor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 64
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 65
    iget-object v3, p0, Lcom/htc/demoflopackageinstaller/VideoReportHelper;->sp:Landroid/content/SharedPreferences;

    const-string v4, "VIDEOBEGINTIMEPREFERENCE"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    const-string v3, "DFPI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "begin time after clear is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public videoInterrupt(Ljava/lang/String;)V
    .locals 7
    .parameter "videoName"

    .prologue
    const/4 v6, 0x0

    .line 71
    const-string v3, "DFPI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VideoReportHelper.videoInterrupt(), video name is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-direct {p0}, Lcom/htc/demoflopackageinstaller/VideoReportHelper;->getUTCTime()Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, endTime:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/demoflopackageinstaller/VideoReportHelper;->sp:Landroid/content/SharedPreferences;

    const-string v4, "VIDEOBEGINTIMEPREFERENCE"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, beginTime:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 86
    :goto_0
    return-void

    .line 79
    :cond_0
    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v3, p1}, Lcom/htc/demoflopackageinstaller/VideoReportHelper;->writeXml(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 81
    iget-object v3, p0, Lcom/htc/demoflopackageinstaller/VideoReportHelper;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 82
    .local v2, pEditor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 83
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 84
    iget-object v3, p0, Lcom/htc/demoflopackageinstaller/VideoReportHelper;->sp:Landroid/content/SharedPreferences;

    const-string v4, "VIDEOBEGINTIMEPREFERENCE"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    const-string v3, "DFPI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "begin time after clear is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
