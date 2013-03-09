.class final Lcom/coremobility/app/vnotes/br;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/app/vnotes/br;->a:Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/br;->a:Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->h(Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/br;->a:Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->removeDialog(I)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
