.class Lcom/sprint/dsa/DsaJavaScriptInterface$3;
.super Ljava/lang/Object;
.source "DsaJavaScriptInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/dsa/DsaJavaScriptInterface;->setInputType(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/dsa/DsaJavaScriptInterface;

.field private final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/sprint/dsa/DsaJavaScriptInterface;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/dsa/DsaJavaScriptInterface$3;->this$0:Lcom/sprint/dsa/DsaJavaScriptInterface;

    iput p2, p0, Lcom/sprint/dsa/DsaJavaScriptInterface$3;->val$type:I

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 170
    :try_start_0
    sget-object v2, Lcom/sprint/dsa/DsaClient;->dsaWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 171
    .local v1, txtView:Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 173
    iget v2, p0, Lcom/sprint/dsa/DsaJavaScriptInterface$3;->val$type:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setInputType(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    .end local v1           #txtView:Landroid/widget/TextView;
    :cond_0
    :goto_0
    return-void

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "DSS"

    const-string v3, "setInputType:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
