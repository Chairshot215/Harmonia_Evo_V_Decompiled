.class Lcom/google/appinventor/components/runtime/WebViewer$WebViewerClient;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/WebViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebViewerClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/WebViewer;


# direct methods
.method private constructor <init>(Lcom/google/appinventor/components/runtime/WebViewer;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/WebViewer$WebViewerClient;->this$0:Lcom/google/appinventor/components/runtime/WebViewer;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/appinventor/components/runtime/WebViewer;Lcom/google/appinventor/components/runtime/WebViewer$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/WebViewer$WebViewerClient;-><init>(Lcom/google/appinventor/components/runtime/WebViewer;)V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer$WebViewerClient;->this$0:Lcom/google/appinventor/components/runtime/WebViewer;

    #getter for: Lcom/google/appinventor/components/runtime/WebViewer;->followLinks:Z
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/WebViewer;->access$100(Lcom/google/appinventor/components/runtime/WebViewer;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
