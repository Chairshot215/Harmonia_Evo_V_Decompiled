.class public final Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "BrowseCallHistoryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/BrowseCallHistoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "RecentCallsAdapter"
.end annotation


# static fields
.field private static final REDRAW:I = 0x1

.field private static final REDRAW_AGAIN:I = 0x3

.field private static final RESUME_THREAD:I = 0x4

.field private static final START_THREAD:I = 0x2


# instance fields
.field private mAlphabet:Ljava/lang/String;

.field private mCallerIdThread:Ljava/lang/Thread;

.field mContactInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/htccontacts/BrowseCallHistoryActivity$ContactInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDone:Z

.field private mFirst:Z

.field private mHandler:Landroid/os/Handler;

.field protected mIdxCallLogDate:I

.field private mIndexer:Lcom/android/htccontacts/widget/DateIndexer;

.field private mLoading:Z

.field private mRequests:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/htccontacts/BrowseCallHistoryActivity$CallerInfoQuery;",
            ">;"
        }
    .end annotation
.end field

.field mViewContactListener:Landroid/view/View$OnClickListener;

.field private mbRunGoogleUnknownCallHistoryProcess:Z

.field final synthetic this$0:Lcom/android/htccontacts/BrowseCallHistoryActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/BrowseCallHistoryActivity;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 894
    iput-object p1, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/BrowseCallHistoryActivity;

    .line 895
    const v0, 0x7f030037

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 755
    iput-boolean v2, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mLoading:Z

    .line 767
    iput-boolean v2, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mFirst:Z

    .line 770
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mbRunGoogleUnknownCallHistoryProcess:Z

    .line 778
    new-instance v0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter$1;-><init>(Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;)V

    iput-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mViewContactListener:Landroid/view/View$OnClickListener;

    .line 865
    new-instance v0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter$2;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter$2;-><init>(Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;)V

    iput-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mHandler:Landroid/os/Handler;

    .line 897
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mContactInfo:Ljava/util/HashMap;

    .line 898
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mRequests:Ljava/util/LinkedList;

    .line 899
    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->access$300(Lcom/android/htccontacts/BrowseCallHistoryActivity;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x1040419

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mAlphabet:Ljava/lang/String;

    .line 901
    return-void
.end method

.method static synthetic access$200(Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 747
    iget-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private enqueueRequest(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;J)V
    .locals 4
    .parameter "key"
    .parameter "number"
    .parameter "position"
    .parameter "name"
    .parameter "numberType"
    .parameter "numberLabel"
    .parameter "person"

    .prologue
    .line 1022
    new-instance v0, Lcom/android/htccontacts/BrowseCallHistoryActivity$CallerInfoQuery;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/htccontacts/BrowseCallHistoryActivity$CallerInfoQuery;-><init>(Lcom/android/htccontacts/BrowseCallHistoryActivity$1;)V

    .line 1023
    .local v0, ciq:Lcom/android/htccontacts/BrowseCallHistoryActivity$CallerInfoQuery;
    iput-object p1, v0, Lcom/android/htccontacts/BrowseCallHistoryActivity$CallerInfoQuery;->key:Ljava/lang/String;

    .line 1024
    iput-object p2, v0, Lcom/android/htccontacts/BrowseCallHistoryActivity$CallerInfoQuery;->number:Ljava/lang/String;

    .line 1025
    iput p3, v0, Lcom/android/htccontacts/BrowseCallHistoryActivity$CallerInfoQuery;->position:I

    .line 1027
    iput p5, v0, Lcom/android/htccontacts/BrowseCallHistoryActivity$CallerInfoQuery;->numberType:I

    .line 1028
    iput-object p6, v0, Lcom/android/htccontacts/BrowseCallHistoryActivity$CallerInfoQuery;->numberLabel:Ljava/lang/String;

    .line 1029
    iput-wide p7, v0, Lcom/android/htccontacts/BrowseCallHistoryActivity$CallerInfoQuery;->person:J

    .line 1032
    iget-object v2, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/BrowseCallHistoryActivity;

    #calls: Lcom/android/htccontacts/BrowseCallHistoryActivity;->getVoiceMailNumber()Ljava/lang/String;
    invoke-static {v2}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->access$700(Lcom/android/htccontacts/BrowseCallHistoryActivity;)Ljava/lang/String;

    move-result-object v1

    .line 1033
    .local v1, sVoiceMailNumber:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1034
    iget-object v2, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/BrowseCallHistoryActivity;

    const v3, 0x7f0a0189

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/htccontacts/BrowseCallHistoryActivity$CallerInfoQuery;->name:Ljava/lang/String;

    .line 1038
    :goto_0
    iget-object v3, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mRequests:Ljava/util/LinkedList;

    monitor-enter v3

    .line 1039
    :try_start_0
    iget-object v2, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1040
    iget-object v2, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1041
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1042
    return-void

    .line 1036
    :cond_0
    iput-object p4, v0, Lcom/android/htccontacts/BrowseCallHistoryActivity$CallerInfoQuery;->name:Ljava/lang/String;

    goto :goto_0

    .line 1041
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private getUnknownNumberName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "number"
    .parameter "defaultName"

    .prologue
    .line 1483
    move-object v1, p2

    .line 1484
    .local v1, newName:Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/BrowseCallHistoryActivity;

    const v5, 0x7f0a016e

    invoke-virtual {v4, v5}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v2, v1

    .line 1505
    .end local v1           #newName:Ljava/lang/String;
    .local v2, newName:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 1486
    .end local v2           #newName:Ljava/lang/String;
    .restart local v1       #newName:Ljava/lang/String;
    :cond_0
    const-string v3, "-2"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1487
    iget-object v3, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/BrowseCallHistoryActivity;

    const v4, 0x7f0a0187

    invoke-virtual {v3, v4}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1499
    :cond_1
    :goto_1
    sget-boolean v3, Lcom/android/htccontacts/HtcFeatureList;->FEATURE_N11:Z

    if-eqz v3, :cond_2

    .line 1500
    invoke-static {p1}, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->overwriteCallerName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1501
    .local v0, n11Name:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 1502
    move-object v1, v0

    .end local v0           #n11Name:Ljava/lang/String;
    :cond_2
    move-object v2, v1

    .line 1505
    .end local v1           #newName:Ljava/lang/String;
    .restart local v2       #newName:Ljava/lang/String;
    goto :goto_0

    .line 1488
    .end local v2           #newName:Ljava/lang/String;
    .restart local v1       #newName:Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/BrowseCallHistoryActivity;

    #calls: Lcom/android/htccontacts/BrowseCallHistoryActivity;->getVoiceMailNumber()Ljava/lang/String;
    invoke-static {v3}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->access$700(Lcom/android/htccontacts/BrowseCallHistoryActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/telephony/PhoneNumberUtils;->htc_compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1489
    iget-object v3, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/BrowseCallHistoryActivity;

    const v4, 0x7f0a0189

    invoke-virtual {v3, v4}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1492
    :cond_4
    const-string v3, "-3"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1494
    iget-object v3, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/BrowseCallHistoryActivity;

    const v4, 0x7f0a0188

    invoke-virtual {v3, v4}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private queryContactInfo(Lcom/android/htccontacts/BrowseCallHistoryActivity$CallerInfoQuery;)V
    .locals 7
    .parameter "ciq"

    .prologue
    const-wide/16 v5, 0x0

    .line 1046
    iget-object v3, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mContactInfo:Ljava/util/HashMap;

    iget-object v4, p1, Lcom/android/htccontacts/BrowseCallHistoryActivity$CallerInfoQuery;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/BrowseCallHistoryActivity$ContactInfo;

    .line 1048
    .local v1, info:Lcom/android/htccontacts/BrowseCallHistoryActivity$ContactInfo;
    if-eqz v1, :cond_2

    sget-object v3, Lcom/android/htccontacts/BrowseCallHistoryActivity$ContactInfo;->EMPTY:Lcom/android/htccontacts/BrowseCallHistoryActivity$ContactInfo;

    if-eq v1, v3, :cond_2

    .line 1049
    iget-object v4, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mRequests:Ljava/util/LinkedList;

    monitor-enter v4

    .line 1050
    :try_start_0
    iget-object v3, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1051
    iget-object v3, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1053
    :cond_0
    monitor-exit v4

    .line 1104
    :cond_1
    :goto_0
    return-void

    .line 1053
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1056
    :cond_2
    if-eqz p1, :cond_5

    .line 1057
    if-eqz v1, :cond_3

    iget-wide v3, v1, Lcom/android/htccontacts/BrowseCallHistoryActivity$ContactInfo;->personId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_5

    :cond_3
    sget-object v3, Lcom/android/htccontacts/BrowseCallHistoryActivity$ContactInfo;->EMPTY:Lcom/android/htccontacts/BrowseCallHistoryActivity$ContactInfo;

    if-ne v1, v3, :cond_5

    .line 1058
    const-string v3, "content://com.android.htccontacts/sim/phones/filter"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p1, Lcom/android/htccontacts/BrowseCallHistoryActivity$CallerInfoQuery;->number:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1061
    .local v0, contactUri:Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/BrowseCallHistoryActivity;

    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->access$800(Lcom/android/htccontacts/BrowseCallHistoryActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/android/internal/telephony/CallerInfo;->getSIMCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v2

    .line 1064
    .local v2, simInfo:Lcom/android/internal/telephony/CallerInfo;
    if-eqz v2, :cond_5

    iget-wide v3, v2, Lcom/android/internal/telephony/CallerInfo;->recordNumber:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_5

    .line 1065
    new-instance v1, Lcom/android/htccontacts/BrowseCallHistoryActivity$ContactInfo;

    .end local v1           #info:Lcom/android/htccontacts/BrowseCallHistoryActivity$ContactInfo;
    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/android/htccontacts/BrowseCallHistoryActivity$ContactInfo;-><init>(Lcom/android/htccontacts/BrowseCallHistoryActivity$1;)V

    .line 1067
    .restart local v1       #info:Lcom/android/htccontacts/BrowseCallHistoryActivity$ContactInfo;
    iget-object v3, v2, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/htccontacts/BrowseCallHistoryActivity$ContactInfo;->name:Ljava/lang/String;

    .line 1068
    iget-object v3, v2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/htccontacts/BrowseCallHistoryActivity$ContactInfo;->number:Ljava/lang/String;

    .line 1069
    iget v3, v2, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    iput v3, v1, Lcom/android/htccontacts/BrowseCallHistoryActivity$ContactInfo;->type:I

    .line 1070
    iget-wide v3, v2, Lcom/android/internal/telephony/CallerInfo;->recordNumber:J

    iput-wide v3, v1, Lcom/android/htccontacts/BrowseCallHistoryActivity$ContactInfo;->recordNumber:J

    .line 1079
    iget-object v3, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mContactInfo:Ljava/util/HashMap;

    iget-object v4, p1, Lcom/android/htccontacts/BrowseCallHistoryActivity$CallerInfoQuery;->key:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1081
    iget-object v4, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mRequests:Ljava/util/LinkedList;

    monitor-enter v4

    .line 1082
    :try_start_1
    iget-object v3, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1083
    iget-object v3, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1085
    :cond_4
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1091
    .end local v0           #contactUri:Landroid/net/Uri;
    .end local v2           #simInfo:Lcom/android/internal/telephony/CallerInfo;
    :cond_5
    if-eqz p1, :cond_1

    .line 1092
    sget-object v3, Lcom/android/htccontacts/BrowseCallHistoryActivity$ContactInfo;->EMPTY:Lcom/android/htccontacts/BrowseCallHistoryActivity$ContactInfo;

    if-eq v3, v1, :cond_6

    if-nez v1, :cond_1

    .line 1094
    :cond_6
    iget-object v4, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mRequests:Ljava/util/LinkedList;

    monitor-enter v4

    .line 1095
    :try_start_2
    iget-object v3, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1096
    iget-object v3, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1098
    :cond_7
    monitor-exit v4

    goto :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 1085
    .restart local v0       #contactUri:Landroid/net/Uri;
    .restart local v2       #simInfo:Lcom/android/internal/telephony/CallerInfo;
    :catchall_2
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v3
.end method

.method private setPhoto(Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;ZLandroid/widget/ImageView;JLjava/lang/String;)V
    .locals 6
    .parameter "cache"
    .parameter "isSIM"
    .parameter "photoView"
    .parameter "photoId"
    .parameter "imagePath"

    .prologue
    .line 1445
    iget-object v2, p1, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;->mBitmap:Landroid/graphics/Bitmap;

    .line 1446
    .local v2, oldBitmap:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_0

    .line 1447
    const/4 v4, 0x0

    iput-object v4, p1, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;->mBitmap:Landroid/graphics/Bitmap;

    .line 1450
    :cond_0
    const/4 v3, 0x0

    .line 1451
    .local v3, photoType:I
    const/4 v0, 0x0

    .line 1454
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz p2, :cond_3

    .line 1455
    const/4 v3, 0x1

    .line 1468
    :cond_1
    :goto_0
    if-eqz v0, :cond_4

    .line 1469
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1470
    iput-object v0, p1, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;->mBitmap:Landroid/graphics/Bitmap;

    .line 1475
    :goto_1
    if-eqz v2, :cond_2

    .line 1476
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1477
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 1480
    :cond_2
    return-void

    .line 1458
    :cond_3
    const-wide/16 v4, 0x0

    cmp-long v4, v4, p4

    if-gez v4, :cond_1

    .line 1459
    :try_start_0
    invoke-static {p4, p5}, Lcom/android/htccontacts/util/PhotoUtils;->loadThumbnail(J)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 1461
    :catch_0
    move-exception v1

    .line 1462
    .local v1, e:Ljava/lang/OutOfMemoryError;
    const-string v4, "BrowseCallHistoryActivity"

    const-string v5, "loadContactPhoto: OutOfMemoryError"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1463
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v1

    .line 1464
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "BrowseCallHistoryActivity"

    const-string v5, "loadContactPhoto: exception: "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1472
    .end local v1           #e:Ljava/lang/Exception;
    :cond_4
    iget-object v4, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/BrowseCallHistoryActivity;

    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mPhotoUtility:Lcom/android/htccontacts/util/PhotoUtils;
    invoke-static {v4}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->access$2300(Lcom/android/htccontacts/BrowseCallHistoryActivity;)Lcom/android/htccontacts/util/PhotoUtils;

    move-result-object v4

    invoke-virtual {v4, p3, v3}, Lcom/android/htccontacts/util/PhotoUtils;->setPhotoDrawableByType(Landroid/widget/ImageView;I)V

    goto :goto_1
.end method


# virtual methods
.method protected bindPresence(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;)V
    .locals 5
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .parameter "cache"

    .prologue
    const/16 v4, 0x12

    .line 1420
    const-string v2, "BrowseCallHistoryActivity"

    const-string v3, "---------mIdPresenceId:18"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    invoke-interface {p3, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1423
    invoke-interface {p3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1424
    .local v1, presence_id:I
    const/16 v2, 0x13

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1425
    .local v0, chatCapability:I
    const/4 v2, 0x0

    invoke-virtual {p4, v2}, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;->setPresenceViewVisibility(I)V

    .line 1426
    new-instance v2, Lcom/android/htccontacts/widget/ImPresence;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v0, v3}, Lcom/android/htccontacts/widget/ImPresence;-><init>(IIZ)V

    invoke-virtual {p4, v2}, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;->setPresenceStatus(Lcom/android/htccontacts/widget/ImPresence;)V

    .line 1434
    .end local v0           #chatCapability:I
    .end local v1           #presence_id:I
    :goto_0
    return-void

    .line 1428
    :cond_0
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isGlacierTMO()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1429
    const/4 v2, 0x0

    invoke-virtual {p4, v2}, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;->setPresenceStatus(Lcom/android/htccontacts/widget/ImPresence;)V

    goto :goto_0

    .line 1431
    :cond_1
    const/16 v2, 0x8

    invoke-virtual {p4, v2}, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;->setPresenceViewVisibility(I)V

    goto :goto_0
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 36
    .parameter "view"
    .parameter "context"
    .parameter "c"

    .prologue
    .line 1183
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;

    .line 1185
    .local v14, cache:Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1186
    .local v6, number:Ljava/lang/String;
    const/16 v4, 0xa

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1187
    .local v8, callerName:Ljava/lang/String;
    const/4 v4, 0x6

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1188
    .local v9, callerNumberType:I
    const/4 v4, 0x7

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1189
    .local v10, callerNumberLabel:Ljava/lang/String;
    const/16 v4, 0xb

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 1190
    .local v20, accountType:Ljava/lang/String;
    const/16 v4, 0x11

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 1192
    .local v22, cName:Ljava/lang/String;
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 1194
    .local v26, id:I
    invoke-static {}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->access$1000()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->access$1100()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1195
    :cond_0
    iget-object v4, v14, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;->mListItemCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

    if-eqz v4, :cond_1

    .line 1196
    iget-object v4, v14, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;->mListItemCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lcom/htc/widget/HtcListItemCheckBox;->setVisibility(I)V

    .line 1197
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/BrowseCallHistoryActivity;

    invoke-virtual {v4}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->getCheckArray()Landroid/util/SparseBooleanArray;

    move-result-object v4

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v23

    .line 1198
    .local v23, check:Z
    iget-object v4, v14, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;->mListItemCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    .line 1203
    .end local v23           #check:Z
    :cond_1
    const/16 v4, 0xc

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v11, v4

    .line 1204
    .local v11, personId:J
    const/16 v4, 0xd

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 1207
    .local v28, lookup:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1208
    .local v5, key:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mContactInfo:Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/htccontacts/BrowseCallHistoryActivity$ContactInfo;

    .line 1210
    .local v27, info:Lcom/android/htccontacts/BrowseCallHistoryActivity$ContactInfo;
    if-nez v27, :cond_2

    .line 1211
    const-wide/16 v34, 0x0

    cmp-long v4, v11, v34

    if-lez v4, :cond_b

    .line 1213
    new-instance v27, Lcom/android/htccontacts/BrowseCallHistoryActivity$ContactInfo;

    .end local v27           #info:Lcom/android/htccontacts/BrowseCallHistoryActivity$ContactInfo;
    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-direct {v0, v4}, Lcom/android/htccontacts/BrowseCallHistoryActivity$ContactInfo;-><init>(Lcom/android/htccontacts/BrowseCallHistoryActivity$1;)V

    .line 1215
    .restart local v27       #info:Lcom/android/htccontacts/BrowseCallHistoryActivity$ContactInfo;
    move-object/from16 v0, v27

    iput-object v8, v0, Lcom/android/htccontacts/BrowseCallHistoryActivity$ContactInfo;->name:Ljava/lang/String;

    .line 1216
    move-object/from16 v0, v27

    iput-object v6, v0, Lcom/android/htccontacts/BrowseCallHistoryActivity$ContactInfo;->number:Ljava/lang/String;

    .line 1217
    move-object/from16 v0, v27

    iput v9, v0, Lcom/android/htccontacts/BrowseCallHistoryActivity$ContactInfo;->type:I

    .line 1218
    move-object/from16 v0, v27

    iput-wide v11, v0, Lcom/android/htccontacts/BrowseCallHistoryActivity$ContactInfo;->personId:J

    .line 1219
    move-object/from16 v0, v22

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/htccontacts/BrowseCallHistoryActivity$ContactInfo;->cName:Ljava/lang/String;

    .line 1220
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mContactInfo:Ljava/util/HashMap;

    move-object/from16 v0, v27

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1239
    :cond_2
    :goto_0
    iput-wide v11, v14, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;->mPersonId:J

    .line 1240
    iput-object v6, v14, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;->mNumber:Ljava/lang/String;

    .line 1241
    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/android/htccontacts/BrowseCallHistoryActivity$ContactInfo;->recordNumber:J

    move-wide/from16 v34, v0

    move-wide/from16 v0, v34

    iput-wide v0, v14, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;->mRecordNumber:J

    .line 1242
    move-object/from16 v0, v28

    iput-object v0, v14, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;->mLookup:Ljava/lang/String;

    .line 1245
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/htccontacts/BrowseCallHistoryActivity$ContactInfo;->name:Ljava/lang/String;

    move-object/from16 v29, v0

    .line 1246
    .local v29, name:Ljava/lang/String;
    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/htccontacts/BrowseCallHistoryActivity$ContactInfo;->type:I

    move/from16 v31, v0

    .line 1251
    .local v31, ntype:I
    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1252
    move-object/from16 v29, v8

    .line 1253
    move/from16 v31, v9

    .line 1257
    :cond_3
    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 1258
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v6, v1}, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->getUnknownNumberName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 1259
    .local v30, newName:Ljava/lang/String;
    iget-object v4, v14, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setPrimaryText(Ljava/lang/String;)V

    .line 1261
    const/16 v32, 0x0

    .line 1262
    .local v32, numberLabel:Ljava/lang/CharSequence;
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isGlacierTMO()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1264
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/BrowseCallHistoryActivity;

    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->access$1200(Lcom/android/htccontacts/BrowseCallHistoryActivity;)Landroid/content/Context;

    move-result-object v4

    move/from16 v0, v31

    invoke-static {v4, v0}, Landroid/provider/HtcUnionContact$ContactUtils;->getPhoneNumberTypeShortString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v32

    .line 1270
    :goto_1
    const-string v4, "-1"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "-2"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "-3"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1273
    :cond_4
    const-string v6, ""

    .line 1275
    :cond_5
    invoke-static/range {v32 .. v32}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 1276
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1278
    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/BrowseCallHistoryActivity;

    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->access$1400(Lcom/android/htccontacts/BrowseCallHistoryActivity;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    #calls: Lcom/android/htccontacts/BrowseCallHistoryActivity;->createDisplayNumber(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;
    invoke-static {v6, v4, v7}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->access$1500(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v32

    .line 1280
    :cond_6
    iget-object v4, v14, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setSecondaryText(Ljava/lang/CharSequence;)V

    .line 1338
    .end local v32           #numberLabel:Ljava/lang/CharSequence;
    :goto_2
    const/4 v4, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v33

    .line 1339
    .local v33, type:I
    const/4 v4, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 1340
    .local v24, date:J
    move-wide/from16 v0, v24

    iput-wide v0, v14, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;->date:J

    .line 1342
    sget-boolean v4, Lcom/htc/util/phone/CityIdInfo;->ENABLED:Z

    if-eqz v4, :cond_18

    .line 1343
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/BrowseCallHistoryActivity;

    move-wide/from16 v0, v24

    #calls: Lcom/android/htccontacts/BrowseCallHistoryActivity;->setupTimeViewsIfCityId(Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;J)V
    invoke-static {v4, v14, v0, v1}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->access$1700(Lcom/android/htccontacts/BrowseCallHistoryActivity;Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;J)V

    .line 1344
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/BrowseCallHistoryActivity;

    move-object/from16 v0, p3

    #calls: Lcom/android/htccontacts/BrowseCallHistoryActivity;->setupCityView(Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;Landroid/database/Cursor;Ljava/lang/String;)V
    invoke-static {v4, v14, v0, v6}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->access$1800(Lcom/android/htccontacts/BrowseCallHistoryActivity;Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 1350
    :goto_3
    packed-switch v33, :pswitch_data_0

    .line 1364
    :goto_4
    iget-object v4, v14, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;->mListItemImageButton:Lcom/htc/widget/HtcListItemImageButton;

    if-eqz v4, :cond_7

    .line 1366
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isTmousCustomization()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 1367
    const-wide/16 v34, 0x0

    cmp-long v4, v11, v34

    if-gtz v4, :cond_19

    .line 1368
    iget-object v4, v14, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;->mListItemImageButton:Lcom/htc/widget/HtcListItemImageButton;

    const v7, 0x7f02004a

    invoke-virtual {v4, v7}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    .line 1379
    :cond_7
    :goto_5
    const/16 v4, 0x9

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 1381
    .local v19, imagePath:Ljava/lang/String;
    const-string v4, "com.anddroid.contacts.sim"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    const/4 v15, 0x1

    .line 1382
    .local v15, bSim:Z
    :goto_6
    const/16 v4, 0x9

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 1384
    .local v17, photoId:J
    iget-object v4, v14, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;->mListItemQuickContactBadge:Lcom/htc/widget/HtcListItemQuickContactBadge;

    invoke-virtual {v4}, Lcom/htc/widget/HtcListItemQuickContactBadge;->getBadge()Lcom/htc/widget/QuickContactBadge;

    move-result-object v16

    .line 1385
    .local v16, badge:Lcom/htc/widget/QuickContactBadge;
    if-eqz v16, :cond_8

    .line 1386
    const-wide/16 v34, 0x0

    cmp-long v4, v11, v34

    if-lez v4, :cond_1c

    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1c

    .line 1387
    move-object/from16 v0, v28

    invoke-static {v11, v12, v0}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/htc/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 1388
    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v4}, Lcom/htc/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    :cond_8
    :goto_7
    move-object/from16 v13, p0

    .line 1395
    invoke-direct/range {v13 .. v19}, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->setPhoto(Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;ZLandroid/widget/ImageView;JLjava/lang/String;)V

    .line 1396
    iput-boolean v15, v14, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;->mbSim:Z

    .line 1398
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isGlacierTMO()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1399
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v14}, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->bindPresence(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;)V

    .line 1401
    :cond_9
    sget-boolean v4, Lcom/htc/util/phone/ProjectUtils;->SUPPORT_VT:Z

    if-eqz v4, :cond_a

    .line 1402
    const/16 v4, 0x10

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 1410
    .local v21, bearer:I
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v7, 0xda

    if-ne v4, v7, :cond_a

    .line 1411
    const/4 v4, 0x2

    move/from16 v0, v21

    if-ne v4, v0, :cond_a

    .line 1412
    iget-object v4, v14, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v13, 0x7f020015

    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    const/4 v13, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v4, v7, v13, v0, v1}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setSecondaryTextCompoundDrawableWithIntrinicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1417
    .end local v21           #bearer:I
    :cond_a
    return-void

    .line 1226
    .end local v15           #bSim:Z
    .end local v16           #badge:Lcom/htc/widget/QuickContactBadge;
    .end local v17           #photoId:J
    .end local v19           #imagePath:Ljava/lang/String;
    .end local v24           #date:J
    .end local v29           #name:Ljava/lang/String;
    .end local v30           #newName:Ljava/lang/String;
    .end local v31           #ntype:I
    .end local v33           #type:I
    :cond_b
    sget-object v27, Lcom/android/htccontacts/BrowseCallHistoryActivity$ContactInfo;->EMPTY:Lcom/android/htccontacts/BrowseCallHistoryActivity$ContactInfo;

    .line 1227
    const-string v4, ""

    move-object/from16 v0, v27

    iput-object v4, v0, Lcom/android/htccontacts/BrowseCallHistoryActivity$ContactInfo;->name:Ljava/lang/String;

    .line 1229
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mContactInfo:Ljava/util/HashMap;

    move-object/from16 v0, v27

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1230
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mbRunGoogleUnknownCallHistoryProcess:Z

    if-eqz v4, :cond_2

    .line 1231
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v7

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v12}, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->enqueueRequest(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;J)V

    goto/16 :goto_0

    .line 1267
    .restart local v29       #name:Ljava/lang/String;
    .restart local v30       #newName:Ljava/lang/String;
    .restart local v31       #ntype:I
    .restart local v32       #numberLabel:Ljava/lang/CharSequence;
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/BrowseCallHistoryActivity;

    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->access$1300(Lcom/android/htccontacts/BrowseCallHistoryActivity;)Landroid/content/Context;

    move-result-object v4

    move/from16 v0, v31

    invoke-static {v4, v0}, Landroid/provider/HtcUnionContact$ContactUtils;->getPhoneNumberTypeShortStringWithColon(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v32

    goto/16 :goto_1

    .line 1282
    :cond_d
    iget-object v4, v14, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    invoke-virtual {v4, v6}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setSecondaryText(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1288
    .end local v30           #newName:Ljava/lang/String;
    .end local v32           #numberLabel:Ljava/lang/CharSequence;
    :cond_e
    const/16 v30, 0x0

    .line 1289
    .restart local v30       #newName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/BrowseCallHistoryActivity;

    #getter for: Lcom/android/htccontacts/BrowseCallHistoryActivity;->mEmergencyNumbers:[Ljava/lang/String;
    invoke-static {v4}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->access$1600(Lcom/android/htccontacts/BrowseCallHistoryActivity;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/htc/util/contacts/PhoneUtils;->isEmergency(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1290
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/BrowseCallHistoryActivity;

    const v7, 0x10402db

    invoke-virtual {v4, v7}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v30

    .line 1295
    sget-boolean v4, Lcom/android/htccontacts/HtcFeatureList;->FEATURE_N11:Z

    if-eqz v4, :cond_f

    .line 1296
    const-string v30, "9-1-1 Emergency"

    .line 1334
    :cond_f
    :goto_8
    iget-object v4, v14, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setPrimaryText(Ljava/lang/String;)V

    .line 1335
    iget-object v4, v14, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    invoke-virtual {v4, v6}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setSecondaryText(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1300
    :cond_10
    sget-boolean v4, Lcom/android/htccontacts/HtcFeatureList;->FEATURE_N11:Z

    if-eqz v4, :cond_11

    invoke-static {v6}, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->isN11Number(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1302
    invoke-static {v6}, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->overwriteCallerName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    goto :goto_8

    .line 1306
    :cond_11
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v7, 0x28

    if-ne v4, v7, :cond_15

    .line 1308
    invoke-static {v6}, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->getServiceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 1319
    :cond_12
    :goto_9
    if-nez v30, :cond_13

    .line 1321
    if-eqz v22, :cond_17

    const-string v4, ""

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    .line 1322
    move-object/from16 v30, v22

    .line 1328
    :cond_13
    :goto_a
    const-string v4, "-1"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    const-string v4, "-2"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    const-string v4, "-3"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1331
    :cond_14
    const-string v6, ""

    goto :goto_8

    .line 1310
    :cond_15
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v7, 0x3a

    if-ne v4, v7, :cond_16

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v7, 0x14

    if-ne v4, v7, :cond_16

    .line 1313
    invoke-static {v6}, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->getCellSouthCallerName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    goto :goto_9

    .line 1315
    :cond_16
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v7, 0x4

    if-ne v4, v7, :cond_12

    .line 1317
    invoke-static {v6}, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->getACGServiceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    goto :goto_9

    .line 1324
    :cond_17
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "("

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/BrowseCallHistoryActivity;

    const v13, 0x7f0a016e

    invoke-virtual {v7, v13}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ")"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4}, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->getUnknownNumberName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    goto :goto_a

    .line 1346
    .restart local v24       #date:J
    .restart local v33       #type:I
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/BrowseCallHistoryActivity;

    move-wide/from16 v0, v24

    #calls: Lcom/android/htccontacts/BrowseCallHistoryActivity;->setupTimeViews(Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;J)V
    invoke-static {v4, v14, v0, v1}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->access$1900(Lcom/android/htccontacts/BrowseCallHistoryActivity;Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;J)V

    goto/16 :goto_3

    .line 1352
    :pswitch_0
    iget-object v4, v14, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;->mListItemQuickContactBadge:Lcom/htc/widget/HtcListItemQuickContactBadge;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/BrowseCallHistoryActivity;

    #getter for: Lcom/android/htccontacts/BrowseCallHistoryActivity;->mDrawableIncoming:Landroid/graphics/drawable/Drawable;
    invoke-static {v7}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->access$2000(Lcom/android/htccontacts/BrowseCallHistoryActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/htc/widget/HtcListItemQuickContactBadge;->setIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 1356
    :pswitch_1
    iget-object v4, v14, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;->mListItemQuickContactBadge:Lcom/htc/widget/HtcListItemQuickContactBadge;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/BrowseCallHistoryActivity;

    #getter for: Lcom/android/htccontacts/BrowseCallHistoryActivity;->mDrawableOutgoing:Landroid/graphics/drawable/Drawable;
    invoke-static {v7}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->access$2100(Lcom/android/htccontacts/BrowseCallHistoryActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/htc/widget/HtcListItemQuickContactBadge;->setIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 1360
    :pswitch_2
    iget-object v4, v14, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;->mListItemQuickContactBadge:Lcom/htc/widget/HtcListItemQuickContactBadge;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/BrowseCallHistoryActivity;

    #getter for: Lcom/android/htccontacts/BrowseCallHistoryActivity;->mDrawableMissed:Landroid/graphics/drawable/Drawable;
    invoke-static {v7}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->access$2200(Lcom/android/htccontacts/BrowseCallHistoryActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/htc/widget/HtcListItemQuickContactBadge;->setIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 1371
    :cond_19
    iget-object v4, v14, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;->mListItemImageButton:Lcom/htc/widget/HtcListItemImageButton;

    const v7, 0x7f02004b

    invoke-virtual {v4, v7}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    goto/16 :goto_5

    .line 1375
    :cond_1a
    iget-object v4, v14, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;->mListItemImageButton:Lcom/htc/widget/HtcListItemImageButton;

    const v7, 0x7f020009

    invoke-virtual {v4, v7}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    goto/16 :goto_5

    .line 1381
    .restart local v19       #imagePath:Ljava/lang/String;
    :cond_1b
    const/4 v15, 0x0

    goto/16 :goto_6

    .line 1391
    .restart local v15       #bSim:Z
    .restart local v16       #badge:Lcom/htc/widget/QuickContactBadge;
    .restart local v17       #photoId:J
    :cond_1c
    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v4}, Lcom/htc/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    goto/16 :goto_7

    .line 1350
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 909
    iget-object v1, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mCursor:Landroid/database/Cursor;

    if-ne p1, v1, :cond_0

    .line 934
    :goto_0
    return-void

    .line 912
    :cond_0
    iget-object v1, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_1

    .line 913
    iget-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mCursor:Landroid/database/Cursor;

    .line 914
    .local v0, tmpCursor:Landroid/database/Cursor;
    iget-object v1, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 915
    iget-object v1, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 916
    iget-object v1, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/BrowseCallHistoryActivity;

    invoke-virtual {v1, v0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->closeCursorInBackground(Landroid/database/Cursor;)V

    .line 918
    .end local v0           #tmpCursor:Landroid/database/Cursor;
    :cond_1
    iput-object p1, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mCursor:Landroid/database/Cursor;

    .line 919
    if-eqz p1, :cond_2

    .line 920
    iget-object v1, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 921
    iget-object v1, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 922
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mRowIDColumn:I

    .line 923
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mDataValid:Z

    .line 925
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->notifyDataSetChanged()V

    .line 933
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->updateIndexer(Landroid/database/Cursor;)V

    goto :goto_0

    .line 927
    :cond_2
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mRowIDColumn:I

    .line 928
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mDataValid:Z

    .line 930
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->notifyDataSetInvalidated()V

    goto :goto_1
.end method

.method public clearCache()V
    .locals 2

    .prologue
    .line 1015
    iget-object v1, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mContactInfo:Ljava/util/HashMap;

    monitor-enter v1

    .line 1016
    :try_start_0
    iget-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mContactInfo:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1017
    monitor-exit v1

    .line 1018
    return-void

    .line 1017
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public finish()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 853
    iget-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 854
    iget-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 855
    iget-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 857
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->clearCache()V

    .line 859
    iput-boolean v2, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mDone:Z

    .line 860
    iget-object v1, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mRequests:Ljava/util/LinkedList;

    monitor-enter v1

    .line 861
    :try_start_0
    iget-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 862
    monitor-exit v1

    .line 863
    return-void

    .line 862
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected generateHtcListItemBuilder(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Lcom/android/htccontacts/widget/HtcListItemBuilder;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 1131
    new-instance v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    const/16 v1, 0x130

    const/4 v2, 0x2

    invoke-direct {v0, p1, v1, v2}, Lcom/android/htccontacts/widget/HtcListItemBuilder;-><init>(Landroid/content/Context;II)V

    .line 1132
    .local v0, builder:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    return-object v0
.end method

.method public getContactInfo(Ljava/lang/String;)Lcom/android/htccontacts/BrowseCallHistoryActivity$ContactInfo;
    .locals 1
    .parameter "number"

    .prologue
    .line 986
    iget-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mContactInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/BrowseCallHistoryActivity$ContactInfo;

    return-object v0
.end method

.method public getPositionForSection(I)I
    .locals 5
    .parameter "sectionIndex"

    .prologue
    .line 955
    iget-object v1, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mIndexer:Lcom/android/htccontacts/widget/DateIndexer;

    if-nez v1, :cond_1

    .line 956
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 958
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 960
    const/4 v1, 0x0

    .line 964
    .end local v0           #cursor:Landroid/database/Cursor;
    :goto_0
    return v1

    .line 962
    .restart local v0       #cursor:Landroid/database/Cursor;
    :cond_0
    new-instance v1, Lcom/android/htccontacts/widget/DateIndexer;

    iget-object v2, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/BrowseCallHistoryActivity;

    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->access$500(Lcom/android/htccontacts/BrowseCallHistoryActivity;)Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mIdxCallLogDate:I

    iget-object v4, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mAlphabet:Ljava/lang/String;

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/android/htccontacts/widget/DateIndexer;-><init>(Landroid/content/Context;Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    iput-object v1, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mIndexer:Lcom/android/htccontacts/widget/DateIndexer;

    .line 964
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_1
    iget-object v1, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mIndexer:Lcom/android/htccontacts/widget/DateIndexer;

    invoke-virtual {v1, p1}, Lcom/android/htccontacts/widget/DateIndexer;->getPositionForSection(I)I

    move-result v1

    goto :goto_0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 968
    const/4 v0, 0x0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 947
    iget-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mIndexer:Lcom/android/htccontacts/widget/DateIndexer;

    if-eqz v0, :cond_0

    .line 948
    iget-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mIndexer:Lcom/android/htccontacts/widget/DateIndexer;

    invoke-virtual {v0}, Lcom/android/htccontacts/widget/DateIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    .line 950
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    goto :goto_0
.end method

.method protected initListItemCache(Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;Lcom/android/htccontacts/widget/HtcListItemBuilder;)V
    .locals 2
    .parameter "cache"
    .parameter "builder"

    .prologue
    .line 1136
    invoke-virtual {p2}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->getQuickContactBadge()Lcom/htc/widget/HtcListItemQuickContactBadge;

    move-result-object v0

    iput-object v0, p1, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;->mListItemQuickContactBadge:Lcom/htc/widget/HtcListItemQuickContactBadge;

    .line 1137
    invoke-virtual {p2}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->get2LineText()Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    .line 1138
    invoke-virtual {p2}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->get2LineStamp()Lcom/android/htccontacts/widget/HtcListItem2LineStampIcon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;->mListItem2LineStamp:Lcom/htc/widget/HtcListItem2LineStamp;

    .line 1139
    invoke-virtual {p2}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->getImageButton()Lcom/htc/widget/HtcListItemImageButton;

    move-result-object v0

    iput-object v0, p1, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;->mListItemImageButton:Lcom/htc/widget/HtcListItemImageButton;

    .line 1140
    iget-object v0, p1, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;->mListItemImageButton:Lcom/htc/widget/HtcListItemImageButton;

    iget-object v1, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/htccontacts/customize/CustomizeResource;->getCommonButtonSmallResourceId(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemImageButton;->setBackgroundResource(I)V

    .line 1141
    invoke-virtual {p2}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->getCheckBox()Lcom/htc/widget/HtcListItemCheckBox;

    move-result-object v0

    iput-object v0, p1, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;->mListItemCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

    .line 1147
    iget-object v0, p1, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;->mListItemImageButton:Lcom/htc/widget/HtcListItemImageButton;

    if-eqz v0, :cond_0

    .line 1148
    iget-object v0, p1, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;->mListItemImageButton:Lcom/htc/widget/HtcListItemImageButton;

    iget-object v1, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mViewContactListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1152
    :cond_0
    invoke-static {}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->access$1000()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->access$1100()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1153
    :cond_1
    iget-object v0, p1, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;->mListItemImageButton:Lcom/htc/widget/HtcListItemImageButton;

    if-eqz v0, :cond_2

    .line 1154
    iget-object v0, p1, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;->mListItemImageButton:Lcom/htc/widget/HtcListItemImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    .line 1157
    :cond_2
    iget-object v0, p1, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;->mListItemCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

    if-eqz v0, :cond_3

    .line 1158
    iget-object v0, p1, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;->mListItemCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

    iget-object v1, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/htccontacts/customize/CustomizeResource;->getDeletionCheckBoxResoureceId(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemCheckBox;->setButtonDrawable(I)V

    .line 1159
    iget-object v0, p1, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;->mListItemCheckBox:Lcom/htc/widget/HtcListItemCheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemCheckBox;->setVisibility(I)V

    .line 1163
    :cond_3
    iget-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/BrowseCallHistoryActivity;

    iget-object v0, v0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mRecentCallsItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1169
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 977
    iget-boolean v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mLoading:Z

    if-eqz v0, :cond_0

    .line 979
    const/4 v0, 0x0

    .line 981
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/ResourceCursorAdapter;->isEmpty()Z

    move-result v0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 1173
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->generateHtcListItemBuilder(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Lcom/android/htccontacts/widget/HtcListItemBuilder;

    move-result-object v0

    .line 1174
    .local v0, builder:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    new-instance v1, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;

    invoke-direct {v1}, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;-><init>()V

    .line 1175
    .local v1, cache:Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;
    invoke-virtual {p0, v1, v0}, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->initListItemCache(Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsListItemCache;Lcom/android/htccontacts/widget/HtcListItemBuilder;)V

    .line 1176
    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setTag(Ljava/lang/Object;)V

    .line 1178
    return-object v0
.end method

.method protected onContentChanged()V
    .locals 2

    .prologue
    .line 1512
    iget-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/BrowseCallHistoryActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mIsDirty:Z

    .line 1514
    iget-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/BrowseCallHistoryActivity;

    iget-boolean v0, v0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mIsForegroundActivity:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1516
    iget-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/BrowseCallHistoryActivity;

    iget-object v0, v0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mAdapter:Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;

    if-eqz v0, :cond_0

    .line 1517
    iget-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/BrowseCallHistoryActivity;

    iget-object v0, v0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mAdapter:Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;

    invoke-virtual {v0}, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->clearCache()V

    .line 1520
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/BrowseCallHistoryActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->startQuery()V

    .line 1522
    iget-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/BrowseCallHistoryActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/htccontacts/BrowseCallHistoryActivity;->mIsDirty:Z

    .line 1525
    :cond_1
    return-void
.end method

.method public onPreDraw()Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x3e8

    .line 842
    iget-boolean v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mFirst:Z

    if-eqz v0, :cond_0

    .line 843
    iget-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 844
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mFirst:Z

    .line 848
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 846
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public run()V
    .locals 6

    .prologue
    .line 1111
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mDone:Z

    if-nez v2, :cond_2

    .line 1112
    const/4 v1, 0x0

    .line 1113
    .local v1, ciq:Lcom/android/htccontacts/BrowseCallHistoryActivity$CallerInfoQuery;
    iget-object v3, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mRequests:Ljava/util/LinkedList;

    monitor-enter v3

    .line 1114
    :try_start_0
    iget-object v2, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1115
    iget-object v2, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/htccontacts/BrowseCallHistoryActivity$CallerInfoQuery;

    move-object v1, v0

    .line 1123
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1124
    if-eqz v1, :cond_0

    .line 1125
    invoke-direct {p0, v1}, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->queryContactInfo(Lcom/android/htccontacts/BrowseCallHistoryActivity$CallerInfoQuery;)V

    goto :goto_0

    .line 1118
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mRequests:Ljava/util/LinkedList;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1119
    :catch_0
    move-exception v2

    goto :goto_1

    .line 1123
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1128
    .end local v1           #ciq:Lcom/android/htccontacts/BrowseCallHistoryActivity$CallerInfoQuery;
    :cond_2
    return-void
.end method

.method protected setLoading(Z)V
    .locals 0
    .parameter "loading"

    .prologue
    .line 972
    iput-boolean p1, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mLoading:Z

    .line 973
    return-void
.end method

.method public startRequestProcessing()V
    .locals 2

    .prologue
    .line 990
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mDone:Z

    .line 992
    iget-boolean v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mbRunGoogleUnknownCallHistoryProcess:Z

    if-eqz v0, :cond_0

    .line 993
    iget-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mCallerIdThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 995
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "QueryContactId"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mCallerIdThread:Ljava/lang/Thread;

    .line 996
    iget-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mCallerIdThread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 997
    iget-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mCallerIdThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1001
    :cond_0
    return-void
.end method

.method public stopRequestProcessing()V
    .locals 1

    .prologue
    .line 1004
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mDone:Z

    .line 1005
    iget-boolean v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mbRunGoogleUnknownCallHistoryProcess:Z

    if-eqz v0, :cond_0

    .line 1006
    iget-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mCallerIdThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 1007
    iget-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mCallerIdThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1008
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mCallerIdThread:Ljava/lang/Thread;

    .line 1012
    :cond_0
    return-void
.end method

.method public updateIndexer(Landroid/database/Cursor;)V
    .locals 4
    .parameter "cursor"

    .prologue
    .line 936
    if-eqz p1, :cond_0

    .line 937
    const-string v0, "date"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mIdxCallLogDate:I

    .line 938
    new-instance v0, Lcom/android/htccontacts/widget/DateIndexer;

    iget-object v1, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/BrowseCallHistoryActivity;

    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->access$400(Lcom/android/htccontacts/BrowseCallHistoryActivity;)Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mIdxCallLogDate:I

    iget-object v3, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mAlphabet:Ljava/lang/String;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/android/htccontacts/widget/DateIndexer;-><init>(Landroid/content/Context;Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->mIndexer:Lcom/android/htccontacts/widget/DateIndexer;

    .line 940
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/BrowseCallHistoryActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 941
    iget-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/BrowseCallHistoryActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    .line 942
    iget-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$RecentCallsAdapter;->this$0:Lcom/android/htccontacts/BrowseCallHistoryActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    .line 944
    :cond_1
    return-void
.end method
