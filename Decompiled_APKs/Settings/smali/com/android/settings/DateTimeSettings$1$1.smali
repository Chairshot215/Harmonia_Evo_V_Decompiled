.class Lcom/android/settings/DateTimeSettings$1$1;
.super Ljava/lang/Object;
.source "DateTimeSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DateTimeSettings$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/DateTimeSettings$1;


# direct methods
.method constructor <init>(Lcom/android/settings/DateTimeSettings$1;)V
    .locals 0
    .parameter

    .prologue
    .line 455
    iput-object p1, p0, Lcom/android/settings/DateTimeSettings$1$1;->this$1:Lcom/android/settings/DateTimeSettings$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 458
    iget-object v2, p0, Lcom/android/settings/DateTimeSettings$1$1;->this$1:Lcom/android/settings/DateTimeSettings$1;

    iget-object v2, v2, Lcom/android/settings/DateTimeSettings$1;->this$0:Lcom/android/settings/DateTimeSettings;

    invoke-virtual {v2}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 460
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 461
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/DateTimeSettings$1$1;->this$1:Lcom/android/settings/DateTimeSettings$1;

    iget-object v2, v2, Lcom/android/settings/DateTimeSettings$1;->this$0:Lcom/android/settings/DateTimeSettings;

    invoke-virtual {v2, v0}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 462
    :catch_0
    move-exception v1

    .line 463
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "DateTimeSettings"

    const-string v3, "updateTimeAndDateDisplay fail"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
