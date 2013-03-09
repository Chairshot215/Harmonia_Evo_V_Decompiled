.class Lcom/htc/android/mail/ReadScreen$ReadScreenWebViewClient$1;
.super Ljava/lang/Object;
.source "ReadScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/ReadScreen$ReadScreenWebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/ReadScreen$ReadScreenWebViewClient;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ReadScreen$ReadScreenWebViewClient;)V
    .locals 0
    .parameter

    .prologue
    .line 5142
    iput-object p1, p0, Lcom/htc/android/mail/ReadScreen$ReadScreenWebViewClient$1;->this$0:Lcom/htc/android/mail/ReadScreen$ReadScreenWebViewClient;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 5144
    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen$ReadScreenWebViewClient$1;->this$0:Lcom/htc/android/mail/ReadScreen$ReadScreenWebViewClient;

    #getter for: Lcom/htc/android/mail/ReadScreen$ReadScreenWebViewClient;->mTarget:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Lcom/htc/android/mail/ReadScreen$ReadScreenWebViewClient;->access$8200(Lcom/htc/android/mail/ReadScreen$ReadScreenWebViewClient;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/ReadScreen;

    .line 5145
    .local v0, target:Lcom/htc/android/mail/ReadScreen;
    if-nez v0, :cond_0

    .line 5147
    :goto_0
    return-void

    .line 5146
    :cond_0
    #calls: Lcom/htc/android/mail/ReadScreen;->showUnfinished()V
    invoke-static {v0}, Lcom/htc/android/mail/ReadScreen;->access$8300(Lcom/htc/android/mail/ReadScreen;)V

    goto :goto_0
.end method
