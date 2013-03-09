.class Lcom/htc/android/worldclock/DeskClock$6;
.super Ljava/lang/Object;
.source "DeskClock.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/DeskClock;->initRestoreView(Landroid/view/View;)V
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
    .line 1346
    iput-object p1, p0, Lcom/htc/android/worldclock/DeskClock$6;->this$0:Lcom/htc/android/worldclock/DeskClock;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1349
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 1350
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock$6;->this$0:Lcom/htc/android/worldclock/DeskClock;

    invoke-virtual {v0}, Lcom/htc/android/worldclock/DeskClock;->launchLocSetting()V

    .line 1351
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock$6;->this$0:Lcom/htc/android/worldclock/DeskClock;

    #getter for: Lcom/htc/android/worldclock/DeskClock;->mWeatherDisable:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/android/worldclock/DeskClock;->access$2500(Lcom/htc/android/worldclock/DeskClock;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1352
    return-void
.end method
