.class Lcom/htc/android/worldclock/RearrangeTimeZone$6;
.super Ljava/lang/Object;
.source "RearrangeTimeZone.java"

# interfaces
.implements Lcom/htc/widget/HtcReorderListView$DropListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/worldclock/RearrangeTimeZone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/RearrangeTimeZone;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/RearrangeTimeZone;)V
    .locals 0
    .parameter

    .prologue
    .line 404
    iput-object p1, p0, Lcom/htc/android/worldclock/RearrangeTimeZone$6;->this$0:Lcom/htc/android/worldclock/RearrangeTimeZone;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drop(II)V
    .locals 6
    .parameter "from"
    .parameter "to"

    .prologue
    .line 407
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 409
    new-instance v0, Lcom/htc/android/worldclock/CityTime;

    invoke-direct {v0}, Lcom/htc/android/worldclock/CityTime;-><init>()V

    .line 410
    .local v0, ct:Lcom/htc/android/worldclock/CityTime;
    if-ltz p2, :cond_3

    iget-object v3, p0, Lcom/htc/android/worldclock/RearrangeTimeZone$6;->this$0:Lcom/htc/android/worldclock/RearrangeTimeZone;

    iget v3, v3, Lcom/htc/android/worldclock/RearrangeTimeZone;->mListSize:I

    add-int/lit8 v3, v3, -0x1

    if-gt p2, v3, :cond_3

    if-eq p1, p2, :cond_3

    .line 411
    if-le p1, p2, :cond_1

    .line 412
    move v1, p1

    .local v1, i:I
    :goto_0
    if-le v1, p2, :cond_3

    .line 413
    iget-object v3, p0, Lcom/htc/android/worldclock/RearrangeTimeZone$6;->this$0:Lcom/htc/android/worldclock/RearrangeTimeZone;

    iget-object v3, v3, Lcom/htc/android/worldclock/WorldClock;->myList:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #ct:Lcom/htc/android/worldclock/CityTime;
    check-cast v0, Lcom/htc/android/worldclock/CityTime;

    .line 414
    .restart local v0       #ct:Lcom/htc/android/worldclock/CityTime;
    iget-object v3, p0, Lcom/htc/android/worldclock/RearrangeTimeZone$6;->this$0:Lcom/htc/android/worldclock/RearrangeTimeZone;

    iget-object v3, v3, Lcom/htc/android/worldclock/WorldClock;->myList:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, -0x1

    iget-object v5, p0, Lcom/htc/android/worldclock/RearrangeTimeZone$6;->this$0:Lcom/htc/android/worldclock/RearrangeTimeZone;

    iget-object v5, v5, Lcom/htc/android/worldclock/WorldClock;->myList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 415
    iget-object v3, p0, Lcom/htc/android/worldclock/RearrangeTimeZone$6;->this$0:Lcom/htc/android/worldclock/RearrangeTimeZone;

    iget-object v3, v3, Lcom/htc/android/worldclock/WorldClock;->myList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 416
    iget-object v3, p0, Lcom/htc/android/worldclock/RearrangeTimeZone$6;->this$0:Lcom/htc/android/worldclock/RearrangeTimeZone;

    iget-object v3, v3, Lcom/htc/android/worldclock/RearrangeTimeZone;->mDeletedIndex:[Z

    if-eqz v3, :cond_0

    .line 418
    iget-object v3, p0, Lcom/htc/android/worldclock/RearrangeTimeZone$6;->this$0:Lcom/htc/android/worldclock/RearrangeTimeZone;

    iget-object v3, v3, Lcom/htc/android/worldclock/RearrangeTimeZone;->mDeletedIndex:[Z

    add-int/lit8 v4, v1, -0x1

    aget-boolean v2, v3, v4

    .line 419
    .local v2, tempChecked:Z
    iget-object v3, p0, Lcom/htc/android/worldclock/RearrangeTimeZone$6;->this$0:Lcom/htc/android/worldclock/RearrangeTimeZone;

    iget-object v3, v3, Lcom/htc/android/worldclock/RearrangeTimeZone;->mDeletedIndex:[Z

    add-int/lit8 v4, v1, -0x1

    iget-object v5, p0, Lcom/htc/android/worldclock/RearrangeTimeZone$6;->this$0:Lcom/htc/android/worldclock/RearrangeTimeZone;

    iget-object v5, v5, Lcom/htc/android/worldclock/RearrangeTimeZone;->mDeletedIndex:[Z

    aget-boolean v5, v5, v1

    aput-boolean v5, v3, v4

    .line 420
    iget-object v3, p0, Lcom/htc/android/worldclock/RearrangeTimeZone$6;->this$0:Lcom/htc/android/worldclock/RearrangeTimeZone;

    iget-object v3, v3, Lcom/htc/android/worldclock/RearrangeTimeZone;->mDeletedIndex:[Z

    aput-boolean v2, v3, v1

    .line 412
    .end local v2           #tempChecked:Z
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 423
    .end local v1           #i:I
    :cond_1
    if-ge p1, p2, :cond_3

    .line 424
    move v1, p1

    .restart local v1       #i:I
    :goto_1
    if-ge v1, p2, :cond_3

    .line 425
    iget-object v3, p0, Lcom/htc/android/worldclock/RearrangeTimeZone$6;->this$0:Lcom/htc/android/worldclock/RearrangeTimeZone;

    iget-object v3, v3, Lcom/htc/android/worldclock/WorldClock;->myList:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #ct:Lcom/htc/android/worldclock/CityTime;
    check-cast v0, Lcom/htc/android/worldclock/CityTime;

    .line 426
    .restart local v0       #ct:Lcom/htc/android/worldclock/CityTime;
    iget-object v3, p0, Lcom/htc/android/worldclock/RearrangeTimeZone$6;->this$0:Lcom/htc/android/worldclock/RearrangeTimeZone;

    iget-object v3, v3, Lcom/htc/android/worldclock/WorldClock;->myList:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Lcom/htc/android/worldclock/RearrangeTimeZone$6;->this$0:Lcom/htc/android/worldclock/RearrangeTimeZone;

    iget-object v5, v5, Lcom/htc/android/worldclock/WorldClock;->myList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 427
    iget-object v3, p0, Lcom/htc/android/worldclock/RearrangeTimeZone$6;->this$0:Lcom/htc/android/worldclock/RearrangeTimeZone;

    iget-object v3, v3, Lcom/htc/android/worldclock/WorldClock;->myList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 428
    iget-object v3, p0, Lcom/htc/android/worldclock/RearrangeTimeZone$6;->this$0:Lcom/htc/android/worldclock/RearrangeTimeZone;

    iget-object v3, v3, Lcom/htc/android/worldclock/RearrangeTimeZone;->mDeletedIndex:[Z

    if-eqz v3, :cond_2

    .line 430
    iget-object v3, p0, Lcom/htc/android/worldclock/RearrangeTimeZone$6;->this$0:Lcom/htc/android/worldclock/RearrangeTimeZone;

    iget-object v3, v3, Lcom/htc/android/worldclock/RearrangeTimeZone;->mDeletedIndex:[Z

    add-int/lit8 v4, v1, 0x1

    aget-boolean v2, v3, v4

    .line 431
    .restart local v2       #tempChecked:Z
    iget-object v3, p0, Lcom/htc/android/worldclock/RearrangeTimeZone$6;->this$0:Lcom/htc/android/worldclock/RearrangeTimeZone;

    iget-object v3, v3, Lcom/htc/android/worldclock/RearrangeTimeZone;->mDeletedIndex:[Z

    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Lcom/htc/android/worldclock/RearrangeTimeZone$6;->this$0:Lcom/htc/android/worldclock/RearrangeTimeZone;

    iget-object v5, v5, Lcom/htc/android/worldclock/RearrangeTimeZone;->mDeletedIndex:[Z

    aget-boolean v5, v5, v1

    aput-boolean v5, v3, v4

    .line 432
    iget-object v3, p0, Lcom/htc/android/worldclock/RearrangeTimeZone$6;->this$0:Lcom/htc/android/worldclock/RearrangeTimeZone;

    iget-object v3, v3, Lcom/htc/android/worldclock/RearrangeTimeZone;->mDeletedIndex:[Z

    aput-boolean v2, v3, v1

    .line 424
    .end local v2           #tempChecked:Z
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 437
    .end local v1           #i:I
    :cond_3
    iget-object v3, p0, Lcom/htc/android/worldclock/RearrangeTimeZone$6;->this$0:Lcom/htc/android/worldclock/RearrangeTimeZone;

    #getter for: Lcom/htc/android/worldclock/RearrangeTimeZone;->mRearrangeTimeZoneList:Lcom/htc/widget/HtcReorderListView;
    invoke-static {v3}, Lcom/htc/android/worldclock/RearrangeTimeZone;->access$300(Lcom/htc/android/worldclock/RearrangeTimeZone;)Lcom/htc/widget/HtcReorderListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcReorderListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    check-cast v3, Lcom/htc/android/worldclock/RearrangeTimeZone$RearrangeAdapter;

    invoke-virtual {v3}, Lcom/htc/android/worldclock/RearrangeTimeZone$RearrangeAdapter;->notifyDataSetChanged()V

    .line 438
    return-void
.end method
