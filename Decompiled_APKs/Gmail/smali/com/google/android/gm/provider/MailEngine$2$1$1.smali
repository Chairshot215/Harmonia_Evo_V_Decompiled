.class Lcom/google/android/gm/provider/MailEngine$2$1$1;
.super Ljava/lang/Object;
.source "MailEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/provider/MailEngine$2$1;->onInitializationComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/gm/provider/MailEngine$2$1;


# direct methods
.method constructor <init>(Lcom/google/android/gm/provider/MailEngine$2$1;)V
    .locals 0
    .parameter

    .prologue
    .line 673
    iput-object p1, p0, Lcom/google/android/gm/provider/MailEngine$2$1$1;->this$1:Lcom/google/android/gm/provider/MailEngine$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 676
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$2$1$1;->this$1:Lcom/google/android/gm/provider/MailEngine$2$1;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine$2$1;->this$0:Lcom/google/android/gm/provider/MailEngine$2;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine$2;->val$callback:Lcom/google/android/gm/provider/MailEngine$MailEngineResultCallback;

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine$2$1$1;->this$1:Lcom/google/android/gm/provider/MailEngine$2$1;

    iget-object v1, v1, Lcom/google/android/gm/provider/MailEngine$2$1;->val$engine:Lcom/google/android/gm/provider/MailEngine;

    invoke-interface {v0, v1}, Lcom/google/android/gm/provider/MailEngine$MailEngineResultCallback;->onMailEngineResult(Lcom/google/android/gm/provider/MailEngine;)V

    .line 677
    return-void
.end method
