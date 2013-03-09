.class final Lcom/coremobility/app/vnotes/bp;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/app/vnotes/bp;->a:Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/bp;->a:Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->removeDialog(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/bp;->a:Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->e(Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/bp;->a:Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->f(Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;)Z

    iget-object v0, p0, Lcom/coremobility/app/vnotes/bp;->a:Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->g(Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/bp;->a:Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;

    iget-object v1, p0, Lcom/coremobility/app/vnotes/bp;->a:Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;

    invoke-static {v1}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->b(Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->a(Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;Ljava/lang/String;)V

    return-void
.end method
