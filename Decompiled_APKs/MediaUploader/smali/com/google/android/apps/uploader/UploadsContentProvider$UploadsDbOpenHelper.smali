.class Lcom/google/android/apps/uploader/UploadsContentProvider$UploadsDbOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "UploadsContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/uploader/UploadsContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UploadsDbOpenHelper"
.end annotation


# static fields
.field private static final CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE uploads (_id integer primary key, file_uri text not null, mime_type text not null, url text not null, request_template text not null, destination text not null, name text not null, bytes_total integer not null, bytes_uploaded integer not null, state integer not null, state_detail text, thumbnail blob, account text, auth_token_type text, upload_uri text);"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 238
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 239
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter

    .prologue
    .line 243
    const-string v0, "MediaUploader"

    const-string v1, "Creating database"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const-string v0, "CREATE TABLE uploads (_id integer primary key, file_uri text not null, mime_type text not null, url text not null, request_template text not null, destination text not null, name text not null, bytes_total integer not null, bytes_uploaded integer not null, state integer not null, state_detail text, thumbnail blob, account text, auth_token_type text, upload_uri text);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 245
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 249
    const-string v0, "MediaUploader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading database from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const-string v0, "DROP TABLE IF EXISTS uploads"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0, p1}, Lcom/google/android/apps/uploader/UploadsContentProvider$UploadsDbOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 253
    return-void
.end method
