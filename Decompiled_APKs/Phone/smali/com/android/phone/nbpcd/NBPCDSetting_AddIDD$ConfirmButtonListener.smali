.class Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD$ConfirmButtonListener;
.super Ljava/lang/Object;
.source "NBPCDSetting_AddIDD.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfirmButtonListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;


# direct methods
.method private constructor <init>(Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;)V
    .locals 0
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD$ConfirmButtonListener;->this$0:Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD$ConfirmButtonListener;-><init>(Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 186
    iget-object v4, p0, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD$ConfirmButtonListener;->this$0:Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;

    iget-object v4, v4, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;->mIddEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, IddString:Ljava/lang/String;
    const-string v4, "NBPCDSetting_AddIDD"

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

    .line 189
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 190
    :cond_0
    iget-object v4, p0, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD$ConfirmButtonListener;->this$0:Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;

    #calls: Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;->showWarningDialog(I)V
    invoke-static {v4, v7}, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;->access$200(Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;I)V

    .line 212
    :goto_0
    return-void

    .line 191
    :cond_1
    iget-object v4, p0, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD$ConfirmButtonListener;->this$0:Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;

    #calls: Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;->isValidIDDValue(Ljava/lang/String;)Z
    invoke-static {v4, v0}, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;->access$300(Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 194
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 195
    .local v1, IddValue:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gez v4, :cond_2

    .line 196
    iget-object v4, p0, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD$ConfirmButtonListener;->this$0:Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;

    const/4 v5, 0x2

    #calls: Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;->showWarningDialog(I)V
    invoke-static {v4, v5}, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;->access$200(Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 204
    .end local v1           #IddValue:Ljava/lang/Integer;
    :catch_0
    move-exception v2

    .line 205
    .local v2, e:Ljava/lang/NumberFormatException;
    iget-object v4, p0, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD$ConfirmButtonListener;->this$0:Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;

    #calls: Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;->showWarningDialog(I)V
    invoke-static {v4, v8}, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;->access$200(Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;I)V

    goto :goto_0

    .line 200
    .end local v2           #e:Ljava/lang/NumberFormatException;
    .restart local v1       #IddValue:Ljava/lang/Integer;
    :cond_2
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 201
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "IDD"

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    iget-object v4, p0, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD$ConfirmButtonListener;->this$0:Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v3}, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;->setResult(ILandroid/content/Intent;)V

    .line 203
    iget-object v4, p0, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD$ConfirmButtonListener;->this$0:Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;

    invoke-virtual {v4}, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;->finish()V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 210
    .end local v1           #IddValue:Ljava/lang/Integer;
    .end local v3           #intent:Landroid/content/Intent;
    :cond_3
    iget-object v4, p0, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD$ConfirmButtonListener;->this$0:Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;

    const/4 v5, 0x0

    #calls: Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;->showWarningDialog(I)V
    invoke-static {v4, v5}, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;->access$200(Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;I)V

    goto :goto_0
.end method
