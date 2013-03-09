.class Lcom/htc/android/worldclock/AlarmInitService$3;
.super Ljava/lang/Object;
.source "AlarmInitService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/AlarmInitService;->resetStopwatch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/AlarmInitService;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/AlarmInitService;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/htc/android/worldclock/AlarmInitService$3;->this$0:Lcom/htc/android/worldclock/AlarmInitService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmInitService$3;->this$0:Lcom/htc/android/worldclock/AlarmInitService;

    invoke-virtual {v0}, Lcom/htc/android/worldclock/AlarmInitService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/worldclock/StopwatchUtils;->DeleteStopwatchLapData(Landroid/content/Context;)V

    .line 143
    return-void
.end method
