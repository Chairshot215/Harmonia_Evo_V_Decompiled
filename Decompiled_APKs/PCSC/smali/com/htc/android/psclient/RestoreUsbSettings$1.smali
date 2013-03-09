.class Lcom/htc/android/psclient/RestoreUsbSettings$1;
.super Ljava/lang/Object;
.source "RestoreUsbSettings.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/psclient/RestoreUsbSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/psclient/RestoreUsbSettings;


# direct methods
.method constructor <init>(Lcom/htc/android/psclient/RestoreUsbSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/htc/android/psclient/RestoreUsbSettings$1;->this$0:Lcom/htc/android/psclient/RestoreUsbSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 4
    .parameter "preference"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/android/psclient/RestoreUsbSettings$1;->this$0:Lcom/htc/android/psclient/RestoreUsbSettings;

    iget-object v1, p0, Lcom/htc/android/psclient/RestoreUsbSettings$1;->this$0:Lcom/htc/android/psclient/RestoreUsbSettings;

    #getter for: Lcom/htc/android/psclient/RestoreUsbSettings;->itemlist:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/android/psclient/RestoreUsbSettings;->access$300(Lcom/htc/android/psclient/RestoreUsbSettings;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/psclient/RestoreUsbSettings$1;->this$0:Lcom/htc/android/psclient/RestoreUsbSettings;

    #getter for: Lcom/htc/android/psclient/RestoreUsbSettings;->map:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/htc/android/psclient/RestoreUsbSettings;->access$200(Lcom/htc/android/psclient/RestoreUsbSettings;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/psclient/RestoreUsbSettings$1;->this$0:Lcom/htc/android/psclient/RestoreUsbSettings;

    #getter for: Lcom/htc/android/psclient/RestoreUsbSettings;->function:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/android/psclient/RestoreUsbSettings;->access$100(Lcom/htc/android/psclient/RestoreUsbSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    #setter for: Lcom/htc/android/psclient/RestoreUsbSettings;->button_id:I
    invoke-static {v0, v1}, Lcom/htc/android/psclient/RestoreUsbSettings;->access$002(Lcom/htc/android/psclient/RestoreUsbSettings;I)I

    .line 87
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v1, p0, Lcom/htc/android/psclient/RestoreUsbSettings$1;->this$0:Lcom/htc/android/psclient/RestoreUsbSettings;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070001

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/psclient/RestoreUsbSettings$1;->this$0:Lcom/htc/android/psclient/RestoreUsbSettings;

    #getter for: Lcom/htc/android/psclient/RestoreUsbSettings;->items:[Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/android/psclient/RestoreUsbSettings;->access$1100(Lcom/htc/android/psclient/RestoreUsbSettings;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/psclient/RestoreUsbSettings$1;->this$0:Lcom/htc/android/psclient/RestoreUsbSettings;

    #getter for: Lcom/htc/android/psclient/RestoreUsbSettings;->button_id:I
    invoke-static {v2}, Lcom/htc/android/psclient/RestoreUsbSettings;->access$000(Lcom/htc/android/psclient/RestoreUsbSettings;)I

    move-result v2

    new-instance v3, Lcom/htc/android/psclient/RestoreUsbSettings$1$2;

    invoke-direct {v3, p0}, Lcom/htc/android/psclient/RestoreUsbSettings$1$2;-><init>(Lcom/htc/android/psclient/RestoreUsbSettings$1;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070013

    new-instance v2, Lcom/htc/android/psclient/RestoreUsbSettings$1$1;

    invoke-direct {v2, p0}, Lcom/htc/android/psclient/RestoreUsbSettings$1$1;-><init>(Lcom/htc/android/psclient/RestoreUsbSettings$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 130
    const/4 v0, 0x0

    return v0
.end method
