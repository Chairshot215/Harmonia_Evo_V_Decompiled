.class final Lcom/google/android/feedback/FeedbackSession$Screenshot$1;
.super Ljava/lang/Object;
.source "FeedbackSession.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/feedback/FeedbackSession$Screenshot;
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
        "Lcom/google/android/feedback/FeedbackSession$Screenshot;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 572
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/feedback/FeedbackSession$Screenshot;
    .locals 1
    .parameter "source"

    .prologue
    .line 575
    invoke-static {p1}, Lcom/google/android/feedback/FeedbackSession$Screenshot;->readFromParcel(Landroid/os/Parcel;)Lcom/google/android/feedback/FeedbackSession$Screenshot;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 572
    invoke-virtual {p0, p1}, Lcom/google/android/feedback/FeedbackSession$Screenshot$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/feedback/FeedbackSession$Screenshot;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/feedback/FeedbackSession$Screenshot;
    .locals 1
    .parameter "size"

    .prologue
    .line 580
    new-array v0, p1, [Lcom/google/android/feedback/FeedbackSession$Screenshot;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 572
    invoke-virtual {p0, p1}, Lcom/google/android/feedback/FeedbackSession$Screenshot$1;->newArray(I)[Lcom/google/android/feedback/FeedbackSession$Screenshot;

    move-result-object v0

    return-object v0
.end method
