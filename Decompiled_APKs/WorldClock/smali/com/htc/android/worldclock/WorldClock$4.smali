.class Lcom/htc/android/worldclock/WorldClock$4;
.super Ljava/lang/Object;
.source "WorldClock.java"

# interfaces
.implements Lcom/htc/android/worldclock/WorldClockTabControl$TabCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/worldclock/WorldClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/WorldClock;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/WorldClock;)V
    .locals 0
    .parameter

    .prologue
    .line 1155
    iput-object p1, p0, Lcom/htc/android/worldclock/WorldClock$4;->this$0:Lcom/htc/android/worldclock/WorldClock;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseMenu()V
    .locals 1

    .prologue
    .line 1164
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 1165
    iget-object v0, p0, Lcom/htc/android/worldclock/WorldClock$4;->this$0:Lcom/htc/android/worldclock/WorldClock;

    invoke-virtual {v0}, Lcom/htc/android/worldclock/WorldClock;->closeOptionsMenu()V

    .line 1166
    return-void
.end method

.method public onReset(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "titleBar"

    .prologue
    .line 1158
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 1159
    iget-object v0, p0, Lcom/htc/android/worldclock/WorldClock$4;->this$0:Lcom/htc/android/worldclock/WorldClock;

    invoke-static {v0, p1}, Lcom/htc/android/worldclock/ResUtils;->setTitleBarBackground(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;)V

    .line 1160
    return-void
.end method
