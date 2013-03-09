.class Lcom/s0up/goomanager/FlashActivity$1;
.super Ljava/lang/Object;
.source "FlashActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s0up/goomanager/FlashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/s0up/goomanager/FlashActivity;


# direct methods
.method constructor <init>(Lcom/s0up/goomanager/FlashActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/s0up/goomanager/FlashActivity$1;->this$0:Lcom/s0up/goomanager/FlashActivity;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 95
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/s0up/goomanager/FlashActivity$1;->this$0:Lcom/s0up/goomanager/FlashActivity;

    invoke-virtual {v1}, Lcom/s0up/goomanager/FlashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/s0up/goomanager/GetRecoveryActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    .local v0, installRecoveryIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/s0up/goomanager/FlashActivity$1;->this$0:Lcom/s0up/goomanager/FlashActivity;

    invoke-virtual {v1, v0}, Lcom/s0up/goomanager/FlashActivity;->startActivity(Landroid/content/Intent;)V

    .line 97
    return-void
.end method
