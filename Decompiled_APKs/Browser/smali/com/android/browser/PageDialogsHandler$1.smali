.class Lcom/android/browser/PageDialogsHandler$1;
.super Ljava/lang/Object;
.source "PageDialogsHandler.java"

# interfaces
.implements Lcom/android/browser/HttpAuthenticationDialog$OkListener;


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


# direct methods
.method constructor <init>(Lcom/android/browser/PageDialogsHandler;Landroid/webkit/HttpAuthHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/browser/PageDialogsHandler$1;->this$0:Lcom/android/browser/PageDialogsHandler;

    iput-object p2, p0, Lcom/android/browser/PageDialogsHandler$1;->val$handler:Landroid/webkit/HttpAuthHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "host"
    .parameter "realm"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/browser/PageDialogsHandler$1;->this$0:Lcom/android/browser/PageDialogsHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/browser/PageDialogsHandler;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/android/browser/PageDialogsHandler$1;->val$handler:Landroid/webkit/HttpAuthHandler;

    invoke-virtual {v0, p3, p4}, Landroid/webkit/HttpAuthHandler;->proceed(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/android/browser/PageDialogsHandler$1;->this$0:Lcom/android/browser/PageDialogsHandler;

    const/4 v1, 0x0

    #setter for: Lcom/android/browser/PageDialogsHandler;->mHttpAuthenticationDialog:Lcom/android/browser/HttpAuthenticationDialog;
    invoke-static {v0, v1}, Lcom/android/browser/PageDialogsHandler;->access$002(Lcom/android/browser/PageDialogsHandler;Lcom/android/browser/HttpAuthenticationDialog;)Lcom/android/browser/HttpAuthenticationDialog;

    .line 96
    return-void
.end method
