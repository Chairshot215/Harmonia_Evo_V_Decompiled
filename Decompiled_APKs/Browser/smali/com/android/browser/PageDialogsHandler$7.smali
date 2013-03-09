.class Lcom/android/browser/PageDialogsHandler$7;
.super Ljava/lang/Object;
.source "PageDialogsHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/PageDialogsHandler;->showSSLCertificate(Lcom/android/browser/Tab;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/PageDialogsHandler;

.field final synthetic val$tab:Lcom/android/browser/Tab;


# direct methods
.method constructor <init>(Lcom/android/browser/PageDialogsHandler;Lcom/android/browser/Tab;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 249
    iput-object p1, p0, Lcom/android/browser/PageDialogsHandler$7;->this$0:Lcom/android/browser/PageDialogsHandler;

    iput-object p2, p0, Lcom/android/browser/PageDialogsHandler$7;->val$tab:Lcom/android/browser/Tab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v3, 0x0

    .line 252
    iget-object v0, p0, Lcom/android/browser/PageDialogsHandler$7;->this$0:Lcom/android/browser/PageDialogsHandler;

    #setter for: Lcom/android/browser/PageDialogsHandler;->mSSLCertificateDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v3}, Lcom/android/browser/PageDialogsHandler;->access$802(Lcom/android/browser/PageDialogsHandler;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 253
    iget-object v0, p0, Lcom/android/browser/PageDialogsHandler$7;->this$0:Lcom/android/browser/PageDialogsHandler;

    #setter for: Lcom/android/browser/PageDialogsHandler;->mSSLCertificateView:Lcom/android/browser/Tab;
    invoke-static {v0, v3}, Lcom/android/browser/PageDialogsHandler;->access$902(Lcom/android/browser/PageDialogsHandler;Lcom/android/browser/Tab;)Lcom/android/browser/Tab;

    .line 255
    iget-object v0, p0, Lcom/android/browser/PageDialogsHandler$7;->this$0:Lcom/android/browser/PageDialogsHandler;

    iget-object v1, p0, Lcom/android/browser/PageDialogsHandler$7;->val$tab:Lcom/android/browser/Tab;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/browser/PageDialogsHandler;->showPageInfo(Lcom/android/browser/Tab;ZLjava/lang/String;)V

    .line 256
    return-void
.end method
