.class Lcom/sprint/dsa/DsaWebViewClient$3;
.super Ljava/lang/Object;
.source "DsaWebViewClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/dsa/DsaWebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/dsa/DsaWebViewClient;

.field private final synthetic val$finalTitle:Ljava/lang/String;

.field private final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sprint/dsa/DsaWebViewClient;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/dsa/DsaWebViewClient$3;->this$0:Lcom/sprint/dsa/DsaWebViewClient;

    iput-object p2, p0, Lcom/sprint/dsa/DsaWebViewClient$3;->val$msg:Ljava/lang/String;

    iput-object p3, p0, Lcom/sprint/dsa/DsaWebViewClient$3;->val$finalTitle:Ljava/lang/String;

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 192
    iget-object v0, p0, Lcom/sprint/dsa/DsaWebViewClient$3;->this$0:Lcom/sprint/dsa/DsaWebViewClient;

    #getter for: Lcom/sprint/dsa/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/DsaClient;
    invoke-static {v0}, Lcom/sprint/dsa/DsaWebViewClient;->access$0(Lcom/sprint/dsa/DsaWebViewClient;)Lcom/sprint/dsa/DsaClient;

    move-result-object v0

    iget-object v1, p0, Lcom/sprint/dsa/DsaWebViewClient$3;->val$msg:Ljava/lang/String;

    iget-object v2, p0, Lcom/sprint/dsa/DsaWebViewClient$3;->val$finalTitle:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sprint/dsa/DsaDialogs;->popupDialog(Lcom/sprint/dsa/DsaClient;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    return-void
.end method
