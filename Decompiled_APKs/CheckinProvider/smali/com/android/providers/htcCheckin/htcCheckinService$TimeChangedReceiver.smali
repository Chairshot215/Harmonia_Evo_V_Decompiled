.class Lcom/android/providers/htcCheckin/htcCheckinService$TimeChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "htcCheckinService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/htcCheckin/htcCheckinService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeChangedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/htcCheckin/htcCheckinService;


# direct methods
.method private constructor <init>(Lcom/android/providers/htcCheckin/htcCheckinService;)V
    .locals 0
    .parameter

    .prologue
    .line 2722
    iput-object p1, p0, Lcom/android/providers/htcCheckin/htcCheckinService$TimeChangedReceiver;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/htcCheckin/htcCheckinService;Lcom/android/providers/htcCheckin/htcCheckinService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2722
    invoke-direct {p0, p1}, Lcom/android/providers/htcCheckin/htcCheckinService$TimeChangedReceiver;-><init>(Lcom/android/providers/htcCheckin/htcCheckinService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "c"
    .parameter "intent"

    .prologue
    .line 2726
    iget-object v0, p0, Lcom/android/providers/htcCheckin/htcCheckinService$TimeChangedReceiver;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService;->scheduleCheckin()V
    invoke-static {v0}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$2200(Lcom/android/providers/htcCheckin/htcCheckinService;)V

    .line 2728
    return-void
.end method
