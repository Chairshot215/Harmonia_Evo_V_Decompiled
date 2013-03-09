.class Lcom/google/android/marvin/talkback/CallStateMonitor$CallStateHandler;
.super Lcom/google/android/marvin/talkback/BroadcastHandler;
.source "CallStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/marvin/talkback/CallStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallStateHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/marvin/talkback/BroadcastHandler",
        "<",
        "Lcom/google/android/marvin/talkback/CallStateMonitor;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/marvin/talkback/CallStateMonitor;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/google/android/marvin/talkback/BroadcastHandler;-><init>(Ljava/lang/Object;)V

    .line 83
    return-void
.end method


# virtual methods
.method public handleOnReceive(Landroid/content/Intent;Lcom/google/android/marvin/talkback/CallStateMonitor;)V
    .locals 0
    .parameter "intent"
    .parameter "parent"

    .prologue
    .line 87
    #calls: Lcom/google/android/marvin/talkback/CallStateMonitor;->internalOnReceive(Landroid/content/Intent;)V
    invoke-static {p2, p1}, Lcom/google/android/marvin/talkback/CallStateMonitor;->access$0(Lcom/google/android/marvin/talkback/CallStateMonitor;Landroid/content/Intent;)V

    .line 88
    return-void
.end method

.method public bridge synthetic handleOnReceive(Landroid/content/Intent;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p2, Lcom/google/android/marvin/talkback/CallStateMonitor;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/marvin/talkback/CallStateMonitor$CallStateHandler;->handleOnReceive(Landroid/content/Intent;Lcom/google/android/marvin/talkback/CallStateMonitor;)V

    return-void
.end method
