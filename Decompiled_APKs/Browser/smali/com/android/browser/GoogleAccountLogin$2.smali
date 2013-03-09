.class Lcom/android/browser/GoogleAccountLogin$2;
.super Ljava/lang/Object;
.source "GoogleAccountLogin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/GoogleAccountLogin;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/GoogleAccountLogin;

.field final synthetic val$newUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/browser/GoogleAccountLogin;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/browser/GoogleAccountLogin$2;->this$0:Lcom/android/browser/GoogleAccountLogin;

    iput-object p2, p0, Lcom/android/browser/GoogleAccountLogin$2;->val$newUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 163
    iget-object v1, p0, Lcom/android/browser/GoogleAccountLogin$2;->this$0:Lcom/android/browser/GoogleAccountLogin;

    monitor-enter v1

    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/android/browser/GoogleAccountLogin$2;->this$0:Lcom/android/browser/GoogleAccountLogin;

    #getter for: Lcom/android/browser/GoogleAccountLogin;->mRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/browser/GoogleAccountLogin;->access$100(Lcom/android/browser/GoogleAccountLogin;)Ljava/lang/Runnable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 165
    monitor-exit v1

    .line 169
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/android/browser/GoogleAccountLogin$2;->this$0:Lcom/android/browser/GoogleAccountLogin;

    #getter for: Lcom/android/browser/GoogleAccountLogin;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/android/browser/GoogleAccountLogin;->access$200(Lcom/android/browser/GoogleAccountLogin;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v2, p0, Lcom/android/browser/GoogleAccountLogin$2;->val$newUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 168
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
