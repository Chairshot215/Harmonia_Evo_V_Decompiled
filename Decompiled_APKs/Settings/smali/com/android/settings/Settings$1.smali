.class Lcom/android/settings/Settings$1;
.super Landroid/content/BroadcastReceiver;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/Settings;


# direct methods
.method constructor <init>(Lcom/android/settings/Settings;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/settings/Settings$1;->this$0:Lcom/android/settings/Settings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/settings/Settings$1;->this$0:Lcom/android/settings/Settings;

    new-instance v1, Lcom/android/settings/Settings$1$1;

    invoke-direct {v1, p0}, Lcom/android/settings/Settings$1$1;-><init>(Lcom/android/settings/Settings$1;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/Settings;->runInNonUIThread(Ljava/lang/Runnable;)V

    .line 121
    return-void
.end method
