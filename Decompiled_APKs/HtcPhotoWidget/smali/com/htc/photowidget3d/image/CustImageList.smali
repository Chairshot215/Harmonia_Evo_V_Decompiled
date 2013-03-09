.class public Lcom/htc/photowidget3d/image/CustImageList;
.super Lcom/htc/photowidget3d/image/ImageList;
.source "CustImageList.java"


# instance fields
.field protected mWhereArgs:[Ljava/lang/String;

.field protected mWhereClause:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .parameter "resolver"
    .parameter "imageUri"
    .parameter "sort"
    .parameter "bucketId"
    .parameter "whereClause"
    .parameter "whereArgs"

    .prologue
    .line 27
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/photowidget3d/image/ImageList;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;Z)V

    .line 29
    iput-object p5, p0, Lcom/htc/photowidget3d/image/CustImageList;->mWhereClause:Ljava/lang/String;

    .line 30
    iput-object p6, p0, Lcom/htc/photowidget3d/image/CustImageList;->mWhereArgs:[Ljava/lang/String;

    .line 32
    invoke-virtual {p0}, Lcom/htc/photowidget3d/image/CustImageList;->doCreateCursor()V

    .line 33
    return-void
.end method


# virtual methods
.method protected whereClause()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/photowidget3d/image/CustImageList;->mWhereClause:Ljava/lang/String;

    return-object v0
.end method

.method protected whereClauseArgs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/photowidget3d/image/CustImageList;->mWhereArgs:[Ljava/lang/String;

    return-object v0
.end method
