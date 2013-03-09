.class Lcom/android/browser/HttpAuthenticationDialog$3;
.super Ljava/lang/Object;
.source "HttpAuthenticationDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/HttpAuthenticationDialog;->createDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/HttpAuthenticationDialog;


# direct methods
.method constructor <init>(Lcom/android/browser/HttpAuthenticationDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/browser/HttpAuthenticationDialog$3;->this$0:Lcom/android/browser/HttpAuthenticationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/browser/HttpAuthenticationDialog$3;->this$0:Lcom/android/browser/HttpAuthenticationDialog;

    #getter for: Lcom/android/browser/HttpAuthenticationDialog;->mCancelListener:Lcom/android/browser/HttpAuthenticationDialog$CancelListener;
    invoke-static {v0}, Lcom/android/browser/HttpAuthenticationDialog;->access$100(Lcom/android/browser/HttpAuthenticationDialog;)Lcom/android/browser/HttpAuthenticationDialog$CancelListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/HttpAuthenticationDialog$3;->this$0:Lcom/android/browser/HttpAuthenticationDialog;

    #getter for: Lcom/android/browser/HttpAuthenticationDialog;->mCancelListener:Lcom/android/browser/HttpAuthenticationDialog$CancelListener;
    invoke-static {v0}, Lcom/android/browser/HttpAuthenticationDialog;->access$100(Lcom/android/browser/HttpAuthenticationDialog;)Lcom/android/browser/HttpAuthenticationDialog$CancelListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/browser/HttpAuthenticationDialog$CancelListener;->onCancel()V

    .line 142
    :cond_0
    return-void
.end method
