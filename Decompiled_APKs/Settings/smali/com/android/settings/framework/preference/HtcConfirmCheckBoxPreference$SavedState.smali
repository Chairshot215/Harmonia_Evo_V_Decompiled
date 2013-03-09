.class Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$SavedState;
.super Lcom/htc/preference/HtcPreference$BaseSavedState;
.source "HtcConfirmCheckBoxPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference;
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
            "Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field isShowing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 232
    new-instance v0, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$SavedState$1;

    invoke-direct {v0}, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$SavedState$1;-><init>()V

    sput-object v0, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "source"

    .prologue
    const/4 v0, 0x1

    .line 218
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcPreference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$SavedState;->isShowing:Z

    .line 220
    return-void

    .line 219
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .parameter "superState"

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcPreference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 224
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 228
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcPreference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 229
    iget-boolean v0, p0, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$SavedState;->isShowing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    return-void

    .line 229
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
