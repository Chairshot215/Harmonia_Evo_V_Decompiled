.class Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity$4;
.super Ljava/lang/Object;
.source "AccountSetupActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1668
    iput-object p1, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity$4;->this$0:Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;

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

    .line 1670
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 1672
    sparse-switch p2, :sswitch_data_0

    .line 1683
    :cond_0
    :goto_0
    return v0

    .line 1678
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1672
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
        0x52 -> :sswitch_0
        0x54 -> :sswitch_0
    .end sparse-switch
.end method
