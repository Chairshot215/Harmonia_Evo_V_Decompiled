.class Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "CustomizationPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity$1;->this$0:Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 187
    if-nez p2, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.htc.intent.action.CUSTOMIZATION_CHANGE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 192
    const-string v1, "OOBE_CustomizationPickerActivity"

    const-string v2, "Customization finished"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity$1;->this$0:Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;

    #calls: Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->handleCustomizationFinish()V
    invoke-static {v1}, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->access$100(Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;)V

    goto :goto_0

    .line 195
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.htc.action.CustomizationPicker"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 196
    const-string v1, "OOBE_CustomizationPickerActivity"

    const-string v2, "Customization Picker case"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity$1;->this$0:Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;

    #calls: Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->handleCustomizationFinish()V
    invoke-static {v1}, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->access$100(Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;)V

    goto :goto_0

    .line 199
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    const-string v1, "ss"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, simstate:Ljava/lang/String;
    const-string v1, "LOADED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity$1;->this$0:Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity$1;->this$0:Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;

    #calls: Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->requestGetGID1()Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->access$300(Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->mGID:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->access$202(Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 203
    const-string v1, "OOBE_CustomizationPickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mGID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity$1;->this$0:Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;

    #getter for: Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->mGID:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->access$200(Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity$1;->this$0:Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;

    invoke-virtual {v1}, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity$1;->this$0:Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;

    invoke-virtual {v2}, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->getCustomizationAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 206
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity$1;->this$0:Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;

    #getter for: Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->mAdapter:Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity$MyArrayAdapter;
    invoke-static {v1}, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->access$400(Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;)Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity$MyArrayAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity$1;->this$0:Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;

    #getter for: Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->mInitialPosition:I
    invoke-static {v1}, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->access$500(Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 207
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity$1;->this$0:Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;

    #getter for: Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->mAdapter:Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity$MyArrayAdapter;
    invoke-static {v1}, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->access$400(Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;)Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity$MyArrayAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity$1;->this$0:Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;

    #getter for: Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->mInitialPosition:I
    invoke-static {v2}, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;->access$500(Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/android/htcsetupwizard/activity/CustomizationPickerActivity$MyArrayAdapter;->setSelect(I)V

    goto/16 :goto_0
.end method
