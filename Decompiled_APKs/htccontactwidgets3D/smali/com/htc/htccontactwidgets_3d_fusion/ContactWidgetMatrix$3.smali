.class Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$3;
.super Ljava/lang/Object;
.source "ContactWidgetMatrix.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->onDestroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;


# direct methods
.method constructor <init>(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)V
    .locals 0
    .parameter

    .prologue
    .line 882
    iput-object p1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$3;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 884
    iget-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$3;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    iget-object v3, v2, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mDestoryIndicator:Ljava/lang/Object;

    monitor-enter v3

    .line 886
    :try_start_0
    iget-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$3;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mIndicatorReqList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$2400(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 888
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$3;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mIndicatorReqList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$2400(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 889
    iget-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$3;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mIndicatorReqList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$2400(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_0

    .line 890
    monitor-exit v3

    .line 902
    .end local v0           #i:I
    :goto_1
    return-void

    .line 891
    .restart local v0       #i:I
    :cond_0
    iget-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$3;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mIndicatorReqList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$2400(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    .line 892
    .local v1, indicatorReq:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;
    invoke-virtual {v1}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->close()V

    .line 888
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 895
    .end local v1           #indicatorReq:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;
    :cond_1
    iget-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$3;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mIndicatorReqList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$2400(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 897
    iget-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$3;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mIndicatorReqList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$2400(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 898
    iget-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$3;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    const/4 v4, 0x0

    #setter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mIndicatorReqList:Ljava/util/ArrayList;
    invoke-static {v2, v4}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$2402(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 901
    .end local v0           #i:I
    :cond_2
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
