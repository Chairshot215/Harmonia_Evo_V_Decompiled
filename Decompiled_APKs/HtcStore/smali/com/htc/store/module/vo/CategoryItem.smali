.class public Lcom/htc/store/module/vo/CategoryItem;
.super Ljava/lang/Object;
.source "CategoryItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/store/module/vo/CategoryItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mId:J

.field private mOnlineActionOnClick:Ljava/lang/String;

.field private mOnlineActionTypeOnClick:I

.field private mOnlineComponentPackageName:Ljava/lang/String;

.field private mOnlineIconURL:Ljava/lang/String;

.field private mOnlineId:Ljava/lang/String;

.field private mOnlineLabel:Ljava/lang/String;

.field private mOnlineOrder:I

.field private mOnlinePageType:I

.field private mOnlinePlainId:Ljava/lang/String;

.field private mOnlineSubLabel:Ljava/lang/String;

.field private mParentId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/htc/store/module/vo/CategoryItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/store/module/vo/CategoryItem;->TAG:Ljava/lang/String;

    .line 101
    new-instance v0, Lcom/htc/store/module/vo/CategoryItem$1;

    invoke-direct {v0}, Lcom/htc/store/module/vo/CategoryItem$1;-><init>()V

    sput-object v0, Lcom/htc/store/module/vo/CategoryItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-wide v1, p0, Lcom/htc/store/module/vo/CategoryItem;->mParentId:J

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/store/module/vo/CategoryItem;->mOnlineOrder:I

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/store/module/vo/CategoryItem;->mOnlineActionTypeOnClick:I

    .line 30
    iput-wide v1, p0, Lcom/htc/store/module/vo/CategoryItem;->mParentId:J

    .line 31
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/store/module/vo/CategoryItem;->mParentId:J

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/store/module/vo/CategoryItem;->mOnlineOrder:I

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/store/module/vo/CategoryItem;->mOnlineActionTypeOnClick:I

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/store/module/vo/CategoryItem;->mOnlineOrder:I

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/store/module/vo/CategoryItem;->mOnlineActionTypeOnClick:I

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/store/module/vo/CategoryItem;->mOnlinePageType:I

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/store/module/vo/CategoryItem;->mId:J

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/store/module/vo/CategoryItem;->mParentId:J

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/store/module/vo/CategoryItem;->mOnlineId:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/store/module/vo/CategoryItem;->mOnlinePlainId:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/store/module/vo/CategoryItem;->mOnlineLabel:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/store/module/vo/CategoryItem;->mOnlineSubLabel:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/store/module/vo/CategoryItem;->mOnlineIconURL:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/store/module/vo/CategoryItem;->mOnlineActionOnClick:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/store/module/vo/CategoryItem;->mOnlineComponentPackageName:Ljava/lang/String;

    .line 51
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/store/module/vo/CategoryItem$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/htc/store/module/vo/CategoryItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static fromCursor(Landroid/database/Cursor;)Lcom/htc/store/module/vo/CategoryItem;
    .locals 3
    .parameter "cursor"

    .prologue
    .line 112
    new-instance v0, Lcom/htc/store/module/vo/CategoryItem;

    invoke-direct {v0}, Lcom/htc/store/module/vo/CategoryItem;-><init>()V

    .line 114
    .local v0, result:Lcom/htc/store/module/vo/CategoryItem;
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/htc/store/module/vo/CategoryItem;->mId:J

    .line 115
    const/4 v1, 0x2

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/store/module/vo/CategoryItem;->mOnlineId:Ljava/lang/String;

    .line 116
    const/4 v1, 0x3

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/store/module/vo/CategoryItem;->mOnlinePlainId:Ljava/lang/String;

    .line 117
    const/4 v1, 0x1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/htc/store/module/vo/CategoryItem;->mParentId:J

    .line 118
    const/4 v1, 0x4

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/store/module/vo/CategoryItem;->mOnlineLabel:Ljava/lang/String;

    .line 119
    const/4 v1, 0x5

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/store/module/vo/CategoryItem;->mOnlineSubLabel:Ljava/lang/String;

    .line 120
    const/4 v1, 0x6

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/store/module/vo/CategoryItem;->mOnlineIconURL:Ljava/lang/String;

    .line 121
    const/4 v1, 0x7

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/htc/store/module/vo/CategoryItem;->mOnlineOrder:I

    .line 122
    const/16 v1, 0x8

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/htc/store/module/vo/CategoryItem;->mOnlineActionTypeOnClick:I

    .line 123
    const/16 v1, 0x9

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/store/module/vo/CategoryItem;->mOnlineActionOnClick:Ljava/lang/String;

    .line 124
    const/16 v1, 0xa

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/htc/store/module/vo/CategoryItem;->mOnlinePageType:I

    .line 125
    const/16 v1, 0xb

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/store/module/vo/CategoryItem;->mOnlineComponentPackageName:Ljava/lang/String;

    .line 127
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 159
    iget-wide v0, p0, Lcom/htc/store/module/vo/CategoryItem;->mId:J

    return-wide v0
