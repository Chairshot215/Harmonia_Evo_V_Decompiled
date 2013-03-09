.class Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry$ConfirmButtonListener;
.super Ljava/lang/Object;
.source "NBPCDSetting_AddCountry.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfirmButtonListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry;


# direct methods
.method private constructor <init>(Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry;)V
    .locals 0
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry$ConfirmButtonListener;->this$0:Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry;Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 194
    invoke-direct {p0, p1}, Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry$ConfirmButtonListener;-><init>(Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13
    .parameter "v"

    .prologue
    const/4 v10, 0x1

    const/4 v12, 0x2

    .line 197
    iget-object v9, p0, Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry$ConfirmButtonListener;->this$0:Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry;

    iget-object v9, v9, Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry;->mCountryNameEdit:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 198
    .local v3, countryName:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry$ConfirmButtonListener;->this$0:Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry;

    iget-object v9, v9, Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry;->mCountryCodeEdit:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 199
    .local v2, countryCode:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry$ConfirmButtonListener;->this$0:Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry;

    iget-object v9, v9, Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry;->mIDDEdit:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 200
    .local v6, idd:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry$ConfirmButtonListener;->this$0:Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry;

    iget-object v9, v9, Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry;->mNDDEdit:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 201
    .local v8, ndd:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_1

    .line 202
    :cond_0
    iget-object v9, p0, Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry$ConfirmButtonListener;->this$0:Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry;

    #calls: Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry;->showWarningDialog(I)V
    invoke-static {v9, v10}, Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry;->access$200(Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry;I)V

    .line 235
    :goto_0
    return-void

    .line 206
    :cond_1
    :try_start_0
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 207
    .local v0, IDDValue:Ljava/lang/Integer;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 209
    .local v4, countryValue:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ltz v9, :cond_2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-gez v9, :cond_3

    .line 211
    :cond_2
    iget-object v9, p0, Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry$ConfirmButtonListener;->this$0:Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry;

    const/4 v10, 0x2

    #calls: Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry;->showWarningDialog(I)V
    invoke-static {v9, v10}, Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry;->access$200(Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 230
    .end local v0           #IDDValue:Ljava/lang/Integer;
    .end local v4           #countryValue:Ljava/lang/Integer;
    :catch_0
    move-exception v5

    .line 231
    .local v5, e:Ljava/lang/NumberFormatException;
    iget-object v9, p0, Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry$ConfirmButtonListener;->this$0:Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry;

    #calls: Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry;->showWarningDialog(I)V
    invoke-static {v9, v12}, Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry;->access$200(Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry;I)V

    goto :goto_0

    .line 215
    .end local v5           #e:Ljava/lang/NumberFormatException;
    .restart local v0       #IDDValue:Ljava/lang/Integer;
    .restart local v4       #countryValue:Ljava/lang/Integer;
    :cond_3
    :try_start_1
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 216
    .local v7, intent:Landroid/content/Intent;
    const-string v9, "CountryName"

    invoke-virtual {v7, v9, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    const-string v9, "COUNTRYCODE"

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    const-string v9, "IDD"

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    invoke-static {}, Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry;->access$300()Z

    move-result v9

    if-eqz v9, :cond_4

    const-string v9, "NBPCDSetting_AddIDD"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "NDD:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_4
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_6

    .line 221
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 222
    .local v1, NDDValue:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-gez v9, :cond_5

    .line 223
    iget-object v9, p0, Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry$ConfirmButtonListener;->this$0:Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry;

    const/4 v10, 0x2

    #calls: Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry;->showWarningDialog(I)V
    invoke-static {v9, v10}, Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry;->access$200(Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry;I)V

    goto :goto_0

    .line 226
    :cond_5
    const-string v9, "NDD"

    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    .end local v1           #NDDValue:Ljava/lang/Integer;
    :cond_6
    iget-object v9, p0, Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry$ConfirmButtonListener;->this$0:Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry;

    const/4 v10, 0x1

    invoke-virtual {v9, v10, v7}, Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry;->setResult(ILandroid/content/Intent;)V

    .line 229
    iget-object v9, p0, Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry$ConfirmButtonListener;->this$0:Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry;

    invoke-virtual {v9}, Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry;->finish()V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
