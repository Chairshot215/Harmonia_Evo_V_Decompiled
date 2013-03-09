.class Lcom/htc/provider/settings/NotificationFlashLightProvider$DbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "NotificationFlashLightProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/provider/settings/NotificationFlashLightProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DbHelper"
.end annotation


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 1
    .parameter "context"
    .parameter "name"
    .parameter "factory"
    .parameter "version"

    .prologue
    .line 184
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/provider/settings/NotificationFlashLightProvider$DbHelper;->context:Landroid/content/Context;

    .line 185
    iput-object p1, p0, Lcom/htc/provider/settings/NotificationFlashLightProvider$DbHelper;->context:Landroid/content/Context;

    .line 186
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5
    .parameter "db"

    .prologue
    .line 195
    const/4 v1, 0x0

    .line 197
    .local v1, sql:Ljava/lang/String;
    const/4 v2, 0x1

    :try_start_0
    #calls: Lcom/htc/provider/settings/NotificationFlashLightProvider;->generateCreateTableSql(I)Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/provider/settings/NotificationFlashLightProvider;->access$000(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 198
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, e:Landroid/database/SQLException;
    const-string v2, "Provider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[NotificationFlashLight] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 210
    invoke-virtual {p0, p1}, Lcom/htc/provider/settings/NotificationFlashLightProvider$DbHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 211
    return-void
.end method
