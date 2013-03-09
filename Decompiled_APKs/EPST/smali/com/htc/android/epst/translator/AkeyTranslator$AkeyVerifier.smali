.class public Lcom/htc/android/epst/translator/AkeyTranslator$AkeyVerifier;
.super Ljava/lang/Object;
.source "AkeyTranslator.java"

# interfaces
.implements Lcom/htc/android/epst/InputVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/epst/translator/AkeyTranslator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AkeyVerifier"
.end annotation


# instance fields
.field failMsg:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/android/epst/translator/AkeyTranslator;


# direct methods
.method public constructor <init>(Lcom/htc/android/epst/translator/AkeyTranslator;)V
    .locals 1
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/htc/android/epst/translator/AkeyTranslator$AkeyVerifier;->this$0:Lcom/htc/android/epst/translator/AkeyTranslator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/epst/translator/AkeyTranslator$AkeyVerifier;->failMsg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public check(Ljava/lang/String;)Z
    .locals 10
    .parameter "input"

    .prologue
    const/4 v6, 0x0

    .line 51
    iget-object v7, p0, Lcom/htc/android/epst/translator/AkeyTranslator$AkeyVerifier;->this$0:Lcom/htc/android/epst/translator/AkeyTranslator;

    #getter for: Lcom/htc/android/epst/translator/AkeyTranslator;->DBG:Z
    invoke-static {v7}, Lcom/htc/android/epst/translator/AkeyTranslator;->access$000(Lcom/htc/android/epst/translator/AkeyTranslator;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/htc/android/epst/translator/AkeyTranslator$AkeyVerifier;->this$0:Lcom/htc/android/epst/translator/AkeyTranslator;

    #getter for: Lcom/htc/android/epst/translator/AkeyTranslator;->LOG_TAG:Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/android/epst/translator/AkeyTranslator;->access$100(Lcom/htc/android/epst/translator/AkeyTranslator;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "check:input:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x1a

    if-eq v7, v8, :cond_1

    .line 53
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v7

    const v8, 0x7f040043

    invoke-virtual {v7, v8}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/android/epst/translator/AkeyTranslator$AkeyVerifier;->failMsg:Ljava/lang/String;

    .line 80
    :goto_0
    return v6

    .line 56
    :cond_1
    iget-object v7, p0, Lcom/htc/android/epst/translator/AkeyTranslator$AkeyVerifier;->this$0:Lcom/htc/android/epst/translator/AkeyTranslator;

    #getter for: Lcom/htc/android/epst/translator/AkeyTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;
    invoke-static {v7}, Lcom/htc/android/epst/translator/AkeyTranslator;->access$200(Lcom/htc/android/epst/translator/AkeyTranslator;)Lcom/htc/android/epst/nvitem/NvItemController;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v0

    check-cast v0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ESN;

    .line 57
    .local v0, esn:Lcom/htc/android/epst/nvitem/DM_NVI_ID_ESN;
    iget-object v7, p0, Lcom/htc/android/epst/translator/AkeyTranslator$AkeyVerifier;->this$0:Lcom/htc/android/epst/translator/AkeyTranslator;

    #getter for: Lcom/htc/android/epst/translator/AkeyTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;
    invoke-static {v7}, Lcom/htc/android/epst/translator/AkeyTranslator;->access$200(Lcom/htc/android/epst/translator/AkeyTranslator;)Lcom/htc/android/epst/nvitem/NvItemController;

    move-result-object v7

    const/16 v8, 0x797

    invoke-virtual {v7, v8}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v1

    check-cast v1, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MEID;

    .line 59
    .local v1, meid:Lcom/htc/android/epst/nvitem/DM_NVI_ID_MEID;
    invoke-virtual {v0}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_ESN;->getEsn()Ljava/lang/String;

    move-result-object v3

    .line 60
    .local v3, nEsn:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_MEID;->getMeid()Ljava/lang/String;

    move-result-object v4

    .line 61
    .local v4, nMeid:Ljava/lang/String;
    const-string v2, ""

    .line 63
    .local v2, nESN:Ljava/lang/String;
    sget-boolean v7, Lcom/htc/android/epst/HtcFeatureList;->FEATURE_SUPPORT_ESN:Z

    if-eqz v7, :cond_3

    .line 64
    move-object v2, v3

    .line 71
    :goto_1
    iget-object v7, p0, Lcom/htc/android/epst/translator/AkeyTranslator$AkeyVerifier;->this$0:Lcom/htc/android/epst/translator/AkeyTranslator;

    #getter for: Lcom/htc/android/epst/translator/AkeyTranslator;->DBG:Z
    invoke-static {v7}, Lcom/htc/android/epst/translator/AkeyTranslator;->access$000(Lcom/htc/android/epst/translator/AkeyTranslator;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/htc/android/epst/translator/AkeyTranslator$AkeyVerifier;->this$0:Lcom/htc/android/epst/translator/AkeyTranslator;

    #getter for: Lcom/htc/android/epst/translator/AkeyTranslator;->LOG_TAG:Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/android/epst/translator/AkeyTranslator;->access$100(Lcom/htc/android/epst/translator/AkeyTranslator;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "nESN:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_2
    iget-object v7, p0, Lcom/htc/android/epst/translator/AkeyTranslator$AkeyVerifier;->this$0:Lcom/htc/android/epst/translator/AkeyTranslator;

    #getter for: Lcom/htc/android/epst/translator/AkeyTranslator;->mNative:Lcom/htc/android/epst/internal/NativeBridge;
    invoke-static {v7}, Lcom/htc/android/epst/translator/AkeyTranslator;->access$400(Lcom/htc/android/epst/translator/AkeyTranslator;)Lcom/htc/android/epst/internal/NativeBridge;

    move-result-object v7

    invoke-virtual {v7, p1, v2}, Lcom/htc/android/epst/internal/NativeBridge;->checkAKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 74
    .local v5, ret:Ljava/lang/String;
    if-nez v5, :cond_4

    .line 75
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v7

    const v8, 0x7f040044

    invoke-virtual {v7, v8}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/android/epst/translator/AkeyTranslator$AkeyVerifier;->failMsg:Ljava/lang/String;

    goto :goto_0

    .line 67
    .end local v5           #ret:Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lcom/htc/android/epst/translator/AkeyTranslator$AkeyVerifier;->this$0:Lcom/htc/android/epst/translator/AkeyTranslator;

    #calls: Lcom/htc/android/epst/translator/AkeyTranslator;->getESNFromMEID(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v7, v4}, Lcom/htc/android/epst/translator/AkeyTranslator;->access$300(Lcom/htc/android/epst/translator/AkeyTranslator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 68
    iget-object v7, p0, Lcom/htc/android/epst/translator/AkeyTranslator$AkeyVerifier;->this$0:Lcom/htc/android/epst/translator/AkeyTranslator;

    #getter for: Lcom/htc/android/epst/translator/AkeyTranslator;->LOG_TAG:Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/android/epst/translator/AkeyTranslator;->access$100(Lcom/htc/android/epst/translator/AkeyTranslator;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "Count ESN from MEID"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 78
    .restart local v5       #ret:Ljava/lang/String;
    :cond_4
    iget-object v6, p0, Lcom/htc/android/epst/translator/AkeyTranslator$AkeyVerifier;->this$0:Lcom/htc/android/epst/translator/AkeyTranslator;

    #setter for: Lcom/htc/android/epst/translator/AkeyTranslator;->mAkey:Ljava/lang/String;
    invoke-static {v6, v5}, Lcom/htc/android/epst/translator/AkeyTranslator;->access$502(Lcom/htc/android/epst/translator/AkeyTranslator;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    iget-object v6, p0, Lcom/htc/android/epst/translator/AkeyTranslator$AkeyVerifier;->this$0:Lcom/htc/android/epst/translator/AkeyTranslator;

    #getter for: Lcom/htc/android/epst/translator/AkeyTranslator;->DBG:Z
    invoke-static {v6}, Lcom/htc/android/epst/translator/AkeyTranslator;->access$000(Lcom/htc/android/epst/translator/AkeyTranslator;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/htc/android/epst/translator/AkeyTranslator$AkeyVerifier;->this$0:Lcom/htc/android/epst/translator/AkeyTranslator;

    #getter for: Lcom/htc/android/epst/translator/AkeyTranslator;->LOG_TAG:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/android/epst/translator/AkeyTranslator;->access$100(Lcom/htc/android/epst/translator/AkeyTranslator;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mAkey:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/android/epst/translator/AkeyTranslator$AkeyVerifier;->this$0:Lcom/htc/android/epst/translator/AkeyTranslator;

    #getter for: Lcom/htc/android/epst/translator/AkeyTranslator;->mAkey:Ljava/lang/String;
    invoke-static {v8}, Lcom/htc/android/epst/translator/AkeyTranslator;->access$500(Lcom/htc/android/epst/translator/AkeyTranslator;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_5
    const/4 v6, 0x1

    goto/16 :goto_0
.end method

.method public check(Ljava/lang/String;I)Z
    .locals 1
    .parameter "input"
    .parameter "partIndex"

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Lcom/htc/android/epst/translator/AkeyTranslator$AkeyVerifier;->check(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getPrompt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/htc/android/epst/translator/AkeyTranslator$AkeyVerifier;->failMsg:Ljava/lang/String;

    return-object v0
.end method
