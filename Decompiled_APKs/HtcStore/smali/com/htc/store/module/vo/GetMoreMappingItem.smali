.class public Lcom/htc/store/module/vo/GetMoreMappingItem;
.super Ljava/lang/Object;
.source "GetMoreMappingItem.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mId:J

.field private mKey:Ljava/lang/String;

.field private mOnlineActionTypeOnClick:I

.field private mOnlineId:Ljava/lang/String;

.field private mOnlineLabel:Ljava/lang/String;

.field private mOnlinePageType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/htc/store/module/vo/GetMoreMappingItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/store/module/vo/GetMoreMappingItem;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/store/module/vo/GetMoreMappingItem;->mOnlineActionTypeOnClick:I

    .line 22
    return-void
.end method

.method public constructor <init>(Lcom/htc/store/module/vo/CategoryItem;)V
    .locals 1
    .parameter "categoryItem"

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/store/module/vo/GetMoreMappingItem;->mOnlineActionTypeOnClick:I

    .line 25
    invoke-virtual {p0, p1}, Lcom/htc/store/module/vo/GetMoreMappingItem;->copyFromCategoryItem(Lcom/htc/store/module/vo/CategoryItem;)V

    .line 26
    return-void
.end method

.method public static fromCursor(Landroid/database/Cursor;)Lcom/htc/store/module/vo/GetMoreMappingItem;
    .locals 3
    .parameter "cursor"

    .prologue
    .line 52
    new-instance v0, Lcom/htc/store/module/vo/GetMoreMappingItem;

    invoke-direct {v0}, Lcom/htc/store/module/vo/GetMoreMappingItem;-><init>()V

    .line 53
    .local v0, result:Lcom/htc/store/module/vo/GetMoreMappingItem;
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/htc/store/module/vo/GetMoreMappingItem;->mId:J

    .line 54
    const/4 v1, 0x1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/store/module/vo/GetMoreMappingItem;->mKey:Ljava/lang/String;

    .line 55
    const/4 v1, 0x2

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/store/module/vo/GetMoreMappingItem;->mOnlineId:Ljava/lang/String;

    .line 56
    const/4 v1, 0x3

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/store/module/vo/GetMoreMappingItem;->mOnlineLabel:Ljava/lang/String;

    .line 57
    const/4 v1, 0x4

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/htc/store/module/vo/GetMoreMappingItem;->mOnlineActionTypeOnClick:I

    .line 58
    const/4 v1, 0x5

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/htc/store/module/vo/GetMoreMappingItem;->mOnlinePageType:I

    .line 59
    return-object v0
.end method


# virtual methods
.method public copyFromCategoryItem(Lcom/htc/store/module/vo/CategoryItem;)V
    .locals 1
    .parameter "categoryItem"

    .prologue
    .line 29
    if-eqz p1, :cond_0

    .line 30
    invoke-virtual {p1}, Lcom/htc/store/module/vo/CategoryItem;->getOnlineId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/store/module/vo/GetMoreMappingItem;->mOnlineId:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Lcom/htc/store/module/vo/CategoryItem;->getOnlineLabel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/store/module/vo/GetMoreMappingItem;->mOnlineLabel:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Lcom/htc/store/module/vo/CategoryItem;->getOnlineActionTypeOnClick()I

    move-result v0

    iput v0, p0, Lcom/htc/store/module/vo/GetMoreMappingItem;->mOnlineActionTypeOnClick:I

    .line 33
    invoke-virtual {p1}, Lcom/htc/store/module/vo/CategoryItem;->getOnlinePageType()I

    move-result v0

    iput v0, p0, Lcom/htc/store/module/vo/GetMoreMappingItem;->mOnlinePageType:I

    .line 35
    :cond_0
    return-void
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/htc/store/module/vo/GetMoreMappingItem;->mId:J

    return-wide v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/htc/store/module/vo/GetMoreMappingItem;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getOnlineActionTypeOnClick()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/htc/store/module/vo/GetMoreMappingItem;->mOnlineActionTypeOnClick:I

    return v0
.end method

.method public getOnlineId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/store/module/vo/GetMoreMappingItem;->mOnlineId:Ljava/lang/String;

    return-object v0
.end method

.method public getOnlineLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/store/module/vo/GetMoreMappingItem;->mOnlineLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getOnlinePageType()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/htc/store/module/vo/GetMoreMappingItem;->mOnlinePageType:I

    return v0
.end method

.method public printContent()V
    .locals 4

    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .local v0, sb:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/store/module/vo/GetMoreMappingItem;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mKey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/store/module/vo/GetMoreMappingItem;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOnlineId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/store/module/vo/GetMoreMappingItem;->mOnlineId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOnlineLabel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/store/module/vo/GetMoreMappingItem;->mOnlineLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOnlineActionTypeOnClick="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/store/module/vo/GetMoreMappingItem;->mOnlineActionTypeOnClick:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOnlinePageType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/store/module/vo/GetMoreMappingItem;->mOnlinePageType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    sget-object v1, Lcom/htc/store/module/vo/GetMoreMappingItem;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .parameter "key"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/htc/store/module/vo/GetMoreMappingItem;->mKey:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setOnlineActionTypeOnClick(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 107
    iput p1, p0, Lcom/htc/store/module/vo/GetMoreMappingItem;->mOnlineActionTypeOnClick:I

    .line 108
    return-void
.end method

.method public setOnlineId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/htc/store/module/vo/GetMoreMappingItem;->mOnlineId:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setOnlineLabel(Ljava/lang/String;)V
    .locals 0
    .parameter "label"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/htc/store/module/vo/GetMoreMappingItem;->mOnlineLabel:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setOnlinePageType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 115
    iput p1, p0, Lcom/htc/store/module/vo/GetMoreMappingItem;->mOnlinePageType:I

    .line 116
    return-void
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 63
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 65
    .local v0, result:Landroid/content/ContentValues;
    const-string v1, "key"

    iget-object v2, p0, Lcom/htc/store/module/vo/GetMoreMappingItem;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v1, "online_id"

    iget-object v2, p0, Lcom/htc/store/module/vo/GetMoreMappingItem;->mOnlineId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v1, "online_item_label"

    iget-object v2, p0, Lcom/htc/store/module/vo/GetMoreMappingItem;->mOnlineLabel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v1, "online_action_type_on_click"

    iget v2, p0, Lcom/htc/store/module/vo/GetMoreMappingItem;->mOnlineActionTypeOnClick:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 69
    const-string v1, "online_page_type"

    iget v2, p0, Lcom/htc/store/module/vo/GetMoreMappingItem;->mOnlinePageType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 71
    return-object v0
.end method
