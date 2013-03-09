.class Lcom/android/browser/GoogleAccountLogin$3;
.super Ljava/lang/Object;
.source "GoogleAccountLogin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/GoogleAccountLogin;->done()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/GoogleAccountLogin;


# direct methods
.method constructor <init>(Lcom/android/browser/GoogleAccountLogin;)V
    .locals 0
    .parameter

    .prologue
    .line 280
    iput-object p1, p0, Lcom/android/browser/GoogleAccountLogin$3;->this$0:Lcom/android/browser/GoogleAccountLogin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/browser/GoogleAccountLogin$3;->this$0:Lcom/android/browser/GoogleAccountLogin;

    #getter for: Lcom/android/browser/GoogleAccountLogin;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/android/browser/GoogleAccountLogin;->access$200(Lcom/android/browser/GoogleAccountLogin;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 284
    return-void
.end method
