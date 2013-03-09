.class public Lcom/htc/store/module/vo/CategoryTTLItem;
.super Ljava/lang/Object;
.source "CategoryTTLItem.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCategoryId:J

.field private mId:J

.field private mOnlineTTL:J

.field private mRESTAPIType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/htc/store/module/vo/CategoryTTLItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/store/module/vo/CategoryTTLItem;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static fromCursor(Landroid/database/Cursor;)Lcom/htc/store/module/vo/CategoryTTLItem;
    .locals 3
    .parameter "cursor"

    .prologue
    .line 34
    new-instance v0, Lcom/htc/store/module/vo/CategoryTTLItem;

    invoke-direct {v0}, Lcom/htc/store/module/vo/CategoryTTLItem;-><init>()V

    .line 35
    .local v0, result:Lcom/htc/store/module/vo/CategoryTTLItem;
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/htc/store/module/vo/CategoryTTLItem;->mId:J

    .line 36
    const/4 v1, 0x1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/htc/store/module/vo/CategoryTTLItem;->mCategoryId:J

    .line 37
    const/4 v1, 0x2

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/htc/store/module/vo/CategoryTTLItem;->mRESTAPIType:I

    .line 38
    const/4 v1, 0x3

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/htc/store/module/vo/CategoryTTLItem;->mOnlineTTL:J

    .line 39
    return-object v0
.end method


# virtual methods
.method public getCategoryId()J
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/htc/store/module/vo/CategoryTTLItem;->mCategoryId:J

    return-wide v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/htc/store/module/vo/CategoryTTLItem;->mId:J

    return-wide v0
.end method

.method public getOnlineTTL()J
    .locals 2

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/htc/store/module/vo/CategoryTTLItem;->mOnlineTTL:J

    return-wide v0
.end method

.method public getRESTAPIType()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/htc/store/module/vo/CategoryTTLItem;->mRESTAPIType:I

    return v0
.end method

.method public printContent()V
    .locals 4

    .prologue
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .local v0, sb:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/store/module/vo/CategoryTTLItem;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCategoryId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/store/module/vo/CategoryTTLItem;->mCategoryId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRESTAPIType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/store/module/vo/CategoryTTLItem;->mRESTAPIType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOnlineTTL = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/store/module/vo/CategoryTTLItem;->mOnlineTTL:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    sget-object v1, Lcom/htc/store/module/vo/CategoryTTLItem;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    return-void
.end method

.method public setCategoryId(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 65
    iput-wide p1, p0, Lcom/htc/store/module/vo/CategoryTTLItem;->mCategoryId:J

    .line 66
    return-void
.end method

.method public setId(J)V
    .locals 0
    .parameter "id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 57
    iput-wide p1, p0, Lcom/htc/store/module/vo/CategoryTTLItem;->mId:J

    .line 58
    return-void
.end method

.method public setOnlineTTL(J)V
    .locals 0
    .parameter "ttl"

    .prologue
    .line 81
    iput-wide p1, p0, Lcom/htc/store/module/vo/CategoryTTLItem;->mOnlineTTL:J

    .line 82
    return-void
.end method

.method public setRESTAPIType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 73
    iput p1, p0, Lcom/htc/store/module/vo/CategoryTTLItem;->mRESTAPIType:I

    .line 74
    return-void
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 43
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 45
    .local v0, result:Landroid/content/ContentValues;
    const-string v1, "category_id"

    iget-wide v2, p0, Lcom/htc/store/module/vo/CategoryTTLItem;->mCategoryId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 46
    const-string v1, "rest_api_type"

    iget v2, p0, Lcom/htc/store/module/vo/CategoryTTLItem;->mRESTAPIType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 47
    const-string v1, "online_ttl"

    iget-wide v2, p0, Lcom/htc/store/module/vo/CategoryTTLItem;->mOnlineTTL:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 48
    return-object v0
.end method
