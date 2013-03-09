.class Lcom/sprint/dsa/DsaWebChromeClient$4;
.super Ljava/lang/Object;
.source "DsaWebChromeClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/dsa/DsaWebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/dsa/DsaWebChromeClient;

.field private final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sprint/dsa/DsaWebChromeClient;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/dsa/DsaWebChromeClient$4;->this$0:Lcom/sprint/dsa/DsaWebChromeClient;

    iput-object p2, p0, Lcom/sprint/dsa/DsaWebChromeClient$4;->val$message:Ljava/lang/String;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sprint/dsa/DsaWebChromeClient$4;->this$0:Lcom/sprint/dsa/DsaWebChromeClient;

    #getter for: Lcom/sprint/dsa/DsaWebChromeClient;->dsaClient:Lcom/sprint/dsa/DsaClient;
    invoke-static {v0}, Lcom/sprint/dsa/DsaWebChromeClient;->access$0(Lcom/sprint/dsa/DsaWebChromeClient;)Lcom/sprint/dsa/DsaClient;

    move-result-object v0

    iget-object v1, p0, Lcom/sprint/dsa/DsaWebChromeClient$4;->val$message:Ljava/lang/String;

    const-string v2, "Error"

    invoke-static {v0, v1, v2}, Lcom/sprint/dsa/DsaDialogs;->popupDialog(Lcom/sprint/dsa/DsaClient;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    return-void
.end method
