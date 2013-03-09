.class final Lcom/coremobility/app/vnotes/bt;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/app/vnotes/bt;->a:Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/coremobility/app/vnotes/bt;->a:Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->removeDialog(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/bt;->a:Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->i(Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/coremobility/app/vnotes/bt;->a:Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;

    const/4 v2, 0x0

    const/16 v3, 0x8b

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->a(Ljava/lang/String;)V

    return-void
.end method
