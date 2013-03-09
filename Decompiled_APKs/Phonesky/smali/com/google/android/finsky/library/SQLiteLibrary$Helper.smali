.class Lcom/google/android/finsky/library/SQLiteLibrary$Helper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SQLiteLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/library/SQLiteLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Helper"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 136
    const-string v0, "library.db"

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 137
    return-void
.end method

.method private recreateDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "sqLiteDatabase"

    .prologue
    .line 165
    :try_start_0
    const-string v0, "DROP TABLE ownership"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/library/SQLiteLibrary$Helper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 169
    return-void

    .line 166
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "sqLiteDatabase"

    .prologue
    .line 141
    const-string v0, "CREATE TABLE ownership (account STRING, library_id STRING, backend INTEGER, doc_id STRING, doc_type INTEGER, offer_type INTEGER, document_hash INTEGER, app_certificate_hash STRING, app_refund_pre_delivery_endtime_ms INTEGER, app_refund_post_delivery_window_ms INTEGER, subs_auto_renewing INTEGER, subs_initiation_time INTEGER, subs_valid_until_time INTEGER, subs_trial_until_time INTEGER, inapp_purchase_data STRING, inapp_signature STRING, PRIMARY KEY (account, library_id, backend, doc_id, doc_type, offer_type))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4
    .parameter "database"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 158
    const-string v0, "Downgrading Library from %d to %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    invoke-direct {p0, p1}, Lcom/google/android/finsky/library/SQLiteLibrary$Helper;->recreateDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 161
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "sqLiteDatabase"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 146
    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    .line 148
    const-string v0, "ALTER TABLE ownership ADD COLUMN inapp_purchase_data STRING"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 149
    const-string v0, "ALTER TABLE ownership ADD COLUMN inapp_signature STRING"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 154
    :goto_0
    return-void

    .line 153
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/finsky/library/SQLiteLibrary$Helper;->recreateDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0
.end method
