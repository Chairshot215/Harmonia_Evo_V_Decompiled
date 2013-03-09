.class final Lcom/htc/providers/uploads/UploadProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "UploadProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/providers/uploads/UploadProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DatabaseHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/providers/uploads/UploadProvider;


# direct methods
.method public constructor <init>(Lcom/htc/providers/uploads/UploadProvider;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/htc/providers/uploads/UploadProvider$DatabaseHelper;->this$0:Lcom/htc/providers/uploads/UploadProvider;

    .line 89
    const-string v0, "uploads.db"

    const/4 v1, 0x0

    const/16 v2, 0x2d

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 90
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 98
    const-string v0, "UploadProvider"

    const-string v1, "populating new database"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lcom/htc/providers/uploads/UploadProvider$DatabaseHelper;->this$0:Lcom/htc/providers/uploads/UploadProvider;

    #calls: Lcom/htc/providers/uploads/UploadProvider;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {v0, p1}, Lcom/htc/providers/uploads/UploadProvider;->access$000(Lcom/htc/providers/uploads/UploadProvider;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 101
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .parameter "db"
    .parameter "oldV"
    .parameter "newV"

    .prologue
    .line 113
    const-string v0, "UploadProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading downloads database from version "

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

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v0, p0, Lcom/htc/providers/uploads/UploadProvider$DatabaseHelper;->this$0:Lcom/htc/providers/uploads/UploadProvider;

    #calls: Lcom/htc/providers/uploads/UploadProvider;->dropTable(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {v0, p1}, Lcom/htc/providers/uploads/UploadProvider;->access$100(Lcom/htc/providers/uploads/UploadProvider;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 116
    iget-object v0, p0, Lcom/htc/providers/uploads/UploadProvider$DatabaseHelper;->this$0:Lcom/htc/providers/uploads/UploadProvider;

    #calls: Lcom/htc/providers/uploads/UploadProvider;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {v0, p1}, Lcom/htc/providers/uploads/UploadProvider;->access$000(Lcom/htc/providers/uploads/UploadProvider;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 117
    return-void
.end method
