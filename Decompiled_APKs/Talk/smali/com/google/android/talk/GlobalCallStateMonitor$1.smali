.class Lcom/google/android/talk/GlobalCallStateMonitor$1;
.super Landroid/telephony/PhoneStateListener;
.source "GlobalCallStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/GlobalCallStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/GlobalCallStateMonitor;


# direct methods
.method constructor <init>(Lcom/google/android/talk/GlobalCallStateMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/google/android/talk/GlobalCallStateMonitor$1;->this$0:Lcom/google/android/talk/GlobalCallStateMonitor;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 42
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 43
    new-instance v0, Lcom/google/android/talk/videochat/CallTaskDispatcher;

    iget-object v1, p0, Lcom/google/android/talk/GlobalCallStateMonitor$1;->this$0:Lcom/google/android/talk/GlobalCallStateMonitor;

    #getter for: Lcom/google/android/talk/GlobalCallStateMonitor;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/android/talk/GlobalCallStateMonitor;->access$100(Lcom/google/android/talk/GlobalCallStateMonitor;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/talk/videochat/CallTaskDispatcher;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/google/android/talk/GlobalCallStateMonitor$1$1;

    invoke-direct {v1, p0}, Lcom/google/android/talk/GlobalCallStateMonitor$1$1;-><init>(Lcom/google/android/talk/GlobalCallStateMonitor$1;)V

    invoke-virtual {v0, v1}, Lcom/google/android/talk/videochat/CallTaskDispatcher;->postCallTask(Lcom/google/android/talk/videochat/CallTaskDispatcher$CallTask;)V

    .line 52
    :cond_0
    return-void
.end method
