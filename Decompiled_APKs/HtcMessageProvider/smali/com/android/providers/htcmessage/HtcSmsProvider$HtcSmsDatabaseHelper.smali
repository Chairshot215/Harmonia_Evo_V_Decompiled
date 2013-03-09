.class Lcom/android/providers/htcmessage/HtcSmsProvider$HtcSmsDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "HtcSmsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/htcmessage/HtcSmsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HtcSmsDatabaseHelper"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 242
    const-string v0, "htcsmsdb.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 243
    iput-object p1, p0, Lcom/android/providers/htcmessage/HtcSmsProvider$HtcSmsDatabaseHelper;->mContext:Landroid/content/Context;

    .line 244
    return-void
.end method

.method private createPendingListTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 247
    const-string v0, "CREATE TABLE pending_list (_id  INTEGER PRIMARY KEY AUTOINCREMENT, tp_mr INTEGER DEFAULT -1, action TEXT, uri TEXT, pkg_name TEXT, class_name TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 255
    return-void
.end method

.method private logd(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 258
    const-string v0, "HtcSmsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcSmsDatabaseHelper]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 263
    const-string v0, "onCreate>"

    invoke-direct {p0, v0}, Lcom/android/providers/htcmessage/HtcSmsProvider$HtcSmsDatabaseHelper;->logd(Ljava/lang/String;)V

    .line 264
    invoke-direct {p0, p1}, Lcom/android/providers/htcmessage/HtcSmsProvider$HtcSmsDatabaseHelper;->createPendingListTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 265
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "currentVersion"

    .prologue
    .line 269
    const-string v0, "onUpgrade>"

    invoke-direct {p0, v0}, Lcom/android/providers/htcmessage/HtcSmsProvider$HtcSmsDatabaseHelper;->logd(Ljava/lang/String;)V

    .line 270
    return-void
.end method