.end method

.method public getOnlineActionTypeOnClick()I
    .locals 1

    .prologue
    .line 281
    iget v0, p0, Lcom/htc/store/module/vo/CategoryItem;->mOnlineActionTypeOnClick:I

    return v0
.end method

.method public getOnlineDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/htc/store/module/vo/CategoryItem;->mOnlineSubLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getOnlineIconURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/htc/store/module/vo/CategoryItem;->mOnlineIconURL:Ljava/lang/String;

    return-object v0
.end method

.method public getOnlineId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/htc/store/module/vo/CategoryItem;->mOnlineId:Ljava/lang/String;

    return-object v0
.end method

.method public getOnlineLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/htc/store/module/vo/CategoryItem;->mOnlineLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getOnlineOrder()I
    .locals 1

    .prologue
    .line 265
    iget v0, p0, Lcom/htc/store/module/vo/CategoryItem;->mOnlineOrder:I

    return v0
.end method

.method public getOnlinePackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/htc/store/module/vo/CategoryItem;->mOnlineComponentPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getOnlinePageType()I
    .locals 1

    .prologue
    .line 312
    iget v0, p0, Lcom/htc/store/module/vo/CategoryItem;->mOnlinePageType:I

    return v0
.end method

.method public getOnlinePlainId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/htc/store/module/vo/CategoryItem;->mOnlinePlainId:Ljava/lang/String;

    return-object v0
.end method

.method public getOnlineTriggerOnClick()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/htc/store/module/vo/CategoryItem;->mOnlineActionOnClick:Ljava/lang/String;

    return-object v0
.end method

.method public getParentId()J
    .locals 2

    .prologue
    .line 178
    iget-wide v0, p0, Lcom/htc/store/module/vo/CategoryItem;->mParentId:J

    return-wide v0
.end method

.method public printContent()V
    .locals 4

    .prologue
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .local v0, sb:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/store/module/vo/CategoryItem;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOnlineId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/store/module/vo/CategoryItem;->mOnlineId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOnlinePlainId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/store/module/vo/CategoryItem;->mOnlinePlainId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mParentId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/store/module/vo/CategoryItem;->mParentId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOnlineLabel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/store/module/vo/CategoryItem;->mOnlineLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOnlineSubLabel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/store/module/vo/CategoryItem;->mOnlineSubLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOnlineIconURL="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/store/module/vo/CategoryItem;->mOnlineIconURL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOnlineOrder="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/store/module/vo/CategoryItem;->mOnlineOrder:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOnlineActionTypeOnClick="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/store/module/vo/CategoryItem;->mOnlineActionTypeOnClick:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOnlineActionOnClick="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/store/module/vo/CategoryItem;->mOnlineActionOnClick:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOnlinePageType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/store/module/vo/CategoryItem;->mOnlinePageType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOnlineComponentPackageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/store/module/vo/CategoryItem;->mOnlineComponentPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    sget-object v1, Lcom/htc/store/module/vo/CategoryItem;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    return-void
.end method

