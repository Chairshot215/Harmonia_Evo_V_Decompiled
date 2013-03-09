.class public Lcom/htc/store/module/vo/CommentItem;
.super Ljava/lang/Object;
.source "CommentItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/store/module/vo/CommentItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATE_NORMAL:I = 0x0

.field public static final STATE_OUT_OF_SYNC:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mId:J

.field private mOnlineFriendComment:Ljava/lang/String;

.field private mOnlineFriendId:Ljava/lang/String;

.field private mOnlineFriendLike:I

.field private mOnlineFriendName:Ljava/lang/String;

.field private mOnlineItemId:Ljava/lang/String;

.field private mOnlineItemLabel:Ljava/lang/String;

.field private mOnlineTimeStampLastUpdate:J

.field private mOnlineV1ItemId:Ljava/lang/String;

.field private mOnlineV1ItemLabel:Ljava/lang/String;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/htc/store/module/vo/CommentItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/store/module/vo/CommentItem;->TAG:Ljava/lang/String;

    .line 98
    new-instance v0, Lcom/htc/store/module/vo/CommentItem$1;

    invoke-direct {v0}, Lcom/htc/store/module/vo/CommentItem$1;-><init>()V

    sput-object v0, Lcom/htc/store/module/vo/CommentItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/store/module/vo/CommentItem;->mType:I

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/store/module/vo/CommentItem;->mOnlineFriendLike:I

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/store/module/vo/CommentItem;->mId:J

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/store/module/vo/CommentItem;->mOnlineTimeStampLastUpdate:J

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/store/module/vo/CommentItem;->mOnlineV1ItemId:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/store/module/vo/CommentItem;->mOnlineV1ItemLabel:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/store/module/vo/CommentItem;->mOnlineFriendId:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/store/module/vo/CommentItem;->mOnlineFriendName:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/store/module/vo/CommentItem;->mOnlineFriendComment:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/store/module/vo/CommentItem;->mOnlineItemId:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/store/module/vo/CommentItem;->mOnlineItemLabel:Ljava/lang/String;

    .line 50
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/store/module/vo/CommentItem$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/htc/store/module/vo/CommentItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static fromCursor(Landroid/database/Cursor;)Lcom/htc/store/module/vo/CommentItem;
    .locals 3
    .parameter "cursor"

    .prologue
    .line 109
    new-instance v0, Lcom/htc/store/module/vo/CommentItem;

    invoke-direct {v0}, Lcom/htc/store/module/vo/CommentItem;-><init>()V

    .line 111
    .local v0, result:Lcom/htc/store/module/vo/CommentItem;
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/htc/store/module/vo/CommentItem;->mId:J

    .line 112
    const/4 v1, 0x1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/htc/store/module/vo/CommentItem;->mType:I

    .line 113
    const/4 v1, 0x2

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/store/module/vo/CommentItem;->mOnlineV1ItemId:Ljava/lang/String;

    .line 114
    const/4 v1, 0x3

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/store/module/vo/CommentItem;->mOnlineV1ItemLabel:Ljava/lang/String;

    .line 115
    const/4 v1, 0x4

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/store/module/vo/CommentItem;->mOnlineFriendId:Ljava/lang/String;

    .line 116
    const/4 v1, 0x5

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/store/module/vo/CommentItem;->mOnlineFriendName:Ljava/lang/String;

    .line 117
    const/4 v1, 0x6

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/htc/store/module/vo/CommentItem;->mOnlineFriendLike:I

    .line 118
    const/4 v1, 0x7

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/store/module/vo/CommentItem;->mOnlineFriendComment:Ljava/lang/String;

    .line 119
    const/16 v1, 0x8

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/htc/store/module/vo/CommentItem;->mOnlineTimeStampLastUpdate:J

    .line 120
    const/16 v1, 0x9

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/store/module/vo/CommentItem;->mOnlineItemId:Ljava/lang/String;

    .line 121
    const/16 v1, 0xa

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/store/module/vo/CommentItem;->mOnlineItemLabel:Ljava/lang/String;

    .line 123
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 148
    iget-wide v0, p0, Lcom/htc/store/module/vo/CommentItem;->mId:J

    return-wide v0
