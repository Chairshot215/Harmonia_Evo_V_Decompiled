.class public Lcom/android/mms/util/ReportIndicatorCache;
.super Ljava/lang/Object;
.source "ReportIndicatorCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/util/ReportIndicatorCache$ReportIndicatorHandler;,
        Lcom/android/mms/util/ReportIndicatorCache$ReportIndicatorObeserver;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ReportIndicatorCache"

.field private static instance:Lcom/android/mms/util/ReportIndicatorCache;

.field private static mDeliveryReceivedMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mDeliveryRequestMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static mDeliveryStatusMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mReadRequestMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static mReadStatusMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mRicipientNumMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private UIRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mObserverArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/mms/util/ReportIndicatorCache$ReportIndicatorObeserver;",
            ">;>;"
        }
    .end annotation
.end field

.field private mQueryHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/util/ReportIndicatorCache;->DEBUG:Z

    .line 49
    sput-object v1, Lcom/android/mms/util/ReportIndicatorCache;->mDeliveryStatusMap:Ljava/util/HashMap;

    .line 50
    sput-object v1, Lcom/android/mms/util/ReportIndicatorCache;->mReadStatusMap:Ljava/util/HashMap;

    .line 51
    sput-object v1, Lcom/android/mms/util/ReportIndicatorCache;->mRicipientNumMap:Ljava/util/HashMap;

    .line 52
    sput-object v1, Lcom/android/mms/util/ReportIndicatorCache;->mDeliveryRequestMap:Ljava/util/HashMap;

    .line 53
    sput-object v1, Lcom/android/mms/util/ReportIndicatorCache;->mReadRequestMap:Ljava/util/HashMap;

    .line 54
    sput-object v1, Lcom/android/mms/util/ReportIndicatorCache;->mDeliveryReceivedMap:Ljava/util/HashMap;

    .line 56
    sput-object v1, Lcom/android/mms/util/ReportIndicatorCache;->instance:Lcom/android/mms/util/ReportIndicatorCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 87
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/util/ReportIndicatorCache;->mQueryHandler:Landroid/os/Handler;

    .line 47
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/util/ReportIndicatorCache;->mContext:Landroid/content/Context;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/util/ReportIndicatorCache;->mObserverArray:Ljava/util/ArrayList;

    .line 291
    new-instance v0, Lcom/android/mms/util/ReportIndicatorCache$1;

    invoke-direct {v0, p0}, Lcom/android/mms/util/ReportIndicatorCache$1;-><init>(Lcom/android/mms/util/ReportIndicatorCache;)V

    iput-object v0, p0, Lcom/android/mms/util/ReportIndicatorCache;->UIRunnable:Ljava/lang/Runnable;

    .line 89
    invoke-static {}, Lcom/android/mms/util/ReportIndicatorCache;->isSupportReportIndicator()Z

    move-result v0

    if-nez v0, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    sget-object v0, Lcom/android/mms/util/ReportIndicatorCache;->mDeliveryStatusMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/mms/util/ReportIndicatorCache;->mDeliveryStatusMap:Ljava/util/HashMap;

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/mms/util/ReportIndicatorCache;->mReadStatusMap:Ljava/util/HashMap;

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/mms/util/ReportIndicatorCache;->mRicipientNumMap:Ljava/util/HashMap;

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/mms/util/ReportIndicatorCache;->mDeliveryRequestMap:Ljava/util/HashMap;

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/mms/util/ReportIndicatorCache;->mReadRequestMap:Ljava/util/HashMap;

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/mms/util/ReportIndicatorCache;->mDeliveryReceivedMap:Ljava/util/HashMap;

    .line 106
    new-instance v0, Lcom/android/mms/util/ReportIndicatorCache$ReportIndicatorHandler;

    invoke-direct {v0, p0}, Lcom/android/mms/util/ReportIndicatorCache$ReportIndicatorHandler;-><init>(Lcom/android/mms/util/ReportIndicatorCache;)V

    iput-object v0, p0, Lcom/android/mms/util/ReportIndicatorCache;->mQueryHandler:Landroid/os/Handler;

    .line 107
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/util/ReportIndicatorCache;->startAsyncQueryReports(J)V

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/mms/util/ReportIndicatorCache;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/mms/util/ReportIndicatorCache;->notifyOvserverInUIthread()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/util/ReportIndicatorCache;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/mms/util/ReportIndicatorCache;->onReportsQueryComplete()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/util/ReportIndicatorCache;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/mms/util/ReportIndicatorCache;->notifyOvserverInBackground()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/mms/util/ReportIndicatorCache;
    .locals 2

    .prologue
    .line 192
    const-class v1, Lcom/android/mms/util/ReportIndicatorCache;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/mms/util/ReportIndicatorCache;->isSupportReportIndicator()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 193
    const/4 v0, 0x0

    .line 198
    :goto_0
    monitor-exit v1

    return-object v0

    .line 195
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/mms/util/ReportIndicatorCache;->instance:Lcom/android/mms/util/ReportIndicatorCache;

    if-nez v0, :cond_1

    .line 196
    new-instance v0, Lcom/android/mms/util/ReportIndicatorCache;

    invoke-direct {v0}, Lcom/android/mms/util/ReportIndicatorCache;-><init>()V

    sput-object v0, Lcom/android/mms/util/ReportIndicatorCache;->instance:Lcom/android/mms/util/ReportIndicatorCache;

    .line 198
    :cond_1
    sget-object v0, Lcom/android/mms/util/ReportIndicatorCache;->instance:Lcom/android/mms/util/ReportIndicatorCache;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isAllRead(J)Z
    .locals 5
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 168
    invoke-static {}, Lcom/android/mms/util/ReportIndicatorCache;->isSupportReportIndicator()Z

    move-result v2

    if-nez v2, :cond_1

    .line 188
    :cond_0
    :goto_0
    return v3

    .line 171
    :cond_1
    sget-object v2, Lcom/android/mms/util/ReportIndicatorCache;->instance:Lcom/android/mms/util/ReportIndicatorCache;

    if-nez v2, :cond_2

    .line 172
    invoke-static {}, Lcom/android/mms/util/ReportIndicatorCache;->getInstance()Lcom/android/mms/util/ReportIndicatorCache;

    goto :goto_0

    .line 177
    :cond_2
    sget-object v2, Lcom/android/mms/util/ReportIndicatorCache;->mReadStatusMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_0

    sget-object v2, Lcom/android/mms/util/ReportIndicatorCache;->mRicipientNumMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 180
    sget-object v2, Lcom/android/mms/util/ReportIndicatorCache;->mRicipientNumMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/mms/util/ReportIndicatorCache;->mRicipientNumMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 182
    .local v0, addrNum:I
    :goto_1
    sget-object v2, Lcom/android/mms/util/ReportIndicatorCache;->mReadStatusMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 183
    sget-object v2, Lcom/android/mms/util/ReportIndicatorCache;->mReadStatusMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 184
    .local v1, value:I
    mul-int/lit16 v2, v0, 0x80

    if-ne v1, v2, :cond_0

    .line 185
    const/4 v3, 0x1

    goto :goto_0

    .end local v0           #addrNum:I
    .end local v1           #value:I
    :cond_3
    move v0, v3

    .line 180
    goto :goto_1
