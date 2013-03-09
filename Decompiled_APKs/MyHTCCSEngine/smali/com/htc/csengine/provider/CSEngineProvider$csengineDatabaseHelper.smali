.class Lcom/htc/csengine/provider/CSEngineProvider$csengineDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "CSEngineProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/csengine/provider/CSEngineProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "csengineDatabaseHelper"
.end annotation


# static fields
.field private static final DATABASE_CREATE:Ljava/lang/String; = "create table csengine (_id integer primary key autoincrement, date LONG, service TEXT, imc TEXT, cms TEXT, status TEXT, store TEXT, personalize TEXT, setup TEXT, authkey TEXT, ttl LONG, storettl LONG, personalizettl LONG, email TEXT, handsetDeviceId TEXT, hashpw TEXT, authttl TEXT);"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0
    .parameter "context"
    .parameter "name"
    .parameter "factory"
    .parameter "version"

    .prologue
    .line 97
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 98
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 102
    const-string v0, "create table csengine (_id integer primary key autoincrement, date LONG, service TEXT, imc TEXT, cms TEXT, status TEXT, store TEXT, personalize TEXT, setup TEXT, authkey TEXT, ttl LONG, storettl LONG, personalizettl LONG, email TEXT, handsetDeviceId TEXT, hashpw TEXT, authttl TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 107
    const-string v0, "cslib"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "csEngineProviderUpgrading database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which will destroy all old data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const-string v0, "DROP TABLE IF EXISTS csengine"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0, p1}, Lcom/htc/csengine/provider/CSEngineProvider$csengineDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 112
    return-void
.end method
