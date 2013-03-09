.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final mini(II)I
    .locals 0

    if-le p2, p1, :cond_0

    :goto_0
    return p1

    :cond_0
    move p1, p2

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 14

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v12, 0x0

    #calls: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setTouchable(Z)V
    invoke-static {v11, v12}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v12, v11, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatest:Lcom/android/systemui/statusbar/NotificationData;

    monitor-enter v12

    :try_start_0
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v11, v11, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestItems:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getChildCount()I

    move-result v5

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v11, v11, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v11}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v7

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v11, v11, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v11}, Landroid/widget/ScrollView;->getHeight()I

    move-result v11

    add-int v6, v7, v11

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v11, v11, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestItems:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getTop()I

    move-result v4

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v11, v11, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestItems:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getHeight()I

    move-result v11

    add-int v3, v4, v11

    const/4 v10, 0x0

    const/4 v9, 0x0

    if-ge v4, v6, :cond_0

    if-ge v4, v7, :cond_2

    sub-int v10, v7, v4

    :goto_0
    if-le v3, v6, :cond_3

    sub-int v9, v6, v4

    :cond_0
    :goto_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v5}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v5, :cond_4

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v11, v11, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestItems:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v11, v2}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v11, v11, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestItems:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v11, v1}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v11

    if-le v11, v10, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v11

    if-ge v11, v9, :cond_1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    goto :goto_0

    :cond_3
    sub-int v9, v3, v4

    goto :goto_1

    :cond_4
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v11, Ljava/lang/Thread;

    new-instance v13, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5$1;

    invoke-direct {v13, p0, v0, v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5;ILjava/util/ArrayList;)V

    invoke-direct {v11, v13}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v11}, Ljava/lang/Thread;->start()V

    monitor-exit v12

    return-void

    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11
.end method
