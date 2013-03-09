.class final Lcom/google/android/voicesearch/actions/CallContactAction$1;
.super Ljava/lang/Object;
.source "CallContactAction.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/actions/CallContactAction;
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
        "Lcom/google/android/voicesearch/actions/CallContactAction;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/voicesearch/actions/CallContactAction;
    .locals 2
    .parameter "source"

    .prologue
    .line 81
    new-instance v0, Lcom/google/android/voicesearch/actions/CallContactAction;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/voicesearch/actions/CallContactAction;-><init>(Landroid/os/Parcel;Lcom/google/android/voicesearch/actions/CallContactAction$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lcom/google/android/voicesearch/actions/CallContactAction$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/voicesearch/actions/CallContactAction;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/voicesearch/actions/CallContactAction;
    .locals 1
    .parameter "size"

    .prologue
    .line 86
    new-array v0, p1, [Lcom/google/android/voicesearch/actions/CallContactAction;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lcom/google/android/voicesearch/actions/CallContactAction$1;->newArray(I)[Lcom/google/android/voicesearch/actions/CallContactAction;

    move-result-object v0

    return-object v0
.end method
