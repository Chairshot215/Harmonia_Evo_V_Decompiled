.class Lcom/android/providers/htcCheckin/htcCheckinService$ConnectivityReceiver$1;
.super Ljava/lang/Thread;
.source "htcCheckinService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/htcCheckin/htcCheckinService$ConnectivityReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/providers/htcCheckin/htcCheckinService$ConnectivityReceiver;


# direct methods
.method constructor <init>(Lcom/android/providers/htcCheckin/htcCheckinService$ConnectivityReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 2753
    iput-object p1, p0, Lcom/android/providers/htcCheckin/htcCheckinService$ConnectivityReceiver$1;->this$1:Lcom/android/providers/htcCheckin/htcCheckinService$ConnectivityReceiver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2755
    iget-object v0, p0, Lcom/android/providers/htcCheckin/htcCheckinService$ConnectivityReceiver$1;->this$1:Lcom/android/providers/htcCheckin/htcCheckinService$ConnectivityReceiver;

    iget-object v0, v0, Lcom/android/providers/htcCheckin/htcCheckinService$ConnectivityReceiver;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService;->scheduleCheckin()V
    invoke-static {v0}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$2200(Lcom/android/providers/htcCheckin/htcCheckinService;)V

    .line 2756
    return-void
.end method
