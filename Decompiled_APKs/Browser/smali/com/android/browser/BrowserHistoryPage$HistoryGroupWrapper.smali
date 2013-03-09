.class Lcom/android/browser/BrowserHistoryPage$HistoryGroupWrapper;
.super Lcom/android/browser/BrowserHistoryPage$HistoryWrapper;
.source "BrowserHistoryPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BrowserHistoryPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HistoryGroupWrapper"
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;)V
    .locals 0
    .parameter "adapter"

    .prologue
    .line 461
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserHistoryPage$HistoryWrapper;-><init>(Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;)V

    .line 462
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage$HistoryGroupWrapper;->mAdapter:Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;

    invoke-virtual {v0}, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->getGroupCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 471
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 476
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 481
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage$HistoryGroupWrapper;->mAdapter:Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
