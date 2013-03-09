.class final Lcom/coremobility/app/vnotes/bq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/app/vnotes/bq;->a:Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/bq;->a:Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->removeDialog(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/bq;->a:Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->finish()V

    return-void
.end method
