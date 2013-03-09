.class Lcom/android/mms/util/ReportIndicatorCache$1;
.super Ljava/lang/Object;
.source "ReportIndicatorCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/ReportIndicatorCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/util/ReportIndicatorCache;


# direct methods
.method constructor <init>(Lcom/android/mms/util/ReportIndicatorCache;)V
    .locals 0
    .parameter

    .prologue
    .line 291
    iput-object p1, p0, Lcom/android/mms/util/ReportIndicatorCache$1;->this$0:Lcom/android/mms/util/ReportIndicatorCache;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/mms/util/ReportIndicatorCache$1;->this$0:Lcom/android/mms/util/ReportIndicatorCache;

    #calls: Lcom/android/mms/util/ReportIndicatorCache;->notifyOvserverInUIthread()V
    invoke-static {v0}, Lcom/android/mms/util/ReportIndicatorCache;->access$100(Lcom/android/mms/util/ReportIndicatorCache;)V

    .line 294
    return-void
.end method
