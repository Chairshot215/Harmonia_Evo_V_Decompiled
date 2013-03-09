.class Lcom/android/settings/wifi/WifiOffloadAutoOnDialog$4;
.super Ljava/lang/Object;
.source "WifiOffloadAutoOnDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiOffloadAutoOnDialog;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiOffloadAutoOnDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiOffloadAutoOnDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/settings/wifi/WifiOffloadAutoOnDialog$4;->this$0:Lcom/android/settings/wifi/WifiOffloadAutoOnDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/settings/wifi/WifiOffloadAutoOnDialog$4;->this$0:Lcom/android/settings/wifi/WifiOffloadAutoOnDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiOffloadAutoOnDialog;->finish()V

    .line 158
    return-void
.end method
