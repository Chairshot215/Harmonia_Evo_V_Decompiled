.class Landroid/database/sqlite/SQLiteDatabase$DbMetaData;
.super Ljava/lang/Object;
.source "SQLiteDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/SQLiteDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DbMetaData"
.end annotation


# instance fields
.field final db:Landroid/database/sqlite/SQLiteDatabase;

.field final stackTrace:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/database/sqlite/SQLiteDatabase$DbMetaData;->db:Landroid/database/sqlite/SQLiteDatabase;

    iput-object p2, p0, Landroid/database/sqlite/SQLiteDatabase$DbMetaData;->stackTrace:Ljava/lang/Throwable;

    return-void
.end method
