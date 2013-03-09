.class Lcom/android/settings/applications/InstalledAppDetails$3;
.super Landroid/content/BroadcastReceiver;
.source "InstalledAppDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/InstalledAppDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/InstalledAppDetails;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/InstalledAppDetails;)V
    .locals 0
    .parameter

    .prologue
    .line 944
    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetails$3;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 947
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails$3;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    #calls: Lcom/android/settings/applications/InstalledAppDetails;->initMoveButton()V
    invoke-static {v0}, Lcom/android/settings/applications/InstalledAppDetails;->access$1200(Lcom/android/settings/applications/InstalledAppDetails;)V

    .line 948
    return-void
.end method
