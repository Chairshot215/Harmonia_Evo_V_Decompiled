.class public Lcom/htc/utils/ulog/ParcelableULogStat;
.super Lcom/htc/utils/ulog/ULogStatDecorator;
.source "ParcelableULogStat.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/utils/ulog/ParcelableULogStat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/htc/utils/ulog/ParcelableULogStat$1;

    invoke-direct {v0}, Lcom/htc/utils/ulog/ParcelableULogStat$1;-><init>()V

    sput-object v0, Lcom/htc/utils/ulog/ParcelableULogStat;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/utils/ulog/UException;
        }
    .end annotation

    const/4 v5, 0x1

    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogStat;->obtain()Lcom/htc/utils/ulog/ReusableULogStat;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/htc/utils/ulog/ULogStatDecorator;-><init>(Lcom/htc/utils/ulog/ULogStat;)V

    iget-object v3, p0, Lcom/htc/utils/ulog/ULogStatDecorator;->mULogStat:Lcom/htc/utils/ulog/ULogStat;

    check-cast v3, Lcom/htc/utils/ulog/ReusableULogStat;

    invoke-virtual {v3}, Lcom/htc/utils/ulog/ReusableULogStat;->releaseRef()V

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v5, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/utils/ulog/ReusableULogStat;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ReusableULogStat;

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v5, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/utils/ulog/ReusableULogStat;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ReusableULogStat;

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v5, :cond_2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0, v1}, Lcom/htc/utils/ulog/ReusableULogStat;->addCount(Ljava/lang/String;J)Lcom/htc/utils/ulog/ReusableULogStat;

    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/htc/utils/ulog/ReusableULogStat;->setTimestamp(J)V

    return-void
.end method

.method constructor <init>(Lcom/htc/utils/ulog/ULogStat;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/utils/ulog/UException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/htc/utils/ulog/ULogStatDecorator;-><init>(Lcom/htc/utils/ulog/ULogStat;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic addRef()V
    .locals 0

    invoke-super {p0}, Lcom/htc/utils/ulog/ULogStatDecorator;->addRef()V

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic getAppId()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/htc/utils/ulog/ULogStatDecorator;->getAppId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCategory()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/htc/utils/ulog/ULogStatDecorator;->getCategory()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCount()J
    .locals 2

    invoke-super {p0}, Lcom/htc/utils/ulog/ULogStatDecorator;->getCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getCounterName()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/htc/utils/ulog/ULogStatDecorator;->getCounterName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTimestamp()J
    .locals 2

    invoke-super {p0}, Lcom/htc/utils/ulog/ULogStatDecorator;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic recycle()V
    .locals 0

    invoke-super {p0}, Lcom/htc/utils/ulog/ULogStatDecorator;->recycle()V

    return-void
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/htc/utils/ulog/ULogStatDecorator;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/utils/ulog/ULogStatDecorator;->mULogStat:Lcom/htc/utils/ulog/ULogStat;

    invoke-interface {v3}, Lcom/htc/utils/ulog/ULogStat;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    if-ne v0, v2, :cond_0

    iget-object v3, p0, Lcom/htc/utils/ulog/ULogStatDecorator;->mULogStat:Lcom/htc/utils/ulog/ULogStat;

    invoke-interface {v3}, Lcom/htc/utils/ulog/ULogStat;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_0
    iget-object v3, p0, Lcom/htc/utils/ulog/ULogStatDecorator;->mULogStat:Lcom/htc/utils/ulog/ULogStat;

    invoke-interface {v3}, Lcom/htc/utils/ulog/ULogStat;->getCategory()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    if-ne v0, v2, :cond_1

    iget-object v3, p0, Lcom/htc/utils/ulog/ULogStatDecorator;->mULogStat:Lcom/htc/utils/ulog/ULogStat;

    invoke-interface {v3}, Lcom/htc/utils/ulog/ULogStat;->getCategory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_1
    iget-object v3, p0, Lcom/htc/utils/ulog/ULogStatDecorator;->mULogStat:Lcom/htc/utils/ulog/ULogStat;

    invoke-interface {v3}, Lcom/htc/utils/ulog/ULogStat;->getCount()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v3, p0, Lcom/htc/utils/ulog/ULogStatDecorator;->mULogStat:Lcom/htc/utils/ulog/ULogStat;

    invoke-interface {v3}, Lcom/htc/utils/ulog/ULogStat;->getCounterName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    if-ne v0, v2, :cond_2

    iget-object v1, p0, Lcom/htc/utils/ulog/ULogStatDecorator;->mULogStat:Lcom/htc/utils/ulog/ULogStat;

    invoke-interface {v1}, Lcom/htc/utils/ulog/ULogStat;->getCounterName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/htc/utils/ulog/ULogStatDecorator;->mULogStat:Lcom/htc/utils/ulog/ULogStat;

    invoke-interface {v1}, Lcom/htc/utils/ulog/ULogStat;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    return-void

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_2
.end method
