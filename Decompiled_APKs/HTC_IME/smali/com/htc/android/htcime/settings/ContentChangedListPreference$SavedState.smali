.class Lcom/htc/android/htcime/settings/ContentChangedListPreference$SavedState;
.super Lcom/htc/preference/HtcPreference$BaseSavedState;
.source "ContentChangedListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/settings/ContentChangedListPreference;
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
            "Lcom/htc/android/htcime/settings/ContentChangedListPreference$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field entry:[Ljava/lang/String;

.field entryValue:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 131
    new-instance v0, Lcom/htc/android/htcime/settings/ContentChangedListPreference$SavedState$1;

    invoke-direct {v0}, Lcom/htc/android/htcime/settings/ContentChangedListPreference$SavedState$1;-><init>()V

    sput-object v0, Lcom/htc/android/htcime/settings/ContentChangedListPreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcPreference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/settings/ContentChangedListPreference$SavedState;->entry:[Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/settings/ContentChangedListPreference$SavedState;->entryValue:[Ljava/lang/String;

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .parameter "superState"

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcPreference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 129
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 121
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcPreference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 122
    iget-object v0, p0, Lcom/htc/android/htcime/settings/ContentChangedListPreference$SavedState;->entry:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/htc/android/htcime/settings/ContentChangedListPreference$SavedState;->entryValue:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 125
    return-void
.end method