.end method

.method public static isAllRetrieved(J)Z
    .locals 5
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 143
    invoke-static {}, Lcom/android/mms/util/ReportIndicatorCache;->isSupportReportIndicator()Z

    move-result v2

    if-nez v2, :cond_1

    .line 162
    :cond_0
    :goto_0
    return v3

    .line 146
    :cond_1
    sget-object v2, Lcom/android/mms/util/ReportIndicatorCache;->instance:Lcom/android/mms/util/ReportIndicatorCache;

    if-nez v2, :cond_2

    .line 147
    invoke-static {}, Lcom/android/mms/util/ReportIndicatorCache;->getInstance()Lcom/android/mms/util/ReportIndicatorCache;

    goto :goto_0

    .line 151
    :cond_2
    sget-object v2, Lcom/android/mms/util/ReportIndicatorCache;->mDeliveryStatusMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_0

    sget-object v2, Lcom/android/mms/util/ReportIndicatorCache;->mRicipientNumMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 154
    sget-object v2, Lcom/android/mms/util/ReportIndicatorCache;->mRicipientNumMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/mms/util/ReportIndicatorCache;->mRicipientNumMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 156
    .local v0, addrNum:I
    :goto_1
    sget-object v2, Lcom/android/mms/util/ReportIndicatorCache;->mDeliveryStatusMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    sget-object v2, Lcom/android/mms/util/ReportIndicatorCache;->mDeliveryStatusMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 158
    .local v1, value:I
    mul-int/lit16 v2, v0, 0x81

    if-ne v1, v2, :cond_0

    .line 159
    const/4 v3, 0x1

    goto :goto_0

    .end local v0           #addrNum:I
    .end local v1           #value:I
    :cond_3
    move v0, v3

    .line 154
    goto :goto_1
