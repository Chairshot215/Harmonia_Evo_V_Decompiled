.class public Lcom/htc/album/modules/collection/SimpleImage;
.super Ljava/lang/Object;
.source "SimpleImage.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/htc/album/modules/collection/SimpleImage;",
        ">;",
        "Ljava/io/Serializable;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static BIT_DRM:I = 0x0

.field private static BIT_ORDER:I = 0x0

.field private static BIT_VIDEO:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/album/modules/collection/SimpleImage;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x2L


# instance fields
.field protected transient mContainer:Lcom/htc/album/modules/collection/Collection;

.field public mDateModified:J

.field public mDegreeRotated:I

.field public mFilePath:Ljava/lang/String;

.field public mFileSize:J

.field public mIsDrm:Z

.field public mIsVideo:Z

.field public mMediaType:I

.field public mMimeType:Ljava/lang/String;

.field protected mSortDES:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/htc/album/modules/collection/SimpleImage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/modules/collection/SimpleImage;->LOG_TAG:Ljava/lang/String;

    .line 37
    const/4 v0, 0x1

    sput v0, Lcom/htc/album/modules/collection/SimpleImage;->BIT_ORDER:I

    .line 38
    const/16 v0, 0x10

    sput v0, Lcom/htc/album/modules/collection/SimpleImage;->BIT_DRM:I

    .line 39
    const/16 v0, 0x100

    sput v0, Lcom/htc/album/modules/collection/SimpleImage;->BIT_VIDEO:I

    .line 80
    new-instance v0, Lcom/htc/album/modules/collection/SimpleImage$1;

    invoke-direct {v0}, Lcom/htc/album/modules/collection/SimpleImage$1;-><init>()V

    sput-object v0, Lcom/htc/album/modules/collection/SimpleImage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .parameter "in"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 93
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v2, p0, Lcom/htc/album/modules/collection/SimpleImage;->mContainer:Lcom/htc/album/modules/collection/Collection;

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/modules/collection/SimpleImage;->mSortDES:Z

    .line 28
    iput-object v2, p0, Lcom/htc/album/modules/collection/SimpleImage;->mFilePath:Ljava/lang/String;

    .line 29
    iput-object v2, p0, Lcom/htc/album/modules/collection/SimpleImage;->mMimeType:Ljava/lang/String;

    .line 30
    iput-wide v3, p0, Lcom/htc/album/modules/collection/SimpleImage;->mDateModified:J

    .line 31
    iput v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mDegreeRotated:I

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/modules/collection/SimpleImage;->mMediaType:I

    .line 33
    iput-boolean v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIsDrm:Z

    .line 34
    iput-boolean v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIsVideo:Z

    .line 35
    iput-wide v3, p0, Lcom/htc/album/modules/collection/SimpleImage;->mFileSize:J

    .line 95
    return-void
.end method

