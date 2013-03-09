.class Lcom/google/android/finsky/receivers/ClearCacheReceiver$1;
.super Ljava/lang/Object;
.source "ClearCacheReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/receivers/ClearCacheReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/receivers/ClearCacheReceiver;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/receivers/ClearCacheReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/google/android/finsky/receivers/ClearCacheReceiver$1;->this$0:Lcom/google/android/finsky/receivers/ClearCacheReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 32
    return-void
.end method
