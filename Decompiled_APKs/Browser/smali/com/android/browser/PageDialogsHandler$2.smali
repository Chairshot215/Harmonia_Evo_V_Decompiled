.class Lcom/android/browser/PageDialogsHandler$2;
.super Ljava/lang/Object;
.source "PageDialogsHandler.java"

# interfaces
.implements Lcom/android/browser/HttpAuthenticationDialog$CancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/PageDialogsHandler;->showHttpAuthentication(Lcom/android/browser/Tab;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/PageDialogsHandler;

.field final synthetic val$handler:Landroid/webkit/HttpAuthHandler;

.field final synthetic val$tab:Lcom/android/browser/Tab;


# direct methods
.method constructor <init>(Lcom/android/browser/PageDialogsHandler;Landroid/webkit/HttpAuthHandler;Lcom/android/browser/Tab;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/browser/PageDialogsHandler$2;->this$0:Lcom/android/browser/PageDialogsHandler;

    iput-object p2, p0, Lcom/android/browser/PageDialogsHandler$2;->val$handler:Landroid/webkit/HttpAuthHandler;

    iput-object p3, p0, Lcom/android/browser/PageDialogsHandler$2;->val$tab:Lcom/android/browser/Tab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/browser/PageDialogsHandler$2;->val$handler:Landroid/webkit/HttpAuthHandler;

    invoke-virtual {v0}, Landroid/webkit/HttpAuthHandler;->cancel()V

    .line 101
    iget-object v0, p0, Lcom/android/browser/PageDialogsHandler$2;->this$0:Lcom/android/browser/PageDialogsHandler;

    #getter for: Lcom/android/browser/PageDialogsHandler;->mController:Lcom/android/browser/Controller;
    invoke-static {v0}, Lcom/android/browser/PageDialogsHandler;->access$100(Lcom/android/browser/PageDialogsHandler;)Lcom/android/browser/Controller;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/PageDialogsHandler$2;->val$tab:Lcom/android/browser/Tab;

    invoke-virtual {v0, v1}, Lcom/android/browser/Controller;->onUpdatedSecurityState(Lcom/android/browser/Tab;)V

    .line 102
    iget-object v0, p0, Lcom/android/browser/PageDialogsHandler$2;->this$0:Lcom/android/browser/PageDialogsHandler;

    const/4 v1, 0x0

    #setter for: Lcom/android/browser/PageDialogsHandler;->mHttpAuthenticationDialog:Lcom/android/browser/HttpAuthenticationDialog;
    invoke-static {v0, v1}, Lcom/android/browser/PageDialogsHandler;->access$002(Lcom/android/browser/PageDialogsHandler;Lcom/android/browser/HttpAuthenticationDialog;)Lcom/android/browser/HttpAuthenticationDialog;

    .line 103
    return-void
.end method
