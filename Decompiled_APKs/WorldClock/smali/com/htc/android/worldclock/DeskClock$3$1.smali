.class Lcom/htc/android/worldclock/DeskClock$3$1;
.super Ljava/lang/Thread;
.source "DeskClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/DeskClock$3;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/worldclock/DeskClock$3;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/DeskClock$3;)V
    .locals 0
    .parameter

    .prologue
    .line 296
    iput-object p1, p0, Lcom/htc/android/worldclock/DeskClock$3$1;->this$1:Lcom/htc/android/worldclock/DeskClock$3;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock$3$1;->this$1:Lcom/htc/android/worldclock/DeskClock$3;

    iget-object v0, v0, Lcom/htc/android/worldclock/DeskClock$3;->this$0:Lcom/htc/android/worldclock/DeskClock;

    #calls: Lcom/htc/android/worldclock/DeskClock;->fetchWeatherData()V
    invoke-static {v0}, Lcom/htc/android/worldclock/DeskClock;->access$700(Lcom/htc/android/worldclock/DeskClock;)V

    .line 300
    return-void
.end method
