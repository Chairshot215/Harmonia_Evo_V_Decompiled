.class Lcom/htc/android/worldclock/AlarmClock$3;
.super Ljava/lang/Object;
.source "AlarmClock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/AlarmClock;->updateMyList()V
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
    .line 323
    iput-object p1, p0, Lcom/htc/android/worldclock/AlarmClock$3;->this$0:Lcom/htc/android/worldclock/AlarmClock;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmClock$3;->this$0:Lcom/htc/android/worldclock/AlarmClock;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/htc/android/worldclock/AlarmClock;->showDialog(I)V

    .line 327
    return-void
.end method
