.class Lcom/android/keychain/KeyChainActivity$1;
.super Ljava/lang/Object;
.source "KeyChainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/android/keychain/KeyChainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/keychain/KeyChainActivity$1;->this$0:Lcom/android/keychain/KeyChainActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 171
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 172
    return-void
.end method
