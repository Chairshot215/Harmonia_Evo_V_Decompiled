.class Lcom/htc/android/worldclock/DeskClock$4;
.super Ljava/lang/Object;
.source "DeskClock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/DeskClock;->onDestroy()V
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
    .line 1032
    iput-object p1, p0, Lcom/htc/android/worldclock/DeskClock$4;->this$0:Lcom/htc/android/worldclock/DeskClock;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1035
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskClock$4;->this$0:Lcom/htc/android/worldclock/DeskClock;

    #calls: Lcom/htc/android/worldclock/DeskClock;->savePreference()V
    invoke-static {v0}, Lcom/htc/android/worldclock/DeskClock;->access$2400(Lcom/htc/android/worldclock/DeskClock;)V

    .line 1036
    return-void
.end method
