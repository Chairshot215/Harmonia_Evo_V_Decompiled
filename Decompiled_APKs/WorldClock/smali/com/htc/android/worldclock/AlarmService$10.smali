.class Lcom/htc/android/worldclock/AlarmService$10;
.super Ljava/lang/Object;
.source "AlarmService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/AlarmService;->AutoSnooze()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/AlarmService;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/AlarmService;)V
    .locals 0
    .parameter

    .prologue
    .line 484
    iput-object p1, p0, Lcom/htc/android/worldclock/AlarmService$10;->this$0:Lcom/htc/android/worldclock/AlarmService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 487
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmService$10;->this$0:Lcom/htc/android/worldclock/AlarmService;

    iget-object v1, p0, Lcom/htc/android/worldclock/AlarmService$10;->this$0:Lcom/htc/android/worldclock/AlarmService;

    iget-object v2, p0, Lcom/htc/android/worldclock/AlarmService$10;->this$0:Lcom/htc/android/worldclock/AlarmService;

    #getter for: Lcom/htc/android/worldclock/AlarmService;->mId:I
    invoke-static {v2}, Lcom/htc/android/worldclock/AlarmService;->access$200(Lcom/htc/android/worldclock/AlarmService;)I

    move-result v2

    iget-object v3, p0, Lcom/htc/android/worldclock/AlarmService$10;->this$0:Lcom/htc/android/worldclock/AlarmService;

    #getter for: Lcom/htc/android/worldclock/AlarmService;->mDescription:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/android/worldclock/AlarmService;->access$300(Lcom/htc/android/worldclock/AlarmService;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/worldclock/AlarmService$10;->this$0:Lcom/htc/android/worldclock/AlarmService;

    #getter for: Lcom/htc/android/worldclock/AlarmService;->mRecvSnoozeMinutes:I
    invoke-static {v4}, Lcom/htc/android/worldclock/AlarmService;->access$900(Lcom/htc/android/worldclock/AlarmService;)I

    move-result v4

    #calls: Lcom/htc/android/worldclock/AlarmService;->snooze(Landroid/content/Context;ILjava/lang/String;I)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/android/worldclock/AlarmService;->access$1000(Lcom/htc/android/worldclock/AlarmService;Landroid/content/Context;ILjava/lang/String;I)V

    .line 488
    return-void
.end method
