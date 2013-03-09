.class Lcom/sprint/dsa/DsaJavaScriptInterface$4;
.super Ljava/lang/Object;
.source "DsaJavaScriptInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/dsa/DsaJavaScriptInterface;->popup(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/dsa/DsaJavaScriptInterface;

.field private final synthetic val$msg:Ljava/lang/String;

.field private final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sprint/dsa/DsaJavaScriptInterface;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/dsa/DsaJavaScriptInterface$4;->this$0:Lcom/sprint/dsa/DsaJavaScriptInterface;

    iput-object p2, p0, Lcom/sprint/dsa/DsaJavaScriptInterface$4;->val$msg:Ljava/lang/String;

    iput-object p3, p0, Lcom/sprint/dsa/DsaJavaScriptInterface$4;->val$title:Ljava/lang/String;

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 258
    iget-object v0, p0, Lcom/sprint/dsa/DsaJavaScriptInterface$4;->this$0:Lcom/sprint/dsa/DsaJavaScriptInterface;

    #getter for: Lcom/sprint/dsa/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/DsaClient;
    invoke-static {v0}, Lcom/sprint/dsa/DsaJavaScriptInterface;->access$0(Lcom/sprint/dsa/DsaJavaScriptInterface;)Lcom/sprint/dsa/DsaClient;

    move-result-object v0

    iget-object v1, p0, Lcom/sprint/dsa/DsaJavaScriptInterface$4;->val$msg:Ljava/lang/String;

    iget-object v2, p0, Lcom/sprint/dsa/DsaJavaScriptInterface$4;->val$title:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sprint/dsa/DsaDialogs;->popupDialog(Lcom/sprint/dsa/DsaClient;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    return-void
.end method
