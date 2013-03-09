.class Lcom/google/android/gsf/login/SyncIntroActivity$1;
.super Landroid/os/Handler;
.source "SyncIntroActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/login/SyncIntroActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/login/SyncIntroActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/login/SyncIntroActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/google/android/gsf/login/SyncIntroActivity$1;->this$0:Lcom/google/android/gsf/login/SyncIntroActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 228
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 234
    const-string v0, "GLSActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "received unexpected message, ignoring: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :goto_0
    return-void

    .line 230
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gsf/login/SyncIntroActivity$1;->this$0:Lcom/google/android/gsf/login/SyncIntroActivity;

    #calls: Lcom/google/android/gsf/login/SyncIntroActivity;->onRestoreDone()V
    invoke-static {v0}, Lcom/google/android/gsf/login/SyncIntroActivity;->access$000(Lcom/google/android/gsf/login/SyncIntroActivity;)V

    goto :goto_0

    .line 228
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
