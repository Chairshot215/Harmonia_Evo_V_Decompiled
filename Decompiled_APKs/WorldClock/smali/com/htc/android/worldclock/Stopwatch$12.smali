.class Lcom/htc/android/worldclock/Stopwatch$12;
.super Ljava/lang/Object;
.source "Stopwatch.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/Stopwatch;->updateButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/Stopwatch;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/Stopwatch;)V
    .locals 0
    .parameter

    .prologue
    .line 584
    iput-object p1, p0, Lcom/htc/android/worldclock/Stopwatch$12;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 587
    iget-object v0, p0, Lcom/htc/android/worldclock/Stopwatch$12;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    const/4 v1, 0x0

    #setter for: Lcom/htc/android/worldclock/Stopwatch;->mState:I
    invoke-static {v0, v1}, Lcom/htc/android/worldclock/Stopwatch;->access$802(Lcom/htc/android/worldclock/Stopwatch;I)I

    .line 588
    iget-object v0, p0, Lcom/htc/android/worldclock/Stopwatch$12;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    invoke-virtual {v0}, Lcom/htc/android/worldclock/Stopwatch;->updateButton()V

    .line 589
    iget-object v0, p0, Lcom/htc/android/worldclock/Stopwatch$12;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    invoke-virtual {v0}, Lcom/htc/android/worldclock/Stopwatch;->updateWatch()V

    .line 590
    iget-object v0, p0, Lcom/htc/android/worldclock/Stopwatch$12;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    invoke-virtual {v0}, Lcom/htc/android/worldclock/Stopwatch;->updateLapWatch()V

    .line 591
    iget-object v0, p0, Lcom/htc/android/worldclock/Stopwatch$12;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    #calls: Lcom/htc/android/worldclock/Stopwatch;->deleteLapData()V
    invoke-static {v0}, Lcom/htc/android/worldclock/Stopwatch;->access$1900(Lcom/htc/android/worldclock/Stopwatch;)V

    .line 592
    return-void
.end method
