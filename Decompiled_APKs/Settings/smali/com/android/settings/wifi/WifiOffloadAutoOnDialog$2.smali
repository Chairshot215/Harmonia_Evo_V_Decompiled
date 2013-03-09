.class Lcom/android/settings/wifi/WifiOffloadAutoOnDialog$2;
.super Ljava/lang/Object;
.source "WifiOffloadAutoOnDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    .line 123
    iput-object p1, p0, Lcom/android/settings/wifi/WifiOffloadAutoOnDialog$2;->this$0:Lcom/android/settings/wifi/WifiOffloadAutoOnDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 128
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 130
    packed-switch p2, :pswitch_data_0

    .line 138
    :cond_0
    :goto_0
    return v0

    .line 132
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiOffloadAutoOnDialog$2;->this$0:Lcom/android/settings/wifi/WifiOffloadAutoOnDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiOffloadAutoOnDialog;->finish()V

    .line 133
    const/4 v0, 0x1

    goto :goto_0

    .line 130
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
