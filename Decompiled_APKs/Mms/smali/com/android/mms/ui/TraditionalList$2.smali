.class Lcom/android/mms/ui/TraditionalList$2;
.super Ljava/lang/Object;
.source "TraditionalList.java"

# interfaces
.implements Lcom/htc/widget/HtcAbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/TraditionalList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/TraditionalList;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/TraditionalList;)V
    .locals 0
    .parameter

    .prologue
    .line 353
    iput-object p1, p0, Lcom/android/mms/ui/TraditionalList$2;->this$0:Lcom/android/mms/ui/TraditionalList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Lcom/htc/widget/HtcAbsListView;III)V
    .locals 3
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 357
    iget-object v1, p0, Lcom/android/mms/ui/TraditionalList$2;->this$0:Lcom/android/mms/ui/TraditionalList;

    #getter for: Lcom/android/mms/ui/TraditionalList;->mNeedQueryMore:Z
    invoke-static {v1}, Lcom/android/mms/ui/TraditionalList;->access$100(Lcom/android/mms/ui/TraditionalList;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 362
    :cond_1
    invoke-virtual {p1}, Lcom/htc/widget/HtcAbsListView;->getLastVisiblePosition()I

    move-result v0

    .line 363
    .local v0, nLast:I
    iget-object v1, p0, Lcom/android/mms/ui/TraditionalList$2;->this$0:Lcom/android/mms/ui/TraditionalList;

    #getter for: Lcom/android/mms/ui/TraditionalList;->m_nCurrentQueryCount:I
    invoke-static {v1}, Lcom/android/mms/ui/TraditionalList;->access$200(Lcom/android/mms/ui/TraditionalList;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_0

    .line 365
    const-string v1, "TraditionalList"

    const-string v2, "[onScroll] Query more!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object v1, p0, Lcom/android/mms/ui/TraditionalList$2;->this$0:Lcom/android/mms/ui/TraditionalList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/TraditionalList;->startAsyncQuery(Z)V

    goto :goto_0
.end method

.method public onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 0
    .parameter "view"
    .parameter "arg1"

    .prologue
    .line 374
    return-void
.end method
