.class Lcom/android/mms/ui/ConversationList$9;
.super Ljava/lang/Object;
.source "ConversationList.java"

# interfaces
.implements Lcom/htc/widget/HtcAbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationList;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationList;)V
    .locals 0
    .parameter

    .prologue
    .line 2467
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$9;->this$0:Lcom/android/mms/ui/ConversationList;

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
    .line 2471
    return-void
.end method

.method public onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 3
    .parameter "view"
    .parameter "scrollState"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2476
    if-nez p2, :cond_0

    .line 2477
    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->getInstance()Lcom/android/mms/util/ContactNameCache;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/mms/util/ContactNameCache;->setScrolling(Z)V

    .line 2478
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->disableGcForExternalAlloc(Z)V

    .line 2484
    :goto_0
    return-void

    .line 2481
    :cond_0
    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->getInstance()Lcom/android/mms/util/ContactNameCache;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/mms/util/ContactNameCache;->setScrolling(Z)V

    .line 2482
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0, v2}, Ldalvik/system/VMRuntime;->disableGcForExternalAlloc(Z)V

    goto :goto_0
.end method
