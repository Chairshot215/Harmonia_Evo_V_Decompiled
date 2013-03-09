.class Lcom/htc/socialnetwork/account/BaseLoginActivity$7;
.super Ljava/lang/Object;
.source "BaseLoginActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/socialnetwork/account/BaseLoginActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/socialnetwork/account/BaseLoginActivity;


# direct methods
.method constructor <init>(Lcom/htc/socialnetwork/account/BaseLoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 453
    iput-object p1, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity$7;->this$0:Lcom/htc/socialnetwork/account/BaseLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 456
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 458
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity$7;->this$0:Lcom/htc/socialnetwork/account/BaseLoginActivity;

    invoke-virtual {v1, v0}, Lcom/htc/socialnetwork/account/BaseLoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 459
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 460
    return-void
.end method
