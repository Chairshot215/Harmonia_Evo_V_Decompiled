.class Lcom/android/htcdialer/BaseSmartSearchList$2;
.super Ljava/lang/Object;
.source "BaseSmartSearchList.java"

# interfaces
.implements Lcom/htc/widget/HtcAbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htcdialer/BaseSmartSearchList;->initScrollListenerIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htcdialer/BaseSmartSearchList;


# direct methods
.method constructor <init>(Lcom/android/htcdialer/BaseSmartSearchList;)V
    .locals 0
    .parameter

    .prologue
    .line 431
    iput-object p1, p0, Lcom/android/htcdialer/BaseSmartSearchList$2;->this$0:Lcom/android/htcdialer/BaseSmartSearchList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Lcom/htc/widget/HtcAbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 436
    return-void
.end method

.method public onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 0
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 439
    if-nez p2, :cond_0

    .line 440
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 442
    :cond_0
    return-void
.end method
