.class Lcom/htc/content/CarouselProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "CarouselProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/content/CarouselProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 340
    const-string v0, "carousel.db"

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 341
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 345
    const/4 v0, 0x0

    const/4 v1, 0x3

    #calls: Lcom/htc/content/CarouselProvider;->updateDatabase(Landroid/database/sqlite/SQLiteDatabase;II)V
    invoke-static {p1, v0, v1}, Lcom/htc/content/CarouselProvider;->access$000(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 346
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 350
    #calls: Lcom/htc/content/CarouselProvider;->updateDatabase(Landroid/database/sqlite/SQLiteDatabase;II)V
    invoke-static {p1, p2, p3}, Lcom/htc/content/CarouselProvider;->access$000(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 351
    return-void
.end method
