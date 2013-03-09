.class Lcom/htc/fm/MusicListActivity$1;
.super Landroid/os/Handler;
.source "MusicListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fm/MusicListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fm/MusicListActivity;


# direct methods
.method constructor <init>(Lcom/htc/fm/MusicListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, Lcom/htc/fm/MusicListActivity$1;->this$0:Lcom/htc/fm/MusicListActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 229
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 236
    :goto_0
    return-void

    .line 232
    :pswitch_0
    iget-object v0, p0, Lcom/htc/fm/MusicListActivity$1;->this$0:Lcom/htc/fm/MusicListActivity;

    #getter for: Lcom/htc/fm/MusicListActivity;->mbufferdialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/htc/fm/MusicListActivity;->access$100(Lcom/htc/fm/MusicListActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/htc/fm/MusicListActivity$1;->this$0:Lcom/htc/fm/MusicListActivity;

    #getter for: Lcom/htc/fm/MusicListActivity;->mbufferdialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/htc/fm/MusicListActivity;->access$100(Lcom/htc/fm/MusicListActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 234
    :cond_0
    const-string v0, "cathy"

    const-string v1, "runable 300 pd dismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 229
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
