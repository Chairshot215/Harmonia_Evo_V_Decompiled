.class public Lcom/htc/store/module/vo/SimilarityStructureItem;
.super Ljava/lang/Object;
.source "SimilarityStructureItem.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toContentValuesForUIUpdate(Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 2
    .parameter "similarItemId"

    .prologue
    .line 10
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 11
    .local v0, result:Landroid/content/ContentValues;
    const-string v1, "online_similar_item_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    return-object v0
.end method
