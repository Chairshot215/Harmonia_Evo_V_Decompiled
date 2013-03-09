.class Lcom/htc/android/worldclock/TimerService$2;
.super Ljava/lang/Object;
.source "TimerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/TimerService;->playAlarm()V
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
    .line 189
    iput-object p1, p0, Lcom/htc/android/worldclock/TimerService$2;->this$0:Lcom/htc/android/worldclock/TimerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/htc/android/worldclock/TimerService$2;->this$0:Lcom/htc/android/worldclock/TimerService;

    #getter for: Lcom/htc/android/worldclock/TimerService;->mKlaxon:Lcom/htc/android/worldclock/TimerKlaxon;
    invoke-static {v0}, Lcom/htc/android/worldclock/TimerService;->access$000(Lcom/htc/android/worldclock/TimerService;)Lcom/htc/android/worldclock/TimerKlaxon;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/worldclock/TimerService$2;->this$0:Lcom/htc/android/worldclock/TimerService;

    invoke-virtual {v0, v1}, Lcom/htc/android/worldclock/TimerKlaxon;->play(Landroid/content/Context;)V

    .line 193
    return-void
.end method
