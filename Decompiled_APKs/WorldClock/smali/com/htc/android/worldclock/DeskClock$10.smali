.class Lcom/htc/android/worldclock/DeskClock$10;
.super Ljava/lang/Object;
.source "DeskClock.java"

# interfaces
.implements Lcom/htc/android/worldclock/WorldClockTabControl$TabCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/worldclock/DeskClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/DeskClock;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/DeskClock;)V
    .locals 0
    .parameter

    .prologue
    .line 1461
    iput-object p1, p0, Lcom/htc/android/worldclock/DeskClock$10;->this$0:Lcom/htc/android/worldclock/DeskClock;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseMenu()V
    .locals 0

    .prologue
    .line 1470
    return-void
.end method

.method public onReset(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "titleBar"

    .prologue
    .line 1464
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 1465
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock$10;->this$0:Lcom/htc/android/worldclock/DeskClock;

    iget-object v0, v0, Lcom/htc/android/worldclock/DeskClock;->mDeskClockResUtils:Lcom/htc/android/worldclock/DeskClockResUtils;

    invoke-virtual {v0}, Lcom/htc/android/worldclock/DeskClockResUtils;->resetLayout()V

    .line 1466
    return-void
.end method
