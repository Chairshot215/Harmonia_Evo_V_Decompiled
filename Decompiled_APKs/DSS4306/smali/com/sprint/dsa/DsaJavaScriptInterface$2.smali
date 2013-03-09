.class Lcom/sprint/dsa/DsaJavaScriptInterface$2;
.super Ljava/lang/Object;
.source "DsaJavaScriptInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/dsa/DsaJavaScriptInterface;->setViewText(Landroid/widget/TextView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/dsa/DsaJavaScriptInterface;

.field private final synthetic val$text:Ljava/lang/String;

.field private final synthetic val$view:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/sprint/dsa/DsaJavaScriptInterface;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/dsa/DsaJavaScriptInterface$2;->this$0:Lcom/sprint/dsa/DsaJavaScriptInterface;

    iput-object p2, p0, Lcom/sprint/dsa/DsaJavaScriptInterface$2;->val$view:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/sprint/dsa/DsaJavaScriptInterface$2;->val$text:Ljava/lang/String;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sprint/dsa/DsaJavaScriptInterface$2;->val$view:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sprint/dsa/DsaJavaScriptInterface$2;->val$text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    return-void
.end method
