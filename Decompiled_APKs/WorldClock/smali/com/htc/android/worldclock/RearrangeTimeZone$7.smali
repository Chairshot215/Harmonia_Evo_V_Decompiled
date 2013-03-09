.class Lcom/htc/android/worldclock/RearrangeTimeZone$7;
.super Ljava/lang/Object;
.source "RearrangeTimeZone.java"

# interfaces
.implements Lcom/htc/widget/HtcReorderListView$RemoveListener;


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
    .line 442
    iput-object p1, p0, Lcom/htc/android/worldclock/RearrangeTimeZone$7;->this$0:Lcom/htc/android/worldclock/RearrangeTimeZone;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public remove(I)V
    .locals 0
    .parameter "which"

    .prologue
    .line 445
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 446
    return-void
.end method
