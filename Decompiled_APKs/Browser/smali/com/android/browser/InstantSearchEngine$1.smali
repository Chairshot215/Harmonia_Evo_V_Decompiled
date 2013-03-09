.class Lcom/android/browser/InstantSearchEngine$1;
.super Ljava/lang/Object;
.source "InstantSearchEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/InstantSearchEngine;->loadInstantPage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/InstantSearchEngine;


# direct methods
.method constructor <init>(Lcom/android/browser/InstantSearchEngine;)V
    .locals 0
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lcom/android/browser/InstantSearchEngine$1;->this$0:Lcom/android/browser/InstantSearchEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 224
    iget-object v1, p0, Lcom/android/browser/InstantSearchEngine$1;->this$0:Lcom/android/browser/InstantSearchEngine;

    #calls: Lcom/android/browser/InstantSearchEngine;->getCurrentWebview()Landroid/webkit/WebView;
    invoke-static {v1}, Lcom/android/browser/InstantSearchEngine;->access$100(Lcom/android/browser/InstantSearchEngine;)Landroid/webkit/WebView;

    move-result-object v0

    .line 225
    .local v0, current:Landroid/webkit/WebView;
    if-eqz v0, :cond_0

    .line 226
    iget-object v1, p0, Lcom/android/browser/InstantSearchEngine$1;->this$0:Lcom/android/browser/InstantSearchEngine;

    #calls: Lcom/android/browser/InstantSearchEngine;->getInstantBaseUrl()Ljava/lang/String;
    invoke-static {v1}, Lcom/android/browser/InstantSearchEngine;->access$200(Lcom/android/browser/InstantSearchEngine;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 228
    :cond_0
    return-void
.end method
