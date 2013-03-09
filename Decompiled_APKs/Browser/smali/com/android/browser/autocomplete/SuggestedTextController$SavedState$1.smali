.class final Lcom/android/browser/autocomplete/SuggestedTextController$SavedState$1;
.super Ljava/lang/Object;
.source "SuggestedTextController.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/autocomplete/SuggestedTextController$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/browser/autocomplete/SuggestedTextController$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/browser/autocomplete/SuggestedTextController$SavedState;
    .locals 2
    .parameter "in"

    .prologue
    .line 447
    new-instance v0, Lcom/android/browser/autocomplete/SuggestedTextController$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/browser/autocomplete/SuggestedTextController$SavedState;-><init>(Landroid/os/Parcel;Lcom/android/browser/autocomplete/SuggestedTextController$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 444
    invoke-virtual {p0, p1}, Lcom/android/browser/autocomplete/SuggestedTextController$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/browser/autocomplete/SuggestedTextController$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/browser/autocomplete/SuggestedTextController$SavedState;
    .locals 1
    .parameter "size"

    .prologue
    .line 452
    new-array v0, p1, [Lcom/android/browser/autocomplete/SuggestedTextController$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 444
    invoke-virtual {p0, p1}, Lcom/android/browser/autocomplete/SuggestedTextController$SavedState$1;->newArray(I)[Lcom/android/browser/autocomplete/SuggestedTextController$SavedState;

    move-result-object v0

    return-object v0
.end method
