.class Lcom/android/settings/RingerVolumePreference$SavedState;
.super Lcom/htc/preference/HtcPreference$BaseSavedState;
.source "RingerVolumePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/RingerVolumePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/settings/RingerVolumePreference$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public RingerMode:I

.field mVolumeStore:[Lcom/htc/preference/HtcVolumePreference$VolumeStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 479
    new-instance v0, Lcom/android/settings/RingerVolumePreference$SavedState$1;

    invoke-direct {v0}, Lcom/android/settings/RingerVolumePreference$SavedState$1;-><init>()V

    sput-object v0, Lcom/android/settings/RingerVolumePreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "source"

    .prologue
    .line 447
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcPreference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 448
    invoke-static {}, Lcom/android/settings/RingerVolumePreference;->access$300()[I

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [Lcom/htc/preference/HtcVolumePreference$VolumeStore;

    iput-object v1, p0, Lcom/android/settings/RingerVolumePreference$SavedState;->mVolumeStore:[Lcom/htc/preference/HtcVolumePreference$VolumeStore;

    .line 449
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-static {}, Lcom/android/settings/RingerVolumePreference;->access$300()[I

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 450
    iget-object v1, p0, Lcom/android/settings/RingerVolumePreference$SavedState;->mVolumeStore:[Lcom/htc/preference/HtcVolumePreference$VolumeStore;

    new-instance v2, Lcom/htc/preference/HtcVolumePreference$VolumeStore;

    invoke-direct {v2}, Lcom/htc/preference/HtcVolumePreference$VolumeStore;-><init>()V

    aput-object v2, v1, v0

    .line 451
    iget-object v1, p0, Lcom/android/settings/RingerVolumePreference$SavedState;->mVolumeStore:[Lcom/htc/preference/HtcVolumePreference$VolumeStore;

    aget-object v1, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/htc/preference/HtcVolumePreference$VolumeStore;->volume:I

    .line 452
    iget-object v1, p0, Lcom/android/settings/RingerVolumePreference$SavedState;->mVolumeStore:[Lcom/htc/preference/HtcVolumePreference$VolumeStore;

    aget-object v1, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/htc/preference/HtcVolumePreference$VolumeStore;->originalVolume:I

    .line 449
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 454
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .parameter "superState"

    .prologue
    .line 476
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcPreference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 477
    return-void
.end method


# virtual methods
.method getVolumeStore(I)[Lcom/htc/preference/HtcVolumePreference$VolumeStore;
    .locals 3
    .parameter "count"

    .prologue
    .line 466
    iget-object v1, p0, Lcom/android/settings/RingerVolumePreference$SavedState;->mVolumeStore:[Lcom/htc/preference/HtcVolumePreference$VolumeStore;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/RingerVolumePreference$SavedState;->mVolumeStore:[Lcom/htc/preference/HtcVolumePreference$VolumeStore;

    array-length v1, v1

    if-eq v1, p1, :cond_1

    .line 467
    :cond_0
    new-array v1, p1, [Lcom/htc/preference/HtcVolumePreference$VolumeStore;

    iput-object v1, p0, Lcom/android/settings/RingerVolumePreference$SavedState;->mVolumeStore:[Lcom/htc/preference/HtcVolumePreference$VolumeStore;

    .line 468
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 469
    iget-object v1, p0, Lcom/android/settings/RingerVolumePreference$SavedState;->mVolumeStore:[Lcom/htc/preference/HtcVolumePreference$VolumeStore;

    new-instance v2, Lcom/htc/preference/HtcVolumePreference$VolumeStore;

    invoke-direct {v2}, Lcom/htc/preference/HtcVolumePreference$VolumeStore;-><init>()V

    aput-object v2, v1, v0

    .line 468
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 472
    .end local v0           #i:I
    :cond_1
    iget-object v1, p0, Lcom/android/settings/RingerVolumePreference$SavedState;->mVolumeStore:[Lcom/htc/preference/HtcVolumePreference$VolumeStore;

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 458
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcPreference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 459
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-static {}, Lcom/android/settings/RingerVolumePreference;->access$300()[I

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 460
    iget-object v1, p0, Lcom/android/settings/RingerVolumePreference$SavedState;->mVolumeStore:[Lcom/htc/preference/HtcVolumePreference$VolumeStore;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/htc/preference/HtcVolumePreference$VolumeStore;->volume:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 461
    iget-object v1, p0, Lcom/android/settings/RingerVolumePreference$SavedState;->mVolumeStore:[Lcom/htc/preference/HtcVolumePreference$VolumeStore;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/htc/preference/HtcVolumePreference$VolumeStore;->originalVolume:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 459
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 463
    :cond_0
    return-void
.end method
