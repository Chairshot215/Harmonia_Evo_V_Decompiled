.class Lcom/htc/android/htcsetupwizard/MainActivity$7;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcsetupwizard/MainActivity;->createWIFIScanAPResult()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcsetupwizard/MainActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/htcsetupwizard/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2636
    iput-object p1, p0, Lcom/htc/android/htcsetupwizard/MainActivity$7;->this$0:Lcom/htc/android/htcsetupwizard/MainActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .parameter "dialog"

    .prologue
    .line 2638
    const-string v0, "OOBE_MainActivity"

    const-string v1, "nextActivity from createWIFIScanAPResult"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2639
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity$7;->this$0:Lcom/htc/android/htcsetupwizard/MainActivity;

    #getter for: Lcom/htc/android/htcsetupwizard/MainActivity;->mbStopAPResultDlg:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/htc/android/htcsetupwizard/MainActivity;->access$900(Lcom/htc/android/htcsetupwizard/MainActivity;)Ljava/lang/Boolean;

    move-result-object v1

    monitor-enter v1

    .line 2640
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity$7;->this$0:Lcom/htc/android/htcsetupwizard/MainActivity;

    #getter for: Lcom/htc/android/htcsetupwizard/MainActivity;->mbStopAPResultDlg:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/htc/android/htcsetupwizard/MainActivity;->access$900(Lcom/htc/android/htcsetupwizard/MainActivity;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2641
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity$7;->this$0:Lcom/htc/android/htcsetupwizard/MainActivity;

    #getter for: Lcom/htc/android/htcsetupwizard/MainActivity;->mbStopAPResultDlg:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/htc/android/htcsetupwizard/MainActivity;->access$900(Lcom/htc/android/htcsetupwizard/MainActivity;)Ljava/lang/Boolean;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity$7;->this$0:Lcom/htc/android/htcsetupwizard/MainActivity;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    #setter for: Lcom/htc/android/htcsetupwizard/MainActivity;->mbStopAPResultDlg:Ljava/lang/Boolean;
    invoke-static {v0, v3}, Lcom/htc/android/htcsetupwizard/MainActivity;->access$902(Lcom/htc/android/htcsetupwizard/MainActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2642
    :try_start_2
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity$7;->this$0:Lcom/htc/android/htcsetupwizard/MainActivity;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/htc/android/htcsetupwizard/MainActivity;->nextActivity(Z)V

    .line 2644
    :cond_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2645
    return-void

    .line 2641
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 2644
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method
