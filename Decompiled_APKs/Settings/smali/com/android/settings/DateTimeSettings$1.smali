.class Lcom/android/settings/DateTimeSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "DateTimeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DateTimeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DateTimeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DateTimeSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 451
    iput-object p1, p0, Lcom/android/settings/DateTimeSettings$1;->this$0:Lcom/android/settings/DateTimeSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 455
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings$1;->this$0:Lcom/android/settings/DateTimeSettings;

    #getter for: Lcom/android/settings/DateTimeSettings;->updateHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/DateTimeSettings;->access$000(Lcom/android/settings/DateTimeSettings;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/DateTimeSettings$1$1;

    invoke-direct {v1, p0}, Lcom/android/settings/DateTimeSettings$1$1;-><init>(Lcom/android/settings/DateTimeSettings$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 467
    return-void
.end method
