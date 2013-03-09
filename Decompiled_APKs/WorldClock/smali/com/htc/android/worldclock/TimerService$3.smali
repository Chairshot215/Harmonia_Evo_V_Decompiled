.class Lcom/htc/android/worldclock/TimerService$3;
.super Ljava/lang/Object;
.source "TimerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/TimerService;->updateTimerProvider()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/TimerService;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/TimerService;)V
    .locals 0
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/htc/android/worldclock/TimerService$3;->this$0:Lcom/htc/android/worldclock/TimerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 211
    new-instance v0, Lcom/htc/android/worldclock/Timers$TimerData;

    invoke-direct {v0}, Lcom/htc/android/worldclock/Timers$TimerData;-><init>()V

    .line 212
    .local v0, data:Lcom/htc/android/worldclock/Timers$TimerData;
    const/4 v1, 0x3

    iput v1, v0, Lcom/htc/android/worldclock/Timers$TimerData;->state:I

    .line 213
    iget-object v1, p0, Lcom/htc/android/worldclock/TimerService$3;->this$0:Lcom/htc/android/worldclock/TimerService;

    invoke-static {v1}, Lcom/htc/android/worldclock/PreferencesUtil;->getExpiredTime(Landroid/content/Context;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/htc/android/worldclock/Timers$TimerData;->timeExpired:J

    .line 214
    iget-object v1, p0, Lcom/htc/android/worldclock/TimerService$3;->this$0:Lcom/htc/android/worldclock/TimerService;

    invoke-static {v1, v0}, Lcom/htc/android/worldclock/Timers;->setTimerData(Landroid/content/Context;Lcom/htc/android/worldclock/Timers$TimerData;)V

    .line 215
    return-void
.end method
