.class Lcom/android/settings/wifi/WifiOffloadAutoOnSettings$4;
.super Ljava/lang/Object;
.source "WifiOffloadAutoOnSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;->showAdvanceNotifydialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 263
    iput-object p1, p0, Lcom/android/settings/wifi/WifiOffloadAutoOnSettings$4;->this$0:Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/settings/wifi/WifiOffloadAutoOnSettings$4;->this$0:Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;->finish()V

    .line 266
    return-void
.end method
