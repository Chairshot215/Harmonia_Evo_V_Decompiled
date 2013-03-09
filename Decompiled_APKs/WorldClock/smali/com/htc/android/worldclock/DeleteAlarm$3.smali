.class Lcom/htc/android/worldclock/DeleteAlarm$3;
.super Ljava/lang/Object;
.source "DeleteAlarm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/DeleteAlarm;->onInitChild()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/DeleteAlarm;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/DeleteAlarm;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/htc/android/worldclock/DeleteAlarm$3;->this$0:Lcom/htc/android/worldclock/DeleteAlarm;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/htc/android/worldclock/DeleteAlarm$3;->this$0:Lcom/htc/android/worldclock/DeleteAlarm;

    #calls: Lcom/htc/android/worldclock/DeleteAlarm;->updateDeleteAlarm()V
    invoke-static {v0}, Lcom/htc/android/worldclock/DeleteAlarm;->access$000(Lcom/htc/android/worldclock/DeleteAlarm;)V

    .line 128
    return-void
.end method
