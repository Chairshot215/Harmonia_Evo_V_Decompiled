.class Lcom/android/htcdialer/Dialer$5;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "Dialer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htcdialer/Dialer;->initListGestureDetector()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htcdialer/Dialer;


# direct methods
.method constructor <init>(Lcom/android/htcdialer/Dialer;)V
    .locals 0
    .parameter

    .prologue
    .line 905
    iput-object p1, p0, Lcom/android/htcdialer/Dialer$5;->this$0:Lcom/android/htcdialer/Dialer;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 10
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 948
    const-string v7, "HtcDialer"

    const-string v8, "onFling"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    sget v7, Lcom/android/htcdialer/util/BuildUtils;->SENSE_VISION:F

    const v8, 0x40066666

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_1

    iget-object v7, p0, Lcom/android/htcdialer/Dialer$5;->this$0:Lcom/android/htcdialer/Dialer;

    invoke-virtual {v7}, Lcom/android/htcdialer/Dialer;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->navigation:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    const/4 v3, 0x1

    .line 954
    .local v3, isNumberSwitchable:Z
    :goto_0
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 955
    :cond_0
    const-string v7, "HtcDialer"

    const-string v8, "null motionevent pointer exception."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    const-string v7, "HtcDialer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "e1: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    const-string v7, "HtcDialer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "e2: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    const/4 v7, 0x0

    .line 994
    :goto_1
    return v7

    .line 950
    .end local v3           #isNumberSwitchable:Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 963
    .restart local v3       #isNumberSwitchable:Z
    :cond_2
    iget-object v7, p0, Lcom/android/htcdialer/Dialer$5;->this$0:Lcom/android/htcdialer/Dialer;

    #getter for: Lcom/android/htcdialer/Dialer;->mSwitchNumberThreshold:F
    invoke-static {v7}, Lcom/android/htcdialer/Dialer;->access$1600(Lcom/android/htcdialer/Dialer;)F

    move-result v7

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-nez v7, :cond_3

    .line 964
    iget-object v7, p0, Lcom/android/htcdialer/Dialer$5;->this$0:Lcom/android/htcdialer/Dialer;

    #calls: Lcom/android/htcdialer/Dialer;->initSwitchNumberThreshold()V
    invoke-static {v7}, Lcom/android/htcdialer/Dialer;->access$1700(Lcom/android/htcdialer/Dialer;)V

    .line 967
    :cond_3
    if-eqz v3, :cond_5

    iget-object v7, p0, Lcom/android/htcdialer/Dialer$5;->this$0:Lcom/android/htcdialer/Dialer;

    #getter for: Lcom/android/htcdialer/Dialer;->mSwitchNumberThreshold:F
    invoke-static {v7}, Lcom/android/htcdialer/Dialer;->access$1600(Lcom/android/htcdialer/Dialer;)F

    move-result v7

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget-object v8, p0, Lcom/android/htcdialer/Dialer$5;->this$0:Lcom/android/htcdialer/Dialer;

    #getter for: Lcom/android/htcdialer/Dialer;->mSwitchNumberThreshold:F
    invoke-static {v8}, Lcom/android/htcdialer/Dialer;->access$1600(Lcom/android/htcdialer/Dialer;)F

    move-result v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_5

    .line 970
    iget-object v7, p0, Lcom/android/htcdialer/Dialer$5;->this$0:Lcom/android/htcdialer/Dialer;

    invoke-virtual {v7}, Lcom/android/htcdialer/Dialer;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v4

    .line 971
    .local v4, lv:Lcom/htc/widget/HtcListView;
    if-eqz v4, :cond_4

    if-eqz p1, :cond_4

    if-nez p2, :cond_6

    .line 972
    :cond_4
    const-string v7, "HtcDialer"

    const-string v8, "onFling() lv == null || e1 == null || e2 == null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    .end local v4           #lv:Lcom/htc/widget/HtcListView;
    :cond_5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v7

    goto :goto_1

    .line 974
    .restart local v4       #lv:Lcom/htc/widget/HtcListView;
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v4, v7, v8}, Lcom/htc/widget/HtcListView;->pointToPosition(II)I

    move-result v5

    .line 975
    .local v5, p1:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v4, v7, v8}, Lcom/htc/widget/HtcListView;->pointToPosition(II)I

    move-result v6

    .line 976
    .local v6, p2:I
    if-ne v5, v6, :cond_5

    const/4 v7, -0x1

    if-le v5, v7, :cond_5

    .line 977
    invoke-virtual {v4}, Lcom/htc/widget/HtcListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 978
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-eqz v0, :cond_5

    .line 979
    instance-of v7, v0, Lcom/htc/widget/HtcHeaderViewListAdapter;

    if-eqz v7, :cond_7

    .line 980
    check-cast v0, Lcom/htc/widget/HtcHeaderViewListAdapter;

    .end local v0           #adapter:Landroid/widget/ListAdapter;
    invoke-virtual {v0}, Lcom/htc/widget/HtcHeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 982
    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    :cond_7
    const/4 v7, 0x0

    cmpl-float v7, p3, v7

    if-lez v7, :cond_9

    const/4 v2, 0x1

    .line 984
    .local v2, isForwardRight:Z
    :goto_2
    if-eqz v0, :cond_8

    .line 985
    invoke-interface {v0, v5}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htcdialer/search/SearchableObject;

    .line 986
    .local v1, data:Lcom/android/htcdialer/search/SearchableObject;
    check-cast v0, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;

    .end local v0           #adapter:Landroid/widget/ListAdapter;
    invoke-virtual {v0, v2, v1}, Lcom/android/htcdialer/Dialer$DialerSearchListAdapter;->scrollPhoneNumber(ZLcom/android/htcdialer/search/SearchableObject;)Z

    .line 988
    .end local v1           #data:Lcom/android/htcdialer/search/SearchableObject;
    :cond_8
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 982
    .end local v2           #isForwardRight:Z
    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    :cond_9
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v0, 0x0

    .line 920
    iget-object v1, p0, Lcom/android/htcdialer/Dialer$5;->this$0:Lcom/android/htcdialer/Dialer;

    #getter for: Lcom/android/htcdialer/Dialer;->mItemScrollThread:F
    invoke-static {v1}, Lcom/android/htcdialer/Dialer;->access$1300(Lcom/android/htcdialer/Dialer;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 921
    iget-object v1, p0, Lcom/android/htcdialer/Dialer$5;->this$0:Lcom/android/htcdialer/Dialer;

    #calls: Lcom/android/htcdialer/Dialer;->initItemRowHeightData()V
    invoke-static {v1}, Lcom/android/htcdialer/Dialer;->access$1400(Lcom/android/htcdialer/Dialer;)V

    .line 923
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_3

    .line 924
    :cond_1
    const-string v1, "HtcDialer"

    const-string v2, "null motionevent pointer exception."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    const-string v1, "HtcDialer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "e1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    const-string v1, "HtcDialer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "e2: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    :cond_2
    :goto_0
    return v0

    .line 929
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v2, p0, Lcom/android/htcdialer/Dialer$5;->this$0:Lcom/android/htcdialer/Dialer;

    #getter for: Lcom/android/htcdialer/Dialer;->mItemScrollThread:F
    invoke-static {v2}, Lcom/android/htcdialer/Dialer;->access$1300(Lcom/android/htcdialer/Dialer;)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 930
    iget-object v1, p0, Lcom/android/htcdialer/Dialer$5;->this$0:Lcom/android/htcdialer/Dialer;

    #getter for: Lcom/android/htcdialer/Dialer;->mDialpad:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/htcdialer/Dialer;->access$1500(Lcom/android/htcdialer/Dialer;)Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/htcdialer/Dialer$5;->this$0:Lcom/android/htcdialer/Dialer;

    #getter for: Lcom/android/htcdialer/Dialer;->mDialpad:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/htcdialer/Dialer;->access$1500(Lcom/android/htcdialer/Dialer;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 932
    invoke-static {}, Lcom/android/htcdialer/util/ConfigUtils;->isLandscapeInCarTypeUiMode()Z

    move-result v0

    if-nez v0, :cond_4

    .line 933
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$5;->this$0:Lcom/android/htcdialer/Dialer;

    #calls: Lcom/android/htcdialer/Dialer;->hideDialpad()V
    invoke-static {v0}, Lcom/android/htcdialer/Dialer;->access$1200(Lcom/android/htcdialer/Dialer;)V

    .line 935
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method
