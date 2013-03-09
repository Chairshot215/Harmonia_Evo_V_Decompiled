.class Lcom/google/android/gm/provider/MailEngine$5;
.super Ljava/lang/Object;
.source "MailEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/provider/MailEngine;->callInitializationListener(Landroid/os/Handler;Lcom/google/android/gm/provider/MailEngine$MailEngineInitListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/provider/MailEngine;

.field final synthetic val$listener:Lcom/google/android/gm/provider/MailEngine$MailEngineInitListener;


# direct methods
.method constructor <init>(Lcom/google/android/gm/provider/MailEngine;Lcom/google/android/gm/provider/MailEngine$MailEngineInitListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1004
    iput-object p1, p0, Lcom/google/android/gm/provider/MailEngine$5;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iput-object p2, p0, Lcom/google/android/gm/provider/MailEngine$5;->val$listener:Lcom/google/android/gm/provider/MailEngine$MailEngineInitListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$5;->val$listener:Lcom/google/android/gm/provider/MailEngine$MailEngineInitListener;

    invoke-interface {v0}, Lcom/google/android/gm/provider/MailEngine$MailEngineInitListener;->onInitializationComplete()V

    .line 1007
    return-void
.end method
