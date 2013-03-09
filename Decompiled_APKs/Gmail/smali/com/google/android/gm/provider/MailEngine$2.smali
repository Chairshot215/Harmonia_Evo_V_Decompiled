.class final Lcom/google/android/gm/provider/MailEngine$2;
.super Ljava/lang/Object;
.source "MailEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/provider/MailEngine;->getOrMakeMailEngineAsync(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/provider/MailEngine$MailEngineResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$account:Ljava/lang/String;

.field final synthetic val$callback:Lcom/google/android/gm/provider/MailEngine$MailEngineResultCallback;

.field final synthetic val$callerHandler:Landroid/os/Handler;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;Lcom/google/android/gm/provider/MailEngine$MailEngineResultCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 664
    iput-object p1, p0, Lcom/google/android/gm/provider/MailEngine$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gm/provider/MailEngine$2;->val$account:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gm/provider/MailEngine$2;->val$handler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/google/android/gm/provider/MailEngine$2;->val$callerHandler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/google/android/gm/provider/MailEngine$2;->val$callback:Lcom/google/android/gm/provider/MailEngine$MailEngineResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 666
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine$2;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine$2;->val$account:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gm/provider/MailEngine;->getOrMakeMailEngine(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v0

    .line 670
    .local v0, engine:Lcom/google/android/gm/provider/MailEngine;
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine$2;->val$handler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gm/provider/MailEngine$2$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gm/provider/MailEngine$2$1;-><init>(Lcom/google/android/gm/provider/MailEngine$2;Lcom/google/android/gm/provider/MailEngine;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/provider/MailEngine;->registerInitializationListener(Landroid/os/Handler;Lcom/google/android/gm/provider/MailEngine$MailEngineInitListener;)V

    .line 681
    return-void
.end method
