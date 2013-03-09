.class Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;
.super Landroid/os/AsyncTask;
.source "LandingMyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/landing/LandingMyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetOrderedHistoryCall"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final PAGE_SIZE:I = 0x14


# instance fields
.field private mLatestTimestamp:J

.field private mNeedOneMoreCall:Z

.field private mOldestTimestamp:J

.field private mStartIndex:I

.field private mTotalCount:I

.field final synthetic this$0:Lcom/htc/store/activity/landing/LandingMyActivity;


# direct methods
.method public constructor <init>(Lcom/htc/store/activity/landing/LandingMyActivity;)V
    .locals 2
    .parameter

    .prologue
    .line 916
    iput-object p1, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 911
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;->mOldestTimestamp:J

    .line 912
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;->mLatestTimestamp:J

    .line 917
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;->mTotalCount:I

    .line 918
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;->mNeedOneMoreCall:Z

    .line 919
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 29
    .parameter "params"

    .prologue
    .line 923
    invoke-static {}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$000()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const-string v27, "doInBackground: GetOrderedHistoryListTask"

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 924
    const/4 v2, 0x0

    .line 925
    .local v2, action:I
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;->mNeedOneMoreCall:Z

    move/from16 v24, v0

    if-eqz v24, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnPause:Z
    invoke-static/range {v24 .. v24}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$4100(Lcom/htc/store/activity/landing/LandingMyActivity;)Z

    move-result v24

    if-nez v24, :cond_1e

    .line 926
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/store/activity/landing/LandingMyActivity;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;
    invoke-static/range {v24 .. v24}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$1900(Lcom/htc/store/activity/landing/LandingMyActivity;)Lcom/htc/store/module/rest/RestHelper;

    move-result-object v24

    if-nez v24, :cond_0

    .line 927
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    move-object/from16 v24, v0

    new-instance v25, Lcom/htc/store/module/rest/RestHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    move-object/from16 v26, v0

    #calls: Lcom/htc/store/activity/landing/LandingMyActivity;->getContext()Landroid/app/Activity;
    invoke-static/range {v26 .. v26}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$4200(Lcom/htc/store/activity/landing/LandingMyActivity;)Landroid/app/Activity;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Lcom/htc/store/module/rest/RestHelper;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/htc/store/activity/landing/LandingMyActivity;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;
    invoke-static/range {v24 .. v25}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$1902(Lcom/htc/store/activity/landing/LandingMyActivity;Lcom/htc/store/module/rest/RestHelper;)Lcom/htc/store/module/rest/RestHelper;

    .line 929
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/store/activity/landing/LandingMyActivity;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;
    invoke-static/range {v24 .. v24}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$1900(Lcom/htc/store/activity/landing/LandingMyActivity;)Lcom/htc/store/module/rest/RestHelper;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;->mStartIndex:I

    move/from16 v25, v0

    const/16 v26, 0x14

    invoke-virtual/range {v24 .. v26}, Lcom/htc/store/module/rest/RestHelper;->getOrderedHistoryList(II)Lcom/htc/store/module/rest/RestResult;

    move-result-object v18

    .line 931
    .local v18, result:Lcom/htc/store/module/rest/RestResult;
    move-object/from16 v0, v18

    iget v0, v0, Lcom/htc/store/module/rest/RestResult;->mResultCode:I

    move/from16 v24, v0

    const/16 v25, 0xc8

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1d

    .line 933
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 934
    .local v19, tempToAdd:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 935
    .local v20, tempToUpdate:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 937
    .local v21, tempToUpdateWhenInstalled:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    move-object/from16 v0, v18

    iget-object v15, v0, Lcom/htc/store/module/rest/RestResult;->mResultList:Ljava/util/ArrayList;

    .line 938
    .local v15, onlineOrderedHistoryItemsArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    invoke-static {}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$000()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "onlineOrderedHistoryItemsArray.size = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 939
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/htc/store/module/rest/RestResult;->mAdditional1:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;->mTotalCount:I

    .line 940
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/htc/store/module/rest/RestResult;->mAdditional2:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Ljava/lang/Long;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 941
    .local v12, oldestTime:J
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/htc/store/module/rest/RestResult;->mAdditional3:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Ljava/lang/Long;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 942
    .local v7, latestTime:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;->mOldestTimestamp:J

    move-wide/from16 v24, v0

    sub-long v22, v7, v24

    .line 944
    .local v22, testTimestamp:J
    const-wide/16 v24, 0xbb8

    cmp-long v24, v22, v24

    if-lez v24, :cond_1

    .line 945
    invoke-static {}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$000()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const-string v27, "OOPS!!! Ordered history return the list not in order"

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 947
    :cond_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;->mOldestTimestamp:J

    move-wide/from16 v24, v0

    cmp-long v24, v12, v24

    if-gez v24, :cond_2

    .line 948
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;->mOldestTimestamp:J

    .line 950
    :cond_2
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;->mLatestTimestamp:J

    move-wide/from16 v24, v0

    cmp-long v24, v7, v24

    if-lez v24, :cond_3

    .line 951
    move-object/from16 v0, p0

    iput-wide v7, v0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;->mLatestTimestamp:J

    .line 955
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/store/activity/landing/LandingMyActivity;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static/range {v24 .. v24}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$1500(Lcom/htc/store/activity/landing/LandingMyActivity;)Lcom/htc/store/provider/AccessHelper;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/htc/store/provider/AccessHelper;->getMyActivityItemsIds()Ljava/util/ArrayList;

    move-result-object v10

    .line 956
    .local v10, myActivityItemsIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/store/activity/landing/LandingMyActivity;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static/range {v24 .. v24}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$1500(Lcom/htc/store/activity/landing/LandingMyActivity;)Lcom/htc/store/provider/AccessHelper;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/htc/store/provider/AccessHelper;->getMyActivityInstalledItemsPackageNameOrId()Ljava/util/ArrayList;

    move-result-object v9

    .line 957
    .local v9, myActivityInstalledItemsPackageNameOrId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/store/activity/landing/LandingMyActivity;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static/range {v24 .. v24}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$1500(Lcom/htc/store/activity/landing/LandingMyActivity;)Lcom/htc/store/provider/AccessHelper;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12, v13, v7, v8}, Lcom/htc/store/provider/AccessHelper;->getMyActivityItemsIdsByPurchased(JJ)Ljava/util/ArrayList;

    move-result-object v16

    .line 958
    .local v16, orderedHisotryItemsIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$000()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "local(in database) orderedHisotryItemsIds.size = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 959
    if-eqz v15, :cond_1c

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v24

    if-nez v24, :cond_1c

    .line 960
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/store/module/vo/MyActivityItem;

    .line 961
    .local v5, item:Lcom/htc/store/module/vo/MyActivityItem;
    invoke-virtual {v5}, Lcom/htc/store/module/vo/MyActivityItem;->getOnlineItemId()Ljava/lang/String;

    move-result-object v14

    .line 962
    .local v14, onlineId:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/htc/store/module/vo/MyActivityItem;->getItemPackageName()Ljava/lang/String;

    move-result-object v6

    .line 963
    .local v6, itemPackageName:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 964
    .local v3, emptyPackageName:Z
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_a

    .line 966
    if-nez v3, :cond_4

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_6

    :cond_4
    if-nez v3, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-static {v0, v6}, Lcom/htc/store/util/CommonUtils;->isInstalledPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_6

    :cond_5
    if-eqz v3, :cond_9

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_9

    .line 969
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/store/activity/landing/LandingMyActivity;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static/range {v24 .. v24}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$1500(Lcom/htc/store/activity/landing/LandingMyActivity;)Lcom/htc/store/provider/AccessHelper;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Lcom/htc/store/provider/AccessHelper;->isUpdate(Lcom/htc/store/module/vo/MyActivityItem;)Ljava/lang/String;

    move-result-object v11

    .line 970
    .local v11, needUpdateAndOriginalVersion:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_7

    .line 972
    invoke-virtual {v5, v11}, Lcom/htc/store/module/vo/MyActivityItem;->setItemVersionName(Ljava/lang/String;)V

    .line 973
    const/16 v24, 0xc

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Lcom/htc/store/module/vo/MyActivityItem;->setStatus(I)V

    .line 977
    :goto_2
    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 978
    if-eqz v3, :cond_8

    .line 979
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 986
    .end local v11           #needUpdateAndOriginalVersion:Ljava/lang/String;
    :goto_3
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 987
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 975
    .restart local v11       #needUpdateAndOriginalVersion:Ljava/lang/String;
    :cond_7
    const/16 v24, 0x4

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Lcom/htc/store/module/vo/MyActivityItem;->setStatus(I)V

    goto :goto_2

    .line 981
    :cond_8
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 984
    .end local v11           #needUpdateAndOriginalVersion:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 990
    :cond_a
    if-nez v3, :cond_b

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_c

    :cond_b
    if-eqz v3, :cond_f

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_f

    .line 992
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/store/activity/landing/LandingMyActivity;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static/range {v24 .. v24}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$1500(Lcom/htc/store/activity/landing/LandingMyActivity;)Lcom/htc/store/provider/AccessHelper;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Lcom/htc/store/provider/AccessHelper;->isUpdate(Lcom/htc/store/module/vo/MyActivityItem;)Ljava/lang/String;

    move-result-object v11

    .line 993
    .restart local v11       #needUpdateAndOriginalVersion:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_d

    .line 994
    invoke-virtual {v5, v11}, Lcom/htc/store/module/vo/MyActivityItem;->setItemVersionName(Ljava/lang/String;)V

    .line 995
    const/16 v24, 0xc

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Lcom/htc/store/module/vo/MyActivityItem;->setStatus(I)V

    .line 999
    :goto_4
    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1000
    if-eqz v3, :cond_e

    .line 1001
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 997
    :cond_d
    const/16 v24, 0x4

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Lcom/htc/store/module/vo/MyActivityItem;->setStatus(I)V

    goto :goto_4

    .line 1003
    :cond_e
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1005
    .end local v11           #needUpdateAndOriginalVersion:Ljava/lang/String;
    :cond_f
    if-nez v3, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-static {v0, v6}, Lcom/htc/store/util/CommonUtils;->isInstalledPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_10

    .line 1006
    const/16 v24, 0x4

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Lcom/htc/store/module/vo/MyActivityItem;->setStatus(I)V

    .line 1007
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1009
    :cond_10
    const/16 v24, 0xb

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Lcom/htc/store/module/vo/MyActivityItem;->setStatus(I)V

    .line 1010
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1017
    .end local v3           #emptyPackageName:Z
    .end local v5           #item:Lcom/htc/store/module/vo/MyActivityItem;
    .end local v6           #itemPackageName:Ljava/lang/String;
    .end local v14           #onlineId:Ljava/lang/String;
    :cond_11
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v24

    if-nez v24, :cond_14

    .line 1018
    invoke-static {}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$000()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "ordered items tempToUpdate array : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1020
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/store/activity/landing/LandingMyActivity;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static/range {v24 .. v24}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$1500(Lcom/htc/store/activity/landing/LandingMyActivity;)Lcom/htc/store/provider/AccessHelper;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/store/provider/AccessHelper;->updateMyActivityItems(Ljava/util/ArrayList;)I

    .line 1021
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/store/activity/landing/LandingMyActivity;->mGetOrderedHistoryIcons:Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;
    invoke-static/range {v24 .. v24}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$4300(Lcom/htc/store/activity/landing/LandingMyActivity;)Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;

    move-result-object v24

    if-eqz v24, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/store/activity/landing/LandingMyActivity;->mGetOrderedHistoryIcons:Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;
    invoke-static/range {v24 .. v24}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$4300(Lcom/htc/store/activity/landing/LandingMyActivity;)Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v24

    sget-object v25, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_13

    .line 1022
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    move-object/from16 v24, v0

    new-instance v25, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    move-object/from16 v26, v0

    invoke-direct/range {v25 .. v26}, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;-><init>(Lcom/htc/store/activity/landing/LandingMyActivity;)V

    #setter for: Lcom/htc/store/activity/landing/LandingMyActivity;->mGetOrderedHistoryIcons:Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;
    invoke-static/range {v24 .. v25}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$4302(Lcom/htc/store/activity/landing/LandingMyActivity;Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;)Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;

    .line 1024
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/store/activity/landing/LandingMyActivity;->mGetOrderedHistoryIcons:Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;
    invoke-static/range {v24 .. v24}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$4300(Lcom/htc/store/activity/landing/LandingMyActivity;)Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;->insert(Ljava/util/ArrayList;)V

    .line 1026
    :cond_14
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v24

    if-nez v24, :cond_17

    .line 1027
    invoke-static {}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$000()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "ordered items tempToUpdateWhenInstalled array : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1029
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/store/activity/landing/LandingMyActivity;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static/range {v24 .. v24}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$1500(Lcom/htc/store/activity/landing/LandingMyActivity;)Lcom/htc/store/provider/AccessHelper;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/store/provider/AccessHelper;->updateMyActivityOrderedHistoryItemsWhenInstalled(Ljava/util/ArrayList;)I

    .line 1030
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/store/activity/landing/LandingMyActivity;->mGetOrderedHistoryIcons:Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;
    invoke-static/range {v24 .. v24}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$4300(Lcom/htc/store/activity/landing/LandingMyActivity;)Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;

    move-result-object v24

    if-eqz v24, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/store/activity/landing/LandingMyActivity;->mGetOrderedHistoryIcons:Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;
    invoke-static/range {v24 .. v24}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$4300(Lcom/htc/store/activity/landing/LandingMyActivity;)Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v24

    sget-object v25, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_16

    .line 1031
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    move-object/from16 v24, v0

    new-instance v25, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    move-object/from16 v26, v0

    invoke-direct/range {v25 .. v26}, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;-><init>(Lcom/htc/store/activity/landing/LandingMyActivity;)V

    #setter for: Lcom/htc/store/activity/landing/LandingMyActivity;->mGetOrderedHistoryIcons:Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;
    invoke-static/range {v24 .. v25}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$4302(Lcom/htc/store/activity/landing/LandingMyActivity;Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;)Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;

    .line 1033
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/store/activity/landing/LandingMyActivity;->mGetOrderedHistoryIcons:Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;
    invoke-static/range {v24 .. v24}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$4300(Lcom/htc/store/activity/landing/LandingMyActivity;)Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;->insert(Ljava/util/ArrayList;)V

    .line 1037
    :cond_17
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v24

    if-nez v24, :cond_19

    .line 1038
    invoke-static {}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$000()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "ordered items add array : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1039
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/store/activity/landing/LandingMyActivity;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static/range {v24 .. v24}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$1500(Lcom/htc/store/activity/landing/LandingMyActivity;)Lcom/htc/store/provider/AccessHelper;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/store/provider/AccessHelper;->addMyActivityItems(Ljava/util/ArrayList;)I

    .line 1041
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/store/activity/landing/LandingMyActivity;->mGetOrderedHistoryIcons:Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;
    invoke-static/range {v24 .. v24}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$4300(Lcom/htc/store/activity/landing/LandingMyActivity;)Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;

    move-result-object v24

    if-nez v24, :cond_18

    .line 1042
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    move-object/from16 v24, v0

    new-instance v25, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    move-object/from16 v26, v0

    invoke-direct/range {v25 .. v26}, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;-><init>(Lcom/htc/store/activity/landing/LandingMyActivity;)V

    #setter for: Lcom/htc/store/activity/landing/LandingMyActivity;->mGetOrderedHistoryIcons:Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;
    invoke-static/range {v24 .. v25}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$4302(Lcom/htc/store/activity/landing/LandingMyActivity;Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;)Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;

    .line 1044
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/store/activity/landing/LandingMyActivity;->mGetOrderedHistoryIcons:Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;
    invoke-static/range {v24 .. v24}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$4300(Lcom/htc/store/activity/landing/LandingMyActivity;)Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;->insert(Ljava/util/ArrayList;)V

    .line 1048
    :cond_19
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v24

    if-nez v24, :cond_1a

    .line 1049
    invoke-static {}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$000()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "ordered items delete array : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1050
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/store/activity/landing/LandingMyActivity;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static/range {v24 .. v24}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$1500(Lcom/htc/store/activity/landing/LandingMyActivity;)Lcom/htc/store/provider/AccessHelper;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/store/provider/AccessHelper;->removeMyActivityItemByOnlineIds(Ljava/util/ArrayList;)I

    .line 1054
    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;->mStartIndex:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;->mTotalCount:I

    move/from16 v25, v0

    add-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;->mStartIndex:I

    .line 1055
    const/16 v24, 0x14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;->mTotalCount:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_1b

    .line 1056
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;->mNeedOneMoreCall:Z

    .line 1065
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v7           #latestTime:J
    .end local v9           #myActivityInstalledItemsPackageNameOrId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10           #myActivityItemsIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12           #oldestTime:J
    .end local v15           #onlineOrderedHistoryItemsArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    .end local v16           #orderedHisotryItemsIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v19           #tempToAdd:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    .end local v20           #tempToUpdate:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    .end local v21           #tempToUpdateWhenInstalled:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    .end local v22           #testTimestamp:J
    :cond_1b
    :goto_5
    const/16 v24, 0x0

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;->publishProgress([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1059
    .restart local v7       #latestTime:J
    .restart local v9       #myActivityInstalledItemsPackageNameOrId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10       #myActivityItemsIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v12       #oldestTime:J
    .restart local v15       #onlineOrderedHistoryItemsArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    .restart local v16       #orderedHisotryItemsIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v19       #tempToAdd:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    .restart local v20       #tempToUpdate:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    .restart local v21       #tempToUpdateWhenInstalled:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    .restart local v22       #testTimestamp:J
    :cond_1c
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;->mNeedOneMoreCall:Z

    goto :goto_5

    .line 1062
    .end local v7           #latestTime:J
    .end local v9           #myActivityInstalledItemsPackageNameOrId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10           #myActivityItemsIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12           #oldestTime:J
    .end local v15           #onlineOrderedHistoryItemsArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    .end local v16           #orderedHisotryItemsIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v19           #tempToAdd:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    .end local v20           #tempToUpdate:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    .end local v21           #tempToUpdateWhenInstalled:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    .end local v22           #testTimestamp:J
    :cond_1d
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;->mNeedOneMoreCall:Z

    .line 1063
    const/16 v2, -0xc

    goto :goto_5

    .line 1069
    .end local v18           #result:Lcom/htc/store/module/rest/RestResult;
    :cond_1e
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;->mOldestTimestamp:J

    move-wide/from16 v24, v0

    const-wide v26, 0x7fffffffffffffffL

    cmp-long v24, v24, v26

    if-eqz v24, :cond_1f

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;->mLatestTimestamp:J

    move-wide/from16 v24, v0

    const-wide/16 v26, -0x1

    cmp-long v24, v24, v26

    if-eqz v24, :cond_1f

    .line 1070
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/store/activity/landing/LandingMyActivity;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static/range {v24 .. v24}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$1500(Lcom/htc/store/activity/landing/LandingMyActivity;)Lcom/htc/store/provider/AccessHelper;

    move-result-object v24

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;->mOldestTimestamp:J

    move-wide/from16 v25, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;->mLatestTimestamp:J

    move-wide/from16 v27, v0

    invoke-virtual/range {v24 .. v28}, Lcom/htc/store/provider/AccessHelper;->getMyActivityItemsIdsByPurchasedOutOfTheTime(JJ)Ljava/util/ArrayList;

    move-result-object v17

    .line 1071
    .local v17, outOfTimeOrderedHisotryItemsIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$000()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "ordered out of time items delete array : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1072
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v24

    if-nez v24, :cond_1f

    .line 1073
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    move-object/from16 v24, v0

    #getter for: Lcom/htc/store/activity/landing/LandingMyActivity;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static/range {v24 .. v24}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$1500(Lcom/htc/store/activity/landing/LandingMyActivity;)Lcom/htc/store/provider/AccessHelper;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/store/provider/AccessHelper;->removeMyActivityItemByOnlineIds(Ljava/util/ArrayList;)I

    .line 1076
    .end local v17           #outOfTimeOrderedHisotryItemsIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1f
    const/16 v24, -0xc

    move/from16 v0, v24

    if-eq v2, v0, :cond_20

    .line 1077
    const/4 v2, 0x1

    .line 1079
    :cond_20
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    return-object v24
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 906
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;->doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 4
    .parameter "action"

    .prologue
    .line 1097
    invoke-static {}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "onPostExecute: GetOrderedHistoryListTask"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1098
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnBackPressed:Z
    invoke-static {v0}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$4700(Lcom/htc/store/activity/landing/LandingMyActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnDestroy:Z
    invoke-static {v0}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$4800(Lcom/htc/store/activity/landing/LandingMyActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1099
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnPause:Z
    invoke-static {v0}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$4900(Lcom/htc/store/activity/landing/LandingMyActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1100
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    #calls: Lcom/htc/store/activity/landing/LandingMyActivity;->doAction(I)V
    invoke-static {v0, v1}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$600(Lcom/htc/store/activity/landing/LandingMyActivity;I)V

    .line 1101
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    const/16 v1, -0xa

    #calls: Lcom/htc/store/activity/landing/LandingMyActivity;->doAction(I)V
    invoke-static {v0, v1}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$600(Lcom/htc/store/activity/landing/LandingMyActivity;I)V

    .line 1102
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #getter for: Lcom/htc/store/activity/landing/LandingMyActivity;->mAdapter:Lcom/htc/store/module/adapter/MyActivityAdapter;
    invoke-static {v0}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$2300(Lcom/htc/store/activity/landing/LandingMyActivity;)Lcom/htc/store/module/adapter/MyActivityAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/store/module/adapter/MyActivityAdapter;->notifyDataSetChanged()V

    .line 1107
    :cond_0
    :goto_0
    return-void

    .line 1104
    :cond_1
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$2676(Lcom/htc/store/activity/landing/LandingMyActivity;I)I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 906
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnBackPressed:Z
    invoke-static {v0}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$4400(Lcom/htc/store/activity/landing/LandingMyActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnDestroy:Z
    invoke-static {v0}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$4500(Lcom/htc/store/activity/landing/LandingMyActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1085
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnPause:Z
    invoke-static {v0}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$4600(Lcom/htc/store/activity/landing/LandingMyActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1086
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #getter for: Lcom/htc/store/activity/landing/LandingMyActivity;->mAdapter:Lcom/htc/store/module/adapter/MyActivityAdapter;
    invoke-static {v0}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$2300(Lcom/htc/store/activity/landing/LandingMyActivity;)Lcom/htc/store/module/adapter/MyActivityAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1087
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #getter for: Lcom/htc/store/activity/landing/LandingMyActivity;->mAdapter:Lcom/htc/store/module/adapter/MyActivityAdapter;
    invoke-static {v0}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$2300(Lcom/htc/store/activity/landing/LandingMyActivity;)Lcom/htc/store/module/adapter/MyActivityAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/store/module/adapter/MyActivityAdapter;->notifyDataSetChanged()V

    .line 1093
    :cond_0
    :goto_0
    return-void

    .line 1090
    :cond_1
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryCall;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$2676(Lcom/htc/store/activity/landing/LandingMyActivity;I)I

    goto :goto_0
.end method
