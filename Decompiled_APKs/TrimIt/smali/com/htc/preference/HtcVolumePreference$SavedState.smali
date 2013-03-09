.class Lcom/htc/preference/HtcVolumePreference$SavedState;
.super Lcom/htc/preference/HtcPreference$BaseSavedState;
.source "HtcVolumePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/preference/HtcVolumePreference;
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
            "Lcom/htc/preference/HtcVolumePreference$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mVolumeStore:Lcom/htc/preference/HtcVolumePreference$VolumeStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 246
    new-instance v0, Lcom/htc/preference/HtcVolumePreference$SavedState$1;

    invoke-direct {v0}, Lcom/htc/preference/HtcVolumePreference$SavedState$1;-><init>()V

    sput-object v0, Lcom/htc/preference/HtcVolumePreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "source"

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcPreference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 223
    new-instance v0, Lcom/htc/preference/HtcVolumePreference$VolumeStore;

    invoke-direct {v0}, Lcom/htc/preference/HtcVolumePreference$VolumeStore;-><init>()V

    iput-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SavedState;->mVolumeStore:Lcom/htc/preference/HtcVolumePreference$VolumeStore;

    .line 227
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SavedState;->mVolumeStore:Lcom/htc/preference/HtcVolumePreference$VolumeStore;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/htc/preference/HtcVolumePreference$VolumeStore;->volume:I

    .line 228
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SavedState;->mVolumeStore:Lcom/htc/preference/HtcVolumePreference$VolumeStore;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/htc/preference/HtcVolumePreference$VolumeStore;->originalVolume:I

    .line 229
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 1
    .parameter "superState"

    .prologue
    .line 243
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcPreference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 223
    new-instance v0, Lcom/htc/preference/HtcVolumePreference$VolumeStore;

    invoke-direct {v0}, Lcom/htc/preference/HtcVolumePreference$VolumeStore;-><init>()V

    iput-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SavedState;->mVolumeStore:Lcom/htc/preference/HtcVolumePreference$VolumeStore;

    .line 244
    return-void
.end method


# virtual methods
.method getVolumeStore()Lcom/htc/preference/HtcVolumePreference$VolumeStore;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SavedState;->mVolumeStore:Lcom/htc/preference/HtcVolumePreference$VolumeStore;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 233
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcPreference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 234
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SavedState;->mVolumeStore:Lcom/htc/preference/HtcVolumePreference$VolumeStore;

    iget v0, v0, Lcom/htc/preference/HtcVolumePreference$VolumeStore;->volume:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    iget-object v0, p0, Lcom/htc/preference/HtcVolumePreference$SavedState;->mVolumeStore:Lcom/htc/preference/HtcVolumePreference$VolumeStore;

    iget v0, v0, Lcom/htc/preference/HtcVolumePreference$VolumeStore;->originalVolume:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    return-void
.end method
