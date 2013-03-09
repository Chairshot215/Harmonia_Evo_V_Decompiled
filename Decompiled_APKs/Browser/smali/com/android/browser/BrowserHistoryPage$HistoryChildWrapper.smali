.class Lcom/android/browser/BrowserHistoryPage$HistoryChildWrapper;
.super Lcom/android/browser/BrowserHistoryPage$HistoryWrapper;
.source "BrowserHistoryPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BrowserHistoryPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HistoryChildWrapper"
.end annotation


# instance fields
.field private mSelectedGroup:I


# direct methods
.method public constructor <init>(Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;)V
    .locals 0
    .parameter "adapter"

    .prologue
    .line 491
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserHistoryPage$HistoryWrapper;-><init>(Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;)V

    .line 492
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 501
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage$HistoryChildWrapper;->mAdapter:Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;

    iget v1, p0, Lcom/android/browser/BrowserHistoryPage$HistoryChildWrapper;->mSelectedGroup:I

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->getChildrenCount(I)I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 506
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 511
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 516
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage$HistoryChildWrapper;->mAdapter:Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;

    iget v1, p0, Lcom/android/browser/BrowserHistoryPage$HistoryChildWrapper;->mSelectedGroup:I

    const/4 v3, 0x0

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method setSelectedGroup(I)V
    .locals 0
    .parameter "groupPosition"

    .prologue
    .line 495
    iput p1, p0, Lcom/android/browser/BrowserHistoryPage$HistoryChildWrapper;->mSelectedGroup:I

    .line 496
    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage$HistoryChildWrapper;->notifyDataSetChanged()V

    .line 497
    return-void
.end method