.method public setId(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 167
    iput-wide p1, p0, Lcom/htc/store/module/vo/CategoryItem;->mId:J

    .line 168
    return-void
.end method

.method public setOnlineActionTypeOnClick(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 288
    iput p1, p0, Lcom/htc/store/module/vo/CategoryItem;->mOnlineActionTypeOnClick:I

    .line 289
    return-void
.end method

.method public setOnlineDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 241
    iput-object p1, p0, Lcom/htc/store/module/vo/CategoryItem;->mOnlineSubLabel:Ljava/lang/String;

    .line 242
    return-void
.end method

.method public setOnlineIconURL(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 256
    iput-object p1, p0, Lcom/htc/store/module/vo/CategoryItem;->mOnlineIconURL:Ljava/lang/String;

    .line 257
    return-void
.end method

.method public setOnlineId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 212
    iput-object p1, p0, Lcom/htc/store/module/vo/CategoryItem;->mOnlineId:Ljava/lang/String;

    .line 213
    return-void
.end method

.method public setOnlineLabel(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 234
    iput-object p1, p0, Lcom/htc/store/module/vo/CategoryItem;->mOnlineLabel:Ljava/lang/String;

    .line 235
    return-void
.end method

.method public setOnlineOrder(I)V
    .locals 0
    .parameter "order"

    .prologue
    .line 272
    iput p1, p0, Lcom/htc/store/module/vo/CategoryItem;->mOnlineOrder:I

    .line 273
    return-void
.end method

.method public setOnlinePackageName(Ljava/lang/String;)V
    .locals 0
    .parameter "online_package_name"

    .prologue
    .line 332
    iput-object p1, p0, Lcom/htc/store/module/vo/CategoryItem;->mOnlineComponentPackageName:Ljava/lang/String;

    .line 333
    return-void
.end method

.method public setOnlinePageType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 319
    iput p1, p0, Lcom/htc/store/module/vo/CategoryItem;->mOnlinePageType:I

    .line 320
    return-void
.end method

.method public setOnlinePlainId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 204
    iput-object p1, p0, Lcom/htc/store/module/vo/CategoryItem;->mOnlinePlainId:Ljava/lang/String;

    .line 205
    return-void
.end method

.method public setOnlineTriggerOnClick(Ljava/lang/String;)V
    .locals 0
    .parameter "action"

    .prologue
    .line 304
    iput-object p1, p0, Lcom/htc/store/module/vo/CategoryItem;->mOnlineActionOnClick:Ljava/lang/String;

    .line 305
    return-void
.end method

.method public setParentId(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 188
    iput-wide p1, p0, Lcom/htc/store/module/vo/CategoryItem;->mParentId:J

    .line 189
    return-void
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 131
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 133
    .local v0, result:Landroid/content/ContentValues;
    const-string v1, "online_item_id"

    iget-object v2, p0, Lcom/htc/store/module/vo/CategoryItem;->mOnlineId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v1, "online_item_plain_id"

    iget-object v2, p0, Lcom/htc/store/module/vo/CategoryItem;->mOnlinePlainId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v1, "parent_id"

    iget-wide v2, p0, Lcom/htc/store/module/vo/CategoryItem;->mParentId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 136
    const-string v1, "online_item_label"

    iget-object v2, p0, Lcom/htc/store/module/vo/CategoryItem;->mOnlineLabel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v1, "online_item_sub_label"

    iget-object v2, p0, Lcom/htc/store/module/vo/CategoryItem;->mOnlineSubLabel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v1, "online_icon_url"

    iget-object v2, p0, Lcom/htc/store/module/vo/CategoryItem;->mOnlineIconURL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v1, "online_order"

    iget v2, p0, Lcom/htc/store/module/vo/CategoryItem;->mOnlineOrder:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 140
    const-string v1, "online_action_type_on_click"

    iget v2, p0, Lcom/htc/store/module/vo/CategoryItem;->mOnlineActionTypeOnClick:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 141
    const-string v1, "online_action_on_click"

    iget-object v2, p0, Lcom/htc/store/module/vo/CategoryItem;->mOnlineActionOnClick:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v1, "online_page_type"

    iget v2, p0, Lcom/htc/store/module/vo/CategoryItem;->mOnlinePageType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 143
    const-string v1, "online_component_package_name"

    iget-object v2, p0, Lcom/htc/store/module/vo/CategoryItem;->mOnlineComponentPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    return-object v0
.end method

.method public toContentValuesForUIUpdate()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 149
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 150
    .local v0, result:Landroid/content/ContentValues;
    const-string v1, "online_icon_url"

    iget-object v2, p0, Lcom/htc/store/module/vo/CategoryItem;->mOnlineIconURL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 61
    iget v0, p0, Lcom/htc/store/module/vo/CategoryItem;->mOnlineOrder:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    iget v0, p0, Lcom/htc/store/module/vo/CategoryItem;->mOnlineActionTypeOnClick:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    iget v0, p0, Lcom/htc/store/module/vo/CategoryItem;->mOnlinePageType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    iget-wide v0, p0, Lcom/htc/store/module/vo/CategoryItem;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 67
    iget-wide v0, p0, Lcom/htc/store/module/vo/CategoryItem;->mParentId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 70
    iget-object v0, p0, Lcom/htc/store/module/vo/CategoryItem;->mOnlineId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/htc/store/module/vo/CategoryItem;->mOnlinePlainId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/htc/store/module/vo/CategoryItem;->mOnlineLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/htc/store/module/vo/CategoryItem;->mOnlineSubLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/htc/store/module/vo/CategoryItem;->mOnlineIconURL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/htc/store/module/vo/CategoryItem;->mOnlineActionOnClick:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/htc/store/module/vo/CategoryItem;->mOnlineComponentPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    return-void
.end method
