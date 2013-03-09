.class final Lcom/htc/widget/HtcAbsListView2$SavedState$1;
.super Ljava/lang/Object;
.source "HtcAbsListView2.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcAbsListView2$SavedState;
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
        "Lcom/htc/widget/HtcAbsListView2$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 893
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/htc/widget/HtcAbsListView2$SavedState;
    .locals 2
    .parameter "in"

    .prologue
    .line 895
    new-instance v0, Lcom/htc/widget/HtcAbsListView2$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/htc/widget/HtcAbsListView2$SavedState;-><init>(Landroid/os/Parcel;Lcom/htc/widget/HtcAbsListView2$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 893
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAbsListView2$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/htc/widget/HtcAbsListView2$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/htc/widget/HtcAbsListView2$SavedState;
    .locals 1
    .parameter "size"

    .prologue
    .line 899
    new-array v0, p1, [Lcom/htc/widget/HtcAbsListView2$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 893
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAbsListView2$SavedState$1;->newArray(I)[Lcom/htc/widget/HtcAbsListView2$SavedState;

    move-result-object v0

    return-object v0
.end method
