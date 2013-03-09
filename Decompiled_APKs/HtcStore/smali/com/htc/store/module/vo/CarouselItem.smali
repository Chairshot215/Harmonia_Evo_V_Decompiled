.class public Lcom/htc/store/module/vo/CarouselItem;
.super Ljava/lang/Object;
.source "CarouselItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/store/module/vo/CarouselItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mGroupId:I

.field private mId:J

.field private mOnlineIconOnURL:Ljava/lang/String;

.field private mOnlineIconOverlayURL:Ljava/lang/String;

.field private mOnlineIconRestURL:Ljava/lang/String;

.field private mOnlineId:Ljava/lang/String;

.field private mOnlineLabel:Ljava/lang/String;

.field private mOnlineOrder:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/htc/store/module/vo/CarouselItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/store/module/vo/CarouselItem;->TAG:Ljava/lang/String;

    .line 83
    new-instance v0, Lcom/htc/store/module/vo/CarouselItem$1;

    invoke-direct {v0}, Lcom/htc/store/module/vo/CarouselItem$1;-><init>()V

    sput-object v0, Lcom/htc/store/module/vo/CarouselItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/store/module/vo/CarouselItem;->mGroupId:I

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/store/module/vo/CarouselItem;->mOnlineOrder:I

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/store/module/vo/CarouselItem;->mId:J

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/store/module/vo/CarouselItem;->mOnlineId:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/store/module/vo/CarouselItem;->mOnlineLabel:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/store/module/vo/CarouselItem;->mOnlineIconOverlayURL:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/store/module/vo/CarouselItem;->mOnlineIconRestURL:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/store/module/vo/CarouselItem;->mOnlineIconOnURL:Ljava/lang/String;

    .line 41
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/store/module/vo/CarouselItem$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/htc/store/module/vo/CarouselItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static fromCursor(Landroid/database/Cursor;)Lcom/htc/store/module/vo/CarouselItem;
    .locals 3
    .parameter "cursor"

    .prologue
    .line 94
    new-instance v0, Lcom/htc/store/module/vo/CarouselItem;

    invoke-direct {v0}, Lcom/htc/store/module/vo/CarouselItem;-><init>()V

    .line 96
    .local v0, result:Lcom/htc/store/module/vo/CarouselItem;
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/htc/store/module/vo/CarouselItem;->mId:J

    .line 97
    const/4 v1, 0x1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/htc/store/module/vo/CarouselItem;->mGroupId:I

    .line 98
    const/4 v1, 0x2

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/store/module/vo/CarouselItem;->mOnlineId:Ljava/lang/String;

    .line 99
    const/4 v1, 0x3

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/store/module/vo/CarouselItem;->mOnlineLabel:Ljava/lang/String;

    .line 100
    const/4 v1, 0x4

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/htc/store/module/vo/CarouselItem;->mOnlineOrder:I

    .line 101
    const/4 v1, 0x5

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/store/module/vo/CarouselItem;->mOnlineIconOverlayURL:Ljava/lang/String;

    .line 102
    const/4 v1, 0x6

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/store/module/vo/CarouselItem;->mOnlineIconRestURL:Ljava/lang/String;

    .line 103
    const/4 v1, 0x7

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/store/module/vo/CarouselItem;->mOnlineIconOnURL:Ljava/lang/String;

    .line 105
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public getGroupId()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/htc/store/module/vo/CarouselItem;->mGroupId:I

    return v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 127
    iget-wide v0, p0, Lcom/htc/store/module/vo/CarouselItem;->mId:J

    return-wide v0
.end method

.method public getOnlineIconOnURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/htc/store/module/vo/CarouselItem;->mOnlineIconOnURL:Ljava/lang/String;

    return-object v0
.end method

.method public getOnlineIconOverlayURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/htc/store/module/vo/CarouselItem;->mOnlineIconOverlayURL:Ljava/lang/String;

    return-object v0
.end method

.method public getOnlineIconRestURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/htc/store/module/vo/CarouselItem;->mOnlineIconRestURL:Ljava/lang/String;

    return-object v0
.end method

.method public getOnlineId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/htc/store/module/vo/CarouselItem;->mOnlineId:Ljava/lang/String;

    return-object v0
.end method

.method public getOnlineLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/htc/store/module/vo/CarouselItem;->mOnlineLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getOnlineOrder()I
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lcom/htc/store/module/vo/CarouselItem;->mOnlineOrder:I

    return v0
