.class Lcom/htc/music/HtcMusic$NonUiHandler$2;
.super Ljava/lang/Object;
.source "HtcMusic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/HtcMusic$NonUiHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/music/HtcMusic$NonUiHandler;

.field final synthetic val$len:I


# direct methods
.method constructor <init>(Lcom/htc/music/HtcMusic$NonUiHandler;I)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/HtcMusic$NonUiHandler$2;->this$1:Lcom/htc/music/HtcMusic$NonUiHandler;

    iput p2, p0, Lcom/htc/music/HtcMusic$NonUiHandler$2;->val$len:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/htc/music/HtcMusic$NonUiHandler$2;->this$1:Lcom/htc/music/HtcMusic$NonUiHandler;

    iget-object v1, v1, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v1}, Lcom/htc/music/HtcMusic;->finish()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/htc/music/HtcMusic$NonUiHandler$2;->this$1:Lcom/htc/music/HtcMusic$NonUiHandler;

    iget-object v1, v1, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    const-class v2, Lcom/htc/music/MediaPlaybackErrorActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "queuelen"

    iget v1, p0, Lcom/htc/music/HtcMusic$NonUiHandler$2;->val$len:I

    if-nez v1, :cond_0

    const/4 v1, -0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/htc/music/HtcMusic$NonUiHandler$2;->this$1:Lcom/htc/music/HtcMusic$NonUiHandler;

    iget-object v1, v1, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v1, v0}, Lcom/htc/music/HtcMusic;->startActivity(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/htc/music/HtcMusic$NonUiHandler$2;->this$1:Lcom/htc/music/HtcMusic$NonUiHandler;

    iget-object v1, v1, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v1, v3, v3}, Lcom/htc/music/HtcMusic;->overridePendingTransition(II)V

    return-void

    :cond_0
    iget v1, p0, Lcom/htc/music/HtcMusic$NonUiHandler$2;->val$len:I

    goto :goto_0
.end method
