.class Lcom/htc/android/psclient/RestoreUsbSettings$1$2;
.super Ljava/lang/Object;
.source "RestoreUsbSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/psclient/RestoreUsbSettings$1;->onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/psclient/RestoreUsbSettings$1;


# direct methods
.method constructor <init>(Lcom/htc/android/psclient/RestoreUsbSettings$1;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/htc/android/psclient/RestoreUsbSettings$1$2;->this$1:Lcom/htc/android/psclient/RestoreUsbSettings$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/android/psclient/RestoreUsbSettings$1$2;->this$1:Lcom/htc/android/psclient/RestoreUsbSettings$1;

    iget-object v0, v0, Lcom/htc/android/psclient/RestoreUsbSettings$1;->this$0:Lcom/htc/android/psclient/RestoreUsbSettings;

    #setter for: Lcom/htc/android/psclient/RestoreUsbSettings;->button_id:I
    invoke-static {v0, p2}, Lcom/htc/android/psclient/RestoreUsbSettings;->access$002(Lcom/htc/android/psclient/RestoreUsbSettings;I)I

    .line 93
    return-void
.end method
