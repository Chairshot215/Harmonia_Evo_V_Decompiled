.class Lcom/sprint/dsa/DsaClient$4;
.super Ljava/lang/Object;
.source "DsaClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/dsa/DsaClient;->close(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/dsa/DsaClient;


# direct methods
.method constructor <init>(Lcom/sprint/dsa/DsaClient;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/dsa/DsaClient$4;->this$0:Lcom/sprint/dsa/DsaClient;

    .line 663
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 665
    invoke-static {}, Lcom/sprint/dsa/DsaClient;->access$0()Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 666
    invoke-static {}, Lcom/sprint/dsa/DsaClient;->access$0()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 668
    :cond_0
    return-void
.end method