.end method

.method public getOnlineFriendComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/htc/store/module/vo/CommentItem;->mOnlineFriendComment:Ljava/lang/String;

    return-object v0
.end method

.method public getOnlineFriendId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/htc/store/module/vo/CommentItem;->mOnlineFriendId:Ljava/lang/String;

    return-object v0
.end method

.method public getOnlineFriendLike()I
    .locals 1

    .prologue
    .line 250
    iget v0, p0, Lcom/htc/store/module/vo/CommentItem;->mOnlineFriendLike:I

    return v0
.end method

.method public getOnlineFriendName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/htc/store/module/vo/CommentItem;->mOnlineFriendName:Ljava/lang/String;

    return-object v0
.end method

.method public getOnlineItemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/htc/store/module/vo/CommentItem;->mOnlineItemId:Ljava/lang/String;

    return-object v0
.end method

.method public getOnlineItemLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/htc/store/module/vo/CommentItem;->mOnlineItemLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getOnlineTimeStampLastUpdate()J
    .locals 2

    .prologue
    .line 280
    iget-wide v0, p0, Lcom/htc/store/module/vo/CommentItem;->mOnlineTimeStampLastUpdate:J

    return-wide v0
.end method

.method public getOnlineV1ItemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/htc/store/module/vo/CommentItem;->mOnlineV1ItemId:Ljava/lang/String;

    return-object v0
.end method

.method public getOnlineV1ItemLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/htc/store/module/vo/CommentItem;->mOnlineV1ItemLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/htc/store/module/vo/CommentItem;->mType:I

    return v0
.end method

.method public printContent()V
    .locals 4

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .local v0, sb:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/store/module/vo/CommentItem;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

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

    const-string v2, "mType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/store/module/vo/CommentItem;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOnlineV1ItemId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/store/module/vo/CommentItem;->mOnlineV1ItemId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    const-string v2, "mOnlineV1ItemLabel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/store/module/vo/CommentItem;->mOnlineV1ItemLabel:Ljava/lang/String;

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

    const-string v2, "mOnlineFriendId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/store/module/vo/CommentItem;->mOnlineFriendId:Ljava/lang/String;

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

    const-string v2, "mOnlineFriendName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/store/module/vo/CommentItem;->mOnlineFriendName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    const-string v2, "mOnlineFriendLike="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/store/module/vo/CommentItem;->mOnlineFriendLike:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    const-string v2, "mOnlineFriendComment="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/store/module/vo/CommentItem;->mOnlineFriendComment:Ljava/lang/String;

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

    const-string v2, "mOnlineTimeStampLastUpdate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/store/module/vo/CommentItem;->mOnlineTimeStampLastUpdate:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

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

    const-string v2, "mOnlineItemId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/store/module/vo/CommentItem;->mOnlineItemId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    const-string v2, "mOnlineItemLabel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/store/module/vo/CommentItem;->mOnlineItemLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    sget-object v1, Lcom/htc/store/module/vo/CommentItem;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    return-void
.end method

.method public setId(J)V
    .locals 0
    .parameter "id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 156
    iput-wide p1, p0, Lcom/htc/store/module/vo/CommentItem;->mId:J

    .line 157
    return-void
.end method

.method public setOnlineFriendComment(Ljava/lang/String;)V
    .locals 0
    .parameter "comment"

    .prologue
    .line 272
    iput-object p1, p0, Lcom/htc/store/module/vo/CommentItem;->mOnlineFriendComment:Ljava/lang/String;

    .line 273
    return-void
.end method

.method public setOnlineFriendId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 226
    iput-object p1, p0, Lcom/htc/store/module/vo/CommentItem;->mOnlineFriendId:Ljava/lang/String;

    .line 227
    return-void
.end method

.method public setOnlineFriendLike(I)V
    .locals 0
    .parameter "isLiked"

    .prologue
    .line 257
    iput p1, p0, Lcom/htc/store/module/vo/CommentItem;->mOnlineFriendLike:I

    .line 258
    return-void
.end method

