.class public Lcom/htc/android/htcime/provider/HTCCIMEProvider;
.super Landroid/content/ContentProvider;
.source "HTCCIMEProvider.java"


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "htc_cime"

.field public static final COLUMN_ID:Ljava/lang/String; = "_id"

.field private static final CONTENT_URI:Landroid/net/Uri; = null

.field private static final GET_CHINESE_SPELLING:I = 0x4

.field private static final GET_NEXT_PREDICTION:I = 0x5

.field private static final GET_UDB_STRING:I = 0x7

.field private static final GET_UDB_TIMESTAMP:I = 0x6

.field private static final HWKB_LAYOUT_MAPPING:I = 0xa

.field private static final INFO:Z = true

.field private static final MERGE_UDB_FILE:I = 0x9

.field private static final TAG:Ljava/lang/String; = "HTCIMEProvider"

.field private static final WRITE_UDB_STRING:I = 0x8

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field mCPXT9ForProvider:Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 59
    const-string v0, "content://htc_cime"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/htcime/provider/HTCCIMEProvider;->CONTENT_URI:Landroid/net/Uri;

    .line 323
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/htc/android/htcime/provider/HTCCIMEProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 324
    sget-object v0, Lcom/htc/android/htcime/provider/HTCCIMEProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "htc_cime"

    const-string v2, "get_chinese_spelling"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 325
    sget-object v0, Lcom/htc/android/htcime/provider/HTCCIMEProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "htc_cime"

    const-string v2, "get_chinese_next_prediction"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 326
    sget-object v0, Lcom/htc/android/htcime/provider/HTCCIMEProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "htc_cime"

    const-string v2, "get_chinese_udb_timestamp"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 327
    sget-object v0, Lcom/htc/android/htcime/provider/HTCCIMEProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "htc_cime"

    const-string v2, "get_chinese_udb_string"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 328
    sget-object v0, Lcom/htc/android/htcime/provider/HTCCIMEProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "htc_cime"

    const-string v2, "write_chinese_udb_string"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 329
    sget-object v0, Lcom/htc/android/htcime/provider/HTCCIMEProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "htc_cime"

    const-string v2, "merge_chinese_udb_file"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 330
    sget-object v0, Lcom/htc/android/htcime/provider/HTCCIMEProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "htc_cime"

    const-string v2, "hwkb_layout_mapping/*"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 331
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/htcime/provider/HTCCIMEProvider;->mCPXT9ForProvider:Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;

    return-void
.end method

