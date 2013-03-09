.class Lcom/google/android/videochat/CallAudioHelper$1;
.super Ljava/lang/Object;
.source "CallAudioHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/videochat/CallAudioHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/videochat/CallAudioHelper;


# direct methods
.method constructor <init>(Lcom/google/android/videochat/CallAudioHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/android/videochat/CallAudioHelper$1;->this$0:Lcom/google/android/videochat/CallAudioHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/videochat/CallAudioHelper$1;->this$0:Lcom/google/android/videochat/CallAudioHelper;

    #calls: Lcom/google/android/videochat/CallAudioHelper;->onBluetoothTimeout()V
    invoke-static {v0}, Lcom/google/android/videochat/CallAudioHelper;->access$000(Lcom/google/android/videochat/CallAudioHelper;)V

    .line 68
    return-void
.end method
