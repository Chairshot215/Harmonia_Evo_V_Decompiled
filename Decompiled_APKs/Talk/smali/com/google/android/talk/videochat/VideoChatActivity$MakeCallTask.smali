.class Lcom/google/android/talk/videochat/VideoChatActivity$MakeCallTask;
.super Landroid/os/AsyncTask;
.source "VideoChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/videochat/VideoChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MakeCallTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Long;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/videochat/VideoChatActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/talk/videochat/VideoChatActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1846
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$MakeCallTask;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/talk/videochat/VideoChatActivity;Lcom/google/android/talk/videochat/VideoChatActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1846
    invoke-direct {p0, p1}, Lcom/google/android/talk/videochat/VideoChatActivity$MakeCallTask;-><init>(Lcom/google/android/talk/videochat/VideoChatActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1846
    check-cast p1, [Ljava/lang/Long;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/talk/videochat/VideoChatActivity$MakeCallTask;->doInBackground([Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Long;)Ljava/lang/String;
    .locals 2
    .parameter "params"

    .prologue
    .line 1849
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$MakeCallTask;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v0, v1}, Lcom/google/android/talk/DatabaseUtils;->getUsernameForAccountId(Landroid/content/ContentResolver;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1846
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/talk/videochat/VideoChatActivity$MakeCallTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3
    .parameter "localBareJid"

    .prologue
    .line 1854
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$MakeCallTask;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    #getter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mCallSession:Lcom/google/android/videochat/CallSession;
    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$5800(Lcom/google/android/talk/videochat/VideoChatActivity;)Lcom/google/android/videochat/CallSession;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$MakeCallTask;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    #getter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mRemoteJid:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$6400(Lcom/google/android/talk/videochat/VideoChatActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoChatActivity$MakeCallTask;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-static {v2}, Lcom/google/android/talk/videochat/TalkOngoingNotificationFactory;->getInstance(Landroid/content/Context;)Lcom/google/android/videochat/OngoingNotificationFactory;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/videochat/CallSession;->initiateVideoCall(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/videochat/OngoingNotificationFactory;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1857
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$MakeCallTask;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calling "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoChatActivity$MakeCallTask;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    #getter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mRemoteJid:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$6400(Lcom/google/android/talk/videochat/VideoChatActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/google/android/talk/videochat/VideoChatActivity;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$2300(Lcom/google/android/talk/videochat/VideoChatActivity;Ljava/lang/String;)V

    .line 1861
    :goto_0
    return-void

    .line 1859
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$MakeCallTask;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    const-string v1, "Call failed"

    #calls: Lcom/google/android/talk/videochat/VideoChatActivity;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$2300(Lcom/google/android/talk/videochat/VideoChatActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
