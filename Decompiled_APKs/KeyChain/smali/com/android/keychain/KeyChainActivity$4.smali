.class Lcom/android/keychain/KeyChainActivity$4;
.super Ljava/lang/Object;
.source "KeyChainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 258
    iput-object p1, p0, Lcom/android/keychain/KeyChainActivity$4;->this$0:Lcom/android/keychain/KeyChainActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/keychain/KeyChainActivity$4;->this$0:Lcom/android/keychain/KeyChainActivity;

    const/4 v1, 0x0

    #calls: Lcom/android/keychain/KeyChainActivity;->finish(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/keychain/KeyChainActivity;->access$500(Lcom/android/keychain/KeyChainActivity;Ljava/lang/String;)V

    .line 261
    return-void
.end method
