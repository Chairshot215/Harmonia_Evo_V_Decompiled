.class final Lcom/htc/opensense/snprovider/SocialNetworkProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SocialNetworkProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/snprovider/SocialNetworkProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DatabaseHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense/snprovider/SocialNetworkProvider;


# direct methods
.method public constructor <init>(Lcom/htc/opensense/snprovider/SocialNetworkProvider;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/htc/opensense/snprovider/SocialNetworkProvider$DatabaseHelper;->this$0:Lcom/htc/opensense/snprovider/SocialNetworkProvider;

    .line 70
    const-string v0, "SocialNetwork.db"

    const/4 v1, 0x0

    const/16 v2, 0xd

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 71
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 78
    :try_start_0
    const-string v1, "CREATE TABLE user_hash (_id INTEGER PRIMARY KEY AUTOINCREMENT, user_id TEXT, account_name TEXT, account_type TEXT,user_hash INTEGER NOT NULL);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 80
    const-string v1, "SocialNetworkProvider"

    const-string v2, "populating table and data OK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, sqle:Landroid/database/SQLException;
    throw v0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .parameter "db"
    .parameter "oldV"
    .parameter "newV"

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lcom/htc/opensense/snprovider/SocialNetworkProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 96
    return-void
.end method
