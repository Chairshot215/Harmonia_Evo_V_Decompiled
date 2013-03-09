.class Lcom/htc/android/worldclock/DigitalClock$1;
.super Ljava/lang/Object;
.source "DigitalClock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/DigitalClock;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/DigitalClock;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/DigitalClock;)V
    .locals 0
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/htc/android/worldclock/DigitalClock$1;->this$0:Lcom/htc/android/worldclock/DigitalClock;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/htc/android/worldclock/DigitalClock$1;->this$0:Lcom/htc/android/worldclock/DigitalClock;

    iget-object v1, p0, Lcom/htc/android/worldclock/DigitalClock$1;->this$0:Lcom/htc/android/worldclock/DigitalClock;

    #getter for: Lcom/htc/android/worldclock/DigitalClock;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/android/worldclock/DigitalClock;->access$800(Lcom/htc/android/worldclock/DigitalClock;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    #setter for: Lcom/htc/android/worldclock/DigitalClock;->mTimeFormat:Ljava/text/DateFormat;
    invoke-static {v0, v1}, Lcom/htc/android/worldclock/DigitalClock;->access$702(Lcom/htc/android/worldclock/DigitalClock;Ljava/text/DateFormat;)Ljava/text/DateFormat;

    .line 197
    iget-object v0, p0, Lcom/htc/android/worldclock/DigitalClock$1;->this$0:Lcom/htc/android/worldclock/DigitalClock;

    #getter for: Lcom/htc/android/worldclock/DigitalClock;->mUIHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/android/worldclock/DigitalClock;->access$200(Lcom/htc/android/worldclock/DigitalClock;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 198
    return-void
.end method
