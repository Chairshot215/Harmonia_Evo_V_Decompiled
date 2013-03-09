.class public Lcom/htc/store/module/vo/ImageCacheMappingItem;
.super Ljava/lang/Object;
.source "ImageCacheMappingItem.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mExpiredTime:J

.field private mId:J

.field private mType:I

.field private mURL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/htc/store/module/vo/ImageCacheMappingItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/store/module/vo/ImageCacheMappingItem;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/store/module/vo/ImageCacheMappingItem;->mExpiredTime:J

    .line 20
    return-void
.end method

.method public static fromCursor(Landroid/database/Cursor;)Lcom/htc/store/module/vo/ImageCacheMappingItem;
    .locals 3
    .parameter "cursor"

    .prologue
    .line 35
    new-instance v0, Lcom/htc/store/module/vo/ImageCacheMappingItem;

    invoke-direct {v0}, Lcom/htc/store/module/vo/ImageCacheMappingItem;-><init>()V

    .line 36
    .local v0, result:Lcom/htc/store/module/vo/ImageCacheMappingItem;
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/htc/store/module/vo/ImageCacheMappingItem;->mId:J

    .line 37
    const/4 v1, 0x1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/htc/store/module/vo/ImageCacheMappingItem;->mType:I

    .line 38
    const/4 v1, 0x2

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/store/module/vo/ImageCacheMappingItem;->mURL:Ljava/lang/String;

    .line 39
    const/4 v1, 0x3

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/htc/store/module/vo/ImageCacheMappingItem;->mExpiredTime:J

    .line 40
    return-object v0
.end method


# virtual methods
.method public getExpiredTime()J
    .locals 2

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/htc/store/module/vo/ImageCacheMappingItem;->mExpiredTime:J

    return-wide v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/htc/store/module/vo/ImageCacheMappingItem;->mId:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/htc/store/module/vo/ImageCacheMappingItem;->mType:I

    return v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/htc/store/module/vo/ImageCacheMappingItem;->mURL:Ljava/lang/String;

    return-object v0
.end method

.method public printContent()V
    .locals 4

    .prologue
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .local v0, sb:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/store/module/vo/ImageCacheMappingItem;->mId:J

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

    const-string v2, "mType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/store/module/vo/ImageCacheMappingItem;->mType:I

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

    const-string v2, "mURL="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/store/module/vo/ImageCacheMappingItem;->mURL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mExpiredTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/store/module/vo/ImageCacheMappingItem;->mExpiredTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    sget-object v1, Lcom/htc/store/module/vo/ImageCacheMappingItem;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    return-void
.end method

.method public setExpiredTime(J)V
    .locals 0
    .parameter "timestamp"

    .prologue
    .line 77
    iput-wide p1, p0, Lcom/htc/store/module/vo/ImageCacheMappingItem;->mExpiredTime:J

    .line 78
    return-void
.end method

.method public setId(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 57
    iput-wide p1, p0, Lcom/htc/store/module/vo/ImageCacheMappingItem;->mId:J

    .line 58
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 65
    iput p1, p0, Lcom/htc/store/module/vo/ImageCacheMappingItem;->mType:I

    .line 66
    return-void
.end method

.method public setURL(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/htc/store/module/vo/ImageCacheMappingItem;->mURL:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 44
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 46
    .local v0, result:Landroid/content/ContentValues;
    const-string v1, "type"

    iget v2, p0, Lcom/htc/store/module/vo/ImageCacheMappingItem;->mType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 47
    const-string v1, "url"

    iget-object v2, p0, Lcom/htc/store/module/vo/ImageCacheMappingItem;->mURL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v1, "expired_time"

    iget-wide v2, p0, Lcom/htc/store/module/vo/ImageCacheMappingItem;->mExpiredTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 49
    return-object v0
.end method
