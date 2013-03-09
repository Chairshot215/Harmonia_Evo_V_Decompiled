.class Lcom/google/android/videochat/CallManager$1;
.super Ljava/lang/Object;
.source "CallManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/videochat/CallManager;-><init>(Lcom/google/android/videochat/VideoChatService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/videochat/CallManager;


# direct methods
.method constructor <init>(Lcom/google/android/videochat/CallManager;)V
    .locals 0
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Lcom/google/android/videochat/CallManager$1;->this$0:Lcom/google/android/videochat/CallManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/google/android/videochat/CallManager$1;->this$0:Lcom/google/android/videochat/CallManager;

    #calls: Lcom/google/android/videochat/CallManager;->recordAndReportCallStateUpdate()V
    invoke-static {v0}, Lcom/google/android/videochat/CallManager;->access$000(Lcom/google/android/videochat/CallManager;)V

    .line 264
    return-void
.end method
