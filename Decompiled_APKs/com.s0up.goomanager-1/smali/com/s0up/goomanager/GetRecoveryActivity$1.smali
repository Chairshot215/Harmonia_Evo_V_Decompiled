.class Lcom/s0up/goomanager/GetRecoveryActivity$1;
.super Ljava/lang/Object;
.source "GetRecoveryActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s0up/goomanager/GetRecoveryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/s0up/goomanager/GetRecoveryActivity;


# direct methods
.method constructor <init>(Lcom/s0up/goomanager/GetRecoveryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/s0up/goomanager/GetRecoveryActivity$1;->this$0:Lcom/s0up/goomanager/GetRecoveryActivity;

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 249
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 250
    .local v0, i:Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://goo.im/devs/OpenRecovery/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/s0up/goomanager/Singleton;->getInstance()Lcom/s0up/goomanager/Singleton;

    move-result-object v2

    const-string v3, "ro_board"

    invoke-virtual {v2, v3}, Lcom/s0up/goomanager/Singleton;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 251
    iget-object v1, p0, Lcom/s0up/goomanager/GetRecoveryActivity$1;->this$0:Lcom/s0up/goomanager/GetRecoveryActivity;

    invoke-virtual {v1, v0}, Lcom/s0up/goomanager/GetRecoveryActivity;->startActivity(Landroid/content/Intent;)V

    .line 252
    return-void
.end method
