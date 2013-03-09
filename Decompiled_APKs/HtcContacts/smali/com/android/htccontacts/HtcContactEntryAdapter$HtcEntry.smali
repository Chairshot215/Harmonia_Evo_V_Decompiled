.class public Lcom/android/htccontacts/HtcContactEntryAdapter$HtcEntry;
.super Ljava/lang/Object;
.source "HtcContactEntryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/HtcContactEntryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HtcEntry"
.end annotation


# instance fields
.field protected kind:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "p"

    .prologue
    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/htccontacts/HtcContactEntryAdapter$HtcEntry;->kind:I

    .line 114
    return-void
.end method

.method protected writeToParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "p"

    .prologue
    .line 109
    iget v0, p0, Lcom/android/htccontacts/HtcContactEntryAdapter$HtcEntry;->kind:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    return-void
.end method
