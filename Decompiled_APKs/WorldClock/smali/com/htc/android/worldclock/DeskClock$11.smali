.class Lcom/htc/android/worldclock/DeskClock$11;
.super Ljava/lang/Object;
.source "DeskClock.java"

# interfaces
.implements Lcom/htc/android/worldclock/WorldClockTabControl$InitSaverCallback;


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
    .line 1473
    iput-object p1, p0, Lcom/htc/android/worldclock/DeskClock$11;->this$0:Lcom/htc/android/worldclock/DeskClock;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitSaver()V
    .locals 1

    .prologue
    .line 1476
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 1477
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock$11;->this$0:Lcom/htc/android/worldclock/DeskClock;

    #calls: Lcom/htc/android/worldclock/DeskClock;->refreshInitSavers()V
    invoke-static {v0}, Lcom/htc/android/worldclock/DeskClock;->access$3000(Lcom/htc/android/worldclock/DeskClock;)V

    .line 1478
    return-void
.end method
