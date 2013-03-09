.class Lcom/htc/android/mail/easdp/EASDirectpush$2;
.super Landroid/content/BroadcastReceiver;
.source "EASDirectpush.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/easdp/EASDirectpush;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/easdp/EASDirectpush;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/easdp/EASDirectpush;)V
    .locals 0
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/htc/android/mail/easdp/EASDirectpush$2;->this$0:Lcom/htc/android/mail/easdp/EASDirectpush;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 229
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, action:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/android/mail/easdp/EASDirectpush$2;->this$0:Lcom/htc/android/mail/easdp/EASDirectpush;

    iget-boolean v1, v1, Lcom/htc/android/mail/easdp/EASDirectpush;->serviceRelease:Z

    if-eqz v1, :cond_1

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 236
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/htc/android/mail/easdp/EASDirectpush;->access$102(Z)Z

    goto :goto_0

    .line 237
    :cond_2
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/htc/android/mail/easdp/EASDirectpush;->access$102(Z)Z

    goto :goto_0
.end method
