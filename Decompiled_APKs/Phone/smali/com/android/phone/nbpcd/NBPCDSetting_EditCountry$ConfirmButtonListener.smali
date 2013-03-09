.class Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry$ConfirmButtonListener;
.super Ljava/lang/Object;
.source "NBPCDSetting_EditCountry.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfirmButtonListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;


# direct methods
.method private constructor <init>(Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;)V
    .locals 0
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry$ConfirmButtonListener;->this$0:Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 243
    invoke-direct {p0, p1}, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry$ConfirmButtonListener;-><init>(Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x2

    .line 246
    iget-object v7, p0, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry$ConfirmButtonListener;->this$0:Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;

    iget-object v7, v7, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;->mCountryNameEdit:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 247
    .local v2, countryName:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry$ConfirmButtonListener;->this$0:Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;

    iget-object v7, v7, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;->mCountryCodeEdit:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 249
    .local v1, countryCode:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry$ConfirmButtonListener;->this$0:Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;

    iget-object v7, v7, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;->mNDDEdit:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 250
    .local v6, ndd:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    .line 251
    :cond_0
    iget-object v7, p0, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry$ConfirmButtonListener;->this$0:Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;

    #calls: Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;->showWarningDialog(I)V
    invoke-static {v7, v8}, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;->access$200(Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;I)V

    .line 281
    :goto_0
    return-void

    .line 256
    :cond_1
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 257
    .local v3, countryValue:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-gez v7, :cond_2

    .line 258
    iget-object v7, p0, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry$ConfirmButtonListener;->this$0:Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;

    const/4 v8, 0x2

    #calls: Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;->showWarningDialog(I)V
    invoke-static {v7, v8}, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;->access$200(Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 276
    .end local v3           #countryValue:Ljava/lang/Integer;
    :catch_0
    move-exception v4

    .line 277
    .local v4, e:Ljava/lang/NumberFormatException;
    iget-object v7, p0, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry$ConfirmButtonListener;->this$0:Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;

    #calls: Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;->showWarningDialog(I)V
    invoke-static {v7, v9}, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;->access$200(Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;I)V

    goto :goto_0

    .line 262
    .end local v4           #e:Ljava/lang/NumberFormatException;
    .restart local v3       #countryValue:Ljava/lang/Integer;
    :cond_2
    :try_start_1
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 263
    .local v5, intent:Landroid/content/Intent;
    const-string v7, "CountryName"

    invoke-virtual {v5, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    const-string v7, "COUNTRYCODE"

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 266
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_4

    .line 267
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 268
    .local v0, NDDValue:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-gez v7, :cond_3

    .line 269
    iget-object v7, p0, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry$ConfirmButtonListener;->this$0:Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;

    const/4 v8, 0x2

    #calls: Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;->showWarningDialog(I)V
    invoke-static {v7, v8}, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;->access$200(Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;I)V

    goto :goto_0

    .line 272
    :cond_3
    const-string v7, "NDD"

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    .end local v0           #NDDValue:Ljava/lang/Integer;
    :cond_4
    iget-object v7, p0, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry$ConfirmButtonListener;->this$0:Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;

    const/4 v8, 0x1

    invoke-virtual {v7, v8, v5}, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;->setResult(ILandroid/content/Intent;)V

    .line 275
    iget-object v7, p0, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry$ConfirmButtonListener;->this$0:Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;

    invoke-virtual {v7}, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;->finish()V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
