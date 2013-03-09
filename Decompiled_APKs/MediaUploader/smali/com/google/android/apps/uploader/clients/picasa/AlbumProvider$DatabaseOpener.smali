.class Lcom/google/android/apps/uploader/clients/picasa/AlbumProvider$DatabaseOpener;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "AlbumProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/uploader/clients/picasa/AlbumProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseOpener"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 141
    const-string v0, "picasa"

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 142
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter

    .prologue
    .line 146
    const-string v0, "MediaUploader"

    const-string v1, "Creating db."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const-string v0, "CREATE TABLE albums (_id TEXT PRIMARY KEY, title TEXT, account TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 156
    new-instance v0, Lcom/google/android/apps/uploader/clients/picasa/Album;

    const/4 v1, 0x0

    const-string v2, "0"

    invoke-static {}, Lcom/google/android/apps/uploader/clients/picasa/AlbumProvider;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/uploader/clients/picasa/Album;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v1, "albums"

    const-string v2, "_id"

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/clients/picasa/Album;->toContentValues()Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 158
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 163
    const-string v0, "DROP TABLE IF EXISTS albums"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0, p1}, Lcom/google/android/apps/uploader/clients/picasa/AlbumProvider$DatabaseOpener;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 165
    return-void
.end method