.method public static getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 335
    sget-object v0, Lcom/htc/android/htcime/provider/HTCCIMEProvider;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method private hwkbLayout([I[Ljava/lang/String;)Landroid/database/MatrixCursor;
    .locals 10
    .parameter "keycodes"
    .parameter "layout"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 340
    array-length v5, p1

    array-length v6, p2

    if-eq v5, v6, :cond_1

    .line 341
    const-string v5, "HTCIMEProvider"

    const-string v6, "Layout array length inconsistent. No mapping for this layout."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const/4 v3, 0x0

    .line 355
    :cond_0
    return-object v3

    .line 345
    :cond_1
    const/4 v5, 0x3

    new-array v0, v5, [Ljava/lang/String;

    const-string v5, "KEYCODE"

    aput-object v5, v0, v7

    const-string v5, "CORR_UCODE"

    aput-object v5, v0, v8

    const-string v5, "_id"

    aput-object v5, v0, v9

    .line 346
    .local v0, HWKB_LAYOUT_COLUMNS:[Ljava/lang/String;
    new-instance v3, Landroid/database/MatrixCursor;

    invoke-direct {v3, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 347
    .local v3, mac:Landroid/database/MatrixCursor;
    array-length v1, p1

    .line 348
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 349
    array-length v5, v0

    new-array v4, v5, [Ljava/lang/Object;

    .line 350
    .local v4, value:[Ljava/lang/Object;
    aget v5, p1, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    .line 351
    aget-object v5, p2, v2

    aput-object v5, v4, v8

    .line 352
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    .line 353
    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 348
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private queryChineseNextPredition([Ljava/lang/String;I)Landroid/database/MatrixCursor;
    .locals 1
    .parameter "selectionArgs"
    .parameter "lang_spell_type"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/htc/android/htcime/provider/HTCCIMEProvider;->mCPXT9ForProvider:Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->queryChineseNextPredition([Ljava/lang/String;I)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0
.end method

.method private queryChineseSpelling([Ljava/lang/String;I)Landroid/database/MatrixCursor;
    .locals 1
    .parameter "selectionArgs"
    .parameter "lang_spell_type"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/htc/android/htcime/provider/HTCCIMEProvider;->mCPXT9ForProvider:Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->queryChineseSpelling([Ljava/lang/String;I)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0
.end method

.method private queryUDBString(I)Landroid/database/MatrixCursor;
    .locals 1
    .parameter "udb_type"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/htc/android/htcime/provider/HTCCIMEProvider;->mCPXT9ForProvider:Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;

    invoke-virtual {v0, p1}, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->queryUDBString(I)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0
.end method

.method private queryUDBTimestamp(I)Landroid/database/MatrixCursor;
    .locals 1
    .parameter "udb_type"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/htc/android/htcime/provider/HTCCIMEProvider;->mCPXT9ForProvider:Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;

    invoke-virtual {v0, p1}, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->queryUDBTimestamp(I)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .parameter "uri"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 277
    new-instance v0, Landroid/database/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not support delete. Failed to delete row in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "uri"

    .prologue
    .line 230
    sget-object v0, Lcom/htc/android/htcime/provider/HTCCIMEProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 253
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :pswitch_0
    const-string v0, "vnd.android.cursor.dir/vnd.google.userword"

    .line 250
    :goto_0
    return-object v0

    .line 235
    :pswitch_1
    const-string v0, "vnd.android.cursor.dir/vnd.google.userword"

    goto :goto_0

    .line 238
    :pswitch_2
    const-string v0, "vnd.android.cursor.dir/vnd.google.userword"

    goto :goto_0

    .line 241
    :pswitch_3
    const-string v0, "vnd.android.cursor.dir/vnd.google.userword"

    goto :goto_0

    .line 244
    :pswitch_4
    const-string v0, "vnd.android.cursor.dir/vnd.google.userword"

    goto :goto_0

    .line 247
    :pswitch_5
    const-string v0, "vnd.android.cursor.dir/vnd.google.userword"

    goto :goto_0

    .line 250
    :pswitch_6
    const-string v0, "vnd.android.cursor.dir/vnd.google.userword"

    goto :goto_0

    .line 230
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3
    .parameter "uri"
    .parameter "initialValues"

    .prologue
    .line 264
    new-instance v0, Landroid/database/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not support insert. Failed to insert row into "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/android/htcime/provider/HTCCIMEProvider;->mCPXT9ForProvider:Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;

    invoke-virtual {p0}, Lcom/htc/android/htcime/provider/HTCCIMEProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/android/htcime/provider/HTCCIMEProvider;->mCPXT9ForProvider:Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;

    .line 76
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 82
    const-string v9, "HTCIMEProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[query] coming request!  URI="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const/4 v1, 0x0

    .line 86
    .local v1, c:Landroid/database/Cursor;
    sget-object v9, Lcom/htc/android/htcime/provider/HTCCIMEProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v9, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 202
    :pswitch_0
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown URI "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 89
    :pswitch_1
    const-string v9, "HTCIMEProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[query] GET_CHINESE_SPELLING sortOrder="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p5

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const/4 v3, 0x1

    .line 94
    .local v3, lang_spell_type:I
    if-nez p5, :cond_0

    const/4 v3, 0x1

    .line 101
    :goto_0
    move-object/from16 v0, p4

    invoke-direct {p0, v0, v3}, Lcom/htc/android/htcime/provider/HTCCIMEProvider;->queryChineseSpelling([Ljava/lang/String;I)Landroid/database/MatrixCursor;

    move-result-object v1

    .end local v3           #lang_spell_type:I
    :goto_1
    :pswitch_2
    move-object v9, v1

    .line 205
    :goto_2
    return-object v9

    .line 94
    .restart local v3       #lang_spell_type:I
    :cond_0
    :try_start_0
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 96
    :catch_0
    move-exception v2

    .line 98
    .local v2, e:Ljava/lang/NumberFormatException;
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " parse int error!!  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 108
    .end local v2           #e:Ljava/lang/NumberFormatException;
    .end local v3           #lang_spell_type:I
    :pswitch_3
    const-string v9, "HTCIMEProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[query] GET_CHINESE_NEXT_PREDICTION sortOrder="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p5

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const/4 v4, 0x1

    .line 113
    .local v4, lang_type:I
    if-nez p5, :cond_1

    const/4 v4, 0x1

    .line 120
    :goto_3
    const/4 v9, 0x1

    if-lt v4, v9, :cond_2

    const/4 v9, 0x2

    if-gt v4, v9, :cond_2

    .line 122
    :goto_4
    move-object/from16 v0, p4

    invoke-direct {p0, v0, v4}, Lcom/htc/android/htcime/provider/HTCCIMEProvider;->queryChineseNextPredition([Ljava/lang/String;I)Landroid/database/MatrixCursor;

    move-result-object v1

    .line 124
    goto :goto_1

    .line 113
    :cond_1
    :try_start_1
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    goto :goto_3

    .line 115
    :catch_1
    move-exception v2

    .line 117
    .restart local v2       #e:Ljava/lang/NumberFormatException;
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " parse int error!!  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 120
    .end local v2           #e:Ljava/lang/NumberFormatException;
    :cond_2
    const/4 v4, 0x1

    goto :goto_4

    .line 148
    .end local v4           #lang_type:I
    :pswitch_4
    const/4 v8, -0x1

    .line 151
    .local v8, udb_type:I
    if-nez p5, :cond_3

    const/4 v8, 0x1

    .line 158
    :goto_5
    const/4 v9, -0x1

    if-ne v9, v8, :cond_4

    .line 159
    const/4 v9, 0x0

    goto :goto_2

    .line 151
    :cond_3
    :try_start_2
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v8

    goto :goto_5

    .line 153
    :catch_2
    move-exception v2

    .line 155
    .restart local v2       #e:Ljava/lang/NumberFormatException;
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " parse int error!!  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 161
    .end local v2           #e:Ljava/lang/NumberFormatException;
    :cond_4
    invoke-direct {p0, v8}, Lcom/htc/android/htcime/provider/HTCCIMEProvider;->queryUDBTimestamp(I)Landroid/database/MatrixCursor;

    move-result-object v1

    .line 164
    goto/16 :goto_1

    .line 169
    .end local v8           #udb_type:I
    :pswitch_5
    const/16 v9, 0x24

    new-array v5, v9, [I

    fill-array-data v5, :array_0

    .line 180
    .local v5, layout_keycode:[I
    invoke-virtual {p0}, Lcom/htc/android/htcime/provider/HTCCIMEProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 181
    .local v6, r:Landroid/content/res/Resources;
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    .line 183
    .local v7, requested_layout:Ljava/lang/String;
    const-string v9, "ell"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 184
    const v9, 0x7f070049

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v5, v9}, Lcom/htc/android/htcime/provider/HTCCIMEProvider;->hwkbLayout([I[Ljava/lang/String;)Landroid/database/MatrixCursor;

    move-result-object v1

    goto/16 :goto_1

    .line 186
    :cond_5
    const-string v9, "nor"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 187
    const v9, 0x7f07004a

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v5, v9}, Lcom/htc/android/htcime/provider/HTCCIMEProvider;->hwkbLayout([I[Ljava/lang/String;)Landroid/database/MatrixCursor;

    move-result-object v1

    goto/16 :goto_1

    .line 189
    :cond_6
    const-string v9, "rus"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 190
    const v9, 0x7f07004b

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v5, v9}, Lcom/htc/android/htcime/provider/HTCCIMEProvider;->hwkbLayout([I[Ljava/lang/String;)Landroid/database/MatrixCursor;

    move-result-object v1

    goto/16 :goto_1

    .line 192
    :cond_7
    const-string v9, "bopomo"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 193
    const v9, 0x7f07004c

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v5, v9}, Lcom/htc/android/htcime/provider/HTCCIMEProvider;->hwkbLayout([I[Ljava/lang/String;)Landroid/database/MatrixCursor;

    move-result-object v1

    goto/16 :goto_1

    .line 196
    :cond_8
    const v9, 0x7f070048

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v5, v9}, Lcom/htc/android/htcime/provider/HTCCIMEProvider;->hwkbLayout([I[Ljava/lang/String;)Landroid/database/MatrixCursor;

    move-result-object v1

    goto/16 :goto_1

    .line 86
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 169
    :array_0
    .array-data 0x4
        0x1dt 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x23t 0x0t 0x0t 0x0t
        0x24t 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
        0x26t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x29t 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
        0x2bt 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x2et 0x0t 0x0t 0x0t
        0x2ft 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x33t 0x0t 0x0t 0x0t
        0x34t 0x0t 0x0t 0x0t
        0x35t 0x0t 0x0t 0x0t
        0x36t 0x0t 0x0t 0x0t
        0x4dt 0x0t 0x0t 0x0t
        0xe0t 0x0t 0x0t 0x0t
        0x4at 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0xd8t 0x0t 0x0t 0x0t
        0xd9t 0x0t 0x0t 0x0t
        0xdct 0x0t 0x0t 0x0t
        0xddt 0x0t 0x0t 0x0t
        0xdet 0x0t 0x0t 0x0t
        0xdft 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "uri"
    .parameter "values"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 282
    const-string v3, "HTCIMEProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[update] coming request!  URI="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    sget-object v3, Lcom/htc/android/htcime/provider/HTCCIMEProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 316
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown URI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 290
    :pswitch_0
    :try_start_0
    const-string v3, "udb_type"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 291
    .local v2, udb_type:I
    const-string v3, "udb_string"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 293
    .local v1, udb_string:Ljava/lang/String;
    const-string v3, "[20110117]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[WRITE_UDB_STRING](udb_type,udb_string)=("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v3, p0, Lcom/htc/android/htcime/provider/HTCCIMEProvider;->mCPXT9ForProvider:Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;

    invoke-virtual {v3, v2, v1}, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->writeUDBString(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    .end local v1           #udb_string:Ljava/lang/String;
    .end local v2           #udb_type:I
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 296
    :catch_0
    move-exception v0

    .line 297
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "HTCIMEProvider"

    const-string v4, "[WRITE_UDB_STRING] convertion error!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 305
    .end local v0           #e:Ljava/lang/NullPointerException;
    :pswitch_1
    :try_start_1
    const-string v3, "udb_type"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 307
    .restart local v2       #udb_type:I
    const-string v3, "[20110117]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[MERGE_UDB_FILE]udb_type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v3, p0, Lcom/htc/android/htcime/provider/HTCCIMEProvider;->mCPXT9ForProvider:Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;

    invoke-virtual {v3, v2}, Lcom/htc/android/htcime/XT9IME/util/CPXT9ForProvider;->mergeUDBFile(I)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 310
    .end local v2           #udb_type:I
    :catch_1
    move-exception v0

    .line 311
    .restart local v0       #e:Ljava/lang/NullPointerException;
    const-string v3, "HTCIMEProvider"

    const-string v4, "[MERGE_UDB_FILE] convertion error!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 284
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
