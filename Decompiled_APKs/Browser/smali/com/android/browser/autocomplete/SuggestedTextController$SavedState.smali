.class public Lcom/android/browser/autocomplete/SuggestedTextController$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SuggestedTextController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/autocomplete/SuggestedTextController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/browser/autocomplete/SuggestedTextController$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mSelEnd:I

.field mSelStart:I

.field mSuggestedText:Ljava/lang/String;

.field mUserText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 443
    new-instance v0, Lcom/android/browser/autocomplete/SuggestedTextController$SavedState$1;

    invoke-direct {v0}, Lcom/android/browser/autocomplete/SuggestedTextController$SavedState$1;-><init>()V

    sput-object v0, Lcom/android/browser/autocomplete/SuggestedTextController$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 457
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 458
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/autocomplete/SuggestedTextController$SavedState;->mUserText:Ljava/lang/String;

    .line 459
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/autocomplete/SuggestedTextController$SavedState;->mSuggestedText:Ljava/lang/String;

    .line 460
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/browser/autocomplete/SuggestedTextController$SavedState;->mSelStart:I

    .line 461
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/browser/autocomplete/SuggestedTextController$SavedState;->mSelEnd:I

    .line 462
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/browser/autocomplete/SuggestedTextController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 423
    invoke-direct {p0, p1}, Lcom/android/browser/autocomplete/SuggestedTextController$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .parameter "superState"

    .prologue
    .line 430
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 431
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 435
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 436
    iget-object v0, p0, Lcom/android/browser/autocomplete/SuggestedTextController$SavedState;->mUserText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 437
    iget-object v0, p0, Lcom/android/browser/autocomplete/SuggestedTextController$SavedState;->mSuggestedText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 438
    iget v0, p0, Lcom/android/browser/autocomplete/SuggestedTextController$SavedState;->mSelStart:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 439
    iget v0, p0, Lcom/android/browser/autocomplete/SuggestedTextController$SavedState;->mSelEnd:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 440
    return-void
.end method
