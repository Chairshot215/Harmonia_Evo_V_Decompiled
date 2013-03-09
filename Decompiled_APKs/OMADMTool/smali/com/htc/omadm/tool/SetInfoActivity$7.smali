.class Lcom/htc/omadm/tool/SetInfoActivity$7;
.super Ljava/lang/Object;
.source "SetInfoActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/omadm/tool/SetInfoActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/omadm/tool/SetInfoActivity;

.field final synthetic val$textEntryView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/htc/omadm/tool/SetInfoActivity;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/htc/omadm/tool/SetInfoActivity$7;->this$0:Lcom/htc/omadm/tool/SetInfoActivity;

    iput-object p2, p0, Lcom/htc/omadm/tool/SetInfoActivity$7;->val$textEntryView:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 192
    iget-object v2, p0, Lcom/htc/omadm/tool/SetInfoActivity$7;->this$0:Lcom/htc/omadm/tool/SetInfoActivity;

    iget-object v1, p0, Lcom/htc/omadm/tool/SetInfoActivity$7;->val$textEntryView:Landroid/view/View;

    const v3, 0x7f040003

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    #setter for: Lcom/htc/omadm/tool/SetInfoActivity;->mEdit:Landroid/widget/EditText;
    invoke-static {v2, v1}, Lcom/htc/omadm/tool/SetInfoActivity;->access$102(Lcom/htc/omadm/tool/SetInfoActivity;Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 193
    iget-object v1, p0, Lcom/htc/omadm/tool/SetInfoActivity$7;->this$0:Lcom/htc/omadm/tool/SetInfoActivity;

    #getter for: Lcom/htc/omadm/tool/SetInfoActivity;->mEdit:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/htc/omadm/tool/SetInfoActivity;->access$100(Lcom/htc/omadm/tool/SetInfoActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/htc/omadm/tool/SetInfoActivity;->GetText:Ljava/lang/String;

    .line 195
    :try_start_0
    sget-object v1, Lcom/htc/omadm/tool/SetInfoActivity;->GetText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/htc/omadm/tool/SetInfoActivity;->GetText:Ljava/lang/String;

    .line 196
    sget-object v1, Lcom/htc/omadm/tool/SetInfoActivity;->GetText:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    iget-object v1, p0, Lcom/htc/omadm/tool/SetInfoActivity$7;->this$0:Lcom/htc/omadm/tool/SetInfoActivity;

    #calls: Lcom/htc/omadm/tool/SetInfoActivity;->ErrorDialog()V
    invoke-static {v1}, Lcom/htc/omadm/tool/SetInfoActivity;->access$200(Lcom/htc/omadm/tool/SetInfoActivity;)V

    .line 206
    :goto_0
    return-void

    .line 199
    :cond_0
    const-string v1, "SetInfoActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Server Port: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/omadm/tool/SetInfoActivity$7;->this$0:Lcom/htc/omadm/tool/SetInfoActivity;

    iget-object v3, v3, Lcom/htc/omadm/tool/SetInfoActivity;->mFutureLib:Lcom/htc/omadm/aidl/IDmFutureDial;

    sget-object v4, Lcom/htc/omadm/tool/SetInfoActivity;->GetText:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/htc/omadm/aidl/IDmFutureDial;->Set_ServerAdrPort(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v1, p0, Lcom/htc/omadm/tool/SetInfoActivity$7;->this$0:Lcom/htc/omadm/tool/SetInfoActivity;

    invoke-virtual {v1}, Lcom/htc/omadm/tool/SetInfoActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "serverport"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/omadm/tool/SetInfoActivity$7;->this$0:Lcom/htc/omadm/tool/SetInfoActivity;

    iget-object v2, v2, Lcom/htc/omadm/tool/SetInfoActivity;->mFutureLib:Lcom/htc/omadm/aidl/IDmFutureDial;

    invoke-interface {v2}, Lcom/htc/omadm/aidl/IDmFutureDial;->Get_ServerAdrPort()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 204
    const-string v1, "SetInfoActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EXCEPTION:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
