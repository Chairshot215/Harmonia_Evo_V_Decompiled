.class Lcom/google/android/talk/videochat/RingerService$RingerCallStateClient;
.super Lcom/google/android/videochat/CallStateClient;
.source "RingerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/videochat/RingerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RingerCallStateClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/videochat/RingerService;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/videochat/RingerService;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/google/android/talk/videochat/RingerService$RingerCallStateClient;->this$0:Lcom/google/android/talk/videochat/RingerService;

    .line 42
    invoke-direct {p0, p2}, Lcom/google/android/videochat/CallStateClient;-><init>(Landroid/content/Context;)V

    .line 43
    return-void
.end method


# virtual methods
.method public onCallStateUpdate(Ljava/lang/String;Lcom/google/android/videochat/CallState;ZLjava/lang/Object;)V
    .locals 1
    .parameter "remoteBareJid"
    .parameter "callState"
    .parameter "isRequestReply"
    .parameter "callbackParam"

    .prologue
    .line 48
    if-eqz p2, :cond_0

    .line 49
    iget v0, p2, Lcom/google/android/videochat/CallState;->libjingleCallState:I

    packed-switch v0, :pswitch_data_0

    .line 61
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 56
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/talk/videochat/RingerService$RingerCallStateClient;->this$0:Lcom/google/android/talk/videochat/RingerService;

    #getter for: Lcom/google/android/talk/videochat/RingerService;->mRemoteBareJid:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/talk/videochat/RingerService;->access$000(Lcom/google/android/talk/videochat/RingerService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/google/android/talk/videochat/RingerService$RingerCallStateClient;->this$0:Lcom/google/android/talk/videochat/RingerService;

    invoke-static {v0}, Lcom/google/android/talk/videochat/RingerService;->forceStopRinger(Landroid/content/Context;)V

    goto :goto_0

    .line 49
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
