.class Lcom/htc/android/worldclock/SetAlarm$5;
.super Ljava/lang/Object;
.source "SetAlarm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/SetAlarm;->initUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/SetAlarm;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/SetAlarm;)V
    .locals 0
    .parameter

    .prologue
    .line 390
    iput-object p1, p0, Lcom/htc/android/worldclock/SetAlarm$5;->this$0:Lcom/htc/android/worldclock/SetAlarm;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 393
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 395
    iget-object v0, p0, Lcom/htc/android/worldclock/SetAlarm$5;->this$0:Lcom/htc/android/worldclock/SetAlarm;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/android/worldclock/SetAlarm;->showDialog(I)V

    .line 396
    return-void
.end method
