.class Lcom/android/keychain/KeyChainActivity$3;
.super Ljava/lang/Object;
.source "KeyChainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keychain/KeyChainActivity;->displayCertChooserDialog(Lcom/android/keychain/KeyChainActivity$CertificateAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keychain/KeyChainActivity;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/android/keychain/KeyChainActivity;Landroid/app/Dialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 249
    iput-object p1, p0, Lcom/android/keychain/KeyChainActivity$3;->this$0:Lcom/android/keychain/KeyChainActivity;

    iput-object p2, p0, Lcom/android/keychain/KeyChainActivity$3;->val$dialog:Landroid/app/Dialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/keychain/KeyChainActivity$3;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 254
    invoke-static {}, Landroid/security/Credentials;->getInstance()Landroid/security/Credentials;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keychain/KeyChainActivity$3;->this$0:Lcom/android/keychain/KeyChainActivity;

    invoke-virtual {v0, v1}, Landroid/security/Credentials;->install(Landroid/content/Context;)V

    .line 255
    return-void
.end method
