.class Lcom/android/phone/nbpcd/NBPCDSetting_EditIDD$ConfirmButtonListener;
.super Ljava/lang/Object;
.source "NBPCDSetting_EditIDD.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/nbpcd/NBPCDSetting_EditIDD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfirmButtonListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/nbpcd/NBPCDSetting_EditIDD;


# direct methods
.method private constructor <init>(Lcom/android/phone/nbpcd/NBPCDSetting_EditIDD;)V
    .locals 0
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/phone/nbpcd/NBPCDSetting_EditIDD$ConfirmButtonListener;->this$0:Lcom/android/phone/nbpcd/NBPCDSetting_EditIDD;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/nbpcd/NBPCDSetting_EditIDD;Lcom/android/phone/nbpcd/NBPCDSetting_EditIDD$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/android/phone/nbpcd/NBPCDSetting_EditIDD$ConfirmButtonListener;-><init>(Lcom/android/phone/nbpcd/NBPCDSetting_EditIDD;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 191
    iget-object v4, p0, Lcom/android/phone/nbpcd/NBPCDSetting_EditIDD$ConfirmButtonListener;->this$0:Lcom/android/phone/nbpcd/NBPCDSetting_EditIDD;

    iget-object v4, v4, Lcom/android/phone/nbpcd/NBPCDSetting_EditIDD;->mIddEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, IddString:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/nbpcd/NBPCDSetting_EditIDD;->access$200()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "NBPCDSetting_EditIDD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Idd String:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " length:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 195
    :cond_1
    iget-object v4, p0, Lcom/android/phone/nbpcd/NBPCDSetting_EditIDD$ConfirmButtonListener;->this$0:Lcom/android/phone/nbpcd/NBPCDSetting_EditIDD;

    #calls: Lcom/android/phone/nbpcd/NBPCDSetting_EditIDD;->showWarningDialog(I)V
    invoke-static {v4, v7}, Lcom/android/phone/nbpcd/NBPCDSetting_EditIDD;->access$300(Lcom/android/phone/nbpcd/NBPCDSetting_EditIDD;I)V

    .line 219
    :goto_0
    return-void

    .line 196
    :cond_2
    iget-object v4, p0, Lcom/android/phone/nbpcd/NBPCDSetting_EditIDD$ConfirmButtonListener;->this$0:Lcom/android/phone/nbpcd/NBPCDSetting_EditIDD;

    #calls: Lcom/android/phone/nbpcd/NBPCDSetting_EditIDD;->isValidIDDValue(Ljava/lang/String;)Z
    invoke-static {v4, v0}, Lcom/android/phone/nbpcd/NBPCDSetting_EditIDD;->access$400(Lcom/android/phone/nbpcd/NBPCDSetting_EditIDD;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 199
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 200
    .local v1, IddValue:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gez v4, :cond_3

    .line 201
    iget-object v4, p0, Lcom/android/phone/nbpcd/NBPCDSetting_EditIDD$ConfirmButtonListener;->this$0:Lcom/android/phone/nbpcd/NBPCDSetting_EditIDD;

    const/4 v5, 0x2

    #calls: Lcom/android/phone/nbpcd/NBPCDSetting_EditIDD;->showWarningDialog(I)V
    invoke-static {v4, v5}, Lcom/android/phone/nbpcd/NBPCDSetting_EditIDD;->access$300(Lcom/android/phone/nbpcd/NBPCDSetting_EditIDD;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 211
    .end local v1           #IddValue:Ljava/lang/Integer;
    :catch_0
    move-exception v2

    .line 212
    .local v2, e:Ljava/lang/NumberFormatException;
    iget-object v4, p0, Lcom/android/phone/nbpcd/NBPCDSetting_EditIDD$ConfirmButtonListener;->this$0:Lcom/android/phone/nbpcd/NBPCDSetting_EditIDD;

    #calls: Lcom/android/phone/nbpcd/NBPCDSetting_EditIDD;->showWarningDialog(I)V
    invoke-static {v4, v8}, Lcom/android/phone/nbpcd/NBPCDSetting_EditIDD;->access$300(Lcom/android/phone/nbpcd/NBPCDSetting_EditIDD;I)V

    goto :goto_0

    .line 205
    .end local v2           #e:Ljava/lang/NumberFormatException;
    .restart local v1       #IddValue:Ljava/lang/Integer;
    :cond_3
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 206
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "IDD"

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    const-string v4, "PRE_IDD_NAME"

    iget-object v5, p0, Lcom/android/phone/nbpcd/NBPCDSetting_EditIDD$ConfirmButtonListener;->this$0:Lcom/android/phone/nbpcd/NBPCDSetting_EditIDD;

    #getter for: Lcom/android/phone/nbpcd/NBPCDSetting_EditIDD;->mPreviousIDD:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/phone/nbpcd/NBPCDSetting_EditIDD;->access$500(Lcom/android/phone/nbpcd/NBPCDSetting_EditIDD;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    iget-object v4, p0, Lcom/android/phone/nbpcd/NBPCDSetting_EditIDD$ConfirmButtonListener;->this$0:Lcom/android/phone/nbpcd/NBPCDSetting_EditIDD;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v3}, Lcom/android/phone/nbpcd/NBPCDSetting_EditIDD;->setResult(ILandroid/content/Intent;)V

    .line 210
    iget-object v4, p0, Lcom/android/phone/nbpcd/NBPCDSetting_EditIDD$ConfirmButtonListener;->this$0:Lcom/android/phone/nbpcd/NBPCDSetting_EditIDD;

    invoke-virtual {v4}, Lcom/android/phone/nbpcd/NBPCDSetting_EditIDD;->finish()V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 217
    .end local v1           #IddValue:Ljava/lang/Integer;
    .end local v3           #intent:Landroid/content/Intent;
    :cond_4
    iget-object v4, p0, Lcom/android/phone/nbpcd/NBPCDSetting_EditIDD$ConfirmButtonListener;->this$0:Lcom/android/phone/nbpcd/NBPCDSetting_EditIDD;

    const/4 v5, 0x0

    #calls: Lcom/android/phone/nbpcd/NBPCDSetting_EditIDD;->showWarningDialog(I)V
    invoke-static {v4, v5}, Lcom/android/phone/nbpcd/NBPCDSetting_EditIDD;->access$300(Lcom/android/phone/nbpcd/NBPCDSetting_EditIDD;I)V

    goto :goto_0
.end method
