.class Lcom/android/settings/wifi/RedirectDialog$2;
.super Ljava/lang/Object;
.source "RedirectDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/RedirectDialog;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/RedirectDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/RedirectDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/settings/wifi/RedirectDialog$2;->this$0:Lcom/android/settings/wifi/RedirectDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 59
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/android/settings/wifi/RedirectDialog$2;->this$0:Lcom/android/settings/wifi/RedirectDialog;

    #getter for: Lcom/android/settings/wifi/RedirectDialog;->mRedirectURL:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/wifi/RedirectDialog;->access$300(Lcom/android/settings/wifi/RedirectDialog;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 60
    .local v0, browser:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 61
    iget-object v1, p0, Lcom/android/settings/wifi/RedirectDialog$2;->this$0:Lcom/android/settings/wifi/RedirectDialog;

    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/RedirectDialog;->startActivity(Landroid/content/Intent;)V

    .line 62
    iget-object v1, p0, Lcom/android/settings/wifi/RedirectDialog$2;->this$0:Lcom/android/settings/wifi/RedirectDialog;

    invoke-virtual {v1}, Lcom/android/settings/wifi/RedirectDialog;->finish()V

    .line 63
    return-void
.end method
