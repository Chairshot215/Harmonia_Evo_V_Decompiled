.class Lcom/android/browser/GoogleAccountLogin$1;
.super Landroid/webkit/WebViewClient;
.source "GoogleAccountLogin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/GoogleAccountLogin;-><init>(Landroid/app/Activity;Landroid/accounts/Account;Ljava/lang/Runnable;)V
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
    .line 86
    iput-object p1, p0, Lcom/android/browser/GoogleAccountLogin$1;->this$0:Lcom/android/browser/GoogleAccountLogin;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "url"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/browser/GoogleAccountLogin$1;->this$0:Lcom/android/browser/GoogleAccountLogin;

    #calls: Lcom/android/browser/GoogleAccountLogin;->done()V
    invoke-static {v0}, Lcom/android/browser/GoogleAccountLogin;->access$000(Lcom/android/browser/GoogleAccountLogin;)V

    .line 94
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .parameter "view"
    .parameter "url"

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method
