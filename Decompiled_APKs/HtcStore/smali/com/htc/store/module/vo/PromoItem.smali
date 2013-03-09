.class public Lcom/htc/store/module/vo/PromoItem;
.super Ljava/lang/Object;
.source "PromoItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/store/module/vo/PromoItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCategoryId:J

.field private mId:J

.field private mOnlineActionOnClick:Ljava/lang/String;

.field private mOnlineActionTypeOnClick:I

.field private mOnlineCategoryId:Ljava/lang/String;

.field private mOnlineImageURLLandscape:Ljava/lang/String;

.field private mOnlineImageURLPortrait:Ljava/lang/String;

.field private mOnlineItemId:Ljava/lang/String;

.field private mOnlineOrder:I

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/htc/store/module/vo/PromoItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/store/module/vo/PromoItem;->TAG:Ljava/lang/String;

    .line 89
    new-instance v0, Lcom/htc/store/module/vo/PromoItem$1;

    invoke-direct {v0}, Lcom/htc/store/module/vo/PromoItem$1;-><init>()V

    sput-object v0, Lcom/htc/store/module/vo/PromoItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/store/module/vo/PromoItem;->mType:I

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/store/module/vo/PromoItem;->mOnlineOrder:I

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/store/module/vo/PromoItem;->mOnlineActionTypeOnClick:I

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/store/module/vo/PromoItem;->mId:J

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/store/module/vo/PromoItem;->mCategoryId:J

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/store/module/vo/PromoItem;->mOnlineItemId:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/store/module/vo/PromoItem;->mOnlineCategoryId:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/store/module/vo/PromoItem;->mOnlineImageURLPortrait:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/store/module/vo/PromoItem;->mOnlineImageURLLandscape:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/store/module/vo/PromoItem;->mOnlineActionOnClick:Ljava/lang/String;

    .line 46
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/store/module/vo/PromoItem$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/htc/store/module/vo/PromoItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static fromCursor(Landroid/database/Cursor;)Lcom/htc/store/module/vo/PromoItem;
    .locals 3
    .parameter "cursor"

    .prologue
    .line 100
    new-instance v0, Lcom/htc/store/module/vo/PromoItem;

    invoke-direct {v0}, Lcom/htc/store/module/vo/PromoItem;-><init>()V

    .line 102
    .local v0, result:Lcom/htc/store/module/vo/PromoItem;
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/htc/store/module/vo/PromoItem;->mId:J

    .line 103
    const/4 v1, 0x1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/htc/store/module/vo/PromoItem;->mType:I

    .line 104
    const/4 v1, 0x2

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/htc/store/module/vo/PromoItem;->mCategoryId:J

    .line 105
    const/4 v1, 0x3

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/store/module/vo/PromoItem;->mOnlineItemId:Ljava/lang/String;

    .line 106
    const/4 v1, 0x4

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/store/module/vo/PromoItem;->mOnlineCategoryId:Ljava/lang/String;

    .line 107
    const/4 v1, 0x5

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/store/module/vo/PromoItem;->mOnlineImageURLPortrait:Ljava/lang/String;

    .line 108
    const/4 v1, 0x6

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/store/module/vo/PromoItem;->mOnlineImageURLLandscape:Ljava/lang/String;

    .line 109
    const/4 v1, 0x7

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/htc/store/module/vo/PromoItem;->mOnlineOrder:I

    .line 110
    const/16 v1, 0x8

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/htc/store/module/vo/PromoItem;->mOnlineActionTypeOnClick:I

    .line 111
    const/16 v1, 0x9

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/store/module/vo/PromoItem;->mOnlineActionOnClick:Ljava/lang/String;

    .line 113
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public getCategoryId()J
    .locals 2

    .prologue
    .line 181
    iget-wide v0, p0, Lcom/htc/store/module/vo/PromoItem;->mCategoryId:J

    return-wide v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 137
    iget-wide v0, p0, Lcom/htc/store/module/vo/PromoItem;->mId:J

    return-wide v0
.end method

.method public getOnlineActionTypeOnClick()I
    .locals 1

    .prologue
    .line 280
    iget v0, p0, Lcom/htc/store/module/vo/PromoItem;->mOnlineActionTypeOnClick:I

    return v0