.method public setOnlineFriendName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 241
    iput-object p1, p0, Lcom/htc/store/module/vo/CommentItem;->mOnlineFriendName:Ljava/lang/String;

    .line 242
    return-void
.end method

.method public setOnlineItemId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 301
    iput-object p1, p0, Lcom/htc/store/module/vo/CommentItem;->mOnlineItemId:Ljava/lang/String;

    .line 302
    return-void
.end method

.method public setOnlineItemLabel(Ljava/lang/String;)V
    .locals 0
    .parameter "label"

    .prologue
    .line 316
    iput-object p1, p0, Lcom/htc/store/module/vo/CommentItem;->mOnlineItemLabel:Ljava/lang/String;

    .line 317
    return-void
.end method

.method public setOnlineTimeStampLastUpdate(J)V
    .locals 0
    .parameter "timeStamp"

    .prologue
    .line 287
    iput-wide p1, p0, Lcom/htc/store/module/vo/CommentItem;->mOnlineTimeStampLastUpdate:J

    .line 288
    return-void
.end method

.method public setOnlineV1ItemId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 196
    iput-object p1, p0, Lcom/htc/store/module/vo/CommentItem;->mOnlineV1ItemId:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public setOnlineV1ItemLabel(Ljava/lang/String;)V
    .locals 0
    .parameter "label"

    .prologue
    .line 211
    iput-object p1, p0, Lcom/htc/store/module/vo/CommentItem;->mOnlineV1ItemLabel:Ljava/lang/String;

    .line 212
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 182
    iput p1, p0, Lcom/htc/store/module/vo/CommentItem;->mType:I

    .line 183
    return-void
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 127
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 129
    .local v0, result:Landroid/content/ContentValues;
    const-string v1, "type"

    iget v2, p0, Lcom/htc/store/module/vo/CommentItem;->mType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 130
    const-string v1, "online_v1_item_id"

    iget-object v2, p0, Lcom/htc/store/module/vo/CommentItem;->mOnlineV1ItemId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v1, "online_v1_item_label"

    iget-object v2, p0, Lcom/htc/store/module/vo/CommentItem;->mOnlineV1ItemLabel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v1, "online_friend_id"

    iget-object v2, p0, Lcom/htc/store/module/vo/CommentItem;->mOnlineFriendId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v1, "online_friend_name"

    iget-object v2, p0, Lcom/htc/store/module/vo/CommentItem;->mOnlineFriendName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v1, "online_friend_like"

    iget v2, p0, Lcom/htc/store/module/vo/CommentItem;->mOnlineFriendLike:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 135
    const-string v1, "online_friend_comment"

    iget-object v2, p0, Lcom/htc/store/module/vo/CommentItem;->mOnlineFriendComment:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v1, "online_timestamp_last_update"

    iget-wide v2, p0, Lcom/htc/store/module/vo/CommentItem;->mOnlineTimeStampLastUpdate:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 137
    const-string v1, "online_item_id"

    iget-object v2, p0, Lcom/htc/store/module/vo/CommentItem;->mOnlineItemId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v1, "online_item_label"

    iget-object v2, p0, Lcom/htc/store/module/vo/CommentItem;->mOnlineItemLabel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 60
    iget v0, p0, Lcom/htc/store/module/vo/CommentItem;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget v0, p0, Lcom/htc/store/module/vo/CommentItem;->mOnlineFriendLike:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    iget-wide v0, p0, Lcom/htc/store/module/vo/CommentItem;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 65
    iget-wide v0, p0, Lcom/htc/store/module/vo/CommentItem;->mOnlineTimeStampLastUpdate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 68
    iget-object v0, p0, Lcom/htc/store/module/vo/CommentItem;->mOnlineV1ItemId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/htc/store/module/vo/CommentItem;->mOnlineV1ItemLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/htc/store/module/vo/CommentItem;->mOnlineFriendId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/htc/store/module/vo/CommentItem;->mOnlineFriendName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/htc/store/module/vo/CommentItem;->mOnlineFriendComment:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/htc/store/module/vo/CommentItem;->mOnlineItemId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/htc/store/module/vo/CommentItem;->mOnlineItemLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    return-void
.end method