.method public constructor <init>(Lcom/htc/album/modules/collection/Collection;Z)V
    .locals 5
    .parameter "container"
    .parameter "DES"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v2, p0, Lcom/htc/album/modules/collection/SimpleImage;->mContainer:Lcom/htc/album/modules/collection/Collection;

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/modules/collection/SimpleImage;->mSortDES:Z

    .line 28
    iput-object v2, p0, Lcom/htc/album/modules/collection/SimpleImage;->mFilePath:Ljava/lang/String;

    .line 29
    iput-object v2, p0, Lcom/htc/album/modules/collection/SimpleImage;->mMimeType:Ljava/lang/String;

    .line 30
    iput-wide v3, p0, Lcom/htc/album/modules/collection/SimpleImage;->mDateModified:J

    .line 31
    iput v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mDegreeRotated:I

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/modules/collection/SimpleImage;->mMediaType:I

    .line 33
    iput-boolean v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIsDrm:Z

    .line 34
    iput-boolean v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIsVideo:Z

    .line 35
    iput-wide v3, p0, Lcom/htc/album/modules/collection/SimpleImage;->mFileSize:J

    .line 43
    iput-object p1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mContainer:Lcom/htc/album/modules/collection/Collection;

    .line 44
    iput-boolean p2, p0, Lcom/htc/album/modules/collection/SimpleImage;->mSortDES:Z

    .line 45
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/htc/album/modules/collection/SimpleImage;)I
    .locals 6
    .parameter "image"

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 67
    iget-wide v2, p0, Lcom/htc/album/modules/collection/SimpleImage;->mDateModified:J

    iget-wide v4, p1, Lcom/htc/album/modules/collection/SimpleImage;->mDateModified:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 68
    iget-boolean v2, p0, Lcom/htc/album/modules/collection/SimpleImage;->mSortDES:Z

    if-eqz v2, :cond_0

    .line 72
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 68
    goto :goto_0

    .line 69
    :cond_1
    iget-wide v2, p0, Lcom/htc/album/modules/collection/SimpleImage;->mDateModified:J

    iget-wide v4, p1, Lcom/htc/album/modules/collection/SimpleImage;->mDateModified:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    .line 70
    iget-boolean v2, p0, Lcom/htc/album/modules/collection/SimpleImage;->mSortDES:Z

    if-eqz v2, :cond_2

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_1

    .line 72
    :cond_3
    iget-object v0, p0, Lcom/htc/album/modules/collection/SimpleImage;->mFilePath:Ljava/lang/String;

    iget-object v1, p1, Lcom/htc/album/modules/collection/SimpleImage;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    check-cast p1, Lcom/htc/album/modules/collection/SimpleImage;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/modules/collection/SimpleImage;->compareTo(Lcom/htc/album/modules/collection/SimpleImage;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public getDateModified()J
    .locals 2

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/htc/album/modules/collection/SimpleImage;->mDateModified:J

    return-wide v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 6
    .parameter "in"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mFilePath:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mMimeType:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/htc/album/modules/collection/SimpleImage;->mDateModified:J

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mDegreeRotated:I

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mMediaType:I

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/htc/album/modules/collection/SimpleImage;->mFileSize:J

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 117
    .local v0, myValue:B
    sget v1, Lcom/htc/album/modules/collection/SimpleImage;->BIT_ORDER:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mSortDES:Z

    .line 118
    sget v1, Lcom/htc/album/modules/collection/SimpleImage;->BIT_DRM:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIsDrm:Z

    .line 119
    sget v1, Lcom/htc/album/modules/collection/SimpleImage;->BIT_VIDEO:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_2

    :goto_2
    iput-boolean v2, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIsVideo:Z

    .line 120
    return-void

    :cond_0
    move v1, v3

    .line 117
    goto :goto_0

    :cond_1
    move v1, v3

    .line 118
    goto :goto_1

    :cond_2
    move v2, v3

    .line 119
    goto :goto_2
.end method

.method public update(Ljava/lang/String;Ljava/lang/String;JIIJ)V
    .locals 4
    .parameter "filePath"
    .parameter "mimeType"
    .parameter "dateModified"
    .parameter "degree"
    .parameter "mediaType"
    .parameter "fileSize"

    .prologue
    const/16 v3, 0xe0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 50
    iput-object p1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mFilePath:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcom/htc/album/modules/collection/SimpleImage;->mMimeType:Ljava/lang/String;

    .line 52
    iput-wide p3, p0, Lcom/htc/album/modules/collection/SimpleImage;->mDateModified:J

    .line 53
    iput p5, p0, Lcom/htc/album/modules/collection/SimpleImage;->mDegreeRotated:I

    .line 54
    iput p6, p0, Lcom/htc/album/modules/collection/SimpleImage;->mMediaType:I

    .line 55
    const/16 v0, 0xe

    if-eq p6, v0, :cond_0

    if-ne p6, v3, :cond_3

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIsDrm:Z

    .line 56
    const/16 v0, 0x10

    if-eq p6, v0, :cond_1

    if-ne p6, v3, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    iput-boolean v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIsVideo:Z

    .line 57
    iput-wide p7, p0, Lcom/htc/album/modules/collection/SimpleImage;->mFileSize:J

    .line 58
    return-void

    :cond_3
    move v0, v1

    .line 55
    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "out"
    .parameter "arg1"

    .prologue
    .line 129
    iget-object v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mFilePath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    iget-object v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mMimeType:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    iget-wide v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mDateModified:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 132
    iget v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mDegreeRotated:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    iget v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mMediaType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    iget-wide v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mFileSize:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 136
    const/4 v0, 0x0

    .line 137
    .local v0, myValue:B
    iget-boolean v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mSortDES:Z

    if-eqz v1, :cond_0

    .line 138
    sget v1, Lcom/htc/album/modules/collection/SimpleImage;->BIT_ORDER:I

    or-int/2addr v1, v0

    int-to-byte v0, v1

    .line 139
    :cond_0
    iget-boolean v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIsDrm:Z

    if-eqz v1, :cond_1

    .line 140
    sget v1, Lcom/htc/album/modules/collection/SimpleImage;->BIT_DRM:I

    or-int/2addr v1, v0

    int-to-byte v0, v1

    .line 141
    :cond_1
    iget-boolean v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIsVideo:Z

    if-eqz v1, :cond_2

    .line 142
    sget v1, Lcom/htc/album/modules/collection/SimpleImage;->BIT_VIDEO:I

    or-int/2addr v1, v0

    int-to-byte v0, v1

    .line 143
    :cond_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 144
    return-void
.end method