.end method

.method public printContent()V
    .locals 4

    .prologue
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .local v0, sb:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/store/module/vo/CarouselItem;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mGroupId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/store/module/vo/CarouselItem;->mGroupId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOnlineId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/store/module/vo/CarouselItem;->mOnlineId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOnlineLabel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/store/module/vo/CarouselItem;->mOnlineLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOnlineOrder="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/store/module/vo/CarouselItem;->mOnlineOrder:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    const-string v2, "mOnlineIconOverlayURL="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/store/module/vo/CarouselItem;->mOnlineIconOverlayURL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    const-string v2, "mOnlineIconRestURL="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/store/module/vo/CarouselItem;->mOnlineIconRestURL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    const-string v2, "mOnlineIconOnURL="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/store/module/vo/CarouselItem;->mOnlineIconOnURL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    sget-object v1, Lcom/htc/store/module/vo/CarouselItem;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    return-void
.end method

.method public setGroupId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 155
    iput p1, p0, Lcom/htc/store/module/vo/CarouselItem;->mGroupId:I

    .line 156
    return-void
.end method

.method public setId(J)V
    .locals 0
    .parameter "id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 135
    iput-wide p1, p0, Lcom/htc/store/module/vo/CarouselItem;->mId:J

    .line 136
    return-void
.end method

.method public setOnlineIconOnURL(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 251
    iput-object p1, p0, Lcom/htc/store/module/vo/CarouselItem;->mOnlineIconOnURL:Ljava/lang/String;

    .line 252
    return-void
.end method

.method public setOnlineIconOverlayURL(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 219
    iput-object p1, p0, Lcom/htc/store/module/vo/CarouselItem;->mOnlineIconOverlayURL:Ljava/lang/String;

    .line 220
    return-void
.end method

.method public setOnlineIconRestURL(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 235
    iput-object p1, p0, Lcom/htc/store/module/vo/CarouselItem;->mOnlineIconRestURL:Ljava/lang/String;

    .line 236
    return-void
.end method

.method public setOnlineId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 171
    iput-object p1, p0, Lcom/htc/store/module/vo/CarouselItem;->mOnlineId:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public setOnlineLabel(Ljava/lang/String;)V
    .locals 0
    .parameter "label"

    .prologue
    .line 187
    iput-object p1, p0, Lcom/htc/store/module/vo/CarouselItem;->mOnlineLabel:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public setOnlineOrder(I)V
    .locals 0
    .parameter "order"

    .prologue
    .line 203
    iput p1, p0, Lcom/htc/store/module/vo/CarouselItem;->mOnlineOrder:I

    .line 204
    return-void
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 109
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 111
    .local v0, result:Landroid/content/ContentValues;
    const-string v1, "group_id"

    iget v2, p0, Lcom/htc/store/module/vo/CarouselItem;->mGroupId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 112
    const-string v1, "online_id"

    iget-object v2, p0, Lcom/htc/store/module/vo/CarouselItem;->mOnlineId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v1, "online_label"

    iget-object v2, p0, Lcom/htc/store/module/vo/CarouselItem;->mOnlineLabel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v1, "online_order"

    iget v2, p0, Lcom/htc/store/module/vo/CarouselItem;->mOnlineOrder:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 115
    const-string v1, "online_icon_overlay_url"

    iget-object v2, p0, Lcom/htc/store/module/vo/CarouselItem;->mOnlineIconOverlayURL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v1, "online_icon_rest_url"

    iget-object v2, p0, Lcom/htc/store/module/vo/CarouselItem;->mOnlineIconRestURL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v1, "online_icon_on_url"

    iget-object v2, p0, Lcom/htc/store/module/vo/CarouselItem;->mOnlineIconOnURL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 51
    iget v0, p0, Lcom/htc/store/module/vo/CarouselItem;->mGroupId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget v0, p0, Lcom/htc/store/module/vo/CarouselItem;->mOnlineOrder:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    iget-wide v0, p0, Lcom/htc/store/module/vo/CarouselItem;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 58
    iget-object v0, p0, Lcom/htc/store/module/vo/CarouselItem;->mOnlineId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/htc/store/module/vo/CarouselItem;->mOnlineLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/htc/store/module/vo/CarouselItem;->mOnlineIconOverlayURL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/htc/store/module/vo/CarouselItem;->mOnlineIconRestURL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/htc/store/module/vo/CarouselItem;->mOnlineIconOnURL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    return-void
.end method
