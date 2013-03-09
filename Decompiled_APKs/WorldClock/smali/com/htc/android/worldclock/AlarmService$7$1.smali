.class Lcom/htc/android/worldclock/AlarmService$7$1;
.super Ljava/lang/Object;
.source "AlarmService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/AlarmService$7;->onKilled()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/worldclock/AlarmService$7;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/AlarmService$7;)V
    .locals 0
    .parameter

    .prologue
    .line 352
    iput-object p1, p0, Lcom/htc/android/worldclock/AlarmService$7$1;->this$1:Lcom/htc/android/worldclock/AlarmService$7;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 355
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmService$7$1;->this$1:Lcom/htc/android/worldclock/AlarmService$7;

    iget-object v0, v0, Lcom/htc/android/worldclock/AlarmService$7;->this$0:Lcom/htc/android/worldclock/AlarmService;

    #getter for: Lcom/htc/android/worldclock/AlarmService;->mKlaxon:Lcom/htc/android/worldclock/AlarmKlaxon;
    invoke-static {v0}, Lcom/htc/android/worldclock/AlarmService;->access$700(Lcom/htc/android/worldclock/AlarmService;)Lcom/htc/android/worldclock/AlarmKlaxon;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmService$7$1;->this$1:Lcom/htc/android/worldclock/AlarmService$7;

    iget-object v0, v0, Lcom/htc/android/worldclock/AlarmService$7;->this$0:Lcom/htc/android/worldclock/AlarmService;

    #getter for: Lcom/htc/android/worldclock/AlarmService;->mKlaxon:Lcom/htc/android/worldclock/AlarmKlaxon;
    invoke-static {v0}, Lcom/htc/android/worldclock/AlarmService;->access$700(Lcom/htc/android/worldclock/AlarmService;)Lcom/htc/android/worldclock/AlarmKlaxon;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/worldclock/AlarmService$7$1;->this$1:Lcom/htc/android/worldclock/AlarmService$7;

    iget-object v1, v1, Lcom/htc/android/worldclock/AlarmService$7;->this$0:Lcom/htc/android/worldclock/AlarmService;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/worldclock/AlarmKlaxon;->stop(Landroid/content/Context;Z)V

    .line 357
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmService$7$1;->this$1:Lcom/htc/android/worldclock/AlarmService$7;

    iget-object v0, v0, Lcom/htc/android/worldclock/AlarmService$7;->this$0:Lcom/htc/android/worldclock/AlarmService;

    const/4 v1, 0x0

    #setter for: Lcom/htc/android/worldclock/AlarmService;->mKlaxon:Lcom/htc/android/worldclock/AlarmKlaxon;
    invoke-static {v0, v1}, Lcom/htc/android/worldclock/AlarmService;->access$702(Lcom/htc/android/worldclock/AlarmService;Lcom/htc/android/worldclock/AlarmKlaxon;)Lcom/htc/android/worldclock/AlarmKlaxon;

    .line 359
    :cond_0
    return-void
.end method
