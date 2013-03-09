.class Lcom/htc/android/worldclock/AlarmInitService$5;
.super Ljava/lang/Object;
.source "AlarmInitService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/AlarmInitService;->playAlarm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/AlarmInitService;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/AlarmInitService;)V
    .locals 0
    .parameter

    .prologue
    .line 256
    iput-object p1, p0, Lcom/htc/android/worldclock/AlarmInitService$5;->this$0:Lcom/htc/android/worldclock/AlarmInitService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 259
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmInitService$5;->this$0:Lcom/htc/android/worldclock/AlarmInitService;

    #getter for: Lcom/htc/android/worldclock/AlarmInitService;->mKlaxon:Lcom/htc/android/worldclock/AlarmKlaxon;
    invoke-static {v0}, Lcom/htc/android/worldclock/AlarmInitService;->access$300(Lcom/htc/android/worldclock/AlarmInitService;)Lcom/htc/android/worldclock/AlarmKlaxon;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/worldclock/AlarmInitService$5;->this$0:Lcom/htc/android/worldclock/AlarmInitService;

    iget-object v2, p0, Lcom/htc/android/worldclock/AlarmInitService$5;->this$0:Lcom/htc/android/worldclock/AlarmInitService;

    #getter for: Lcom/htc/android/worldclock/AlarmInitService;->mId:I
    invoke-static {v2}, Lcom/htc/android/worldclock/AlarmInitService;->access$200(Lcom/htc/android/worldclock/AlarmInitService;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/worldclock/AlarmKlaxon;->play(Landroid/content/Context;I)V

    .line 260
    return-void
.end method
