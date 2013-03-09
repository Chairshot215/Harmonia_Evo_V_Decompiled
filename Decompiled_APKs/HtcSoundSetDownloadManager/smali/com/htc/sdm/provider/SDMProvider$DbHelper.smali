.class Lcom/htc/sdm/provider/SDMProvider$DbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SDMProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sdm/provider/SDMProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DbHelper"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0
    .parameter "context"
    .parameter "name"
    .parameter "factory"
    .parameter "version"

    .prologue
    .line 1089
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 1090
    iput-object p1, p0, Lcom/htc/sdm/provider/SDMProvider$DbHelper;->mContext:Landroid/content/Context;

    .line 1091
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"

    .prologue
    .line 1103
    :try_start_0
    const-string v1, "setting"

    sget-object v2, Lcom/htc/sdm/provider/SDMProvider;->COLUMN_SETTING:[Ljava/lang/String;

    invoke-static {}, Lcom/htc/sdm/provider/SDMProvider;->access$000()[Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/htc/sdm/provider/SDMProvider;->generateCreateTableSql(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2, v3}, Lcom/htc/sdm/provider/SDMProvider;->access$100(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1104
    .local v0, sql:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1106
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1114
    :cond_0
    const-string v1, "defSetting"

    sget-object v2, Lcom/htc/sdm/provider/SDMProvider;->COLUMN_SETTING:[Ljava/lang/String;

    invoke-static {}, Lcom/htc/sdm/provider/SDMProvider;->access$000()[Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/htc/sdm/provider/SDMProvider;->generateCreateTableSql(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2, v3}, Lcom/htc/sdm/provider/SDMProvider;->access$100(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1115
    if-eqz v0, :cond_1

    .line 1117
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1125
    :cond_1
    const-string v1, "CateList"

    sget-object v2, Lcom/htc/sdm/provider/SDMProvider;->COLUMN_CATEGORY_LIST:[Ljava/lang/String;

    invoke-static {}, Lcom/htc/sdm/provider/SDMProvider;->access$200()[Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/htc/sdm/provider/SDMProvider;->generateCreateTableSql(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2, v3}, Lcom/htc/sdm/provider/SDMProvider;->access$100(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1126
    if-eqz v0, :cond_2

    .line 1128
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1137
    :cond_2
    const-string v1, "VersionList"

    sget-object v2, Lcom/htc/sdm/provider/SDMProvider;->COLUMN_VERSION_LIST:[Ljava/lang/String;

    invoke-static {}, Lcom/htc/sdm/provider/SDMProvider;->access$300()[Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/htc/sdm/provider/SDMProvider;->generateCreateTableSql(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2, v3}, Lcom/htc/sdm/provider/SDMProvider;->access$100(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1138
    if-eqz v0, :cond_3

    .line 1140
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1149
    :cond_3
    const-string v1, "soundset"

    sget-object v2, Lcom/htc/sdm/provider/SDMProvider;->COLUMN_SOUNDSET:[Ljava/lang/String;

    sget-object v3, Lcom/htc/sdm/provider/SDMProvider;->SOUNDSET_COLUMN_TYPE:[Ljava/lang/String;

    #calls: Lcom/htc/sdm/provider/SDMProvider;->generateCreateTableSql(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2, v3}, Lcom/htc/sdm/provider/SDMProvider;->access$100(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1150
    if-eqz v0, :cond_4

    .line 1152
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1160
    :cond_4
    const-string v1, "soundsetInfo"

    sget-object v2, Lcom/htc/sdm/provider/SDMProvider;->COLUMN_SOUNDSET_INFO:[Ljava/lang/String;

    invoke-static {}, Lcom/htc/sdm/provider/SDMProvider;->access$400()[Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/htc/sdm/provider/SDMProvider;->generateCreateTableSql(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2, v3}, Lcom/htc/sdm/provider/SDMProvider;->access$100(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1161
    if-eqz v0, :cond_5

    .line 1163
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1171
    :cond_5
    const-string v1, "defSoundsetChild"

    sget-object v2, Lcom/htc/sdm/provider/SDMProvider;->COLUMN_SOUNDSET_CHILD:[Ljava/lang/String;

    invoke-static {}, Lcom/htc/sdm/provider/SDMProvider;->access$500()[Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/htc/sdm/provider/SDMProvider;->generateCreateTableSql(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2, v3}, Lcom/htc/sdm/provider/SDMProvider;->access$100(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1172
    if-eqz v0, :cond_6

    .line 1174
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1182
    :cond_6
    const-string v1, "defSoundsetChild"

    sget-object v2, Lcom/htc/sdm/provider/SDMProvider;->COLUMN_SOUNDSET_CHILD:[Ljava/lang/String;

    invoke-static {}, Lcom/htc/sdm/provider/SDMProvider;->access$500()[Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/htc/sdm/provider/SDMProvider;->generateCreateTableSql(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2, v3}, Lcom/htc/sdm/provider/SDMProvider;->access$100(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1183
    if-eqz v0, :cond_7

    .line 1185
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1193
    :cond_7
    const-string v1, "soundsetChild"

    sget-object v2, Lcom/htc/sdm/provider/SDMProvider;->COLUMN_SOUNDSET_CHILD:[Ljava/lang/String;

    invoke-static {}, Lcom/htc/sdm/provider/SDMProvider;->access$500()[Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/htc/sdm/provider/SDMProvider;->generateCreateTableSql(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2, v3}, Lcom/htc/sdm/provider/SDMProvider;->access$100(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1194
    if-eqz v0, :cond_8

    .line 1196
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1205
    :cond_8
    const-string v1, "ringtone"

    sget-object v2, Lcom/htc/sdm/provider/SDMProvider;->COLUMN_SOUNDSET:[Ljava/lang/String;

    sget-object v3, Lcom/htc/sdm/provider/SDMProvider;->SOUNDSET_COLUMN_TYPE:[Ljava/lang/String;

    #calls: Lcom/htc/sdm/provider/SDMProvider;->generateCreateTableSql(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2, v3}, Lcom/htc/sdm/provider/SDMProvider;->access$100(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1206
    if-eqz v0, :cond_9

    .line 1208
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1216
    :cond_9
    const-string v1, "ringtoneInfo"

    sget-object v2, Lcom/htc/sdm/provider/SDMProvider;->COLUMN_SOUNDSET_INFO:[Ljava/lang/String;

    invoke-static {}, Lcom/htc/sdm/provider/SDMProvider;->access$400()[Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/htc/sdm/provider/SDMProvider;->generateCreateTableSql(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2, v3}, Lcom/htc/sdm/provider/SDMProvider;->access$100(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1217
    if-eqz v0, :cond_a

    .line 1219
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1228
    :cond_a
    const-string v1, "notification"

    sget-object v2, Lcom/htc/sdm/provider/SDMProvider;->COLUMN_SOUNDSET:[Ljava/lang/String;

    sget-object v3, Lcom/htc/sdm/provider/SDMProvider;->SOUNDSET_COLUMN_TYPE:[Ljava/lang/String;

    #calls: Lcom/htc/sdm/provider/SDMProvider;->generateCreateTableSql(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2, v3}, Lcom/htc/sdm/provider/SDMProvider;->access$100(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1229
    if-eqz v0, :cond_b

    .line 1231
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1239
    :cond_b
    const-string v1, "notificationInfo"

    sget-object v2, Lcom/htc/sdm/provider/SDMProvider;->COLUMN_SOUNDSET_INFO:[Ljava/lang/String;

    invoke-static {}, Lcom/htc/sdm/provider/SDMProvider;->access$400()[Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/htc/sdm/provider/SDMProvider;->generateCreateTableSql(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2, v3}, Lcom/htc/sdm/provider/SDMProvider;->access$100(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1240
    if-eqz v0, :cond_c

    .line 1242
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1251
    :cond_c
    const-string v1, "alarm"

    sget-object v2, Lcom/htc/sdm/provider/SDMProvider;->COLUMN_SOUNDSET:[Ljava/lang/String;

    sget-object v3, Lcom/htc/sdm/provider/SDMProvider;->SOUNDSET_COLUMN_TYPE:[Ljava/lang/String;

    #calls: Lcom/htc/sdm/provider/SDMProvider;->generateCreateTableSql(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2, v3}, Lcom/htc/sdm/provider/SDMProvider;->access$100(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1252
    if-eqz v0, :cond_d

    .line 1254
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1262
    :cond_d
    const-string v1, "alarmInfo"

    sget-object v2, Lcom/htc/sdm/provider/SDMProvider;->COLUMN_SOUNDSET_INFO:[Ljava/lang/String;

    invoke-static {}, Lcom/htc/sdm/provider/SDMProvider;->access$400()[Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/htc/sdm/provider/SDMProvider;->generateCreateTableSql(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2, v3}, Lcom/htc/sdm/provider/SDMProvider;->access$100(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1263
    if-eqz v0, :cond_e

    .line 1265
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1274
    :cond_e
    const-string v1, "soundsetfromSD"

    sget-object v2, Lcom/htc/sdm/provider/SDMProvider;->COLUMN_SOUNDSET_SD:[Ljava/lang/String;

    invoke-static {}, Lcom/htc/sdm/provider/SDMProvider;->access$600()[Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/htc/sdm/provider/SDMProvider;->generateCreateTableSql(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2, v3}, Lcom/htc/sdm/provider/SDMProvider;->access$100(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1275
    if-eqz v0, :cond_f

    .line 1277
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1286
    :cond_f
    #calls: Lcom/htc/sdm/provider/SDMProvider;->initData(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {p1}, Lcom/htc/sdm/provider/SDMProvider;->access$700(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1292
    .end local v0           #sql:Ljava/lang/String;
    :goto_0
    return-void

    .line 1288
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 1342
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 1300
    :try_start_0
    const-string v1, "Alter Table alarm add locale varchar(10)"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1301
    const-string v1, "Alter Table notification add locale varchar(10)"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1302
    const-string v1, "Alter Table ringtone add locale varchar(10)"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1303
    const-string v1, "Alter Table soundset add locale varchar(10)"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1337
    :goto_0
    return-void

    .line 1304
    :catch_0
    move-exception v0

    .line 1306
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
