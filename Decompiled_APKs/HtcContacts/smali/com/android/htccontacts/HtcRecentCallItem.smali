.class public Lcom/android/htccontacts/HtcRecentCallItem;
.super Landroid/widget/LinearLayout;
.source "HtcRecentCallItem.java"


# instance fields
.field mBitmap:Landroid/graphics/Bitmap;

.field mLookUpKey:Ljava/lang/String;

.field mNumber:Ljava/lang/String;

.field mPersonId:J

.field mRecordNumber:J

.field private mbSim:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method


# virtual methods
.method public isSim()Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/android/htccontacts/HtcRecentCallItem;->mbSim:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 48
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 49
    return-void
.end method

.method protected setLookUpKey(Ljava/lang/String;)V
    .locals 0
    .parameter "lookupkey"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/htccontacts/HtcRecentCallItem;->mLookUpKey:Ljava/lang/String;

    .line 70
    return-void
.end method

.method protected setNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "number"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/htccontacts/HtcRecentCallItem;->mNumber:Ljava/lang/String;

    .line 59
    return-void
.end method

.method protected setPersonId(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 53
    iput-wide p1, p0, Lcom/android/htccontacts/HtcRecentCallItem;->mPersonId:J

    .line 54
    return-void
.end method

.method protected setRecordNumber(J)V
    .locals 0
    .parameter "recordNumber"

    .prologue
    .line 64
    iput-wide p1, p0, Lcom/android/htccontacts/HtcRecentCallItem;->mRecordNumber:J

    .line 65
    return-void
.end method

.method public setSim(Z)V
    .locals 0
    .parameter "sim"

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/android/htccontacts/HtcRecentCallItem;->mbSim:Z

    .line 33
    return-void
.end method
