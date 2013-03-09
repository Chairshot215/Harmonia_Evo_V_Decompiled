.class Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor$RingerModeHandler;
.super Lcom/google/android/marvin/talkback/BroadcastHandler;
.source "RingerModeAndScreenMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RingerModeHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/marvin/talkback/BroadcastHandler",
        "<",
        "Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 269
    invoke-direct {p0, p1}, Lcom/google/android/marvin/talkback/BroadcastHandler;-><init>(Ljava/lang/Object;)V

    .line 270
    return-void
.end method


# virtual methods
.method public handleOnReceive(Landroid/content/Intent;Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor;)V
    .locals 0
    .parameter "intent"
    .parameter "parent"

    .prologue
    .line 274
    #calls: Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor;->internalOnReceive(Landroid/content/Intent;)V
    invoke-static {p2, p1}, Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor;->access$0(Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor;Landroid/content/Intent;)V

    .line 275
    return-void
.end method

.method public bridge synthetic handleOnReceive(Landroid/content/Intent;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p2, Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor$RingerModeHandler;->handleOnReceive(Landroid/content/Intent;Lcom/google/android/marvin/talkback/RingerModeAndScreenMonitor;)V

    return-void
.end method