.end method

.method public static isGetAllDeliveryReport(J)Z
    .locals 5
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 123
    invoke-static {}, Lcom/android/mms/util/ReportIndicatorCache;->isSupportReportIndicator()Z

    move-result v2

    if-nez v2, :cond_1

    .line 136
    :cond_0
    :goto_0
    return v3

    .line 126
    :cond_1
    sget-object v2, Lcom/android/mms/util/ReportIndicatorCache;->instance:Lcom/android/mms/util/ReportIndicatorCache;

    if-nez v2, :cond_2

    .line 127
    invoke-static {}, Lcom/android/mms/util/ReportIndicatorCache;->getInstance()Lcom/android/mms/util/ReportIndicatorCache;

    goto :goto_0

    .line 131
    :cond_2
    sget-object v2, Lcom/android/mms/util/ReportIndicatorCache;->mDeliveryReceivedMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_0

    sget-object v2, Lcom/android/mms/util/ReportIndicatorCache;->mRicipientNumMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 134
    sget-object v2, Lcom/android/mms/util/ReportIndicatorCache;->mRicipientNumMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/mms/util/ReportIndicatorCache;->mRicipientNumMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 135
    .local v0, addrNum:I
    :goto_1
    sget-object v2, Lcom/android/mms/util/ReportIndicatorCache;->mDeliveryReceivedMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/mms/util/ReportIndicatorCache;->mDeliveryReceivedMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 136
    .local v1, deliveryReportReceivedNum:I
    :goto_2
    if-eqz v0, :cond_0

    if-ne v1, v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    .end local v0           #addrNum:I
    .end local v1           #deliveryReportReceivedNum:I
    :cond_3
    move v0, v3

    .line 134
    goto :goto_1

    .restart local v0       #addrNum:I
    :cond_4
    move v1, v3

    .line 135
    goto :goto_2
.end method

