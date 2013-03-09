.class public Lcom/htc/store/module/vo/MyActivityItem;
.super Ljava/lang/Object;
.source "MyActivityItem.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mId:J

.field private mIsDisplay:I

.field private mItemIcon:[B

.field private mItemIconUrl:Ljava/lang/String;

.field private mItemLabel:Ljava/lang/String;

.field private mItemPackageName:Ljava/lang/String;

.field private mItemVersionCode:I

.field private mItemVersionName:Ljava/lang/String;

.field private mOnlineContentType:Ljava/lang/String;

.field private mOnlineIsPurchased:I

.field private mOnlineItemId:Ljava/lang/String;

.field private mOnlineMarkedId:Ljava/lang/String;

.field private mOnlineV1Id:Ljava/lang/String;

.field private mStatus:I

.field private mTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/htc/store/module/vo/MyActivityItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/store/module/vo/MyActivityItem;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput v0, p0, Lcom/htc/store/module/vo/MyActivityItem;->mItemVersionCode:I

    .line 34
    iput v0, p0, Lcom/htc/store/module/vo/MyActivityItem;->mIsDisplay:I

    .line 35
    return-void
.end method

.method public static fromCursor(Landroid/database/Cursor;)Lcom/htc/store/module/vo/MyActivityItem;
    .locals 4
    .parameter "cursor"

    .prologue
    const/16 v3, 0x8

    .line 61
    new-instance v0, Lcom/htc/store/module/vo/MyActivityItem;

    invoke-direct {v0}, Lcom/htc/store/module/vo/MyActivityItem;-><init>()V

    .line 62
    .local v0, result:Lcom/htc/store/module/vo/MyActivityItem;
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/htc/store/module/vo/MyActivityItem;->mId:J

    .line 63
    const/4 v1, 0x1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/store/module/vo/MyActivityItem;->mOnlineItemId:Ljava/lang/String;

    .line 64
    const/4 v1, 0x2

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/store/module/vo/MyActivityItem;->mOnlineMarkedId:Ljava/lang/String;

    .line 65
    const/4 v1, 0x3

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/store/module/vo/MyActivityItem;->mOnlineV1Id:Ljava/lang/String;

    .line 66
    const/4 v1, 0x4

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/store/module/vo/MyActivityItem;->mOnlineContentType:Ljava/lang/String;

    .line 67
    const/16 v1, 0xc

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/htc/store/module/vo/MyActivityItem;->mOnlineIsPurchased:I

    .line 68
    const/4 v1, 0x5

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/store/module/vo/MyActivityItem;->mItemPackageName:Ljava/lang/String;

    .line 69
    const/4 v1, 0x6

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/store/module/vo/MyActivityItem;->mItemLabel:Ljava/lang/String;

    .line 70
    const/4 v1, 0x7

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/store/module/vo/MyActivityItem;->mItemIconUrl:Ljava/lang/String;

    .line 71
    invoke-interface {p0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    iput-object v1, v0, Lcom/htc/store/module/vo/MyActivityItem;->mItemIcon:[B

    .line 74
    :cond_0
    const/16 v1, 0x9

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/store/module/vo/MyActivityItem;->mItemVersionName:Ljava/lang/String;

    .line 75
    const/16 v1, 0xa

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/htc/store/module/vo/MyActivityItem;->mItemVersionCode:I

    .line 76
    const/16 v1, 0xb

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/htc/store/module/vo/MyActivityItem;->mStatus:I

    .line 77
    const/16 v1, 0xd

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/htc/store/module/vo/MyActivityItem;->mTimestamp:J

    .line 78
    const/16 v1, 0xe

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/htc/store/module/vo/MyActivityItem;->mIsDisplay:I

    .line 79
    return-object v0
.end method


# virtual methods
.method public getId()J
    .locals 2

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/htc/store/module/vo/MyActivityItem;->mId:J

    return-wide v0
.end method

.method public getIsDisplay()I
    .locals 1

    .prologue
    .line 223
    iget v0, p0, Lcom/htc/store/module/vo/MyActivityItem;->mIsDisplay:I

    return v0
.end method

.method public getItemIcon()[B
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/htc/store/module/vo/MyActivityItem;->mItemIcon:[B

    return-object v0
.end method

.method public getItemIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/htc/store/module/vo/MyActivityItem;->mItemIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getItemLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/htc/store/module/vo/MyActivityItem;->mItemLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getItemPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/htc/store/module/vo/MyActivityItem;->mItemPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getItemVersionCode()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/htc/store/module/vo/MyActivityItem;->mItemVersionCode:I

    return v0
.end method

.method public getItemVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/htc/store/module/vo/MyActivityItem;->mItemVersionName:Ljava/lang/String;

    return-object v0
.end method

.method public getOnlineContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/htc/store/module/vo/MyActivityItem;->mOnlineContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getOnlineIsPurchased()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/htc/store/module/vo/MyActivityItem;->mOnlineIsPurchased:I

    return v0
.end method

.method public getOnlineItemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/htc/store/module/vo/MyActivityItem;->mOnlineItemId:Ljava/lang/String;

    return-object v0
.end method

.method public getOnlineMarkedId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/htc/store/module/vo/MyActivityItem;->mOnlineMarkedId:Ljava/lang/String;

    return-object v0
.end method

.method public getOnlineV1Id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/htc/store/module/vo/MyActivityItem;->mOnlineV1Id:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/htc/store/module/vo/MyActivityItem;->mStatus:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 215
    iget-wide v0, p0, Lcom/htc/store/module/vo/MyActivityItem;->mTimestamp:J

    return-wide v0
.end method

.method public printContent()V
    .locals 4

    .prologue
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .local v0, sb:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/store/module/vo/MyActivityItem;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOnlineItemId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/store/module/vo/MyActivityItem;->mOnlineItemId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOnlineMarkedId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/store/module/vo/MyActivityItem;->mOnlineMarkedId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    const-string v2, "mOnlineV1Id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/store/module/vo/MyActivityItem;->mOnlineV1Id:Ljava/lang/String;

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

    const-string v2, "mOnlineContentType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/store/module/vo/MyActivityItem;->mOnlineContentType:Ljava/lang/String;

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

    const-string v2, "mOnlineV1Id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/store/module/vo/MyActivityItem;->mOnlineV1Id:Ljava/lang/String;

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

    const-string v2, "mOnlineIsPurchased="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/store/module/vo/MyActivityItem;->mOnlineIsPurchased:I

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

    const-string v2, "mItemPackageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/store/module/vo/MyActivityItem;->mItemPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mItemLabel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/store/module/vo/MyActivityItem;->mItemLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mItemIconUrl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/store/module/vo/MyActivityItem;->mItemIconUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mItemIcon"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/store/module/vo/MyActivityItem;->mItemIcon:[B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mItemVersionName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/store/module/vo/MyActivityItem;->mItemVersionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mItemVersionCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/store/module/vo/MyActivityItem;->mItemVersionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/store/module/vo/MyActivityItem;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTimestamp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/store/module/vo/MyActivityItem;->mTimestamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsDisplay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/store/module/vo/MyActivityItem;->mIsDisplay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    sget-object v1, Lcom/htc/store/module/vo/MyActivityItem;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    return-void
.end method

.method public setId(J)V
    .locals 0
    .parameter "id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 115
    iput-wide p1, p0, Lcom/htc/store/module/vo/MyActivityItem;->mId:J

    .line 116
    return-void
.end method

.method public setIsDisplay(I)V
    .locals 0
    .parameter "displayCount"

    .prologue
    .line 227
    iput p1, p0, Lcom/htc/store/module/vo/MyActivityItem;->mIsDisplay:I

    .line 228
    return-void
.end method

.method public setItemIcon([B)V
    .locals 0
    .parameter "itemIcon"

    .prologue
    .line 187
    iput-object p1, p0, Lcom/htc/store/module/vo/MyActivityItem;->mItemIcon:[B

    .line 188
    return-void
.end method

.method public setItemIconUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "itemIconUrl"

    .prologue
    .line 179
    iput-object p1, p0, Lcom/htc/store/module/vo/MyActivityItem;->mItemIconUrl:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public setItemLabel(Ljava/lang/String;)V
    .locals 0
    .parameter "itemLabel"

    .prologue
    .line 171
    iput-object p1, p0, Lcom/htc/store/module/vo/MyActivityItem;->mItemLabel:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public setItemPackageName(Ljava/lang/String;)V
    .locals 0
    .parameter "itemPackageName"

    .prologue
    .line 163
    iput-object p1, p0, Lcom/htc/store/module/vo/MyActivityItem;->mItemPackageName:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setItemVersionCode(I)V
    .locals 0
    .parameter "itemVersionCode"

    .prologue
    .line 203
    iput p1, p0, Lcom/htc/store/module/vo/MyActivityItem;->mItemVersionCode:I

    .line 204
    return-void
.end method

.method public setItemVersionName(Ljava/lang/String;)V
    .locals 0
    .parameter "itemVersionName"

    .prologue
    .line 195
    iput-object p1, p0, Lcom/htc/store/module/vo/MyActivityItem;->mItemVersionName:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public setOnlineContentType(Ljava/lang/String;)V
    .locals 0
    .parameter "onlineContentType"

    .prologue
    .line 147
    iput-object p1, p0, Lcom/htc/store/module/vo/MyActivityItem;->mOnlineContentType:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public setOnlineIsPurchased(I)V
    .locals 0
    .parameter "onlineIsPurchased"

    .prologue
    .line 155
    iput p1, p0, Lcom/htc/store/module/vo/MyActivityItem;->mOnlineIsPurchased:I

    .line 156
    return-void
.end method

.method public setOnlineItemId(Ljava/lang/String;)V
    .locals 0
    .parameter "onlineItemId"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/htc/store/module/vo/MyActivityItem;->mOnlineItemId:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setOnlineMarkedId(Ljava/lang/String;)V
    .locals 0
    .parameter "onlineMarkedId"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/htc/store/module/vo/MyActivityItem;->mOnlineMarkedId:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setOnlineV1Id(Ljava/lang/String;)V
    .locals 0
    .parameter "onlineV1Id"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/htc/store/module/vo/MyActivityItem;->mOnlineV1Id:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 211
    iput p1, p0, Lcom/htc/store/module/vo/MyActivityItem;->mStatus:I

    .line 212
    return-void
.end method

.method public setTimestamp(J)V
    .locals 0
    .parameter "timestamp"

    .prologue
    .line 219
    iput-wide p1, p0, Lcom/htc/store/module/vo/MyActivityItem;->mTimestamp:J

    .line 220
    return-void
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 83
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 84
    .local v0, result:Landroid/content/ContentValues;
    const-string v1, "online_item_id"

    iget-object v2, p0, Lcom/htc/store/module/vo/MyActivityItem;->mOnlineItemId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lcom/htc/store/module/vo/MyActivityItem;->mOnlineMarkedId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 86
    const-string v1, "online_marked_id"

    iget-object v2, p0, Lcom/htc/store/module/vo/MyActivityItem;->mOnlineMarkedId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/htc/store/module/vo/MyActivityItem;->mOnlineV1Id:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 89
    const-string v1, "online_v1_id"

    iget-object v2, p0, Lcom/htc/store/module/vo/MyActivityItem;->mOnlineV1Id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_1
    const-string v1, "online_content_type"

    iget-object v2, p0, Lcom/htc/store/module/vo/MyActivityItem;->mOnlineContentType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v1, "online_is_purchased"

    iget v2, p0, Lcom/htc/store/module/vo/MyActivityItem;->mOnlineIsPurchased:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 93
    iget-object v1, p0, Lcom/htc/store/module/vo/MyActivityItem;->mItemPackageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 94
    const-string v1, "item_package_name"

    iget-object v2, p0, Lcom/htc/store/module/vo/MyActivityItem;->mItemPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_2
    const-string v1, "item_label"

    iget-object v2, p0, Lcom/htc/store/module/vo/MyActivityItem;->mItemLabel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v1, "item_icon_url"

    iget-object v2, p0, Lcom/htc/store/module/vo/MyActivityItem;->mItemIconUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lcom/htc/store/module/vo/MyActivityItem;->mItemIcon:[B

    if-eqz v1, :cond_3

    .line 99
    const-string v1, "item_icon"

    iget-object v2, p0, Lcom/htc/store/module/vo/MyActivityItem;->mItemIcon:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 101
    :cond_3
    const-string v1, "item_version_name"

    iget-object v2, p0, Lcom/htc/store/module/vo/MyActivityItem;->mItemVersionName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v1, "item_version_code"

    iget v2, p0, Lcom/htc/store/module/vo/MyActivityItem;->mItemVersionCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 103
    const-string v1, "status"

    iget v2, p0, Lcom/htc/store/module/vo/MyActivityItem;->mStatus:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 104
    const-string v1, "timestamp"

    iget-wide v2, p0, Lcom/htc/store/module/vo/MyActivityItem;->mTimestamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 105
    const-string v1, "is_display"

    iget v2, p0, Lcom/htc/store/module/vo/MyActivityItem;->mIsDisplay:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 106
    return-object v0
.end method
