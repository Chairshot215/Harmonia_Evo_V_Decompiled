.class public Landroid/util/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# static fields
.field public static final HUNDRED_DAY_FIELD_LEN:I = 0x13

.field private static final SECONDS_PER_DAY:I = 0x15180

.field private static final SECONDS_PER_HOUR:I = 0xe10

.field private static final SECONDS_PER_MINUTE:I = 0x3c

.field private static final TAG:Ljava/lang/String; = "TimeUtils"

.field private static sFormatStr:[C

.field private static final sFormatSync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    const/16 v0, 0x18

    new-array v0, v0, [C

    sput-object v0, Landroid/util/TimeUtils;->sFormatStr:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static accumField(IIZI)I
    .locals 1

    const/16 v0, 0x63

    if-gt p0, v0, :cond_0

    if-eqz p2, :cond_1

    const/4 v0, 0x3

    if-lt p3, v0, :cond_1

    :cond_0
    add-int/lit8 v0, p1, 0x3

    :goto_0
    return v0

    :cond_1
    const/16 v0, 0x9

    if-gt p0, v0, :cond_2

    if-eqz p2, :cond_3

    const/4 v0, 0x2

    if-lt p3, v0, :cond_3

    :cond_2
    add-int/lit8 v0, p1, 0x2

    goto :goto_0

    :cond_3
    if-nez p2, :cond_4

    if-lez p0, :cond_5

    :cond_4
    add-int/lit8 v0, p1, 0x1

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static formatDuration(JJLjava/io/PrintWriter;)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const-string v0, "--"

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sub-long v0, p0, p2

    const/4 v2, 0x0

    invoke-static {v0, v1, p4, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    goto :goto_0
.end method

.method public static formatDuration(JLjava/io/PrintWriter;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    return-void
.end method

.method public static formatDuration(JLjava/io/PrintWriter;I)V
    .locals 5

    sget-object v2, Landroid/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-static {p0, p1, p3}, Landroid/util/TimeUtils;->formatDurationLocked(JI)I

    move-result v0

    new-instance v1, Ljava/lang/String;

    sget-object v3, Landroid/util/TimeUtils;->sFormatStr:[C

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v0}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static formatDuration(JLjava/lang/StringBuilder;)V
    .locals 4

    sget-object v2, Landroid/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    monitor-enter v2

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, v1}, Landroid/util/TimeUtils;->formatDurationLocked(JI)I

    move-result v0

    sget-object v1, Landroid/util/TimeUtils;->sFormatStr:[C

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v3, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static formatDurationLocked(JI)I
    .locals 21

    sget-object v4, Landroid/util/TimeUtils;->sFormatStr:[C

    array-length v4, v4

    move/from16 v0, p2

    if-ge v4, v0, :cond_0

    move/from16 v0, p2

    new-array v4, v0, [C

    sput-object v4, Landroid/util/TimeUtils;->sFormatStr:[C

    :cond_0
    sget-object v2, Landroid/util/TimeUtils;->sFormatStr:[C

    const-wide/16 v6, 0x0

    cmp-long v4, p0, v6

    if-nez v4, :cond_2

    const/4 v5, 0x0

    add-int/lit8 p2, p2, -0x1

    move/from16 v16, v5

    :goto_0
    move/from16 v0, v16

    move/from16 v1, p2

    if-ge v0, v1, :cond_1

    add-int/lit8 v5, v16, 0x1

    const/16 v4, 0x20

    aput-char v4, v2, v16

    move/from16 v16, v5

    goto :goto_0

    :cond_1
    const/16 v4, 0x30

    aput-char v4, v2, v16

    add-int/lit8 v4, v16, 0x1

    :goto_1
    return v4

    :cond_2
    const-wide/16 v6, 0x0

    cmp-long v4, p0, v6

    if-lez v4, :cond_6

    const/16 v17, 0x2b

    :goto_2
    const-wide/16 v6, 0x3e8

    rem-long v6, p0, v6

    long-to-int v13, v6

    const-wide/16 v6, 0x3e8

    div-long v6, p0, v6

    long-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v0, v6

    move/from16 v18, v0

    const/4 v3, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const v4, 0x15180

    move/from16 v0, v18

    if-le v0, v4, :cond_3

    const v4, 0x15180

    div-int v3, v18, v4

    const v4, 0x15180

    mul-int/2addr v4, v3

    sub-int v18, v18, v4

    :cond_3
    const/16 v4, 0xe10

    move/from16 v0, v18

    if-le v0, v4, :cond_4

    move/from16 v0, v18

    div-int/lit16 v12, v0, 0xe10

    mul-int/lit16 v4, v12, 0xe10

    sub-int v18, v18, v4

    :cond_4
    const/16 v4, 0x3c

    move/from16 v0, v18

    if-le v0, v4, :cond_5

    div-int/lit8 v14, v18, 0x3c

    mul-int/lit8 v4, v14, 0x3c

    sub-int v18, v18, v4

    :cond_5
    const/4 v5, 0x0

    if-eqz p2, :cond_b

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v3, v4, v6, v7}, Landroid/util/TimeUtils;->accumField(IIZI)I

    move-result v15

    const/4 v6, 0x1

    if-lez v15, :cond_7

    const/4 v4, 0x1

    :goto_3
    const/4 v7, 0x2

    invoke-static {v12, v6, v4, v7}, Landroid/util/TimeUtils;->accumField(IIZI)I

    move-result v4

    add-int/2addr v15, v4

    const/4 v6, 0x1

    if-lez v15, :cond_8

    const/4 v4, 0x1

    :goto_4
    const/4 v7, 0x2

    invoke-static {v14, v6, v4, v7}, Landroid/util/TimeUtils;->accumField(IIZI)I

    move-result v4

    add-int/2addr v15, v4

    const/4 v6, 0x1

    if-lez v15, :cond_9

    const/4 v4, 0x1

    :goto_5
    const/4 v7, 0x2

    move/from16 v0, v18

    invoke-static {v0, v6, v4, v7}, Landroid/util/TimeUtils;->accumField(IIZI)I

    move-result v4

    add-int/2addr v15, v4

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-lez v15, :cond_a

    const/4 v4, 0x3

    :goto_6
    invoke-static {v13, v6, v7, v4}, Landroid/util/TimeUtils;->accumField(IIZI)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v15, v4

    :goto_7
    move/from16 v0, p2

    if-ge v15, v0, :cond_b

    const/16 v4, 0x20

    aput-char v4, v2, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    :cond_6
    const/16 v17, 0x2d

    move-wide/from16 v0, p0

    neg-long v0, v0

    move-wide/from16 p0, v0

    goto/16 :goto_2

    :cond_7
    const/4 v4, 0x0

    goto :goto_3

    :cond_8
    const/4 v4, 0x0

    goto :goto_4

    :cond_9
    const/4 v4, 0x0

    goto :goto_5

    :cond_a
    const/4 v4, 0x0

    goto :goto_6

    :cond_b
    aput-char v17, v2, v5

    add-int/lit8 v5, v5, 0x1

    move/from16 v19, v5

    if-eqz p2, :cond_c

    const/16 v20, 0x1

    :goto_8
    const/16 v4, 0x64

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/util/TimeUtils;->printField([CICIZI)I

    move-result v5

    const/16 v8, 0x68

    move/from16 v0, v19

    if-eq v5, v0, :cond_d

    const/4 v10, 0x1

    :goto_9
    if-eqz v20, :cond_e

    const/4 v11, 0x2

    :goto_a
    move-object v6, v2

    move v7, v12

    move v9, v5

    invoke-static/range {v6 .. v11}, Landroid/util/TimeUtils;->printField([CICIZI)I

    move-result v5

    const/16 v8, 0x6d

    move/from16 v0, v19

    if-eq v5, v0, :cond_f

    const/4 v10, 0x1

    :goto_b
    if-eqz v20, :cond_10

    const/4 v11, 0x2

    :goto_c
    move-object v6, v2

    move v7, v14

    move v9, v5

    invoke-static/range {v6 .. v11}, Landroid/util/TimeUtils;->printField([CICIZI)I

    move-result v5

    const/16 v8, 0x73

    move/from16 v0, v19

    if-eq v5, v0, :cond_11

    const/4 v10, 0x1

    :goto_d
    if-eqz v20, :cond_12

    const/4 v11, 0x2

    :goto_e
    move-object v6, v2

    move/from16 v7, v18

    move v9, v5

    invoke-static/range {v6 .. v11}, Landroid/util/TimeUtils;->printField([CICIZI)I

    move-result v5

    const/16 v8, 0x6d

    const/4 v10, 0x1

    if-eqz v20, :cond_13

    move/from16 v0, v19

    if-eq v5, v0, :cond_13

    const/4 v11, 0x3

    :goto_f
    move-object v6, v2

    move v7, v13

    move v9, v5

    invoke-static/range {v6 .. v11}, Landroid/util/TimeUtils;->printField([CICIZI)I

    move-result v5

    const/16 v4, 0x73

    aput-char v4, v2, v5

    add-int/lit8 v4, v5, 0x1

    goto/16 :goto_1

    :cond_c
    const/16 v20, 0x0

    goto :goto_8

    :cond_d
    const/4 v10, 0x0

    goto :goto_9

    :cond_e
    const/4 v11, 0x0

    goto :goto_a

    :cond_f
    const/4 v10, 0x0

    goto :goto_b

    :cond_10
    const/4 v11, 0x0

    goto :goto_c

    :cond_11
    const/4 v10, 0x0

    goto :goto_d

    :cond_12
    const/4 v11, 0x0

    goto :goto_e

    :cond_13
    const/4 v11, 0x0

    goto :goto_f
.end method

.method public static getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;
    .locals 17

    if-nez p4, :cond_0

    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_0
    const/4 v2, 0x0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v13

    const v15, 0x10f000d

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v12

    new-instance v8, Ljava/util/Date;

    move-wide/from16 v0, p2

    invoke-direct {v8, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v6

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v7

    invoke-virtual {v4, v8}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v5

    :try_start_0
    const-string/jumbo v15, "timezones"

    invoke-static {v12, v15}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    :cond_1
    :goto_1
    invoke-static {v12}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_2

    const-string/jumbo v15, "timezone"

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v15

    if-nez v15, :cond_3

    :cond_2
    :goto_2
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    move-object v4, v2

    goto :goto_0

    :cond_3
    const/4 v15, 0x0

    :try_start_1
    const-string v16, "code"

    move-object/from16 v0, v16

    invoke-interface {v12, v15, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v15

    const/16 v16, 0x4

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v15

    if-eqz v15, :cond_4

    move/from16 v0, p0

    if-ne v7, v0, :cond_4

    move/from16 v0, p1

    if-ne v5, v0, :cond_4

    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    :cond_4
    if-nez v2, :cond_1

    :try_start_2
    invoke-static {v11}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v14

    move-wide/from16 v0, p2

    invoke-virtual {v14, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v15

    move/from16 v0, p0

    if-ne v15, v0, :cond_1

    invoke-virtual {v14, v8}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v15

    move/from16 v0, p1

    if-ne v15, v0, :cond_1

    move-object v2, v14

    goto :goto_1

    :catch_0
    move-exception v9

    :try_start_3
    const-string v15, "TimeUtils"

    const-string v16, "Got exception while getting preferred time zone."

    move-object/from16 v0, v16

    invoke-static {v15, v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v15

    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    throw v15

    :catch_1
    move-exception v9

    :try_start_4
    const-string v15, "TimeUtils"

    const-string v16, "Got exception while getting preferred time zone."

    move-object/from16 v0, v16

    invoke-static {v15, v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method public static getTimeZoneDatabaseVersion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Llibcore/util/ZoneInfoDB;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static printField([CICIZI)I
    .locals 3

    if-nez p4, :cond_0

    if-lez p1, :cond_7

    :cond_0
    move v1, p3

    if-eqz p4, :cond_1

    const/4 v2, 0x3

    if-ge p5, v2, :cond_2

    :cond_1
    const/16 v2, 0x63

    if-le p1, v2, :cond_3

    :cond_2
    div-int/lit8 v0, p1, 0x64

    add-int/lit8 v2, v0, 0x30

    int-to-char v2, v2

    aput-char v2, p0, p3

    add-int/lit8 p3, p3, 0x1

    mul-int/lit8 v2, v0, 0x64

    sub-int/2addr p1, v2

    :cond_3
    if-eqz p4, :cond_4

    const/4 v2, 0x2

    if-ge p5, v2, :cond_5

    :cond_4
    const/16 v2, 0x9

    if-gt p1, v2, :cond_5

    if-eq v1, p3, :cond_6

    :cond_5
    div-int/lit8 v0, p1, 0xa

    add-int/lit8 v2, v0, 0x30

    int-to-char v2, v2

    aput-char v2, p0, p3

    add-int/lit8 p3, p3, 0x1

    mul-int/lit8 v2, v0, 0xa

    sub-int/2addr p1, v2

    :cond_6
    add-int/lit8 v2, p1, 0x30

    int-to-char v2, v2

    aput-char v2, p0, p3

    add-int/lit8 p3, p3, 0x1

    aput-char p2, p0, p3

    add-int/lit8 p3, p3, 0x1

    :cond_7
    return p3
.end method
