.class public Landroid/os/storage/StorageVolume;
.super Ljava/lang/Object;
.source "StorageVolume.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/storage/StorageVolume;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_STORAGE_VOLUME:Ljava/lang/String; = "storage_volume"


# instance fields
.field private final mAllowMassStorage:Z

.field private final mDescription:Ljava/lang/String;

.field private final mEmulated:Z

.field private final mLevelId:Ljava/lang/String;

.field private final mMaxFileSize:J

.field private final mMtpReserveSpace:I

.field private final mPath:Ljava/lang/String;

.field private final mRemovable:Z

.field private mStorageId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/storage/StorageVolume$1;

    invoke-direct {v0}, Landroid/os/storage/StorageVolume$1;-><init>()V

    sput-object v0, Landroid/os/storage/StorageVolume;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZIIZJLjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/lang/String;

    iput-object p2, p0, Landroid/os/storage/StorageVolume;->mDescription:Ljava/lang/String;

    iput-boolean p3, p0, Landroid/os/storage/StorageVolume;->mRemovable:Z

    iput-boolean p4, p0, Landroid/os/storage/StorageVolume;->mEmulated:Z

    iput p5, p0, Landroid/os/storage/StorageVolume;->mMtpReserveSpace:I

    iput-object p10, p0, Landroid/os/storage/StorageVolume;->mLevelId:Ljava/lang/String;

    iput-boolean p7, p0, Landroid/os/storage/StorageVolume;->mAllowMassStorage:Z

    iput p6, p0, Landroid/os/storage/StorageVolume;->mStorageId:I

    iput-wide p8, p0, Landroid/os/storage/StorageVolume;->mMaxFileSize:J

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZIIZJLjava/lang/String;Landroid/os/storage/StorageVolume$1;)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Landroid/os/storage/StorageVolume;-><init>(Ljava/lang/String;Ljava/lang/String;ZZIIZJLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZIZJ)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/lang/String;

    iput-object p2, p0, Landroid/os/storage/StorageVolume;->mDescription:Ljava/lang/String;

    iput-boolean p3, p0, Landroid/os/storage/StorageVolume;->mRemovable:Z

    iput-boolean p4, p0, Landroid/os/storage/StorageVolume;->mEmulated:Z

    iput p5, p0, Landroid/os/storage/StorageVolume;->mMtpReserveSpace:I

    const-string/jumbo v0, "none"

    iput-object v0, p0, Landroid/os/storage/StorageVolume;->mLevelId:Ljava/lang/String;

    iput-boolean p6, p0, Landroid/os/storage/StorageVolume;->mAllowMassStorage:Z

    iput-wide p7, p0, Landroid/os/storage/StorageVolume;->mMaxFileSize:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZIZJLjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/lang/String;

    iput-object p2, p0, Landroid/os/storage/StorageVolume;->mDescription:Ljava/lang/String;

    iput-boolean p3, p0, Landroid/os/storage/StorageVolume;->mRemovable:Z

    iput-boolean p4, p0, Landroid/os/storage/StorageVolume;->mEmulated:Z

    iput p5, p0, Landroid/os/storage/StorageVolume;->mMtpReserveSpace:I

    iput-object p9, p0, Landroid/os/storage/StorageVolume;->mLevelId:Ljava/lang/String;

    iput-boolean p6, p0, Landroid/os/storage/StorageVolume;->mAllowMassStorage:Z

    iput-wide p7, p0, Landroid/os/storage/StorageVolume;->mMaxFileSize:J

    return-void
.end method


# virtual methods
.method public allowMassStorage()Z
    .locals 1

    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mAllowMassStorage:Z

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v1, p1, Landroid/os/storage/StorageVolume;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/os/storage/StorageVolume;

    iget-object v1, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/lang/String;

    iget-object v2, v0, Landroid/os/storage/StorageVolume;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getLevelId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mLevelId:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxFileSize()J
    .locals 2

    iget-wide v0, p0, Landroid/os/storage/StorageVolume;->mMaxFileSize:J

    return-wide v0
.end method

.method public getMtpReserveSpace()I
    .locals 1

    iget v0, p0, Landroid/os/storage/StorageVolume;->mMtpReserveSpace:I

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getStorageId()I
    .locals 1

    iget v0, p0, Landroid/os/storage/StorageVolume;->mStorageId:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmulated()Z
    .locals 1

    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mEmulated:Z

    return v0
.end method

.method public isRemovable()Z
    .locals 1

    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mRemovable:Z

    return v0
.end method

.method public setStorageId(I)V
    .locals 1

    add-int/lit8 v0, p1, 0x1

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/os/storage/StorageVolume;->mStorageId:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StorageVolume [mAllowMassStorage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/os/storage/StorageVolume;->mAllowMassStorage:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/storage/StorageVolume;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEmulated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/os/storage/StorageVolume;->mEmulated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMaxFileSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/os/storage/StorageVolume;->mMaxFileSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMtpReserveSpace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/storage/StorageVolume;->mMtpReserveSpace:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRemovable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/os/storage/StorageVolume;->mRemovable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStorageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/storage/StorageVolume;->mStorageId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mRemovable:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mEmulated:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/storage/StorageVolume;->mStorageId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/storage/StorageVolume;->mMtpReserveSpace:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/os/storage/StorageVolume;->mAllowMassStorage:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/os/storage/StorageVolume;->mMaxFileSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/os/storage/StorageVolume;->mLevelId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method
