.class Lcom/android/browser/HttpAuthenticationDialog$4;
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
    .line 133
    iput-object p1, p0, Lcom/android/browser/HttpAuthenticationDialog$4;->this$0:Lcom/android/browser/HttpAuthenticationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/browser/HttpAuthenticationDialog$4;->this$0:Lcom/android/browser/HttpAuthenticationDialog;

    #getter for: Lcom/android/browser/HttpAuthenticationDialog;->mOkListener:Lcom/android/browser/HttpAuthenticationDialog$OkListener;
    invoke-static {v0}, Lcom/android/browser/HttpAuthenticationDialog;->access$200(Lcom/android/browser/HttpAuthenticationDialog;)Lcom/android/browser/HttpAuthenticationDialog$OkListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/browser/HttpAuthenticationDialog$4;->this$0:Lcom/android/browser/HttpAuthenticationDialog;

    #getter for: Lcom/android/browser/HttpAuthenticationDialog;->mOkListener:Lcom/android/browser/HttpAuthenticationDialog$OkListener;
    invoke-static {v0}, Lcom/android/browser/HttpAuthenticationDialog;->access$200(Lcom/android/browser/HttpAuthenticationDialog;)Lcom/android/browser/HttpAuthenticationDialog$OkListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/HttpAuthenticationDialog$4;->this$0:Lcom/android/browser/HttpAuthenticationDialog;

    #getter for: Lcom/android/browser/HttpAuthenticationDialog;->mHost:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/browser/HttpAuthenticationDialog;->access$300(Lcom/android/browser/HttpAuthenticationDialog;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/HttpAuthenticationDialog$4;->this$0:Lcom/android/browser/HttpAuthenticationDialog;

    #getter for: Lcom/android/browser/HttpAuthenticationDialog;->mRealm:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/browser/HttpAuthenticationDialog;->access$400(Lcom/android/browser/HttpAuthenticationDialog;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/browser/HttpAuthenticationDialog$4;->this$0:Lcom/android/browser/HttpAuthenticationDialog;

    #calls: Lcom/android/browser/HttpAuthenticationDialog;->getUsername()Ljava/lang/String;
    invoke-static {v3}, Lcom/android/browser/HttpAuthenticationDialog;->access$500(Lcom/android/browser/HttpAuthenticationDialog;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/browser/HttpAuthenticationDialog$4;->this$0:Lcom/android/browser/HttpAuthenticationDialog;

    #calls: Lcom/android/browser/HttpAuthenticationDialog;->getPassword()Ljava/lang/String;
    invoke-static {v4}, Lcom/android/browser/HttpAuthenticationDialog;->access$600(Lcom/android/browser/HttpAuthenticationDialog;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/browser/HttpAuthenticationDialog$OkListener;->onOk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_0
    return-void
.end method
