.class public Lcom/android/htccontacts/widget/HtcAbsListViewOnScroll;
.super Ljava/lang/Object;
.source "HtcAbsListViewOnScroll.java"

# interfaces
.implements Lcom/htc/widget/HtcAbsListView$OnScrollListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "HtcAbsListViewOnScroll"


# instance fields
.field private mHtcAbsListViewOnFlingListener:Lcom/android/htccontacts/widget/HtcAbsListViewOnFlingListener;

.field private mOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

.field private mbListViewFling:Z


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/widget/HtcAbsListViewOnFlingListener;)V
    .locals 0
    .parameter "fl"

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/htccontacts/widget/HtcAbsListViewOnScroll;->mHtcAbsListViewOnFlingListener:Lcom/android/htccontacts/widget/HtcAbsListViewOnFlingListener;

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/android/htccontacts/widget/HtcAbsListViewOnFlingListener;Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V
    .locals 0
    .parameter "fl"
    .parameter "sl"

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/htccontacts/widget/HtcAbsListViewOnScroll;->mHtcAbsListViewOnFlingListener:Lcom/android/htccontacts/widget/HtcAbsListViewOnFlingListener;

    .line 47
    iput-object p2, p0, Lcom/android/htccontacts/widget/HtcAbsListViewOnScroll;->mOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    .line 48
    return-void
.end method


# virtual methods
.method public isFling()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/htccontacts/widget/HtcAbsListViewOnScroll;->mbListViewFling:Z

    return v0
.end method

.method public onScroll(Lcom/htc/widget/HtcAbsListView;III)V
    .locals 1
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcAbsListViewOnScroll;->mOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcAbsListViewOnScroll;->mOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/htc/widget/HtcAbsListView$OnScrollListener;->onScroll(Lcom/htc/widget/HtcAbsListView;III)V

    .line 54
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 1
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 60
    packed-switch p2, :pswitch_data_0

    .line 76
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcAbsListViewOnScroll;->mOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcAbsListViewOnScroll;->mOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Lcom/htc/widget/HtcAbsListView$OnScrollListener;->onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V

    .line 78
    :cond_1
    return-void

    .line 63
    :pswitch_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/widget/HtcAbsListViewOnScroll;->mbListViewFling:Z

    .line 64
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcAbsListViewOnScroll;->mHtcAbsListViewOnFlingListener:Lcom/android/htccontacts/widget/HtcAbsListViewOnFlingListener;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcAbsListViewOnScroll;->mHtcAbsListViewOnFlingListener:Lcom/android/htccontacts/widget/HtcAbsListViewOnFlingListener;

    invoke-interface {v0, p1}, Lcom/android/htccontacts/widget/HtcAbsListViewOnFlingListener;->onFlingStart(Lcom/htc/widget/HtcAbsListView;)V

    goto :goto_0

    .line 68
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/htccontacts/widget/HtcAbsListViewOnScroll;->mbListViewFling:Z

    if-eqz v0, :cond_0

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/widget/HtcAbsListViewOnScroll;->mbListViewFling:Z

    .line 71
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcAbsListViewOnScroll;->mHtcAbsListViewOnFlingListener:Lcom/android/htccontacts/widget/HtcAbsListViewOnFlingListener;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcAbsListViewOnScroll;->mHtcAbsListViewOnFlingListener:Lcom/android/htccontacts/widget/HtcAbsListViewOnFlingListener;

    invoke-interface {v0, p1}, Lcom/android/htccontacts/widget/HtcAbsListViewOnFlingListener;->onFlingEnd(Lcom/htc/widget/HtcAbsListView;)V

    goto :goto_0

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
