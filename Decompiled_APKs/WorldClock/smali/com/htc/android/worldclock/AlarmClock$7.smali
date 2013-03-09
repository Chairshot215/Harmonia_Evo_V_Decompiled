.class Lcom/htc/android/worldclock/AlarmClock$7;
.super Ljava/lang/Object;
.source "AlarmClock.java"

# interfaces
.implements Lcom/htc/android/worldclock/WorldClockTabControl$TabCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/worldclock/AlarmClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/AlarmClock;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/AlarmClock;)V
    .locals 0
    .parameter

    .prologue
    .line 724
    iput-object p1, p0, Lcom/htc/android/worldclock/AlarmClock$7;->this$0:Lcom/htc/android/worldclock/AlarmClock;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseMenu()V
    .locals 1

    .prologue
    .line 733
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 734
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmClock$7;->this$0:Lcom/htc/android/worldclock/AlarmClock;

    invoke-virtual {v0}, Lcom/htc/android/worldclock/AlarmClock;->closeOptionsMenu()V

    .line 735
    return-void
.end method

.method public onReset(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "titleBar"

    .prologue
    .line 727
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 728
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmClock$7;->this$0:Lcom/htc/android/worldclock/AlarmClock;

    invoke-static {v0, p1}, Lcom/htc/android/worldclock/ResUtils;->setTitleBarBackground(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;)V

    .line 729
    return-void
.end method