.end method

.method public getOnlineCategoryId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/htc/store/module/vo/PromoItem;->mOnlineCategoryId:Ljava/lang/String;

    return-object v0
.end method

.method public getOnlineCategoryPageTypeOnClick()I
    .locals 6

    .prologue
    .line 310
    const/4 v1, -0x1

    .line 312
    .local v1, result:I
    :try_start_0
    iget-object v2, p0, Lcom/htc/store/module/vo/PromoItem;->mOnlineActionOnClick:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 316
    :goto_0
    return v1

    .line 313
    :catch_0
    move-exception v0

    .line 314
    .local v0, e:Ljava/lang/NumberFormatException;
    sget-object v2, Lcom/htc/store/module/vo/PromoItem;->TAG:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "the value is not compatible with type"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getOnlineCategoryPageTypeOnClick(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 323
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/store/module/vo/PromoItem;->mOnlineActionOnClick:Ljava/lang/String;

    .line 324
    return-void
.end method

.method public getOnlineDetailPageTypeOnClick()I
    .locals 6

    .prologue
    .line 330
    const/4 v1, -0x1

    .line 332
    .local v1, result:I
    :try_start_0
    iget-object v2, p0, Lcom/htc/store/module/vo/PromoItem;->mOnlineActionOnClick:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 336
    :goto_0
    return v1

    .line 333
    :catch_0
    move-exception v0

    .line 334
    .local v0, e:Ljava/lang/NumberFormatException;
    sget-object v2, Lcom/htc/store/module/vo/PromoItem;->TAG:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "the value is not compatible with type"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getOnlineImageURLLandscape()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 247
    iget-object v0, p0, Lcom/htc/store/module/vo/PromoItem;->mOnlineImageURLLandscape:Ljava/lang/String;

    return-object v0
.end method

.method public getOnlineImageURLPortrait()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/htc/store/module/vo/PromoItem;->mOnlineImageURLPortrait:Ljava/lang/String;

    return-object v0
.end method

.method public getOnlineItemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/htc/store/module/vo/PromoItem;->mOnlineItemId:Ljava/lang/String;

    return-object v0
.end method

.method public getOnlineOrder()I
    .locals 1

    .prologue
    .line 264
    iget v0, p0, Lcom/htc/store/module/vo/PromoItem;->mOnlineOrder:I

    return v0
.end method

.method public getOnlineTriggerOnClick()Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/htc/store/module/vo/PromoItem;->mOnlineActionOnClick:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/htc/store/module/vo/PromoItem;->mType:I

    return v0
.end method

.method public printContent()V
    .locals 4

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .local v0, sb:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/store/module/vo/PromoItem;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/store/module/vo/PromoItem;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCategoryId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/store/module/vo/PromoItem;->mCategoryId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOnlineItemId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/store/module/vo/PromoItem;->mOnlineItemId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOnlineCategoryId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/store/module/vo/PromoItem;->mOnlineCategoryId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOnlineImageURLPortrait="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/store/module/vo/PromoItem;->mOnlineImageURLPortrait:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOnlineImageURLLandscape="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/store/module/vo/PromoItem;->mOnlineImageURLLandscape:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOnlineOrder="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/store/module/vo/PromoItem;->mOnlineOrder:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOnlineActionTypeOnClick="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/store/module/vo/PromoItem;->mOnlineActionTypeOnClick:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOnlineActionOnClick="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/store/module/vo/PromoItem;->mOnlineActionOnClick:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    sget-object v1, Lcom/htc/store/module/vo/PromoItem;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    return-void
.end method

.method public setCategoryId(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 190
    iput-wide p1, p0, Lcom/htc/store/module/vo/PromoItem;->mCategoryId:J

    .line 191
    return-void
.end method

.method public setId(J)V
    .locals 0
    .parameter "id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 145
    iput-wide p1, p0, Lcom/htc/store/module/vo/PromoItem;->mId:J

    .line 146
    return-void
.end method

.method public setOnlineActionTypeOnClick(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 287
    iput p1, p0, Lcom/htc/store/module/vo/PromoItem;->mOnlineActionTypeOnClick:I

    .line 288
    return-void
.end method

.method public setOnlineCategoryId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 222
    iput-object p1, p0, Lcom/htc/store/module/vo/PromoItem;->mOnlineCategoryId:Ljava/lang/String;

    .line 223
    return-void
.end method

.method public setOnlineDetailPageTypeOnClick(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 343
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/store/module/vo/PromoItem;->mOnlineActionOnClick:Ljava/lang/String;

    .line 344
    return-void
.end method

.method public setOnlineImageURLLandscape(Ljava/lang/String;)V
    .locals 0
    .parameter "url"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 255
    iput-object p1, p0, Lcom/htc/store/module/vo/PromoItem;->mOnlineImageURLLandscape:Ljava/lang/String;

    .line 256
    return-void
.end method

.method public setOnlineImageURLPortrait(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 237
    iput-object p1, p0, Lcom/htc/store/module/vo/PromoItem;->mOnlineImageURLPortrait:Ljava/lang/String;

    .line 238
    return-void
.end method

.method public setOnlineItemId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 206
    iput-object p1, p0, Lcom/htc/store/module/vo/PromoItem;->mOnlineItemId:Ljava/lang/String;

    .line 207
    return-void
.end method

.method public setOnlineOrder(I)V
    .locals 0
    .parameter "order"

    .prologue
    .line 271
    iput p1, p0, Lcom/htc/store/module/vo/PromoItem;->mOnlineOrder:I

    .line 272
    return-void
.end method

.method public setOnlineTriggerOnClick(Ljava/lang/String;)V
    .locals 0
    .parameter "action"

    .prologue
    .line 303
    iput-object p1, p0, Lcom/htc/store/module/vo/PromoItem;->mOnlineActionOnClick:Ljava/lang/String;

    .line 304
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 171
    iput p1, p0, Lcom/htc/store/module/vo/PromoItem;->mType:I

    .line 172
    return-void
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 117
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 119
    .local v0, result:Landroid/content/ContentValues;
    const-string v1, "type"

    iget v2, p0, Lcom/htc/store/module/vo/PromoItem;->mType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 120
    const-string v1, "category_id"

    iget-wide v2, p0, Lcom/htc/store/module/vo/PromoItem;->mCategoryId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 121
    const-string v1, "online_item_id"

    iget-object v2, p0, Lcom/htc/store/module/vo/PromoItem;->mOnlineItemId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v1, "online_category_id"

    iget-object v2, p0, Lcom/htc/store/module/vo/PromoItem;->mOnlineCategoryId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v1, "online_image_url_portrait"

    iget-object v2, p0, Lcom/htc/store/module/vo/PromoItem;->mOnlineImageURLPortrait:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v1, "online_image_url_landscape"

    iget-object v2, p0, Lcom/htc/store/module/vo/PromoItem;->mOnlineImageURLLandscape:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v1, "online_order"

    iget v2, p0, Lcom/htc/store/module/vo/PromoItem;->mOnlineOrder:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 126
    const-string v1, "online_action_type_on_click"

    iget v2, p0, Lcom/htc/store/module/vo/PromoItem;->mOnlineActionTypeOnClick:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 127
    const-string v1, "online_action_on_click"

    iget-object v2, p0, Lcom/htc/store/module/vo/PromoItem;->mOnlineActionOnClick:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 56
    iget v0, p0, Lcom/htc/store/module/vo/PromoItem;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    iget v0, p0, Lcom/htc/store/module/vo/PromoItem;->mOnlineOrder:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    iget v0, p0, Lcom/htc/store/module/vo/PromoItem;->mOnlineActionTypeOnClick:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget-wide v0, p0, Lcom/htc/store/module/vo/PromoItem;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 62
    iget-wide v0, p0, Lcom/htc/store/module/vo/PromoItem;->mCategoryId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 65
    iget-object v0, p0, Lcom/htc/store/module/vo/PromoItem;->mOnlineItemId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/htc/store/module/vo/PromoItem;->mOnlineCategoryId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/htc/store/module/vo/PromoItem;->mOnlineImageURLPortrait:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/htc/store/module/vo/PromoItem;->mOnlineImageURLLandscape:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/htc/store/module/vo/PromoItem;->mOnlineActionOnClick:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    return-void
.end method
