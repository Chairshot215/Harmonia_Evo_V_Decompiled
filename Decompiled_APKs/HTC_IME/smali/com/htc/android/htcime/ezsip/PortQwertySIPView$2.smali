.class Lcom/htc/android/htcime/ezsip/PortQwertySIPView$2;
.super Landroid/os/Handler;
.source "PortQwertySIPView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/ezsip/PortQwertySIPView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPView;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/ezsip/PortQwertySIPView;)V
    .locals 0
    .parameter

    .prologue
    .line 1177
    iput-object p1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView$2;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1180
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1210
    :goto_0
    return-void

    .line 1184
    :pswitch_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView$2;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPView;

    const/4 v2, 0x1

    #setter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->handlingMsg:Z
    invoke-static {v1, v2}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->access$002(Lcom/htc/android/htcime/ezsip/PortQwertySIPView;Z)Z

    .line 1185
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView$2;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPView;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->notifyT:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView$2;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPView;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->notifyT:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1186
    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView$2;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPView;

    #calls: Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->openFile()V
    invoke-static {v1}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->access$200(Lcom/htc/android/htcime/ezsip/PortQwertySIPView;)V

    .line 1188
    :cond_1
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView$2;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPView;

    #calls: Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->getNextWord()Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->access$300(Lcom/htc/android/htcime/ezsip/PortQwertySIPView;)Ljava/lang/String;

    move-result-object v0

    .line 1189
    .local v0, wordToType:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 1196
    :goto_1
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView$2;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPView;

    #calls: Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->closeFile()V
    invoke-static {v1}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->access$500(Lcom/htc/android/htcime/ezsip/PortQwertySIPView;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1199
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView$2;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPView;

    #setter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->wordPosX:[I
    invoke-static {v1, v3}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->access$602(Lcom/htc/android/htcime/ezsip/PortQwertySIPView;[I)[I

    .line 1200
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView$2;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPView;

    #setter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->wordPosY:[I
    invoke-static {v1, v3}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->access$702(Lcom/htc/android/htcime/ezsip/PortQwertySIPView;[I)[I

    .line 1201
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView$2;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPView;

    #setter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->wordChars:[C
    invoke-static {v1, v3}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->access$802(Lcom/htc/android/htcime/ezsip/PortQwertySIPView;[C)[C

    .line 1202
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView$2;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPView;

    #setter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->keyInited:Z
    invoke-static {v1, v4}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->access$902(Lcom/htc/android/htcime/ezsip/PortQwertySIPView;Z)Z

    .line 1203
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView$2;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPView;

    #setter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->handlingMsg:Z
    invoke-static {v1, v4}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->access$002(Lcom/htc/android/htcime/ezsip/PortQwertySIPView;Z)Z

    goto :goto_0

    .line 1192
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1193
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView$2;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPView;

    #calls: Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->typeWord(Ljava/lang/String;)Z
    invoke-static {v1, v0}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->access$400(Lcom/htc/android/htcime/ezsip/PortQwertySIPView;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 1197
    .end local v0           #wordToType:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1199
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView$2;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPView;

    #setter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->wordPosX:[I
    invoke-static {v1, v3}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->access$602(Lcom/htc/android/htcime/ezsip/PortQwertySIPView;[I)[I

    .line 1200
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView$2;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPView;

    #setter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->wordPosY:[I
    invoke-static {v1, v3}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->access$702(Lcom/htc/android/htcime/ezsip/PortQwertySIPView;[I)[I

    .line 1201
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView$2;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPView;

    #setter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->wordChars:[C
    invoke-static {v1, v3}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->access$802(Lcom/htc/android/htcime/ezsip/PortQwertySIPView;[C)[C

    .line 1202
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView$2;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPView;

    #setter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->keyInited:Z
    invoke-static {v1, v4}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->access$902(Lcom/htc/android/htcime/ezsip/PortQwertySIPView;Z)Z

    .line 1203
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView$2;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPView;

    #setter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->handlingMsg:Z
    invoke-static {v1, v4}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->access$002(Lcom/htc/android/htcime/ezsip/PortQwertySIPView;Z)Z

    goto :goto_0

    .line 1199
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView$2;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPView;

    #setter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->wordPosX:[I
    invoke-static {v2, v3}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->access$602(Lcom/htc/android/htcime/ezsip/PortQwertySIPView;[I)[I

    .line 1200
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView$2;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPView;

    #setter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->wordPosY:[I
    invoke-static {v2, v3}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->access$702(Lcom/htc/android/htcime/ezsip/PortQwertySIPView;[I)[I

    .line 1201
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView$2;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPView;

    #setter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->wordChars:[C
    invoke-static {v2, v3}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->access$802(Lcom/htc/android/htcime/ezsip/PortQwertySIPView;[C)[C

    .line 1202
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView$2;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPView;

    #setter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->keyInited:Z
    invoke-static {v2, v4}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->access$902(Lcom/htc/android/htcime/ezsip/PortQwertySIPView;Z)Z

    .line 1203
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView$2;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPView;

    #setter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->handlingMsg:Z
    invoke-static {v2, v4}, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->access$002(Lcom/htc/android/htcime/ezsip/PortQwertySIPView;Z)Z

    throw v1

    .line 1180
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