.method public static isSupportReportIndicator()Z
    .locals 4

    .prologue
    .line 78
    invoke-static {}, Lcom/android/mms/MmsApp;->getSenseVersion()F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    .line 79
    const/4 v0, 0x1

    .line 82
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyOvserverInBackground()V
    .locals 6

    .prologue
    .line 274
    iget-object v4, p0, Lcom/android/mms/util/ReportIndicatorCache;->mObserverArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 275
    iget-object v4, p0, Lcom/android/mms/util/ReportIndicatorCache;->mObserverArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 276
    .local v3, size:I
    const/4 v0, 0x0

    .line 278
    .local v0, bNeedRunInUI:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 279
    iget-object v4, p0, Lcom/android/mms/util/ReportIndicatorCache;->mObserverArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/util/ReportIndicatorCache$ReportIndicatorObeserver;

    .line 280
    .local v2, resolver:Lcom/android/mms/util/ReportIndicatorCache$ReportIndicatorObeserver;
    if-eqz v2, :cond_0

    #getter for: Lcom/android/mms/util/ReportIndicatorCache$ReportIndicatorObeserver;->bNotifyInUI:Z
    invoke-static {v2}, Lcom/android/mms/util/ReportIndicatorCache$ReportIndicatorObeserver;->access$000(Lcom/android/mms/util/ReportIndicatorCache$ReportIndicatorObeserver;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 281
    invoke-virtual {v2}, Lcom/android/mms/util/ReportIndicatorCache$ReportIndicatorObeserver;->onChange()V

    .line 278
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 283
    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    .line 285
    .end local v2           #resolver:Lcom/android/mms/util/ReportIndicatorCache$ReportIndicatorObeserver;
    :cond_1
    if-eqz v0, :cond_2

    .line 286
    iget-object v4, p0, Lcom/android/mms/util/ReportIndicatorCache;->mQueryHandler:Landroid/os/Handler;

    check-cast v4, Lcom/android/mms/util/MmsAsyncWorkHandler;

    iget-object v5, p0, Lcom/android/mms/util/ReportIndicatorCache;->UIRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Lcom/android/mms/util/MmsAsyncWorkHandler;->runInUIthread(Ljava/lang/Runnable;)V

    .line 289
    .end local v0           #bNeedRunInUI:Z
    .end local v1           #i:I
    .end local v3           #size:I
    :cond_2
    return-void
.end method

.method private notifyOvserverInUIthread()V
    .locals 4

    .prologue
    .line 299
    iget-object v3, p0, Lcom/android/mms/util/ReportIndicatorCache;->mObserverArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 300
    iget-object v3, p0, Lcom/android/mms/util/ReportIndicatorCache;->mObserverArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 302
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 303
    iget-object v3, p0, Lcom/android/mms/util/ReportIndicatorCache;->mObserverArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/util/ReportIndicatorCache$ReportIndicatorObeserver;

    .line 304
    .local v1, resolver:Lcom/android/mms/util/ReportIndicatorCache$ReportIndicatorObeserver;
    if-eqz v1, :cond_0

    #getter for: Lcom/android/mms/util/ReportIndicatorCache$ReportIndicatorObeserver;->bNotifyInUI:Z
    invoke-static {v1}, Lcom/android/mms/util/ReportIndicatorCache$ReportIndicatorObeserver;->access$000(Lcom/android/mms/util/ReportIndicatorCache$ReportIndicatorObeserver;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 305
    invoke-virtual {v1}, Lcom/android/mms/util/ReportIndicatorCache$ReportIndicatorObeserver;->onChange()V

    .line 302
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 309
    .end local v0           #i:I
    .end local v1           #resolver:Lcom/android/mms/util/ReportIndicatorCache$ReportIndicatorObeserver;
    .end local v2           #size:I
    :cond_1
    return-void
.end method

.method private onReportsQueryComplete()V
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 212
    iget-object v0, p0, Lcom/android/mms/util/ReportIndicatorCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://mms/thread-allreport"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "MIN(_id)"

    aput-object v3, v2, v12

    const-string v3, "SUM(st)"

    aput-object v3, v2, v11

    const-string v3, "SUM(read_status)"

    aput-object v3, v2, v5

    const-string v3, "MIN(d_rpt)"

    aput-object v3, v2, v13

    const/4 v3, 0x4

    const-string v5, "MIN(rr), COUNT(st)"

    aput-object v5, v2, v3

    const-string v3, "thread_id>0 AND m_id!= \"\" AND (m_type = 128 or m_type = 134 or m_type = 136)"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 216
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 219
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 221
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 223
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->longValue()J

    move-result-wide v9

    .line 224
    .local v9, id:J
    sget-object v0, Lcom/android/mms/util/ReportIndicatorCache;->mRicipientNumMap:Ljava/util/HashMap;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/android/mms/util/ReportIndicatorCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://mms/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/addr"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "COUNT(_id)"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "msg_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND (type = 129 or type = 130 or type = 151)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .line 228
    .local v7, cursorAddr:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 231
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 233
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 234
    sget-object v0, Lcom/android/mms/util/ReportIndicatorCache;->mRicipientNumMap:Ljava/util/HashMap;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 239
    :catch_0
    move-exception v8

    .line 241
    .local v8, ex:Ljava/lang/IllegalStateException;
    :try_start_2
    const-string v0, "ReportIndicatorCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryRicipientsNum e >"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/IllegalStateException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 245
    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 249
    .end local v7           #cursorAddr:Landroid/database/Cursor;
    .end local v8           #ex:Ljava/lang/IllegalStateException;
    :cond_0
    :goto_2
    sget-object v0, Lcom/android/mms/util/ReportIndicatorCache;->mDeliveryStatusMap:Ljava/util/HashMap;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-object v0, Lcom/android/mms/util/ReportIndicatorCache;->mReadStatusMap:Ljava/util/HashMap;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    sget-object v1, Lcom/android/mms/util/ReportIndicatorCache;->mDeliveryRequestMap:Ljava/util/HashMap;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/16 v3, 0x80

    if-ne v0, v3, :cond_3

    move v0, v11

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    sget-object v1, Lcom/android/mms/util/ReportIndicatorCache;->mReadRequestMap:Ljava/util/HashMap;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v0, 0x4

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/16 v3, 0x80

    if-ne v0, v3, :cond_4

    move v0, v11

    :goto_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v0, Lcom/android/mms/util/ReportIndicatorCache;->mDeliveryReceivedMap:Ljava/util/HashMap;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x5

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 259
    .end local v9           #id:J
    :catch_1
    move-exception v8

    .line 261
    .restart local v8       #ex:Ljava/lang/IllegalStateException;
    :try_start_4
    const-string v0, "ReportIndicatorCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReportsQueryComplete e >"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/IllegalStateException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 265
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 271
    .end local v8           #ex:Ljava/lang/IllegalStateException;
    :cond_1
    :goto_5
    return-void

    .line 245
    .restart local v7       #cursorAddr:Landroid/database/Cursor;
    .restart local v9       #id:J
    :cond_2
    :try_start_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_2

    .line 265
    .end local v7           #cursorAddr:Landroid/database/Cursor;
    .end local v9           #id:J
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 245
    .restart local v7       #cursorAddr:Landroid/database/Cursor;
    .restart local v9       #id:J
    :catchall_1
    move-exception v0

    :try_start_6
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_1

    .end local v7           #cursorAddr:Landroid/database/Cursor;
    :cond_3
    move v0, v12

    .line 251
    goto :goto_3

    :cond_4
    move v0, v12

    .line 252
    goto :goto_4

    .line 265
    .end local v9           #id:J
    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_5
.end method

.method public static declared-synchronized registerReportIndicatorObserver(Lcom/android/mms/util/ReportIndicatorCache$ReportIndicatorObeserver;)V
    .locals 3
    .parameter "obeserver"

    .prologue
    .line 203
    const-class v1, Lcom/android/mms/util/ReportIndicatorCache;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/mms/util/ReportIndicatorCache;->isSupportReportIndicator()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 207
    :goto_0
    monitor-exit v1

    return-void

    .line 206
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/mms/util/ReportIndicatorCache;->getInstance()Lcom/android/mms/util/ReportIndicatorCache;

    move-result-object v0

    iget-object v0, v0, Lcom/android/mms/util/ReportIndicatorCache;->mObserverArray:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 203
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public startAsyncQueryReports(J)V
    .locals 2
    .parameter "id"

    .prologue
    .line 116
    const-string v0, "ReportIndicatorCache"

    const-string v1, "startAsyncQueryReports ---"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lcom/android/mms/util/ReportIndicatorCache;->mQueryHandler:Landroid/os/Handler;

    const/16 v1, 0x4e21

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 119
    return-void
.end method
