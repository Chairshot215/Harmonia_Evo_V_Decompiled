.class Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper$1;
.super Ljava/lang/Object;
.source "RecentsScrollViewPerformanceHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->onLayoutCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper$1;->this$0:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper$1;->this$0:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->updateShowBackground()V

    return-void
.end method
