.class final Lcom/coremobility/app/vnotes/bo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/app/vnotes/bo;->a:Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/coremobility/app/vnotes/bo;->a:Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;

    iget-object v1, v1, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->a:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/coremobility/app/vnotes/bo;->a:Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;

    iget-object v3, v3, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coremobility/app/vnotes/bo;->a:Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;

    iget-object v1, v1, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lcom/coremobility/app/vnotes/bo;->a:Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;

    invoke-static {v1, v0}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->b(Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;Ljava/lang/String;)V

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
