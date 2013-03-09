.class public final Lcom/htc/utils/ulog/ParcelableULogData;
.super Lcom/htc/utils/ulog/ULogDataDecorator;
.source "ParcelableULogData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final CHAR_SIZE:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/utils/ulog/ParcelableULogData;",
            ">;"
        }
    .end annotation
.end field

.field private static final LONG_SIZE:I = 0x8


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/htc/utils/ulog/ParcelableULogData$1;

    invoke-direct {v0}, Lcom/htc/utils/ulog/ParcelableULogData$1;-><init>()V

    sput-object v0, Lcom/htc/utils/ulog/ParcelableULogData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 8

    const/4 v7, 0x1

    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/htc/utils/ulog/ULogDataDecorator;-><init>(Lcom/htc/utils/ulog/ULogData;)V

    iget-object v4, p0, Lcom/htc/utils/ulog/ULogDataDecorator;->mULogData:Lcom/htc/utils/ulog/ULogData;

    check-cast v4, Lcom/htc/utils/ulog/ReusableULogData;

    invoke-virtual {v4}, Lcom/htc/utils/ulog/ReusableULogData;->releaseRef()V

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v7, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v7, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/htc/utils/ulog/ReusableULogData;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/htc/utils/ulog/ReusableULogData;->setTimestamp(J)Lcom/htc/utils/ulog/ULogDataWritable;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v4, v3, v5}, Lcom/htc/utils/ulog/ReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method constructor <init>(Lcom/htc/utils/ulog/ULogData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/utils/ulog/ULogDataDecorator;-><init>(Lcom/htc/utils/ulog/ULogData;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic addRef()V
    .locals 0

    invoke-super {p0}, Lcom/htc/utils/ulog/ULogDataDecorator;->addRef()V

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic getAppId()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/htc/utils/ulog/ULogDataDecorator;->getAppId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCategory()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/htc/utils/ulog/ULogDataDecorator;->getCategory()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getData()Lcom/htc/utils/ulog/ULogData$ULogItem;
    .locals 1

    invoke-super {p0}, Lcom/htc/utils/ulog/ULogDataDecorator;->getData()Lcom/htc/utils/ulog/ULogData$ULogItem;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 4

    iget-object v3, p0, Lcom/htc/utils/ulog/ULogDataDecorator;->mULogData:Lcom/htc/utils/ulog/ULogData;

    if-eqz v3, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/utils/ulog/ULogDataDecorator;->mULogData:Lcom/htc/utils/ulog/ULogData;

    invoke-interface {v3}, Lcom/htc/utils/ulog/ULogData;->getAppId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/utils/ulog/ULogDataDecorator;->mULogData:Lcom/htc/utils/ulog/ULogData;

    invoke-interface {v3}, Lcom/htc/utils/ulog/ULogData;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    :cond_0
    iget-object v3, p0, Lcom/htc/utils/ulog/ULogDataDecorator;->mULogData:Lcom/htc/utils/ulog/ULogData;

    invoke-interface {v3}, Lcom/htc/utils/ulog/ULogData;->getCategory()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/utils/ulog/ULogDataDecorator;->mULogData:Lcom/htc/utils/ulog/ULogData;

    invoke-interface {v3}, Lcom/htc/utils/ulog/ULogData;->getCategory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    :cond_1
    iget-object v3, p0, Lcom/htc/utils/ulog/ULogDataDecorator;->mULogData:Lcom/htc/utils/ulog/ULogData;

    invoke-interface {v3}, Lcom/htc/utils/ulog/ULogData;->getData()Lcom/htc/utils/ulog/ULogData$ULogItem;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/utils/ulog/ULogDataDecorator;->mULogData:Lcom/htc/utils/ulog/ULogData;

    invoke-interface {v3}, Lcom/htc/utils/ulog/ULogData;->getData()Lcom/htc/utils/ulog/ULogData$ULogItem;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/utils/ulog/ULogData$ULogItem;->length()I

    move-result v2

    :cond_2
    add-int v3, v0, v1

    add-int/2addr v3, v2

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x8

    :goto_0
    return v3

    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getTimestamp()J
    .locals 2

    invoke-super {p0}, Lcom/htc/utils/ulog/ULogDataDecorator;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic recycle()V
    .locals 0

    invoke-super {p0}, Lcom/htc/utils/ulog/ULogDataDecorator;->recycle()V

    return-void
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/htc/utils/ulog/ULogDataDecorator;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 10

    const/4 v7, 0x0

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/htc/utils/ulog/ULogDataDecorator;->mULogData:Lcom/htc/utils/ulog/ULogData;

    if-nez v9, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    iget-object v9, p0, Lcom/htc/utils/ulog/ULogDataDecorator;->mULogData:Lcom/htc/utils/ulog/ULogData;

    invoke-interface {v9}, Lcom/htc/utils/ulog/ULogData;->getAppId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    move v1, v7

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    if-ne v1, v8, :cond_2

    iget-object v9, p0, Lcom/htc/utils/ulog/ULogDataDecorator;->mULogData:Lcom/htc/utils/ulog/ULogData;

    invoke-interface {v9}, Lcom/htc/utils/ulog/ULogData;->getAppId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_2
    iget-object v9, p0, Lcom/htc/utils/ulog/ULogDataDecorator;->mULogData:Lcom/htc/utils/ulog/ULogData;

    invoke-interface {v9}, Lcom/htc/utils/ulog/ULogData;->getCategory()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    move v1, v7

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    if-ne v1, v8, :cond_3

    iget-object v8, p0, Lcom/htc/utils/ulog/ULogDataDecorator;->mULogData:Lcom/htc/utils/ulog/ULogData;

    invoke-interface {v8}, Lcom/htc/utils/ulog/ULogData;->getCategory()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_3
    iget-object v8, p0, Lcom/htc/utils/ulog/ULogDataDecorator;->mULogData:Lcom/htc/utils/ulog/ULogData;

    invoke-interface {v8}, Lcom/htc/utils/ulog/ULogData;->getTimestamp()J

    move-result-wide v8

    invoke-virtual {p1, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v8, p0, Lcom/htc/utils/ulog/ULogDataDecorator;->mULogData:Lcom/htc/utils/ulog/ULogData;

    invoke-interface {v8}, Lcom/htc/utils/ulog/ULogData;->getData()Lcom/htc/utils/ulog/ULogData$ULogItem;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-interface {v3}, Lcom/htc/utils/ulog/ULogData$ULogItem;->getEntrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v7

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    const-string v4, ""

    const-string v5, ""

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-eqz v4, :cond_6

    if-eqz v5, :cond_6

    instance-of v7, v5, Ljava/lang/String;

    if-eqz v7, :cond_6

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    move v1, v8

    goto :goto_1

    :cond_5
    move v1, v8

    goto :goto_2

    :cond_6
    const-string v7, ""

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const-string v7, ""

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0
.end method
