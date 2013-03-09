.class public Lcom/android/providers/settings/DatabaseHelper;
.super Lcom/android/providers/settings/abs/HtcAbsDatabaseHelper;
.source "DatabaseHelper.java"


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "settings.db"

.field private static final DATABASE_VERSION:I = 0x4b

.field private static final TAG:Ljava/lang/String; = "SettingsProvider"

.field private static final mValidTables:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 106
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    .line 109
    sget-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    const-string v1, "system"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 110
    sget-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    const-string v1, "secure"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 111
    sget-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    const-string v1, "profile"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 112
    sget-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    const-string v1, "bluetooth_devices"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 113
    sget-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    const-string v1, "bookmarks"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 114
    sget-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    const-string v1, "htcservices"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 117
    sget-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    const-string v1, "favorites"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 118
    sget-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    const-string v1, "gservices"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 119
    sget-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    const-string v1, "old_favorites"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 123
    const-string v0, "settings.db"

    const/4 v1, 0x0

    const/16 v2, 0x4b

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/settings/abs/HtcAbsDatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 124
    iput-object p1, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    .line 125
    new-instance v0, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-direct {v0, p1}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/providers/settings/DatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    .line 126
    return-void
.end method

.method private _formatDayAndTime(Landroid/database/sqlite/SQLiteDatabase;J)Ljava/lang/String;
    .locals 4
    .parameter "db"
    .parameter "value"

    .prologue
    .line 1441
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1442
    .local v0, c:Ljava/util/Calendar;
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, p2, p3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1443
    invoke-virtual {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->_is24HourFormat(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v1, "E k:mm"

    .line 1444
    .local v1, format:Ljava/lang/String;
    :goto_0
    invoke-static {v1, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1445
    .local v2, timeString:Ljava/lang/String;
    return-object v2

    .line 1443
    .end local v1           #format:Ljava/lang/String;
    .end local v2           #timeString:Ljava/lang/String;
    :cond_0
    const-string v1, "E h:mm aa"

    goto :goto_0
.end method

.method private createSecureTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 133
    const-string v0, "CREATE TABLE secure (_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT UNIQUE ON CONFLICT REPLACE,value TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 138
    const-string v0, "CREATE INDEX secureIndex1 ON secure (name);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method private getIntValueFromSystem(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)I
    .locals 11
    .parameter "db"
    .parameter "name"
    .parameter "defaultValue"

    .prologue
    .line 2794
    move v10, p3

    .line 2795
    .local v10, value:I
    const/4 v8, 0x0

    .line 2797
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    const-string v1, "system"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "value"

    aput-object v3, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "name=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2799
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2800
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 2801
    .local v9, val:Ljava/lang/String;
    if-nez v9, :cond_2

    move v10, p3

    .line 2804
    .end local v9           #val:Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2806
    :cond_1
    return v10

    .line 2801
    .restart local v9       #val:Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v10

    goto :goto_0

    .line 2804
    .end local v9           #val:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private getOldRingerModeAffect(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 13
    .parameter "db"

    .prologue
    const/4 v12, 0x0

    .line 1418
    const/4 v8, 0x0

    .line 1420
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    const-string v1, "system"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "value"

    aput-object v3, v2, v0

    const-string v3, "name=\'mode_ringer_streams_affected\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1421
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1422
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 1423
    .local v11, oldValue:Ljava/lang/String;
    if-nez v11, :cond_2

    .line 1434
    if-eqz v8, :cond_0

    .line 1435
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    move v0, v12

    .end local v11           #oldValue:Ljava/lang/String;
    :cond_1
    :goto_0
    return v0

    .line 1426
    .restart local v11       #oldValue:Ljava/lang/String;
    :cond_2
    :try_start_1
    new-instance v10, Ljava/lang/Integer;

    invoke-direct {v10, v11}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 1427
    .local v10, oldIntegerValue:Ljava/lang/Integer;
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    .line 1434
    if-eqz v8, :cond_1

    .line 1435
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1434
    .end local v10           #oldIntegerValue:Ljava/lang/Integer;
    .end local v11           #oldValue:Ljava/lang/String;
    :cond_3
    if-eqz v8, :cond_4

    .line 1435
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v12

    goto :goto_0

    .line 1430
    :catch_0
    move-exception v9

    .line 1434
    .local v9, e:Ljava/lang/Exception;
    if-eqz v8, :cond_5

    .line 1435
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_5
    move v0, v12

    goto :goto_0

    .line 1434
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_6

    .line 1435
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method private isNeedUpgradeAutoTimeZone(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 12
    .parameter "db"

    .prologue
    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 2810
    const/4 v8, 0x0

    .line 2812
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    const-string v1, "system"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "name"

    aput-object v3, v2, v0

    const-string v3, "name=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v5, "auto_time_zone"

    aput-object v5, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2817
    if-eqz v8, :cond_3

    .line 2818
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    .line 2830
    if-eqz v8, :cond_0

    .line 2831
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    move v0, v10

    .line 2834
    :goto_0
    return v0

    .line 2830
    :cond_1
    if-eqz v8, :cond_2

    .line 2831
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v11

    goto :goto_0

    .line 2830
    :cond_3
    if-eqz v8, :cond_4

    .line 2831
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v11

    goto :goto_0

    .line 2827
    :catch_0
    move-exception v9

    .line 2828
    .local v9, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "SettingsProvider"

    const-string v1, "isNeedUpgradeAutoTimeZone fail check"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2830
    if-eqz v8, :cond_5

    .line 2831
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_5
    move v0, v11

    .line 2834
    goto :goto_0

    .line 2830
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_6

    .line 2831
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method private static isSupportSense(F)Z
    .locals 5
    .parameter "isSupport"

    .prologue
    .line 2557
    const v1, 0x3fcccccd

    .line 2558
    .local v1, finalVersion:F
    const/4 v2, 0x0

    .line 2560
    .local v2, support:Z
    :try_start_0
    sget-object v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2564
    cmpl-float v4, v1, p0

    if-gtz v4, :cond_0

    cmpl-float v4, v1, p0

    if-nez v4, :cond_1

    .line 2565
    :cond_0
    const/4 v2, 0x1

    :cond_1
    move v3, v2

    .line 2567
    .end local v2           #support:Z
    .local v3, support:I
    :goto_0
    return v3

    .line 2561
    .end local v3           #support:I
    .restart local v2       #support:Z
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NumberFormatException;
    move v3, v2

    .line 2562
    .restart local v3       #support:I
    goto :goto_0
.end method

.method public static isValidTable(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 129
    sget-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private loadBookmarks(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 27
    .parameter "db"

    .prologue
    .line 1623
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 1625
    .local v21, values:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 1627
    .local v13, packageManager:Landroid/content/pm/PackageManager;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const/high16 v23, 0x7f03

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v15

    .line 1628
    .local v15, parser:Landroid/content/res/XmlResourceParser;
    const-string v22, "bookmarks"

    move-object/from16 v0, v22

    invoke-static {v15, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 1630
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v7

    .line 1634
    .local v7, depth:I
    :cond_0
    :goto_0
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v20

    .local v20, type:I
    const/16 v22, 0x3

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v22

    move/from16 v0, v22

    if-le v0, v7, :cond_2

    :cond_1
    const/16 v22, 0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    .line 1636
    const/16 v22, 0x2

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    .line 1640
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 1641
    .local v12, name:Ljava/lang/String;
    const-string v22, "bookmark"

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_3

    .line 1701
    .end local v7           #depth:I
    .end local v12           #name:Ljava/lang/String;
    .end local v15           #parser:Landroid/content/res/XmlResourceParser;
    .end local v20           #type:I
    :cond_2
    :goto_1
    return-void

    .line 1645
    .restart local v7       #depth:I
    .restart local v12       #name:Ljava/lang/String;
    .restart local v15       #parser:Landroid/content/res/XmlResourceParser;
    .restart local v20       #type:I
    :cond_3
    const/16 v22, 0x0

    const-string v23, "package"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v15, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1646
    .local v16, pkg:Ljava/lang/String;
    const/16 v22, 0x0

    const-string v23, "class"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v15, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1647
    .local v5, cls:Ljava/lang/String;
    const/16 v22, 0x0

    const-string v23, "shortcut"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v15, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1648
    .local v17, shortcutStr:Ljava/lang/String;
    const/16 v22, 0x0

    const-string v23, "category"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v15, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1650
    .local v4, category:Ljava/lang/String;
    const/16 v22, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v18

    .line 1651
    .local v18, shortcutValue:I
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 1652
    const-string v22, "SettingsProvider"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Unable to get shortcut for: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 1696
    .end local v4           #category:Ljava/lang/String;
    .end local v5           #cls:Ljava/lang/String;
    .end local v7           #depth:I
    .end local v12           #name:Ljava/lang/String;
    .end local v15           #parser:Landroid/content/res/XmlResourceParser;
    .end local v16           #pkg:Ljava/lang/String;
    .end local v17           #shortcutStr:Ljava/lang/String;
    .end local v18           #shortcutValue:I
    .end local v20           #type:I
    :catch_0
    move-exception v8

    .line 1697
    .local v8, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v22, "SettingsProvider"

    const-string v23, "Got execption parsing bookmarks."

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1658
    .end local v8           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v4       #category:Ljava/lang/String;
    .restart local v5       #cls:Ljava/lang/String;
    .restart local v7       #depth:I
    .restart local v12       #name:Ljava/lang/String;
    .restart local v15       #parser:Landroid/content/res/XmlResourceParser;
    .restart local v16       #pkg:Ljava/lang/String;
    .restart local v17       #shortcutStr:Ljava/lang/String;
    .restart local v18       #shortcutValue:I
    .restart local v20       #type:I
    :cond_4
    if-eqz v16, :cond_5

    if-eqz v5, :cond_5

    .line 1659
    const/4 v10, 0x0

    .line 1660
    .local v10, info:Landroid/content/pm/ActivityInfo;
    :try_start_1
    new-instance v6, Landroid/content/ComponentName;

    move-object/from16 v0, v16

    invoke-direct {v6, v0, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1662
    .local v6, cn:Landroid/content/ComponentName;
    const/16 v22, 0x0

    :try_start_2
    move/from16 v0, v22

    invoke-virtual {v13, v6, v0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v10

    .line 1675
    :goto_2
    :try_start_3
    new-instance v11, Landroid/content/Intent;

    const-string v22, "android.intent.action.MAIN"

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v11, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1676
    .local v11, intent:Landroid/content/Intent;
    const-string v22, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1677
    invoke-virtual {v11, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1678
    invoke-virtual {v10, v13}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1688
    .end local v6           #cn:Landroid/content/ComponentName;
    .end local v10           #info:Landroid/content/pm/ActivityInfo;
    .local v19, title:Ljava/lang/String;
    :goto_3
    const/high16 v22, 0x1000

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1689
    const-string v22, "intent"

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1690
    const-string v22, "title"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1691
    const-string v22, "shortcut"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1692
    const-string v22, "bookmarks"

    const-string v23, "shortcut = ?"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1694
    const-string v22, "bookmarks"

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 1698
    .end local v4           #category:Ljava/lang/String;
    .end local v5           #cls:Ljava/lang/String;
    .end local v7           #depth:I
    .end local v11           #intent:Landroid/content/Intent;
    .end local v12           #name:Ljava/lang/String;
    .end local v15           #parser:Landroid/content/res/XmlResourceParser;
    .end local v16           #pkg:Ljava/lang/String;
    .end local v17           #shortcutStr:Ljava/lang/String;
    .end local v18           #shortcutValue:I
    .end local v19           #title:Ljava/lang/String;
    .end local v20           #type:I
    :catch_1
    move-exception v8

    .line 1699
    .local v8, e:Ljava/io/IOException;
    const-string v22, "SettingsProvider"

    const-string v23, "Got execption parsing bookmarks."

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 1663
    .end local v8           #e:Ljava/io/IOException;
    .restart local v4       #category:Ljava/lang/String;
    .restart local v5       #cls:Ljava/lang/String;
    .restart local v6       #cn:Landroid/content/ComponentName;
    .restart local v7       #depth:I
    .restart local v10       #info:Landroid/content/pm/ActivityInfo;
    .restart local v12       #name:Ljava/lang/String;
    .restart local v15       #parser:Landroid/content/res/XmlResourceParser;
    .restart local v16       #pkg:Ljava/lang/String;
    .restart local v17       #shortcutStr:Ljava/lang/String;
    .restart local v18       #shortcutValue:I
    .restart local v20       #type:I
    :catch_2
    move-exception v8

    .line 1664
    .local v8, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v22, 0x1

    :try_start_4
    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v16, v22, v23

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/pm/PackageManager;->canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 1666
    .local v14, packages:[Ljava/lang/String;
    new-instance v6, Landroid/content/ComponentName;

    .end local v6           #cn:Landroid/content/ComponentName;
    const/16 v22, 0x0

    aget-object v22, v14, v22

    move-object/from16 v0, v22

    invoke-direct {v6, v0, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1668
    .restart local v6       #cn:Landroid/content/ComponentName;
    const/16 v22, 0x0

    :try_start_5
    move/from16 v0, v22

    invoke-virtual {v13, v6, v0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v10

    goto/16 :goto_2

    .line 1669
    :catch_3
    move-exception v9

    .line 1670
    .local v9, e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_6
    const-string v22, "SettingsProvider"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Unable to add bookmark: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1679
    .end local v6           #cn:Landroid/content/ComponentName;
    .end local v8           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v9           #e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v10           #info:Landroid/content/pm/ActivityInfo;
    .end local v14           #packages:[Ljava/lang/String;
    :cond_5
    if-eqz v4, :cond_6

    .line 1680
    const-string v22, "android.intent.action.MAIN"

    move-object/from16 v0, v22

    invoke-static {v0, v4}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    .line 1681
    .restart local v11       #intent:Landroid/content/Intent;
    const-string v19, ""

    .restart local v19       #title:Ljava/lang/String;
    goto/16 :goto_3

    .line 1683
    .end local v11           #intent:Landroid/content/Intent;
    .end local v19           #title:Ljava/lang/String;
    :cond_6
    const-string v22, "SettingsProvider"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Unable to add bookmark for shortcut "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ": missing package/class or category attributes"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0
.end method

.method private loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V
    .locals 1
    .parameter "stmt"
    .parameter "key"
    .parameter "resid"

    .prologue
    .line 2779
    iget-object v0, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2781
    return-void

    .line 2779
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method private loadDefaultAnimationSettings(Landroid/database/sqlite/SQLiteStatement;)V
    .locals 3
    .parameter "stmt"

    .prologue
    const/4 v2, 0x1

    .line 2141
    const-string v0, "window_animation_scale"

    const/high16 v1, 0x7f07

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadFractionSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;II)V

    .line 2143
    const-string v0, "transition_animation_scale"

    const v1, 0x7f070001

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadFractionSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;II)V

    .line 2145
    return-void
.end method

.method private loadDefaultHapticSettings(Landroid/database/sqlite/SQLiteStatement;)V
    .locals 2
    .parameter "stmt"

    .prologue
    .line 2148
    const-string v0, "haptic_feedback_enabled"

    const v1, 0x7f040008

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2150
    return-void
.end method

.method private loadExtraCDMAKeysFromCupcakeToEclair(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .parameter "db"

    .prologue
    const/4 v5, 0x1

    .line 2434
    const-string v2, "INSERT OR IGNORE INTO system(name,value) VALUES(?,?);"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 2438
    .local v0, stmt:Landroid/database/sqlite/SQLiteStatement;
    const-string v2, "emergency_tone"

    iget-object v3, p0, Lcom/android/providers/settings/DatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v3}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_emergency_tone()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2443
    const-string v2, "call_auto_retry"

    const v3, 0x7f04001f

    invoke-direct {p0, v0, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2446
    const-string v2, "dtmf_tone_type"

    const v3, 0x7f040020

    invoke-direct {p0, v0, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2449
    const-string v2, "hearing_aid"

    const v3, 0x7f040021

    invoke-direct {p0, v0, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2452
    const-string v2, "tty_mode"

    const v3, 0x7f040022

    invoke-direct {p0, v0, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2454
    const-string v2, "notifications_use_ring_volume"

    const v3, 0x7f040016

    invoke-direct {p0, v0, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2456
    sget-object v2, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v3, "WEATHER_WALLPAPER_ANIMATION_ALLOWED"

    const-string v4, "weather_wallpaper_animation_allowed"

    invoke-static {v2, v3, v4}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f040002

    invoke-direct {p0, v0, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2462
    sget-object v2, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v3, "BE_POLITE"

    const-string v4, "be_polite"

    invoke-static {v2, v3, v4}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f040001

    invoke-direct {p0, v0, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2468
    sget-object v2, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v3, "POCKET_MODE"

    const-string v4, "pocket_mode"

    invoke-static {v2, v3, v4}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f04001c

    invoke-direct {p0, v0, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2477
    sget-object v2, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v3, "SETTING_ROAMING_RINGTONE"

    const-string v4, "roaming_ringtone_on"

    invoke-static {v2, v3, v4}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f040023

    invoke-direct {p0, v0, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2484
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2490
    const-string v2, "INSERT OR IGNORE INTO secure(name,value) VALUES(?,?);"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 2493
    const-string v2, "ro.telephony.default_network"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2495
    .local v1, type:I
    const-string v2, "preferred_network_mode"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2498
    const-string v2, "cdma_cell_broadcast_sms"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2502
    const-string v2, "preferred_cdma_subscription"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2514
    sget-object v2, Lcom/android/providers/settings/util/HtcDatabaseTable;->SECURE:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v3, "DATA_ROAMING_GUARD"

    const-string v4, "data_roaming_guard"

    invoke-static {v2, v3, v4}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f050009

    invoke-direct {p0, v0, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2525
    sget-object v2, Lcom/android/providers/settings/util/HtcDatabaseTable;->SECURE:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v3, "GPSONE_ALLOWED"

    const-string v4, "gpsone_allowed"

    invoke-static {v2, v3, v4}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f040026

    invoke-direct {p0, v0, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2533
    invoke-direct {p0, v0}, Lcom/android/providers/settings/DatabaseHelper;->loadSecure35Settings(Landroid/database/sqlite/SQLiteStatement;)V

    .line 2535
    sget-boolean v2, Lcom/android/providers/settings/flag/HtcProjectFlags;->isG0002:Z

    if-eqz v2, :cond_0

    .line 2536
    sget-object v2, Lcom/android/providers/settings/util/HtcDatabaseTable;->SECURE:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v3, "NATIONAL_ROAMING_ON"

    const-string v4, "national_roaming_on"

    invoke-static {v2, v3, v4}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f040027

    invoke-direct {p0, v0, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2553
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2554
    return-void
.end method

.method private loadFractionSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;II)V
    .locals 1
    .parameter "stmt"
    .parameter "key"
    .parameter "resid"
    .parameter "base"

    .prologue
    .line 2789
    iget-object v0, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3, p4, p4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2791
    return-void
.end method

.method private loadHtcSettings(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7
    .parameter "db"

    .prologue
    .line 2572
    const-string v2, "INSERT OR IGNORE INTO system (name, value) VALUES(?, ?)"

    .line 2573
    .local v2, insertSystemSql:Ljava/lang/String;
    const-string v1, "INSERT OR IGNORE INTO secure (name, value) VALUES(?, ?)"

    .line 2579
    .local v1, insertSecureSql:Ljava/lang/String;
    :try_start_0
    const-string v4, "INSERT OR IGNORE INTO system (name, value) VALUES(?, ?)"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    .line 2583
    .local v3, stmt:Landroid/database/sqlite/SQLiteStatement;
    sget-object v4, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v5, "INACTIVITY_TIME"

    const-string v6, "inactivity_time"

    invoke-static {v4, v5, v6}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/providers/settings/DatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v5}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_inactivity_time()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2592
    const-string v4, "INSERT OR IGNORE INTO secure (name, value) VALUES(?, ?)"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    .line 2597
    const-string v4, "last_setup_shown"

    const-string v5, "eclair_1"

    invoke-direct {p0, v3, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2600
    sget-object v4, Lcom/android/providers/settings/util/HtcDatabaseTable;->SECURE:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v5, "HTC_LOCATE_ALLOWED"

    const-string v6, "htc_locate_allowed"

    invoke-static {v4, v5, v6}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/providers/settings/DatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v5}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_htc_locate_allowed()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2607
    const v4, 0x3fcccccd

    invoke-static {v4}, Lcom/android/providers/settings/DatabaseHelper;->isSupportSense(F)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2608
    sget-object v4, Lcom/android/providers/settings/util/HtcDatabaseTable;->SECURE:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v5, "ENABLE_HTC_FASTBOOT"

    const-string v6, "enable_fastboot"

    invoke-static {v4, v5, v6}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f05000c

    invoke-direct {p0, v3, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2618
    .end local v3           #stmt:Landroid/database/sqlite/SQLiteStatement;
    :cond_0
    :goto_0
    return-void

    .line 2615
    :catch_0
    move-exception v0

    .line 2616
    .local v0, e:Landroid/database/SQLException;
    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V

    goto :goto_0
.end method

.method private loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V
    .locals 1
    .parameter "stmt"
    .parameter "key"
    .parameter "resid"

    .prologue
    .line 2784
    iget-object v0, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2786
    return-void
.end method

.method private loadSecure35Settings(Landroid/database/sqlite/SQLiteStatement;)V
    .locals 2
    .parameter "stmt"

    .prologue
    .line 2411
    const-string v0, "backup_enabled"

    const v1, 0x7f040010

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2414
    const-string v0, "backup_transport"

    const v1, 0x7f060007

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2416
    return-void
.end method

.method private loadSecureHtc44Settings(Landroid/database/sqlite/SQLiteStatement;)V
    .locals 3
    .parameter "stmt"

    .prologue
    .line 2420
    sget-object v0, Lcom/android/providers/settings/util/HtcDatabaseTable;->SECURE:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v1, "SELECT_RESOLUTION_TYPE"

    const-string v2, "select_resolution_type"

    invoke-static {v0, v1, v2}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f05000a

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2426
    return-void
.end method

.method private loadSecureSettings(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 14
    .parameter "db"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2153
    const/4 v11, 0x0

    .line 2155
    .local v11, stmt:Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    const-string v2, "INSERT OR IGNORE INTO secure(name,value) VALUES(?,?);"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v11

    .line 2158
    const-string v2, "bluetooth_on"

    const v3, 0x7f040009

    invoke-direct {p0, v11, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2162
    sget-boolean v2, Lcom/android/providers/settings/flag/HtcProjectFlags;->isG0002:Z

    if-eqz v2, :cond_0

    .line 2163
    sget-object v2, Lcom/android/providers/settings/util/HtcDatabaseTable;->SECURE:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v3, "NATIONAL_ROAMING_ON"

    const-string v4, "national_roaming_on"

    invoke-static {v2, v3, v4}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f040027

    invoke-direct {p0, v11, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2173
    :cond_0
    const-string v3, "data_roaming"

    const-string v2, "true"

    const-string v4, "ro.com.android.dataroaming"

    const-string v5, "false"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v0

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v11, v3, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2180
    sget-object v2, Lcom/android/providers/settings/util/HtcDatabaseTable;->SECURE:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v3, "ROAMING_SOUND_ON"

    const-string v4, "roaming_sound_on"

    invoke-static {v2, v3, v4}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/providers/settings/DatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v3}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_roaming_sound_on()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v11, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2187
    const-string v2, "install_non_market_apps"

    iget-object v3, p0, Lcom/android/providers/settings/DatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v3}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_install_non_market_apps()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v11, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2190
    const-string v2, "location_providers_allowed"

    iget-object v3, p0, Lcom/android/providers/settings/DatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v3}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_location_providers_allowed()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v11, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2196
    sget-object v2, Lcom/android/providers/settings/util/HtcDatabaseTable;->SECURE:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v3, "DATA_ROAMING_ALLOWED"

    const-string v4, "data_roaming_allowed"

    invoke-static {v2, v3, v4}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/providers/settings/DatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v3}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_data_roaming_allowed()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v11, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2202
    sget-object v2, Lcom/android/providers/settings/util/HtcDatabaseTable;->SECURE:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v3, "DATA_ROAMING_GUARD_ALLOWED"

    const-string v4, "data_roaming_guard_allowed"

    invoke-static {v2, v3, v4}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/providers/settings/DatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v3}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_data_roaming_guard_allowed()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v11, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2208
    sget-object v2, Lcom/android/providers/settings/util/HtcDatabaseTable;->SECURE:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v3, "DATA_ROAMING_GUARD_BLOCKED"

    const-string v4, "data_roaming_guard_blocked"

    invoke-static {v2, v3, v4}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-direct {p0, v11, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2214
    sget-object v2, Lcom/android/providers/settings/util/HtcDatabaseTable;->SECURE:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v3, "VOICE_ROAMING_ALLOWED"

    const-string v4, "voice_roaming_allowed"

    invoke-static {v2, v3, v4}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/providers/settings/DatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v3}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_voice_roaming_allowed()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v11, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2220
    sget-object v2, Lcom/android/providers/settings/util/HtcDatabaseTable;->SECURE:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v3, "VOICE_ROAMING_BLOCKED"

    const-string v4, "voice_roaming_blocked"

    invoke-static {v2, v3, v4}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-direct {p0, v11, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2226
    sget-object v2, Lcom/android/providers/settings/util/HtcDatabaseTable;->SECURE:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v3, "VOICE_ROAMING_GUARD_ALLOWED"

    const-string v4, "voice_roaming_guard_allowed"

    invoke-static {v2, v3, v4}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/providers/settings/DatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v3}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_voice_roaming_guard_allowed()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v11, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2232
    sget-object v2, Lcom/android/providers/settings/util/HtcDatabaseTable;->SECURE:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v3, "VOICE_ROAMING_GUARD_BLOCKED"

    const-string v4, "voice_roaming_guard_blocked"

    invoke-static {v2, v3, v4}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-direct {p0, v11, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2238
    sget-object v2, Lcom/android/providers/settings/util/HtcDatabaseTable;->SECURE:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v3, "SMS_ROAMING_GUARD_ALLOWED"

    const-string v4, "sms_roaming_guard_allowed"

    invoke-static {v2, v3, v4}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/providers/settings/DatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v3}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_sms_roaming_guard_allowed()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v11, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2247
    const-string v2, "assisted_gps_enabled"

    const v3, 0x7f04000b

    invoke-direct {p0, v11, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2253
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_USBNET_flag:Z

    if-eqz v2, :cond_6

    sget-object v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v3, "none"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    sget-object v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v3, "1.6"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 2255
    const-string v2, "network_preference"

    const/16 v3, 0x12

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v11, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2262
    :goto_1
    const-string v2, "usb_mass_storage_enabled"

    const v3, 0x7f04000c

    invoke-direct {p0, v11, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2265
    const-string v2, "wifi_on"

    const v3, 0x7f04000d

    invoke-direct {p0, v11, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2267
    const-string v2, "wifi_networks_available_notification_on"

    const v3, 0x7f04000f

    invoke-direct {p0, v11, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2271
    sget-object v2, Lcom/android/providers/settings/util/HtcDatabaseTable;->SECURE:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v3, "WIFI_PWR_ACTIVE_MODE"

    const-string v4, "wifi_pwr_active_mode"

    invoke-static {v2, v3, v4}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f04000e

    invoke-direct {p0, v11, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2279
    const-string v2, "ro.com.android.wifi-watchlist"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2280
    .local v13, wifiWatchList:Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2281
    const-string v2, "wifi_watchdog_watch_list"

    invoke-direct {p0, v11, v2, v13}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2286
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/BaseCommands;->getLteOnCdmaModeStatic()I

    move-result v2

    if-ne v2, v0, :cond_8

    .line 2287
    const/4 v12, 0x7

    .line 2292
    .local v12, type:I
    :goto_2
    const-string v2, "preferred_network_mode"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v11, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2295
    const-string v2, "cdma_cell_broadcast_sms"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v11, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2299
    const-string v2, "preferred_cdma_subscription"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v11, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2307
    const-string v2, "mock_location"

    const-string v3, "1"

    const-string v4, "ro.allow.mock.location"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v11, v2, v0}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2315
    const-string v0, "device_provisioned"

    const v1, 0x7f040024

    invoke-direct {p0, v11, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2320
    const-string v1, "secure"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "value"

    aput-object v3, v2, v0

    const-string v3, "name=\'mobile_data\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2321
    .local v8, cr:Landroid/database/Cursor;
    if-eqz v8, :cond_a

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_a

    invoke-interface {v8}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    if-lez v0, :cond_a

    .line 2322
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2323
    const-string v0, "SettingsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "olddata in MOBILE_DATA:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2327
    :goto_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2330
    sget-object v0, Lcom/android/providers/settings/util/HtcDatabaseTable;->SECURE:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v1, "DATA_ROAMING_GUARD"

    const-string v2, "data_roaming_guard"

    invoke-static {v0, v1, v2}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/settings/DatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v1}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_data_roaming_guard()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v11, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2340
    sget-object v0, Lcom/android/providers/settings/util/HtcDatabaseTable;->SECURE:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v1, "GPSONE_ALLOWED"

    const-string v2, "gpsone_allowed"

    invoke-static {v0, v1, v2}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f040026

    invoke-direct {p0, v11, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2349
    sget-object v0, Lcom/android/providers/settings/util/HtcDatabaseTable;->SECURE:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v1, "CFU_QUERY_WHEN_CAMPON_MESSAGE"

    const-string v2, "cfu_query_when_campon"

    invoke-static {v0, v1, v2}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f04001b

    invoke-direct {p0, v11, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2357
    invoke-direct {p0, v11}, Lcom/android/providers/settings/DatabaseHelper;->loadSecure35Settings(Landroid/database/sqlite/SQLiteStatement;)V

    .line 2359
    invoke-direct {p0, v11}, Lcom/android/providers/settings/DatabaseHelper;->loadSecureHtc44Settings(Landroid/database/sqlite/SQLiteStatement;)V

    .line 2361
    const-string v0, "mount_play_not_snd"

    const v1, 0x7f040012

    invoke-direct {p0, v11, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2364
    const-string v0, "mount_ums_autostart"

    const v1, 0x7f040013

    invoke-direct {p0, v11, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2367
    const-string v0, "mount_ums_prompt"

    const v1, 0x7f040014

    invoke-direct {p0, v11, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2370
    const-string v0, "mount_ums_notify_enabled"

    const v1, 0x7f040015

    invoke-direct {p0, v11, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2373
    const-string v0, "set_install_location"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v11, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2374
    const-string v0, "default_install_location"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v11, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2377
    const-string v0, "accessibility_script_injection"

    const v1, 0x7f040018

    invoke-direct {p0, v11, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2380
    const-string v0, "accessibility_web_content_key_bindings"

    const v1, 0x7f06000f

    invoke-direct {p0, v11, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2383
    iget-object v0, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    .line 2385
    .local v9, maxBytes:I
    if-lez v9, :cond_2

    .line 2386
    const-string v0, "download_manager_max_bytes_over_mobile"

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v11, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2390
    :cond_2
    iget-object v0, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    .line 2392
    .local v10, recommendedMaxBytes:I
    if-lez v10, :cond_3

    .line 2393
    const-string v0, "download_manager_recommended_max_bytes_over_mobile"

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v11, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2397
    :cond_3
    const-string v0, "long_press_timeout"

    const v1, 0x7f05000d

    invoke-direct {p0, v11, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2400
    const-string v0, "touch_exploration_enabled"

    const v1, 0x7f04001a

    invoke-direct {p0, v11, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2403
    const-string v0, "speak_password"

    const v1, 0x7f040019

    invoke-direct {p0, v11, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2406
    if-eqz v11, :cond_4

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2408
    :cond_4
    return-void

    .end local v8           #cr:Landroid/database/Cursor;
    .end local v9           #maxBytes:I
    .end local v10           #recommendedMaxBytes:I
    .end local v12           #type:I
    .end local v13           #wifiWatchList:Ljava/lang/String;
    :cond_5
    move v2, v1

    .line 2173
    goto/16 :goto_0

    .line 2257
    :cond_6
    :try_start_1
    const-string v2, "network_preference"

    const v3, 0x7f050002

    invoke-direct {p0, v11, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 2406
    :catchall_0
    move-exception v0

    if-eqz v11, :cond_7

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_7
    throw v0

    .line 2289
    .restart local v13       #wifiWatchList:Ljava/lang/String;
    :cond_8
    :try_start_2
    const-string v2, "ro.telephony.default_network"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v12

    .restart local v12       #type:I
    goto/16 :goto_2

    :cond_9
    move v0, v1

    .line 2307
    goto/16 :goto_3

    .line 2325
    .restart local v8       #cr:Landroid/database/Cursor;
    :cond_a
    const-string v0, "mobile_data"

    const v1, 0x7f040025

    invoke-direct {p0, v11, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_4
.end method

.method private loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter "stmt"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 2769
    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 2770
    const/4 v0, 0x2

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 2771
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 2772
    return-void
.end method

.method private loadSettings(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 1838
    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->loadSystemSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1839
    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->loadSecureSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1840
    return-void
.end method

.method private loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V
    .locals 1
    .parameter "stmt"
    .parameter "key"
    .parameter "resid"

    .prologue
    .line 2775
    iget-object v0, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2776
    return-void
.end method

.method private loadSuplInitSetting(Landroid/database/sqlite/SQLiteStatement;)V
    .locals 3
    .parameter "stmt"

    .prologue
    .line 2070
    sget-object v0, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v1, "DM_SUPL_SERVER_IP"

    const-string v2, "dm_supoer_server_ip"

    invoke-static {v0, v1, v2}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f060010

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2076
    sget-object v0, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v1, "DM_SUPL_SERVER_PORT"

    const-string v2, "dm_supoer_server_port"

    invoke-static {v0, v1, v2}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f060011

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2083
    sget-object v0, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v1, "DM_SUPL_IAPID"

    const-string v2, "dm_supl_iapid"

    invoke-static {v0, v1, v2}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f060012

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2089
    sget-object v0, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v1, "DM_SUPL_PREFERRED_APN"

    const-string v2, "dm_supl_preferred_apn"

    invoke-static {v0, v1, v2}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f060013

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2095
    sget-object v0, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v1, "DM_SUPL_OPTIONAL_APN"

    const-string v2, "dm_supl_optional_apn"

    invoke-static {v0, v1, v2}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f060014

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2101
    sget-object v0, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v1, "DM_SUPL_SERVER_NAME"

    const-string v2, "dm_supl_server_name"

    invoke-static {v0, v1, v2}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f060015

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2107
    return-void
.end method

.method private loadSystemSettings(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7
    .parameter "db"

    .prologue
    const/4 v3, 0x0

    .line 1843
    const/4 v1, 0x0

    .line 1845
    .local v1, stmt:Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    const-string v4, "INSERT OR IGNORE INTO system(name,value) VALUES(?,?);"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 1848
    const-string v4, "dim_screen"

    const/high16 v5, 0x7f04

    invoke-direct {p0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1850
    sget-object v4, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v5, "WEATHER_WALLPAPER_ANIMATION_ALLOWED"

    const-string v6, "weather_wallpaper_animation_allowed"

    invoke-static {v4, v5, v6}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f040002

    invoke-direct {p0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1856
    sget-object v4, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v5, "BE_POLITE"

    const-string v6, "be_polite"

    invoke-static {v4, v5, v6}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f040001

    invoke-direct {p0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1862
    sget-object v4, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v5, "POCKET_MODE"

    const-string v6, "pocket_mode"

    invoke-static {v4, v5, v6}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f04001c

    invoke-direct {p0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1869
    sget-object v4, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v5, "FLIP_TO_SPEAKER"

    const-string v6, "flip_to_speaker"

    invoke-static {v4, v5, v6}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f04001d

    invoke-direct {p0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1876
    const-string v4, "stay_on_while_plugged_in"

    const-string v5, "1"

    const-string v6, "ro.kernel.qemu"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v4, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1878
    const-string v3, "screen_off_timeout"

    iget-object v4, p0, Lcom/android/providers/settings/DatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v4}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_screen_off_timeout()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1883
    const-string v3, "emergency_tone"

    iget-object v4, p0, Lcom/android/providers/settings/DatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v4}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_emergency_tone()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1888
    sget-object v3, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v4, "DSA_SERVER_URL"

    const-string v5, "dsa_server_url"

    invoke-static {v3, v4, v5}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f060005

    invoke-direct {p0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1894
    sget-object v3, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v4, "DSA_PROXY_URL"

    const-string v5, "dsa_proxy_url"

    invoke-static {v3, v4, v5}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f060006

    invoke-direct {p0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1903
    const-string v3, "call_auto_retry"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1906
    const-string v3, "dtmf_tone_type"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1909
    const-string v3, "hearing_aid"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1912
    const-string v3, "tty_mode"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1914
    const-string v3, "airplane_mode_on"

    const v4, 0x7f040003

    invoke-direct {p0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1917
    const-string v3, "airplane_mode_radios"

    const/high16 v4, 0x7f06

    invoke-direct {p0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1921
    sget-boolean v3, Lcom/android/providers/settings/flag/HtcProjectFlags;->isA0003:Z

    if-nez v3, :cond_1

    sget-boolean v3, Lcom/android/providers/settings/flag/HtcProjectFlags;->isS0005:Z

    if-eqz v3, :cond_5

    .line 1922
    :cond_1
    const-string v3, "airplane_mode_toggleable_radios"

    const v4, 0x7f060002

    invoke-direct {p0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1932
    :goto_0
    const-string v3, "auto_time"

    iget-object v4, p0, Lcom/android/providers/settings/DatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v4}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_auto_time()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1935
    const-string v3, "screen_brightness"

    const v4, 0x7f050001

    invoke-direct {p0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1938
    const-string v3, "screen_brightness_mode"

    const v4, 0x7f040007

    invoke-direct {p0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1941
    invoke-direct {p0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadDefaultAnimationSettings(Landroid/database/sqlite/SQLiteStatement;)V

    .line 1943
    const-string v3, "accelerometer_rotation"

    iget-object v4, p0, Lcom/android/providers/settings/DatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v4}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_accelerometer_rotation()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1946
    invoke-direct {p0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadDefaultHapticSettings(Landroid/database/sqlite/SQLiteStatement;)V

    .line 1957
    invoke-direct {p0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadUISoundEffectsSettings(Landroid/database/sqlite/SQLiteStatement;)V

    .line 1959
    invoke-direct {p0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadSuplInitSetting(Landroid/database/sqlite/SQLiteStatement;)V

    .line 1965
    sget-object v3, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v4, "AGPS_ENABLED"

    const-string v5, "agps_enabled"

    invoke-static {v3, v4, v5}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f040029

    invoke-direct {p0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1972
    const-string v3, "vibrate_in_silent"

    const v4, 0x7f040017

    invoke-direct {p0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1976
    const-string v3, "date_format"

    const-string v4, "ro.com.android.dateformat"

    const-string v5, "EE, MMM d, yyyy"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1982
    sget-object v3, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v4, "DATE_FORMAT_SHORT"

    const-string v5, "date_format_short"

    invoke-static {v3, v4, v5}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "EE, MMM d"

    invoke-direct {p0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1993
    sget-object v3, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v4, "POWER_SAVE_3G"

    const-string v5, "3g_power_save"

    invoke-static {v3, v4, v5}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/providers/settings/DatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v4}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_power_save_3G()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2004
    const/4 v2, 0x1

    .line 2005
    .local v2, toogleofRoamingRingtone:Z
    sget-object v3, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v4, "SETTING_ROAMING_RINGTONE"

    const-string v5, "roaming_ringtone_on"

    invoke-static {v3, v4, v5}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v2, :cond_8

    const-string v3, "1"

    :goto_1
    invoke-direct {p0, v1, v4, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2014
    const/4 v0, 0x0

    .line 2015
    .local v0, playNotificationSoundWhenSDMount:Z
    iget-object v3, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f04001e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 2016
    :cond_2
    sget-object v3, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v4, "SETTING_SD_CARD_NOTIFICATIONS"

    const-string v5, "sd_card_notifications"

    invoke-static {v3, v4, v5}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_9

    const-string v3, "1"

    :goto_2
    invoke-direct {p0, v1, v4, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2035
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTCHotspotFlag:Z

    if-eqz v3, :cond_3

    .line 2036
    sget-object v3, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v4, "HOTSPOT_ON"

    const-string v5, "hotspot_on"

    invoke-static {v3, v4, v5}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2051
    sget-object v3, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v4, "HOTSPOT_MACFILTER_ON"

    const-string v5, "hotspot_macfilter_on"

    invoke-static {v3, v4, v5}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2061
    :cond_3
    const-string v3, "pointer_speed"

    const v4, 0x7f05000e

    invoke-direct {p0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2065
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2067
    :cond_4
    return-void

    .line 1924
    .end local v0           #playNotificationSoundWhenSDMount:Z
    .end local v2           #toogleofRoamingRingtone:Z
    :cond_5
    :try_start_1
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7

    .line 1925
    const-string v3, "airplane_mode_toggleable_radios"

    const v4, 0x7f060003

    invoke-direct {p0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 2065
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_6
    throw v3

    .line 1928
    :cond_7
    :try_start_2
    const-string v3, "airplane_mode_toggleable_radios"

    const v4, 0x7f060001

    invoke-direct {p0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 2005
    .restart local v2       #toogleofRoamingRingtone:Z
    :cond_8
    const-string v3, "0"

    goto :goto_1

    .line 2016
    .restart local v0       #playNotificationSoundWhenSDMount:Z
    :cond_9
    const-string v3, "0"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method private loadUISoundEffectsSettings(Landroid/database/sqlite/SQLiteStatement;)V
    .locals 2
    .parameter "stmt"

    .prologue
    .line 2110
    const-string v0, "power_sounds_enabled"

    const v1, 0x7f050003

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2112
    const-string v0, "low_battery_sound"

    const v1, 0x7f060008

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2114
    const-string v0, "dtmf_tone"

    const v1, 0x7f04002a

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2116
    const-string v0, "sound_effects_enabled"

    const v1, 0x7f04002b

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2118
    const-string v0, "haptic_feedback_enabled"

    const v1, 0x7f040008

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2121
    const-string v0, "dock_sounds_enabled"

    const v1, 0x7f050004

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2123
    const-string v0, "desk_dock_sound"

    const v1, 0x7f060009

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2125
    const-string v0, "desk_undock_sound"

    const v1, 0x7f06000a

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2127
    const-string v0, "car_dock_sound"

    const v1, 0x7f06000b

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2129
    const-string v0, "car_undock_sound"

    const v1, 0x7f06000c

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2132
    const-string v0, "lockscreen_sounds_enabled"

    const v1, 0x7f050005

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2134
    const-string v0, "lock_sound"

    const v1, 0x7f06000d

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2136
    const-string v0, "unlock_sound"

    const v1, 0x7f06000e

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2138
    return-void
.end method

.method private loadVibrateSetting(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 5
    .parameter "db"
    .parameter "deleteOld"

    .prologue
    .line 1813
    if-eqz p2, :cond_0

    .line 1814
    const-string v3, "DELETE FROM system WHERE name=\'vibrate_on\'"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1817
    :cond_0
    const/4 v0, 0x0

    .line 1819
    .local v0, stmt:Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    const-string v3, "INSERT OR IGNORE INTO system(name,value) VALUES(?,?);"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 1823
    const/4 v1, 0x0

    .line 1825
    .local v1, vibrate:I
    iget-object v3, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f05000f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 1826
    .local v2, vibrate_setting_value:I
    const/4 v3, 0x1

    invoke-static {v1, v3, v2}, Landroid/media/AudioService;->getValueForVibrateSetting(III)I

    move-result v1

    .line 1829
    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Landroid/media/AudioService;->getValueForVibrateSetting(III)I

    move-result v3

    or-int/2addr v1, v3

    .line 1831
    const-string v3, "vibrate_on"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v0, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1833
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1835
    :cond_1
    return-void

    .line 1833
    .end local v1           #vibrate:I
    .end local v2           #vibrate_setting_value:I
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_2
    throw v3
.end method

.method private loadVolumeLevels(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .parameter "db"

    .prologue
    .line 1710
    const/4 v1, 0x0

    .line 1712
    .local v1, stmt:Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    const-string v2, "INSERT OR IGNORE INTO system(name,value) VALUES(?,?);"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 1715
    const-string v2, "volume_music"

    sget-object v3, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1717
    const-string v2, "volume_ring"

    sget-object v3, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1719
    const-string v2, "volume_system"

    sget-object v3, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1721
    const-string v2, "volume_voice"

    sget-object v3, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1725
    const-string v2, "volume_alarm"

    sget-object v3, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/4 v4, 0x4

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1727
    const-string v2, "volume_notification"

    sget-object v3, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1731
    const-string v2, "volume_bluetooth_sco"

    sget-object v3, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/4 v4, 0x6

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1737
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "volume_music"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v4, "APPEND_FOR_HEADSET"

    const-string v5, "_headset"

    invoke-static {v3, v4, v5}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1744
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "volume_ringvolume_music"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v4, "APPEND_FOR_HEADSET"

    const-string v5, "_headset"

    invoke-static {v3, v4, v5}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1751
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "volume_system"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v4, "APPEND_FOR_HEADSET"

    const-string v5, "_headset"

    invoke-static {v3, v4, v5}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1757
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "volume_voice"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v4, "APPEND_FOR_HEADSET"

    const-string v5, "_headset"

    invoke-static {v3, v4, v5}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1763
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "volume_alarm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v4, "APPEND_FOR_HEADSET"

    const-string v5, "_headset"

    invoke-static {v3, v4, v5}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/4 v4, 0x4

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1769
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "volume_notification"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v4, "APPEND_FOR_HEADSET"

    const-string v5, "_headset"

    invoke-static {v3, v4, v5}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1777
    const-string v2, "mode_ringer"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1780
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadVibrateSetting(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 1787
    const/16 v0, 0xa6

    .line 1791
    .local v0, ringerModeAffectedStreams:I
    iget-object v2, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110023

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1793
    or-int/lit8 v0, v0, 0x8

    .line 1795
    :cond_0
    const-string v2, "mode_ringer_streams_affected"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1798
    const-string v2, "mute_streams_affected"

    const/16 v3, 0x2e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1804
    const-string v2, "notification_light_pulse"

    const v3, 0x7f040011

    invoke-direct {p0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1808
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1810
    :cond_1
    return-void

    .line 1808
    .end local v0           #ringerModeAffectedStreams:I
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_2
    throw v2
.end method

.method private moveFromSystemToSecure(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)V
    .locals 7
    .parameter "db"
    .parameter "settingsToMove"

    .prologue
    .line 1484
    const/4 v3, 0x0

    .line 1485
    .local v3, insertStmt:Landroid/database/sqlite/SQLiteStatement;
    const/4 v1, 0x0

    .line 1487
    .local v1, deleteStmt:Landroid/database/sqlite/SQLiteStatement;
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1489
    :try_start_0
    const-string v6, "INSERT INTO secure (name,value) SELECT name,value FROM system WHERE name=?"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    .line 1492
    const-string v6, "DELETE FROM system WHERE name=?"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 1495
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v0, v2

    .line 1496
    .local v5, setting:Ljava/lang/String;
    const/4 v6, 0x1

    invoke-virtual {v3, v6, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1497
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1499
    const/4 v6, 0x1

    invoke-virtual {v1, v6, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1500
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1495
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1502
    .end local v5           #setting:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1504
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1505
    if-eqz v3, :cond_1

    .line 1506
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1508
    :cond_1
    if-eqz v1, :cond_2

    .line 1509
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1512
    :cond_2
    return-void

    .line 1504
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v4           #len$:I
    :catchall_0
    move-exception v6

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1505
    if-eqz v3, :cond_3

    .line 1506
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1508
    :cond_3
    if-eqz v1, :cond_4

    .line 1509
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_4
    throw v6
.end method

.method private upgradeAutoBrightness(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 1604
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1606
    :try_start_0
    iget-object v1, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "1"

    .line 1609
    .local v0, value:Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSERT OR REPLACE INTO system(name,value) values(\'screen_brightness_mode\',\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1611
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1613
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1615
    return-void

    .line 1606
    .end local v0           #value:Ljava/lang/String;
    :cond_0
    :try_start_1
    const-string v0, "0"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1613
    :catchall_0
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method private upgradeAutoTimeZone(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"

    .prologue
    .line 2839
    const-string v2, "auto_time"

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->getIntValueFromSystem(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)I

    move-result v0

    .line 2840
    .local v0, autoTimeValue:I
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2841
    const/4 v1, 0x0

    .line 2843
    .local v1, stmt:Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    const-string v2, "INSERT INTO system(name,value) VALUES(?,?);"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 2844
    const-string v2, "auto_time_zone"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2846
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2848
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2849
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2851
    :cond_0
    return-void

    .line 2848
    :catchall_0
    move-exception v2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2849
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_1
    throw v2
.end method

.method private upgradeHtcSettingsTo56(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7
    .parameter "db"

    .prologue
    .line 2622
    const-string v2, "INSERT OR IGNORE INTO system (name, value) VALUES(?, ?);"

    .line 2623
    .local v2, insertSystemSql:Ljava/lang/String;
    const-string v1, "INSERT OR IGNORE INTO secure (name, value) VALUES(?, ?);"

    .line 2624
    .local v1, insertSecureSql:Ljava/lang/String;
    const/4 v3, 0x0

    .line 2626
    .local v3, stmt:Landroid/database/sqlite/SQLiteStatement;
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2629
    :try_start_0
    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    .line 2634
    sget-object v4, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v5, "INACTIVITY_TIME"

    const-string v6, "inactivity_time"

    invoke-static {v4, v5, v6}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/providers/settings/DatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v5}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_inactivity_time()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2643
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    .line 2648
    const-string v4, "last_setup_shown"

    const-string v5, "eclair_1"

    invoke-direct {p0, v3, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2659
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2664
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2666
    :goto_0
    return-void

    .line 2661
    :catch_0
    move-exception v0

    .line 2662
    .local v0, e:Landroid/database/SQLException;
    :try_start_1
    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2664
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .end local v0           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v4

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
.end method

.method private upgradeHtcSettingsTo57(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8
    .parameter "db"

    .prologue
    .line 2669
    const-string v2, "INSERT OR IGNORE INTO system (name, value) VALUES(?, ?);"

    .line 2670
    .local v2, insertSystemSql:Ljava/lang/String;
    const-string v1, "INSERT OR IGNORE INTO secure (name, value) VALUES(?, ?);"

    .line 2671
    .local v1, insertSecureSql:Ljava/lang/String;
    const/4 v3, 0x0

    .line 2673
    .local v3, stmt:Landroid/database/sqlite/SQLiteStatement;
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2676
    :try_start_0
    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    .line 2688
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "volume_music"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v6, "APPEND_FOR_HEADSET"

    const-string v7, "_headset"

    invoke-static {v5, v6, v7}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/4 v6, 0x3

    aget v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2694
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "volume_ring"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v6, "APPEND_FOR_HEADSET"

    const-string v7, "_headset"

    invoke-static {v5, v6, v7}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/4 v6, 0x2

    aget v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2700
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "volume_system"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v6, "APPEND_FOR_HEADSET"

    const-string v7, "_headset"

    invoke-static {v5, v6, v7}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2706
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "volume_voice"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v6, "APPEND_FOR_HEADSET"

    const-string v7, "_headset"

    invoke-static {v5, v6, v7}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2712
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "volume_alarm"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v6, "APPEND_FOR_HEADSET"

    const-string v7, "_headset"

    invoke-static {v5, v6, v7}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/4 v6, 0x4

    aget v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2718
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "volume_notification"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v6, "APPEND_FOR_HEADSET"

    const-string v7, "_headset"

    invoke-static {v5, v6, v7}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/4 v6, 0x5

    aget v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2726
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    .line 2736
    sget-object v4, Lcom/android/providers/settings/util/HtcDatabaseTable;->SECURE:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v5, "WIFI_PWR_ACTIVE_MODE"

    const-string v6, "wifi_pwr_active_mode"

    invoke-static {v4, v5, v6}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f04000e

    invoke-direct {p0, v3, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2744
    sget-object v4, Lcom/android/providers/settings/util/HtcDatabaseTable;->SECURE:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v5, "HTC_LOCATE_ALLOWED"

    const-string v6, "htc_locate_allowed"

    invoke-static {v4, v5, v6}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/providers/settings/DatabaseHelper;->mLoader:Lcom/android/providers/settings/util/HtcDefaultValuesLoader;

    invoke-virtual {v5}, Lcom/android/providers/settings/util/HtcDefaultValuesLoader;->get_def_htc_locate_allowed()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2751
    const/high16 v4, 0x4000

    invoke-static {v4}, Lcom/android/providers/settings/DatabaseHelper;->isSupportSense(F)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2752
    sget-object v4, Lcom/android/providers/settings/util/HtcDatabaseTable;->SECURE:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v5, "ENABLE_HTC_FASTBOOT"

    const-string v6, "enable_fastboot"

    invoke-static {v4, v5, v6}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f05000c

    invoke-direct {p0, v3, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2759
    :cond_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2764
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2766
    :goto_0
    return-void

    .line 2761
    :catch_0
    move-exception v0

    .line 2762
    .local v0, e:Landroid/database/SQLException;
    :try_start_1
    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2764
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .end local v0           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v4

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
.end method

.method private upgradeLockPatternLocation(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 13
    .parameter "db"

    .prologue
    const/4 v12, 0x1

    const/4 v4, 0x0

    .line 1515
    const-string v1, "system"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const-string v0, "value"

    aput-object v0, v2, v12

    const-string v3, "name=\'lock_pattern\'"

    move-object v0, p1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1517
    .local v8, c:Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 1518
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1519
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1520
    .local v10, lockPattern:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1523
    :try_start_0
    new-instance v11, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-direct {v11, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 1524
    .local v11, lpu:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v10}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 1526
    .local v9, cellPattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-virtual {v11, v9}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1531
    .end local v9           #cellPattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    .end local v11           #lpu:Lcom/android/internal/widget/LockPatternUtils;
    :cond_0
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1532
    const-string v0, "system"

    const-string v1, "name=\'lock_pattern\'"

    invoke-virtual {p1, v0, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1536
    .end local v10           #lockPattern:Ljava/lang/String;
    :goto_1
    return-void

    .line 1534
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1527
    .restart local v10       #lockPattern:Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private upgradeLockPatternNextAlarmFormat(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 12
    .parameter "db"

    .prologue
    .line 1400
    const/4 v8, 0x0

    .line 1402
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    const-string v1, "system"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "value"

    aput-object v3, v2, v0

    const-string v3, "name=\'next_alarm_formatted\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1403
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1404
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 1405
    .local v10, value:J
    invoke-direct {p0, p1, v10, v11}, Lcom/android/providers/settings/DatabaseHelper;->_formatDayAndTime(Landroid/database/sqlite/SQLiteDatabase;J)Ljava/lang/String;

    move-result-object v9

    .line 1406
    .local v9, newValue:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update system set value=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' where name=\'next_alarm_formatted\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1411
    .end local v9           #newValue:Ljava/lang/String;
    .end local v10           #value:J
    :cond_0
    if-eqz v8, :cond_1

    .line 1412
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1415
    :cond_1
    :goto_0
    return-void

    .line 1408
    :catch_0
    move-exception v0

    .line 1411
    if-eqz v8, :cond_1

    .line 1412
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1411
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    .line 1412
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private upgradeScreenTimeout(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 1588
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1589
    const/4 v0, 0x0

    .line 1591
    .local v0, stmt:Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    const-string v1, "INSERT OR REPLACE INTO system(name,value) VALUES(?,?);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 1593
    const-string v1, "screen_off_timeout"

    const/high16 v2, 0x7f05

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1595
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1597
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1598
    if-eqz v0, :cond_0

    .line 1599
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1601
    :cond_0
    return-void

    .line 1597
    :catchall_0
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1598
    if-eqz v0, :cond_1

    .line 1599
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_1
    throw v1
.end method

.method private upgradeScreenTimeoutFromNever(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 10
    .parameter "db"

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1540
    const-string v1, "system"

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v6

    const-string v0, "value"

    aput-object v0, v2, v7

    const-string v3, "name=? AND value=?"

    new-array v4, v4, [Ljava/lang/String;

    const-string v0, "screen_off_timeout"

    aput-object v0, v4, v6

    const-string v0, "-1"

    aput-object v0, v4, v7

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1544
    .local v8, c:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 1545
    .local v9, stmt:Landroid/database/sqlite/SQLiteStatement;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 1546
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1548
    :try_start_0
    const-string v0, "INSERT OR REPLACE INTO system(name,value) VALUES(?,?);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v9

    .line 1552
    const-string v0, "screen_off_timeout"

    const v1, 0x1b7740

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v9, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1555
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1560
    :cond_0
    :goto_0
    return-void

    .line 1555
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_1
    throw v0

    .line 1558
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private upgradeVibrateSettingFromNone(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .parameter "db"

    .prologue
    const/4 v5, 0x0

    .line 1563
    const-string v3, "vibrate_on"

    invoke-direct {p0, p1, v3, v5}, Lcom/android/providers/settings/DatabaseHelper;->getIntValueFromSystem(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)I

    move-result v1

    .line 1566
    .local v1, vibrateSetting:I
    iget-object v3, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f05000f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 1567
    .local v2, vibrate_setting_value:I
    and-int/lit8 v3, v1, 0x3

    if-nez v3, :cond_0

    .line 1568
    invoke-static {v5, v5, v2}, Landroid/media/AudioService;->getValueForVibrateSetting(III)I

    move-result v1

    .line 1572
    :cond_0
    const/4 v3, 0x1

    invoke-static {v1, v3, v1}, Landroid/media/AudioService;->getValueForVibrateSetting(III)I

    move-result v1

    .line 1575
    const/4 v0, 0x0

    .line 1577
    .local v0, stmt:Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    const-string v3, "INSERT OR REPLACE INTO system(name,value) VALUES(?,?);"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 1579
    const-string v3, "vibrate_on"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v0, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1581
    if-eqz v0, :cond_1

    .line 1582
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1584
    :cond_1
    return-void

    .line 1581
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_2

    .line 1582
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_2
    throw v3
.end method


# virtual methods
.method public _is24HourFormat(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 14
    .parameter "db"

    .prologue
    .line 1450
    const/4 v8, 0x0

    .line 1452
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    const-string v1, "system"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "value"

    aput-object v3, v2, v0

    const-string v3, "name=\'time_12_24\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1453
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1454
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1455
    .local v13, value:Ljava/lang/String;
    if-eqz v13, :cond_1

    .line 1456
    const-string v0, "24"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1462
    if-eqz v8, :cond_0

    .line 1463
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1477
    .end local v13           #value:Ljava/lang/String;
    :cond_0
    :goto_0
    return v0

    .line 1462
    :cond_1
    if-eqz v8, :cond_2

    .line 1463
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1468
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v9, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1469
    .local v9, locale:Ljava/util/Locale;
    const/4 v0, 0x1

    invoke-static {v0, v9}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v10

    .line 1471
    .local v10, natural:Ljava/text/DateFormat;
    instance-of v0, v10, Ljava/text/SimpleDateFormat;

    if-eqz v0, :cond_5

    move-object v12, v10

    .line 1472
    check-cast v12, Ljava/text/SimpleDateFormat;

    .line 1473
    .local v12, sdf:Ljava/text/SimpleDateFormat;
    invoke-virtual {v12}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v11

    .line 1474
    .local v11, pattern:Ljava/lang/String;
    const/16 v0, 0x48

    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    .line 1459
    .end local v9           #locale:Ljava/util/Locale;
    .end local v10           #natural:Ljava/text/DateFormat;
    .end local v11           #pattern:Ljava/lang/String;
    .end local v12           #sdf:Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v0

    .line 1462
    if-eqz v8, :cond_2

    .line 1463
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1462
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 1463
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 1474
    .restart local v9       #locale:Ljava/util/Locale;
    .restart local v10       #natural:Ljava/text/DateFormat;
    .restart local v11       #pattern:Ljava/lang/String;
    .restart local v12       #sdf:Ljava/text/SimpleDateFormat;
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 1477
    .end local v11           #pattern:Ljava/lang/String;
    .end local v12           #sdf:Ljava/text/SimpleDateFormat;
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 143
    const-string v0, "CREATE TABLE system (_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT UNIQUE ON CONFLICT REPLACE,value TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 148
    const-string v0, "CREATE INDEX systemIndex1 ON system (name);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 150
    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->createSecureTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 152
    const-string v0, "CREATE TABLE bluetooth_devices (_id INTEGER PRIMARY KEY,name TEXT,addr TEXT,channel INTEGER,type INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 160
    const-string v0, "CREATE TABLE bookmarks (_id INTEGER PRIMARY KEY,title TEXT,folder TEXT,intent TEXT,shortcut INTEGER,ordering INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 169
    const-string v0, "CREATE INDEX bookmarksIndex1 ON bookmarks (folder);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 170
    const-string v0, "CREATE INDEX bookmarksIndex2 ON bookmarks (shortcut);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 173
    const-string v0, "CREATE TABLE htcservices (_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT UNIQUE ON CONFLICT REPLACE,value TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 178
    const-string v0, "CREATE INDEX htcservicesIndex1 ON htcservices (name);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 182
    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->loadBookmarks(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 185
    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->loadVolumeLevels(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 188
    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->loadSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 190
    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->loadHtcSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 193
    const/16 v0, 0x4b

    invoke-virtual {p0, p1, v0}, Lcom/android/providers/settings/DatabaseHelper;->onSuperPostCreate(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 195
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 30
    .parameter "db"
    .parameter "oldVersion"
    .parameter "currentVersion"

    .prologue
    .line 199
    const-string v4, "SettingsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Upgrading settings database from version "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    move/from16 v26, p2

    .line 211
    .local v26, upgradeVersion:I
    const/16 v4, 0x14

    move/from16 v0, v26

    if-ne v0, v4, :cond_0

    .line 218
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadVibrateSetting(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 220
    const/16 v26, 0x15

    .line 223
    :cond_0
    const/16 v4, 0x16

    move/from16 v0, v26

    if-ge v0, v4, :cond_1

    .line 224
    const/16 v26, 0x16

    .line 226
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/settings/DatabaseHelper;->upgradeLockPatternLocation(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 229
    :cond_1
    const/16 v4, 0x17

    move/from16 v0, v26

    if-ge v0, v4, :cond_2

    .line 230
    const-string v4, "UPDATE favorites SET iconResource=0 WHERE iconType=0"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 231
    const/16 v26, 0x17

    .line 234
    :cond_2
    const/16 v4, 0x17

    move/from16 v0, v26

    if-ne v0, v4, :cond_3

    .line 235
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 237
    :try_start_0
    const-string v4, "ALTER TABLE favorites ADD spanX INTEGER"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 238
    const-string v4, "ALTER TABLE favorites ADD spanY INTEGER"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 240
    const-string v4, "UPDATE favorites SET spanX=1, spanY=1 WHERE itemType<=0"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 242
    const-string v4, "UPDATE favorites SET spanX=2, spanY=2 WHERE itemType=1000 or itemType=1002"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 245
    const-string v4, "UPDATE favorites SET spanX=4, spanY=1 WHERE itemType=1001"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 246
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 250
    const/16 v26, 0x18

    .line 253
    :cond_3
    const/16 v4, 0x18

    move/from16 v0, v26

    if-ne v0, v4, :cond_4

    .line 254
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 258
    :try_start_1
    const-string v4, "DELETE FROM system WHERE name=\'network_preference\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 259
    const-string v4, "INSERT INTO system (\'name\', \'value\') values (\'network_preference\', \'1\')"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 261
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 263
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 265
    const/16 v26, 0x19

    .line 268
    :cond_4
    const/16 v4, 0x19

    move/from16 v0, v26

    if-ne v0, v4, :cond_5

    .line 269
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 271
    :try_start_2
    const-string v4, "ALTER TABLE favorites ADD uri TEXT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 272
    const-string v4, "ALTER TABLE favorites ADD displayMode INTEGER"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 273
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 275
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 277
    const/16 v26, 0x1a

    .line 280
    :cond_5
    const/16 v4, 0x1a

    move/from16 v0, v26

    if-ne v0, v4, :cond_6

    .line 282
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 284
    :try_start_3
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/settings/DatabaseHelper;->createSecureTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 285
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 287
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 289
    const/16 v26, 0x1b

    .line 292
    :cond_6
    const/16 v4, 0x1b

    move/from16 v0, v26

    if-ne v0, v4, :cond_7

    .line 293
    const/16 v4, 0x2c

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/4 v4, 0x0

    const-string v5, "adb_enabled"

    aput-object v5, v21, v4

    const/4 v4, 0x1

    const-string v5, "android_id"

    aput-object v5, v21, v4

    const/4 v4, 0x2

    const-string v5, "bluetooth_on"

    aput-object v5, v21, v4

    const/4 v4, 0x3

    const-string v5, "data_roaming"

    aput-object v5, v21, v4

    const/4 v4, 0x4

    const-string v5, "device_provisioned"

    aput-object v5, v21, v4

    const/4 v4, 0x5

    const-string v5, "http_proxy"

    aput-object v5, v21, v4

    const/4 v4, 0x6

    const-string v5, "install_non_market_apps"

    aput-object v5, v21, v4

    const/4 v4, 0x7

    const-string v5, "location_providers_allowed"

    aput-object v5, v21, v4

    const/16 v4, 0x8

    sget-object v5, Lcom/android/providers/settings/util/HtcDatabaseTable;->SECURE:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v6, "DATA_ROAMING_ALLOWED"

    const-string v7, "data_roaming_allowed"

    invoke-static {v5, v6, v7}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v21, v4

    const/16 v4, 0x9

    sget-object v5, Lcom/android/providers/settings/util/HtcDatabaseTable;->SECURE:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v6, "DATA_ROAMING_BLOCKED"

    const-string v7, "data_roaming_blocked"

    invoke-static {v5, v6, v7}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v21, v4

    const/16 v4, 0xa

    sget-object v5, Lcom/android/providers/settings/util/HtcDatabaseTable;->SECURE:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v6, "DATA_ROAMING_GUARD_ALLOWED"

    const-string v7, "data_roaming_guard_allowed"

    invoke-static {v5, v6, v7}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v21, v4

    const/16 v4, 0xb

    sget-object v5, Lcom/android/providers/settings/util/HtcDatabaseTable;->SECURE:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v6, "DATA_ROAMING_GUARD_BLOCKED"

    const-string v7, "data_roaming_guard_blocked"

    invoke-static {v5, v6, v7}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v21, v4

    const/16 v4, 0xc

    sget-object v5, Lcom/android/providers/settings/util/HtcDatabaseTable;->SECURE:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v6, "VOICE_ROAMING_ALLOWED"

    const-string v7, "voice_roaming_allowed"

    invoke-static {v5, v6, v7}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v21, v4

    const/16 v4, 0xd

    sget-object v5, Lcom/android/providers/settings/util/HtcDatabaseTable;->SECURE:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v6, "VOICE_ROAMING_BLOCKED"

    const-string v7, "voice_roaming_blocked"

    invoke-static {v5, v6, v7}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v21, v4

    const/16 v4, 0xe

    sget-object v5, Lcom/android/providers/settings/util/HtcDatabaseTable;->SECURE:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v6, "VOICE_ROAMING_GUARD_ALLOWED"

    const-string v7, "voice_roaming_guard_allowed"

    invoke-static {v5, v6, v7}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v21, v4

    const/16 v4, 0xf

    sget-object v5, Lcom/android/providers/settings/util/HtcDatabaseTable;->SECURE:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v6, "VOICE_ROAMING_GUARD_BLOCKED"

    const-string v7, "voice_roaming_guard_blocked"

    invoke-static {v5, v6, v7}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v21, v4

    const/16 v4, 0x10

    sget-object v5, Lcom/android/providers/settings/util/HtcDatabaseTable;->SECURE:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v6, "SMS_ROAMING_GUARD_ALLOWED"

    const-string v7, "sms_roaming_guard_allowed"

    invoke-static {v5, v6, v7}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v21, v4

    const/16 v4, 0x11

    const-string v5, "logging_id"

    aput-object v5, v21, v4

    const/16 v4, 0x12

    const-string v5, "network_preference"

    aput-object v5, v21, v4

    const/16 v4, 0x13

    const-string v5, "parental_control_enabled"

    aput-object v5, v21, v4

    const/16 v4, 0x14

    const-string v5, "parental_control_last_update"

    aput-object v5, v21, v4

    const/16 v4, 0x15

    const-string v5, "parental_control_redirect_url"

    aput-object v5, v21, v4

    const/16 v4, 0x16

    const-string v5, "settings_classname"

    aput-object v5, v21, v4

    const/16 v4, 0x17

    const-string v5, "usb_mass_storage_enabled"

    aput-object v5, v21, v4

    const/16 v4, 0x18

    const-string v5, "use_google_mail"

    aput-object v5, v21, v4

    const/16 v4, 0x19

    const-string v5, "wifi_networks_available_notification_on"

    aput-object v5, v21, v4

    const/16 v4, 0x1a

    const-string v5, "wifi_networks_available_repeat_delay"

    aput-object v5, v21, v4

    const/16 v4, 0x1b

    const-string v5, "wifi_num_open_networks_kept"

    aput-object v5, v21, v4

    const/16 v4, 0x1c

    const-string v5, "wifi_on"

    aput-object v5, v21, v4

    const/16 v4, 0x1d

    sget-object v5, Lcom/android/providers/settings/util/HtcDatabaseTable;->SECURE:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v6, "WIFI_PWR_ACTIVE_MODE"

    const-string v7, "wifi_pwr_active_mode"

    invoke-static {v5, v6, v7}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v21, v4

    const/16 v4, 0x1e

    sget-object v5, Lcom/android/providers/settings/util/HtcDatabaseTable;->SECURE:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v6, "MOBILEDATA_ON"

    const-string v7, "mobiledata_on"

    invoke-static {v5, v6, v7}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v21, v4

    const/16 v4, 0x1f

    sget-object v5, Lcom/android/providers/settings/util/HtcDatabaseTable;->SECURE:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v6, "ROAMING_SOUND_ON"

    const-string v7, "roaming_sound_on"

    invoke-static {v5, v6, v7}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v21, v4

    const/16 v4, 0x20

    sget-object v5, Lcom/android/providers/settings/util/HtcDatabaseTable;->SECURE:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v6, "NATIONAL_ROAMING_ON"

    const-string v7, "national_roaming_on"

    invoke-static {v5, v6, v7}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v21, v4

    const/16 v4, 0x21

    const-string v5, "wifi_watchdog_acceptable_packet_loss_percentage"

    aput-object v5, v21, v4

    const/16 v4, 0x22

    const-string v5, "wifi_watchdog_ap_count"

    aput-object v5, v21, v4

    const/16 v4, 0x23

    const-string v5, "wifi_watchdog_background_check_delay_ms"

    aput-object v5, v21, v4

    const/16 v4, 0x24

    const-string v5, "wifi_watchdog_background_check_enabled"

    aput-object v5, v21, v4

    const/16 v4, 0x25

    const-string v5, "wifi_watchdog_background_check_timeout_ms"

    aput-object v5, v21, v4

    const/16 v4, 0x26

    const-string v5, "wifi_watchdog_initial_ignored_ping_count"

    aput-object v5, v21, v4

    const/16 v4, 0x27

    const-string v5, "wifi_watchdog_max_ap_checks"

    aput-object v5, v21, v4

    const/16 v4, 0x28

    const-string v5, "wifi_watchdog_on"

    aput-object v5, v21, v4

    const/16 v4, 0x29

    const-string v5, "wifi_watchdog_ping_count"

    aput-object v5, v21, v4

    const/16 v4, 0x2a

    const-string v5, "wifi_watchdog_ping_delay_ms"

    aput-object v5, v21, v4

    const/16 v4, 0x2b

    const-string v5, "wifi_watchdog_ping_timeout_ms"

    aput-object v5, v21, v4

    .line 384
    .local v21, settingsToMove:[Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->moveFromSystemToSecure(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)V

    .line 385
    const/16 v26, 0x1c

    .line 388
    .end local v21           #settingsToMove:[Ljava/lang/String;
    :cond_7
    const/16 v4, 0x1c

    move/from16 v0, v26

    if-eq v0, v4, :cond_8

    const/16 v4, 0x1d

    move/from16 v0, v26

    if-ne v0, v4, :cond_9

    .line 395
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 397
    :try_start_4
    const-string v4, "DELETE FROM system WHERE name=\'mode_ringer_streams_affected\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 399
    const/16 v16, 0x26

    .line 402
    .local v16, newValue:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "INSERT INTO system (\'name\', \'value\') values (\'mode_ringer_streams_affected\', \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 405
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 407
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 410
    const/16 v26, 0x1e

    .line 413
    .end local v16           #newValue:I
    :cond_9
    const/16 v4, 0x1e

    move/from16 v0, v26

    if-ne v0, v4, :cond_a

    .line 419
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 421
    :try_start_5
    const-string v4, "UPDATE bookmarks SET folder = \'@quicklaunch\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 422
    const-string v4, "UPDATE bookmarks SET title = \'\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 423
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 425
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 427
    const/16 v26, 0x1f

    .line 430
    :cond_a
    const/16 v4, 0x1f

    move/from16 v0, v26

    if-ne v0, v4, :cond_c

    .line 435
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 436
    const/16 v23, 0x0

    .line 438
    .local v23, stmt:Landroid/database/sqlite/SQLiteStatement;
    :try_start_6
    const-string v4, "DELETE FROM system WHERE name=\'window_animation_scale\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 440
    const-string v4, "DELETE FROM system WHERE name=\'transition_animation_scale\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 442
    const-string v4, "INSERT INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v23

    .line 444
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadDefaultAnimationSettings(Landroid/database/sqlite/SQLiteStatement;)V

    .line 445
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 447
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 448
    if-eqz v23, :cond_b

    invoke-virtual/range {v23 .. v23}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 450
    :cond_b
    const/16 v26, 0x20

    .line 453
    .end local v23           #stmt:Landroid/database/sqlite/SQLiteStatement;
    :cond_c
    const/16 v4, 0x20

    move/from16 v0, v26

    if-ne v0, v4, :cond_e

    .line 456
    const-string v4, "ro.com.android.wifi-watchlist"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 457
    .local v28, wifiWatchList:Ljava/lang/String;
    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 458
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 460
    :try_start_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "INSERT OR IGNORE INTO secure(name,value) values(\'wifi_watchdog_watch_list\',\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\');"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 463
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 465
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 468
    :cond_d
    const/16 v26, 0x21

    .line 471
    .end local v28           #wifiWatchList:Ljava/lang/String;
    :cond_e
    const/16 v4, 0x21

    move/from16 v0, v26

    if-ne v0, v4, :cond_f

    .line 473
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 475
    :try_start_8
    const-string v4, "INSERT INTO system(name,value) values(\'zoom\',\'2\');"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 476
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    .line 478
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 480
    const/16 v26, 0x22

    .line 483
    :cond_f
    const/16 v4, 0x22

    move/from16 v0, v26

    if-ne v0, v4, :cond_11

    .line 484
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 485
    const/16 v23, 0x0

    .line 487
    .restart local v23       #stmt:Landroid/database/sqlite/SQLiteStatement;
    :try_start_9
    const-string v4, "INSERT OR IGNORE INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v23

    .line 489
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadSecure35Settings(Landroid/database/sqlite/SQLiteStatement;)V

    .line 490
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    .line 492
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 493
    if-eqz v23, :cond_10

    invoke-virtual/range {v23 .. v23}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 495
    :cond_10
    const/16 v26, 0x23

    .line 501
    .end local v23           #stmt:Landroid/database/sqlite/SQLiteStatement;
    :cond_11
    const/16 v4, 0x23

    move/from16 v0, v26

    if-ne v0, v4, :cond_12

    .line 502
    const/16 v26, 0x24

    .line 505
    :cond_12
    const/16 v4, 0x24

    move/from16 v0, v26

    if-ne v0, v4, :cond_13

    .line 508
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 510
    :try_start_a
    const-string v4, "DELETE FROM system WHERE name=\'mode_ringer_streams_affected\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 512
    const/16 v16, 0xa6

    .line 516
    .restart local v16       #newValue:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "INSERT INTO system (\'name\', \'value\') values (\'mode_ringer_streams_affected\', \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 520
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DELETE FROM system WHERE name=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v6, "SILENT_MODE"

    const-string v7, "silent_mode"

    invoke-static {v5, v6, v7}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 525
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "INSERT INTO system (\'name\', \'value\') values (\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v6, "SILENT_MODE"

    const-string v7, "silent_mode"

    invoke-static {v5, v6, v7}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\', \'0\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 530
    const-string v4, "DELETE FROM system WHERE name=\'volume_system\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 532
    const-string v4, "INSERT INTO system (\'name\', \'value\') values (\'volume_system\', \'7\')"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 535
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    .line 537
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 543
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 545
    :try_start_b
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/settings/DatabaseHelper;->loadExtraCDMAKeysFromCupcakeToEclair(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 546
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    .line 551
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 555
    :goto_0
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/settings/DatabaseHelper;->upgradeLockPatternNextAlarmFormat(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 558
    const/16 v26, 0x25

    .line 561
    .end local v16           #newValue:I
    :cond_13
    const/16 v4, 0x25

    move/from16 v0, v26

    if-ne v0, v4, :cond_15

    .line 562
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 563
    const/16 v23, 0x0

    .line 565
    .restart local v23       #stmt:Landroid/database/sqlite/SQLiteStatement;
    :try_start_c
    const-string v4, "INSERT OR IGNORE INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v23

    .line 567
    const-string v4, "airplane_mode_toggleable_radios"

    const v5, 0x7f060001

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 569
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    .line 571
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 572
    if-eqz v23, :cond_14

    invoke-virtual/range {v23 .. v23}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 574
    :cond_14
    const/16 v26, 0x26

    .line 577
    .end local v23           #stmt:Landroid/database/sqlite/SQLiteStatement;
    :cond_15
    const/16 v4, 0x26

    move/from16 v0, v26

    if-ne v0, v4, :cond_16

    .line 578
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 580
    :try_start_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f04000b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_57

    const-string v27, "1"

    .line 582
    .local v27, value:Ljava/lang/String;
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "INSERT OR IGNORE INTO secure(name,value) values(\'assisted_gps_enabled\',\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\');"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 584
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    .line 586
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 589
    const/16 v26, 0x27

    .line 592
    .end local v27           #value:Ljava/lang/String;
    :cond_16
    const/16 v4, 0x27

    move/from16 v0, v26

    if-ne v0, v4, :cond_17

    .line 593
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/settings/DatabaseHelper;->upgradeAutoBrightness(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 608
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 610
    :try_start_e
    new-instance v22, Ljava/lang/StringBuffer;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuffer;-><init>()V

    .line 612
    .local v22, sql:Ljava/lang/StringBuffer;
    const-string v4, "UPDATE system SET value = (SELECT value FROM system WHERE name=\'"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 613
    sget-object v4, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v5, "SCREEN_AUTO"

    const-string v6, "screen_auto"

    invoke-static {v4, v5, v6}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 617
    const-string v4, "\') WHERE name=\'"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 618
    const-string v4, "screen_brightness_mode"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 619
    const-string v4, "\' AND EXISTS(SELECT * FROM system WHERE name=\'"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 620
    sget-object v4, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v5, "SCREEN_AUTO"

    const-string v6, "screen_auto"

    invoke-static {v4, v5, v6}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 624
    const-string v4, "\');"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 625
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 627
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_1

    .line 633
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 636
    .end local v22           #sql:Ljava/lang/StringBuffer;
    :goto_2
    const/16 v26, 0x28

    .line 639
    :cond_17
    const/16 v4, 0x28

    move/from16 v0, v26

    if-ne v0, v4, :cond_19

    .line 643
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 644
    const/16 v23, 0x0

    .line 646
    .restart local v23       #stmt:Landroid/database/sqlite/SQLiteStatement;
    :try_start_f
    const-string v4, "DELETE FROM system WHERE name=\'window_animation_scale\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 648
    const-string v4, "DELETE FROM system WHERE name=\'transition_animation_scale\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 650
    const-string v4, "INSERT INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v23

    .line 652
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadDefaultAnimationSettings(Landroid/database/sqlite/SQLiteStatement;)V

    .line 653
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_f

    .line 655
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 656
    if-eqz v23, :cond_18

    invoke-virtual/range {v23 .. v23}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 658
    :cond_18
    const/16 v26, 0x29

    .line 661
    .end local v23           #stmt:Landroid/database/sqlite/SQLiteStatement;
    :cond_19
    const/16 v4, 0x29

    move/from16 v0, v26

    if-ne v0, v4, :cond_1b

    .line 665
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 666
    const/16 v23, 0x0

    .line 668
    .restart local v23       #stmt:Landroid/database/sqlite/SQLiteStatement;
    :try_start_10
    const-string v4, "DELETE FROM system WHERE name=\'haptic_feedback_enabled\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 670
    const-string v4, "INSERT INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v23

    .line 672
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadDefaultHapticSettings(Landroid/database/sqlite/SQLiteStatement;)V

    .line 673
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_10

    .line 675
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 676
    if-eqz v23, :cond_1a

    invoke-virtual/range {v23 .. v23}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 678
    :cond_1a
    const/16 v26, 0x2a

    .line 681
    .end local v23           #stmt:Landroid/database/sqlite/SQLiteStatement;
    :cond_1b
    const/16 v4, 0x2a

    move/from16 v0, v26

    if-ne v0, v4, :cond_1e

    .line 682
    const/16 v19, 0x0

    .line 686
    .local v19, playNotificationSoundWhenSDMount:Z
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 687
    const/16 v23, 0x0

    .line 689
    .restart local v23       #stmt:Landroid/database/sqlite/SQLiteStatement;
    :try_start_11
    const-string v4, "INSERT INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v23

    .line 691
    const-string v4, "notification_light_pulse"

    const v5, 0x7f040011

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 694
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_1c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f04001e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v19

    .line 695
    :cond_1c
    sget-object v4, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v5, "SETTING_SD_CARD_NOTIFICATIONS"

    const-string v6, "sd_card_notifications"

    invoke-static {v4, v5, v6}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v19, :cond_5a

    const-string v4, "1"

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v5, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 702
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_11

    .line 704
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 705
    if-eqz v23, :cond_1d

    invoke-virtual/range {v23 .. v23}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 720
    :cond_1d
    const/16 v26, 0x2b

    .line 723
    .end local v19           #playNotificationSoundWhenSDMount:Z
    .end local v23           #stmt:Landroid/database/sqlite/SQLiteStatement;
    :cond_1e
    const/16 v4, 0x2b

    move/from16 v0, v26

    if-ne v0, v4, :cond_22

    .line 727
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 728
    const/16 v23, 0x0

    .line 730
    .restart local v23       #stmt:Landroid/database/sqlite/SQLiteStatement;
    :try_start_12
    const-string v4, "INSERT OR IGNORE INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v23

    .line 732
    const-string v4, "volume_bluetooth_sco"

    sget-object v5, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/4 v6, 0x6

    aget v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 735
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTCHotspotFlag:Z

    if-eqz v4, :cond_1f

    .line 736
    sget-object v4, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v5, "HOTSPOT_ON"

    const-string v6, "hotspot_on"

    invoke-static {v4, v5, v6}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 751
    sget-object v4, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v5, "HOTSPOT_MACFILTER_ON"

    const-string v6, "hotspot_macfilter_on"

    invoke-static {v4, v5, v6}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 760
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_12

    .line 762
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 763
    if-eqz v23, :cond_20

    invoke-virtual/range {v23 .. v23}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 766
    :cond_20
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 767
    const/16 v23, 0x0

    .line 769
    :try_start_13
    const-string v4, "INSERT OR IGNORE INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v23

    .line 771
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadSecureHtc44Settings(Landroid/database/sqlite/SQLiteStatement;)V

    .line 772
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_13

    .line 774
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 775
    if-eqz v23, :cond_21

    invoke-virtual/range {v23 .. v23}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 777
    :cond_21
    const/16 v26, 0x2c

    .line 780
    .end local v23           #stmt:Landroid/database/sqlite/SQLiteStatement;
    :cond_22
    const/16 v4, 0x2c

    move/from16 v0, v26

    if-ne v0, v4, :cond_23

    .line 784
    const-string v4, "DROP TABLE IF EXISTS gservices"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 785
    const-string v4, "DROP INDEX IF EXISTS gservicesIndex1"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 786
    const/16 v26, 0x2d

    .line 789
    :cond_23
    const/16 v4, 0x2d

    move/from16 v0, v26

    if-ne v0, v4, :cond_24

    .line 793
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 795
    :try_start_14
    const-string v4, "INSERT INTO secure(name,value) values(\'mount_play_not_snd\',\'1\');"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 797
    const-string v4, "INSERT INTO secure(name,value) values(\'mount_ums_autostart\',\'0\');"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 799
    const-string v4, "INSERT INTO secure(name,value) values(\'mount_ums_prompt\',\'1\');"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 801
    const-string v4, "INSERT INTO secure(name,value) values(\'mount_ums_notify_enabled\',\'1\');"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 803
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_14

    .line 805
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 807
    const/16 v26, 0x2e

    .line 810
    :cond_24
    const/16 v4, 0x2e

    move/from16 v0, v26

    if-ne v0, v4, :cond_25

    .line 815
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 817
    :try_start_15
    const-string v4, "DELETE FROM system WHERE name=\'lockscreen.password_type\';"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 818
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_15

    .line 820
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 822
    const/16 v26, 0x2f

    .line 826
    :cond_25
    const/16 v4, 0x2f

    move/from16 v0, v26

    if-ne v0, v4, :cond_26

    .line 831
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 833
    :try_start_16
    const-string v4, "DELETE FROM system WHERE name=\'lockscreen.password_type\';"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 834
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_16

    .line 836
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 838
    const/16 v26, 0x30

    .line 841
    :cond_26
    const/16 v4, 0x30

    move/from16 v0, v26

    if-ne v0, v4, :cond_27

    .line 846
    const/16 v26, 0x31

    .line 849
    :cond_27
    const/16 v4, 0x31

    move/from16 v0, v26

    if-ne v0, v4, :cond_29

    .line 853
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 854
    const/16 v23, 0x0

    .line 856
    .restart local v23       #stmt:Landroid/database/sqlite/SQLiteStatement;
    :try_start_17
    const-string v4, "INSERT INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v23

    .line 858
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadUISoundEffectsSettings(Landroid/database/sqlite/SQLiteStatement;)V

    .line 859
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_17

    .line 861
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 862
    if-eqz v23, :cond_28

    invoke-virtual/range {v23 .. v23}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 865
    :cond_28
    const/16 v26, 0x32

    .line 868
    .end local v23           #stmt:Landroid/database/sqlite/SQLiteStatement;
    :cond_29
    const/16 v4, 0x32

    move/from16 v0, v26

    if-ne v0, v4, :cond_2a

    .line 872
    const/16 v26, 0x33

    .line 875
    :cond_2a
    const/16 v4, 0x33

    move/from16 v0, v26

    if-ne v0, v4, :cond_2b

    .line 877
    const/16 v4, 0x9

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/4 v4, 0x0

    const-string v5, "lock_pattern_autolock"

    aput-object v5, v21, v4

    const/4 v4, 0x1

    const-string v5, "lock_pattern_visible_pattern"

    aput-object v5, v21, v4

    const/4 v4, 0x2

    const-string v5, "lock_pattern_tactile_feedback_enabled"

    aput-object v5, v21, v4

    const/4 v4, 0x3

    const-string v5, "lockscreen.password_type"

    aput-object v5, v21, v4

    const/4 v4, 0x4

    const-string v5, "lockscreen.lockoutattemptdeadline"

    aput-object v5, v21, v4

    const/4 v4, 0x5

    const-string v5, "lockscreen.patterneverchosen"

    aput-object v5, v21, v4

    const/4 v4, 0x6

    const-string v5, "lock_pattern_autolock"

    aput-object v5, v21, v4

    const/4 v4, 0x7

    const-string v5, "lockscreen.lockedoutpermanently"

    aput-object v5, v21, v4

    const/16 v4, 0x8

    const-string v5, "lockscreen.password_salt"

    aput-object v5, v21, v4

    .line 888
    .restart local v21       #settingsToMove:[Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->moveFromSystemToSecure(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)V

    .line 889
    const/16 v26, 0x34

    .line 892
    .end local v21           #settingsToMove:[Ljava/lang/String;
    :cond_2b
    const/16 v4, 0x34

    move/from16 v0, v26

    if-ne v0, v4, :cond_2d

    .line 894
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 895
    const/16 v23, 0x0

    .line 897
    .restart local v23       #stmt:Landroid/database/sqlite/SQLiteStatement;
    :try_start_18
    const-string v4, "INSERT INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v23

    .line 899
    const-string v4, "vibrate_in_silent"

    const v5, 0x7f040017

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 901
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_18

    .line 903
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 904
    if-eqz v23, :cond_2c

    invoke-virtual/range {v23 .. v23}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 907
    :cond_2c
    const/16 v26, 0x35

    .line 910
    .end local v23           #stmt:Landroid/database/sqlite/SQLiteStatement;
    :cond_2d
    const/16 v4, 0x35

    move/from16 v0, v26

    if-ne v0, v4, :cond_2e

    .line 914
    const/16 v26, 0x36

    .line 917
    :cond_2e
    const/16 v4, 0x36

    move/from16 v0, v26

    if-ne v0, v4, :cond_2f

    .line 921
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 923
    :try_start_19
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/settings/DatabaseHelper;->upgradeScreenTimeoutFromNever(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 924
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_19

    .line 926
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 929
    const/16 v26, 0x37

    .line 932
    :cond_2f
    const/16 v4, 0x37

    move/from16 v0, v26

    if-ne v0, v4, :cond_33

    .line 936
    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/4 v4, 0x0

    const-string v5, "set_install_location"

    aput-object v5, v21, v4

    const/4 v4, 0x1

    const-string v5, "default_install_location"

    aput-object v5, v21, v4

    .line 940
    .restart local v21       #settingsToMove:[Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->moveFromSystemToSecure(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)V

    .line 941
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 942
    const/16 v23, 0x0

    .line 945
    .restart local v23       #stmt:Landroid/database/sqlite/SQLiteStatement;
    :try_start_1a
    const-string v4, "INSERT INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v23

    .line 947
    const-string v4, "set_install_location"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 948
    const-string v4, "default_install_location"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 950
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1a

    .line 952
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 953
    if-eqz v23, :cond_30

    invoke-virtual/range {v23 .. v23}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 957
    :cond_30
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 959
    :try_start_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f040025

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_61

    const-string v27, "1"

    .line 962
    .restart local v27       #value:Ljava/lang/String;
    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "INSERT OR IGNORE INTO secure(name,value) values(\'mobile_data\',\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\');"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 964
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1b

    .line 966
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 984
    const-string v18, "nothing"

    .line 985
    .local v18, olddata:Ljava/lang/String;
    const-string v17, "nothing"

    .line 986
    .local v17, newdata:Ljava/lang/String;
    const-string v5, "secure"

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "value"

    aput-object v7, v6, v4

    const-string v7, "name=\'mobiledata_on\'"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 987
    .local v14, cr:Landroid/database/Cursor;
    if-eqz v14, :cond_31

    .line 988
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 989
    const/4 v4, 0x0

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 991
    :cond_31
    const-string v4, "SettingsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "olddata:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 995
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 997
    :try_start_1c
    new-instance v22, Ljava/lang/StringBuffer;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuffer;-><init>()V

    .line 999
    .restart local v22       #sql:Ljava/lang/StringBuffer;
    const-string v4, "UPDATE secure SET value = (SELECT value FROM secure WHERE name=\'"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1000
    sget-object v4, Lcom/android/providers/settings/util/HtcDatabaseTable;->SECURE:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v5, "MOBILEDATA_ON"

    const-string v6, "mobiledata_on"

    invoke-static {v4, v5, v6}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1004
    const-string v4, "\') WHERE name=\'"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1005
    const-string v4, "mobile_data"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1006
    const-string v4, "\' AND EXISTS(SELECT * FROM secure WHERE name=\'"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1007
    sget-object v4, Lcom/android/providers/settings/util/HtcDatabaseTable;->SECURE:Lcom/android/providers/settings/util/HtcDatabaseTable;

    const-string v5, "MOBILEDATA_ON"

    const-string v6, "mobiledata_on"

    invoke-static {v4, v5, v6}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getDatabaseKeyName(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1011
    const-string v4, "\');"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1012
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1014
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1c
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_1c} :catch_2

    .line 1020
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1025
    .end local v22           #sql:Ljava/lang/StringBuffer;
    :goto_5
    const-string v5, "secure"

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "value"

    aput-object v7, v6, v4

    const-string v7, "name=\'mobile_data\'"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1026
    if-eqz v14, :cond_32

    .line 1027
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1028
    const/4 v4, 0x0

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1030
    :cond_32
    const-string v4, "SettingsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "newdata:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1041
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/settings/DatabaseHelper;->upgradeHtcSettingsTo56(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1043
    const/16 v26, 0x38

    .line 1046
    .end local v14           #cr:Landroid/database/Cursor;
    .end local v17           #newdata:Ljava/lang/String;
    .end local v18           #olddata:Ljava/lang/String;
    .end local v21           #settingsToMove:[Ljava/lang/String;
    .end local v23           #stmt:Landroid/database/sqlite/SQLiteStatement;
    .end local v27           #value:Ljava/lang/String;
    :cond_33
    const/16 v4, 0x38

    move/from16 v0, v26

    if-ne v0, v4, :cond_34

    .line 1048
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/settings/DatabaseHelper;->upgradeHtcSettingsTo57(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1050
    const/16 v26, 0x39

    .line 1055
    :cond_34
    const/16 v4, 0x39

    move/from16 v0, v26

    if-ne v0, v4, :cond_36

    .line 1059
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1060
    const/16 v23, 0x0

    .line 1062
    .restart local v23       #stmt:Landroid/database/sqlite/SQLiteStatement;
    :try_start_1d
    const-string v4, "DELETE FROM system WHERE name=\'airplane_mode_toggleable_radios\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1064
    const-string v4, "INSERT OR IGNORE INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v23

    .line 1066
    const-string v4, "airplane_mode_toggleable_radios"

    const v5, 0x7f060001

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1068
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1d

    .line 1070
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1071
    if-eqz v23, :cond_35

    invoke-virtual/range {v23 .. v23}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1073
    :cond_35
    const/16 v26, 0x3a

    .line 1076
    .end local v23           #stmt:Landroid/database/sqlite/SQLiteStatement;
    :cond_36
    const/16 v4, 0x3a

    move/from16 v0, v26

    if-ne v0, v4, :cond_38

    .line 1082
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1083
    const/16 v23, 0x0

    .line 1085
    .restart local v23       #stmt:Landroid/database/sqlite/SQLiteStatement;
    :try_start_1e
    const-string v4, "INSERT INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v23

    .line 1087
    const-string v4, "accessibility_script_injection"

    const v5, 0x7f040018

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1089
    invoke-virtual/range {v23 .. v23}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1090
    const-string v4, "INSERT INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v23

    .line 1092
    const-string v4, "accessibility_web_content_key_bindings"

    const v5, 0x7f06000f

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1094
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1e

    .line 1096
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1097
    if-eqz v23, :cond_37

    invoke-virtual/range {v23 .. v23}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1099
    :cond_37
    const/16 v26, 0x3b

    .line 1102
    .end local v23           #stmt:Landroid/database/sqlite/SQLiteStatement;
    :cond_38
    const/16 v4, 0x3b

    move/from16 v0, v26

    if-ne v0, v4, :cond_3a

    .line 1104
    const-string v4, "auto_time"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->getIntValueFromSystem(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)I

    move-result v13

    .line 1105
    .local v13, autoTimeValue:I
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1106
    const/16 v23, 0x0

    .line 1108
    .restart local v23       #stmt:Landroid/database/sqlite/SQLiteStatement;
    :try_start_1f
    const-string v4, "INSERT INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v23

    .line 1109
    const-string v4, "auto_time_zone"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1111
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1f

    .line 1113
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1114
    if-eqz v23, :cond_39

    invoke-virtual/range {v23 .. v23}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1116
    :cond_39
    const/16 v26, 0x3c

    .line 1119
    .end local v13           #autoTimeValue:I
    .end local v23           #stmt:Landroid/database/sqlite/SQLiteStatement;
    :cond_3a
    const/16 v4, 0x3c

    move/from16 v0, v26

    if-ne v0, v4, :cond_3c

    .line 1121
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1122
    const/16 v23, 0x0

    .line 1124
    .restart local v23       #stmt:Landroid/database/sqlite/SQLiteStatement;
    :try_start_20
    const-string v4, "INSERT INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v23

    .line 1126
    const-string v4, "user_rotation"

    const v5, 0x7f050006

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1128
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_20

    .line 1130
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1131
    if-eqz v23, :cond_3b

    invoke-virtual/range {v23 .. v23}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1133
    :cond_3b
    const/16 v26, 0x3d

    .line 1136
    .end local v23           #stmt:Landroid/database/sqlite/SQLiteStatement;
    :cond_3c
    const/16 v4, 0x3d

    move/from16 v0, v26

    if-ne v0, v4, :cond_3d

    .line 1140
    const/16 v26, 0x3e

    .line 1143
    :cond_3d
    const/16 v4, 0x3e

    move/from16 v0, v26

    if-ne v0, v4, :cond_3e

    .line 1147
    const/16 v26, 0x3f

    .line 1151
    :cond_3e
    const/16 v4, 0x3f

    move/from16 v0, v26

    if-ne v0, v4, :cond_3f

    .line 1155
    const/16 v26, 0x40

    .line 1158
    :cond_3f
    const/16 v4, 0x40

    move/from16 v0, v26

    if-ne v0, v4, :cond_40

    .line 1161
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1163
    :try_start_21
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/settings/DatabaseHelper;->getOldRingerModeAffect(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v4

    or-int/lit8 v4, v4, 0x4

    or-int/lit8 v4, v4, 0x20

    or-int/lit8 v4, v4, 0x2

    or-int/lit16 v4, v4, 0x80

    or-int/lit8 v16, v4, 0x8

    .line 1169
    .restart local v16       #newValue:I
    const-string v4, "DELETE FROM system WHERE name=\'mode_ringer_streams_affected\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1171
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "INSERT INTO system (\'name\', \'value\') values (\'mode_ringer_streams_affected\', \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1174
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_21

    .line 1176
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1178
    const/16 v26, 0x41

    .line 1181
    .end local v16           #newValue:I
    :cond_40
    const/16 v4, 0x41

    move/from16 v0, v26

    if-ne v0, v4, :cond_42

    .line 1183
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1184
    const/16 v23, 0x0

    .line 1186
    .restart local v23       #stmt:Landroid/database/sqlite/SQLiteStatement;
    :try_start_22
    const-string v4, "INSERT INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v23

    .line 1188
    const-string v4, "long_press_timeout"

    const v5, 0x7f05000d

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1190
    invoke-virtual/range {v23 .. v23}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1191
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_22

    .line 1193
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1194
    if-eqz v23, :cond_41

    invoke-virtual/range {v23 .. v23}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1196
    :cond_41
    const/16 v26, 0x42

    .line 1201
    .end local v23           #stmt:Landroid/database/sqlite/SQLiteStatement;
    :cond_42
    const/16 v4, 0x42

    move/from16 v0, v26

    if-ne v0, v4, :cond_44

    .line 1205
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1206
    const/16 v23, 0x0

    .line 1208
    .restart local v23       #stmt:Landroid/database/sqlite/SQLiteStatement;
    :try_start_23
    const-string v4, "DELETE FROM system WHERE name=\'window_animation_scale\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1210
    const-string v4, "DELETE FROM system WHERE name=\'transition_animation_scale\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1212
    const-string v4, "INSERT INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v23

    .line 1214
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadDefaultAnimationSettings(Landroid/database/sqlite/SQLiteStatement;)V

    .line 1215
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_23

    .line 1217
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1218
    if-eqz v23, :cond_43

    invoke-virtual/range {v23 .. v23}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1220
    :cond_43
    const/16 v26, 0x43

    .line 1223
    .end local v23           #stmt:Landroid/database/sqlite/SQLiteStatement;
    :cond_44
    const/16 v4, 0x43

    move/from16 v0, v26

    if-ne v0, v4, :cond_46

    .line 1226
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1229
    :try_start_24
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/settings/DatabaseHelper;->getOldRingerModeAffect(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v4

    and-int/lit8 v4, v4, 0x10

    or-int/lit8 v4, v4, 0x4

    or-int/lit8 v4, v4, 0x20

    or-int/lit8 v4, v4, 0x2

    or-int/lit16 v0, v4, 0x80

    move/from16 v20, v0

    .line 1235
    .local v20, ringerModeAffectedStreams:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1110023

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-nez v4, :cond_45

    .line 1237
    or-int/lit8 v20, v20, 0x8

    .line 1239
    :cond_45
    const-string v4, "DELETE FROM system WHERE name=\'mode_ringer_streams_affected\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1241
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "INSERT INTO system (\'name\', \'value\') values (\'mode_ringer_streams_affected\', \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1244
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_24

    .line 1246
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1248
    const/16 v26, 0x44

    .line 1251
    .end local v20           #ringerModeAffectedStreams:I
    :cond_46
    const/16 v4, 0x44

    move/from16 v0, v26

    if-ne v0, v4, :cond_48

    .line 1253
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1254
    const/16 v23, 0x0

    .line 1256
    .restart local v23       #stmt:Landroid/database/sqlite/SQLiteStatement;
    :try_start_25
    const-string v4, "INSERT INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v23

    .line 1258
    const-string v4, "touch_exploration_enabled"

    const v5, 0x7f04001a

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1260
    invoke-virtual/range {v23 .. v23}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1261
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_25

    .line 1263
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1264
    if-eqz v23, :cond_47

    invoke-virtual/range {v23 .. v23}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1266
    :cond_47
    const/16 v26, 0x45

    .line 1269
    .end local v23           #stmt:Landroid/database/sqlite/SQLiteStatement;
    :cond_48
    const/16 v4, 0x45

    move/from16 v0, v26

    if-ne v0, v4, :cond_49

    .line 1271
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1273
    :try_start_26
    const-string v4, "DELETE FROM system WHERE name=\'notifications_use_ring_volume\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1275
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_26

    .line 1277
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1279
    const/16 v26, 0x46

    .line 1282
    :cond_49
    const/16 v4, 0x46

    move/from16 v0, v26

    if-ne v0, v4, :cond_4a

    .line 1284
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f06

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1286
    .local v12, airplaneRadios:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 1288
    .local v25, toggleableRadios:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1290
    :try_start_27
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UPDATE system SET value=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "WHERE name=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "airplane_mode_radios"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1292
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UPDATE system SET value=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "WHERE name=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "airplane_mode_toggleable_radios"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1294
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_27

    .line 1296
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1298
    const/16 v26, 0x47

    .line 1301
    .end local v12           #airplaneRadios:Ljava/lang/String;
    .end local v25           #toggleableRadios:Ljava/lang/String;
    :cond_4a
    const/16 v4, 0x47

    move/from16 v0, v26

    if-ne v0, v4, :cond_4b

    .line 1303
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/settings/DatabaseHelper;->loadBookmarks(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1304
    const/16 v26, 0x48

    .line 1307
    :cond_4b
    const/16 v4, 0x48

    move/from16 v0, v26

    if-ne v0, v4, :cond_4d

    .line 1309
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1310
    const/16 v23, 0x0

    .line 1312
    .restart local v23       #stmt:Landroid/database/sqlite/SQLiteStatement;
    :try_start_28
    const-string v4, "INSERT INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v23

    .line 1314
    const-string v4, "speak_password"

    const v5, 0x7f040019

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1316
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_28

    .line 1318
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1319
    if-eqz v23, :cond_4c

    invoke-virtual/range {v23 .. v23}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1321
    :cond_4c
    const/16 v26, 0x49

    .line 1324
    .end local v23           #stmt:Landroid/database/sqlite/SQLiteStatement;
    :cond_4d
    const/16 v4, 0x49

    move/from16 v0, v26

    if-ne v0, v4, :cond_4f

    .line 1326
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1327
    const/16 v23, 0x0

    .line 1329
    .restart local v23       #stmt:Landroid/database/sqlite/SQLiteStatement;
    :try_start_29
    const-string v4, "INSERT OR REPLACE INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v23

    .line 1331
    const-string v4, "vibrate_in_silent"

    const v5, 0x7f040017

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1333
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_29

    .line 1335
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1336
    if-eqz v23, :cond_4e

    invoke-virtual/range {v23 .. v23}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1338
    :cond_4e
    const/16 v26, 0x4a

    .line 1341
    .end local v23           #stmt:Landroid/database/sqlite/SQLiteStatement;
    :cond_4f
    const/16 v4, 0x4a

    move/from16 v0, v26

    if-ne v0, v4, :cond_50

    .line 1350
    const/16 v26, 0x4b

    .line 1357
    :cond_50
    sget-boolean v4, Lcom/android/providers/settings/flag/HtcDeviceFlags;->isV0006:Z

    if-eqz v4, :cond_51

    .line 1358
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/settings/DatabaseHelper;->isNeedUpgradeAutoTimeZone(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v4

    if-eqz v4, :cond_51

    .line 1359
    const-string v4, "SettingsProvider"

    const-string v5, "htc-upgradeAutoTimeZone"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/settings/DatabaseHelper;->upgradeAutoTimeZone(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1367
    :cond_51
    const/16 v4, 0x4b

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/providers/settings/DatabaseHelper;->onSuperPostUpgrade(Landroid/database/sqlite/SQLiteDatabase;III)Z

    move-result v24

    .line 1371
    .local v24, successful:Z
    move/from16 v0, v26

    move/from16 v1, p3

    if-ne v0, v1, :cond_52

    if-nez v24, :cond_53

    .line 1372
    :cond_52
    const-string v4, "SettingsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got stuck trying to upgrade from version "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", must wipe the settings provider"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    const-string v4, "DROP TABLE IF EXISTS system"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1375
    const-string v4, "DROP INDEX IF EXISTS systemIndex1"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1376
    const-string v4, "DROP TABLE IF EXISTS secure"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1377
    const-string v4, "DROP INDEX IF EXISTS secureIndex1"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1378
    const-string v4, "DROP TABLE IF EXISTS gservices"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1379
    const-string v4, "DROP INDEX IF EXISTS gservicesIndex1"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1380
    const-string v4, "DROP TABLE IF EXISTS bluetooth_devices"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1381
    const-string v4, "DROP TABLE IF EXISTS bookmarks"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1382
    const-string v4, "DROP INDEX IF EXISTS bookmarksIndex1"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1383
    const-string v4, "DROP INDEX IF EXISTS bookmarksIndex2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1384
    const-string v4, "DROP TABLE IF EXISTS favorites"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1386
    const-string v4, "DROP TABLE IF EXISTS htcservices"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1387
    const-string v4, "DROP INDEX IF EXISTS htcservicesIndex1"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1389
    invoke-virtual/range {p0 .. p1}, Lcom/android/providers/settings/DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1392
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 1393
    .local v29, wipeReason:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "INSERT INTO secure(name,value) values(\'wiped_db_reason\',\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\');"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1396
    .end local v29           #wipeReason:Ljava/lang/String;
    :cond_53
    return-void

    .line 248
    .end local v24           #successful:Z
    :catchall_0
    move-exception v4

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4

    .line 263
    :catchall_1
    move-exception v4

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4

    .line 275
    :catchall_2
    move-exception v4

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4

    .line 287
    :catchall_3
    move-exception v4

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4

    .line 407
    :catchall_4
    move-exception v4

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4

    .line 425
    :catchall_5
    move-exception v4

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4

    .line 447
    .restart local v23       #stmt:Landroid/database/sqlite/SQLiteStatement;
    :catchall_6
    move-exception v4

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 448
    if-eqz v23, :cond_54

    invoke-virtual/range {v23 .. v23}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_54
    throw v4

    .line 465
    .end local v23           #stmt:Landroid/database/sqlite/SQLiteStatement;
    .restart local v28       #wifiWatchList:Ljava/lang/String;
    :catchall_7
    move-exception v4

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4

    .line 478
    .end local v28           #wifiWatchList:Ljava/lang/String;
    :catchall_8
    move-exception v4

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4

    .line 492
    .restart local v23       #stmt:Landroid/database/sqlite/SQLiteStatement;
    :catchall_9
    move-exception v4

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 493
    if-eqz v23, :cond_55

    invoke-virtual/range {v23 .. v23}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_55
    throw v4

    .line 537
    .end local v23           #stmt:Landroid/database/sqlite/SQLiteStatement;
    :catchall_a
    move-exception v4

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4

    .line 547
    .restart local v16       #newValue:I
    :catch_0
    move-exception v15

    .line 548
    .local v15, e:Ljava/lang/Exception;
    :try_start_2a
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "load extra keys when upgrading from Cupcake to Eclair"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 549
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_b

    .line 551
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v15           #e:Ljava/lang/Exception;
    :catchall_b
    move-exception v4

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4

    .line 571
    .end local v16           #newValue:I
    .restart local v23       #stmt:Landroid/database/sqlite/SQLiteStatement;
    :catchall_c
    move-exception v4

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 572
    if-eqz v23, :cond_56

    invoke-virtual/range {v23 .. v23}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_56
    throw v4

    .line 580
    .end local v23           #stmt:Landroid/database/sqlite/SQLiteStatement;
    :cond_57
    :try_start_2b
    const-string v27, "0"
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_d

    goto/16 :goto_1

    .line 586
    :catchall_d
    move-exception v4

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4

    .line 628
    :catch_1
    move-exception v15

    .line 629
    .local v15, e:Ljava/lang/RuntimeException;
    :try_start_2c
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-class v5, Lcom/android/providers/settings/DatabaseHelper;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 630
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "An error happened when the system upgraded from Cupcake to Eclair."

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 631
    invoke-virtual {v15}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_e

    .line 633
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_2

    .end local v15           #e:Ljava/lang/RuntimeException;
    :catchall_e
    move-exception v4

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4

    .line 655
    .restart local v23       #stmt:Landroid/database/sqlite/SQLiteStatement;
    :catchall_f
    move-exception v4

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 656
    if-eqz v23, :cond_58

    invoke-virtual/range {v23 .. v23}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_58
    throw v4

    .line 675
    :catchall_10
    move-exception v4

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 676
    if-eqz v23, :cond_59

    invoke-virtual/range {v23 .. v23}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_59
    throw v4

    .line 695
    .restart local v19       #playNotificationSoundWhenSDMount:Z
    :cond_5a
    :try_start_2d
    const-string v4, "0"
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_11

    goto/16 :goto_3

    .line 704
    :catchall_11
    move-exception v4

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 705
    if-eqz v23, :cond_5b

    invoke-virtual/range {v23 .. v23}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_5b
    throw v4

    .line 762
    .end local v19           #playNotificationSoundWhenSDMount:Z
    :catchall_12
    move-exception v4

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 763
    if-eqz v23, :cond_5c

    invoke-virtual/range {v23 .. v23}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_5c
    throw v4

    .line 774
    :catchall_13
    move-exception v4

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 775
    if-eqz v23, :cond_5d

    invoke-virtual/range {v23 .. v23}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_5d
    throw v4

    .line 805
    .end local v23           #stmt:Landroid/database/sqlite/SQLiteStatement;
    :catchall_14
    move-exception v4

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4

    .line 820
    :catchall_15
    move-exception v4

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4

    .line 836
    :catchall_16
    move-exception v4

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4

    .line 861
    .restart local v23       #stmt:Landroid/database/sqlite/SQLiteStatement;
    :catchall_17
    move-exception v4

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 862
    if-eqz v23, :cond_5e

    invoke-virtual/range {v23 .. v23}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_5e
    throw v4

    .line 903
    :catchall_18
    move-exception v4

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 904
    if-eqz v23, :cond_5f

    invoke-virtual/range {v23 .. v23}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_5f
    throw v4

    .line 926
    .end local v23           #stmt:Landroid/database/sqlite/SQLiteStatement;
    :catchall_19
    move-exception v4

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4

    .line 952
    .restart local v21       #settingsToMove:[Ljava/lang/String;
    .restart local v23       #stmt:Landroid/database/sqlite/SQLiteStatement;
    :catchall_1a
    move-exception v4

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 953
    if-eqz v23, :cond_60

    invoke-virtual/range {v23 .. v23}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_60
    throw v4

    .line 959
    :cond_61
    :try_start_2e
    const-string v27, "0"
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_1b

    goto/16 :goto_4

    .line 966
    :catchall_1b
    move-exception v4

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4

    .line 1015
    .restart local v14       #cr:Landroid/database/Cursor;
    .restart local v17       #newdata:Ljava/lang/String;
    .restart local v18       #olddata:Ljava/lang/String;
    .restart local v27       #value:Ljava/lang/String;
    :catch_2
    move-exception v15

    .line 1016
    .restart local v15       #e:Ljava/lang/RuntimeException;
    :try_start_2f
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-class v5, Lcom/android/providers/settings/DatabaseHelper;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1017
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "An error happened when the system upgraded from Eclair to Froyo."

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1018
    invoke-virtual {v15}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_1c

    .line 1020
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_5

    .end local v15           #e:Ljava/lang/RuntimeException;
    :catchall_1c
    move-exception v4

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4

    .line 1070
    .end local v14           #cr:Landroid/database/Cursor;
    .end local v17           #newdata:Ljava/lang/String;
    .end local v18           #olddata:Ljava/lang/String;
    .end local v21           #settingsToMove:[Ljava/lang/String;
    .end local v27           #value:Ljava/lang/String;
    :catchall_1d
    move-exception v4

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1071
    if-eqz v23, :cond_62

    invoke-virtual/range {v23 .. v23}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_62
    throw v4

    .line 1096
    :catchall_1e
    move-exception v4

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1097
    if-eqz v23, :cond_63

    invoke-virtual/range {v23 .. v23}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_63
    throw v4

    .line 1113
    .restart local v13       #autoTimeValue:I
    :catchall_1f
    move-exception v4

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1114
    if-eqz v23, :cond_64

    invoke-virtual/range {v23 .. v23}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_64
    throw v4

    .line 1130
    .end local v13           #autoTimeValue:I
    :catchall_20
    move-exception v4

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1131
    if-eqz v23, :cond_65

    invoke-virtual/range {v23 .. v23}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_65
    throw v4

    .line 1176
    .end local v23           #stmt:Landroid/database/sqlite/SQLiteStatement;
    :catchall_21
    move-exception v4

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4

    .line 1193
    .restart local v23       #stmt:Landroid/database/sqlite/SQLiteStatement;
    :catchall_22
    move-exception v4

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1194
    if-eqz v23, :cond_66

    invoke-virtual/range {v23 .. v23}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_66
    throw v4

    .line 1217
    :catchall_23
    move-exception v4

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1218
    if-eqz v23, :cond_67

    invoke-virtual/range {v23 .. v23}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_67
    throw v4

    .line 1246
    .end local v23           #stmt:Landroid/database/sqlite/SQLiteStatement;
    :catchall_24
    move-exception v4

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4

    .line 1263
    .restart local v23       #stmt:Landroid/database/sqlite/SQLiteStatement;
    :catchall_25
    move-exception v4

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1264
    if-eqz v23, :cond_68

    invoke-virtual/range {v23 .. v23}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_68
    throw v4

    .line 1277
    .end local v23           #stmt:Landroid/database/sqlite/SQLiteStatement;
    :catchall_26
    move-exception v4

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4

    .line 1296
    .restart local v12       #airplaneRadios:Ljava/lang/String;
    .restart local v25       #toggleableRadios:Ljava/lang/String;
    :catchall_27
    move-exception v4

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4

    .line 1318
    .end local v12           #airplaneRadios:Ljava/lang/String;
    .end local v25           #toggleableRadios:Ljava/lang/String;
    .restart local v23       #stmt:Landroid/database/sqlite/SQLiteStatement;
    :catchall_28
    move-exception v4

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1319
    if-eqz v23, :cond_69

    invoke-virtual/range {v23 .. v23}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_69
    throw v4

    .line 1335
    :catchall_29
    move-exception v4

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1336
    if-eqz v23, :cond_6a

    invoke-virtual/range {v23 .. v23}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_6a
    throw v4
.end method
