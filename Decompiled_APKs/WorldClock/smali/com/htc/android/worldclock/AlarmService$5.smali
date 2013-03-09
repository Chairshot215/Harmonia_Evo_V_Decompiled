.class Lcom/htc/android/worldclock/AlarmService$5;
.super Ljava/lang/Object;
.source "AlarmService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/AlarmService;->alarmLockScreen(Landroid/content/Context;ILjava/lang/String;)V
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
    .line 284
    iput-object p1, p0, Lcom/htc/android/worldclock/AlarmService$5;->this$0:Lcom/htc/android/worldclock/AlarmService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmService$5;->this$0:Lcom/htc/android/worldclock/AlarmService;

    iget-object v1, p0, Lcom/htc/android/worldclock/AlarmService$5;->this$0:Lcom/htc/android/worldclock/AlarmService;

    #getter for: Lcom/htc/android/worldclock/AlarmService;->mId:I
    invoke-static {v1}, Lcom/htc/android/worldclock/AlarmService;->access$200(Lcom/htc/android/worldclock/AlarmService;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/htc/android/worldclock/AlertUtils;->setNextAlarm(Landroid/content/Context;I)V

    .line 288
    return-void
.end method
