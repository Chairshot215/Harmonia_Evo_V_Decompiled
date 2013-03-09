.class Lcom/s0up/goomanager/GooManagerActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "GooManagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s0up/goomanager/GooManagerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/s0up/goomanager/GooManagerActivity;


# direct methods
.method constructor <init>(Lcom/s0up/goomanager/GooManagerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/s0up/goomanager/GooManagerActivity$2;->this$0:Lcom/s0up/goomanager/GooManagerActivity;

    .line 174
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    .line 177
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 178
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 179
    const-string v2, "status"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, status:Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v2, "NO_UPDATES"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 181
    iget-object v2, p0, Lcom/s0up/goomanager/GooManagerActivity$2;->this$0:Lcom/s0up/goomanager/GooManagerActivity;

    invoke-virtual {v2}, Lcom/s0up/goomanager/GooManagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "No updates for your rom were found"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 186
    .end local v1           #status:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 182
    .restart local v1       #status:Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_0

    const-string v2, "NO_GAPPS_UPDATES"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 183
    iget-object v2, p0, Lcom/s0up/goomanager/GooManagerActivity$2;->this$0:Lcom/s0up/goomanager/GooManagerActivity;

    invoke-virtual {v2}, Lcom/s0up/goomanager/GooManagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "No gapps updates were found"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
