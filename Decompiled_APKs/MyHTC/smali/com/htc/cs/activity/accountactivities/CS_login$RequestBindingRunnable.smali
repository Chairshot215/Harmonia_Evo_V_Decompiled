.class Lcom/htc/cs/activity/accountactivities/CS_login$RequestBindingRunnable;
.super Ljava/lang/Object;
.source "CS_login.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cs/activity/accountactivities/CS_login;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestBindingRunnable"
.end annotation


# instance fields
.field logger:Lcom/htc/cs/util/Logger;

.field mEndMsg:Landroid/os/Message;

.field mId:I

.field final synthetic this$0:Lcom/htc/cs/activity/accountactivities/CS_login;


# direct methods
.method public constructor <init>(Lcom/htc/cs/activity/accountactivities/CS_login;Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter "msg"
    .parameter "id"

    .prologue
    .line 752
    iput-object p1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$RequestBindingRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 748
    invoke-static {p0}, Lcom/htc/cs/util/Logger;->getLogger(Ljava/lang/Object;)Lcom/htc/cs/util/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$RequestBindingRunnable;->logger:Lcom/htc/cs/util/Logger;

    .line 753
    iput-object p2, p0, Lcom/htc/cs/activity/accountactivities/CS_login$RequestBindingRunnable;->mEndMsg:Landroid/os/Message;

    .line 754
    iput p3, p0, Lcom/htc/cs/activity/accountactivities/CS_login$RequestBindingRunnable;->mId:I

    .line 755
    return-void
.end method

.method private sendMessage(I)V
    .locals 2
    .parameter "arg"

    .prologue
    .line 758
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$RequestBindingRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->removeDialog(I)V

    .line 759
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$RequestBindingRunnable;->mEndMsg:Landroid/os/Message;

    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 760
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$RequestBindingRunnable;->mEndMsg:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 761
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const v9, 0x7f0b0039

    const/16 v8, 0x10

    .line 765
    iget-object v3, p0, Lcom/htc/cs/activity/accountactivities/CS_login$RequestBindingRunnable;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v3}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 766
    iget-object v3, p0, Lcom/htc/cs/activity/accountactivities/CS_login$RequestBindingRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #calls: Lcom/htc/cs/activity/accountactivities/CS_login;->activityDestroyed()Z
    invoke-static {v3}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$000(Lcom/htc/cs/activity/accountactivities/CS_login;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 872
    :goto_0
    return-void

    .line 771
    :cond_0
    iget-object v3, p0, Lcom/htc/cs/activity/accountactivities/CS_login$RequestBindingRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/htc/cs/util/NetworkCheck;->isNetworkOK(Landroid/content/Context;Z)Z

    move-result v3

    if-nez v3, :cond_1

    .line 772
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/htc/cs/activity/accountactivities/CS_login$RequestBindingRunnable;->sendMessage(I)V

    goto :goto_0

    .line 778
    :cond_1
    :try_start_0
    iget v3, p0, Lcom/htc/cs/activity/accountactivities/CS_login$RequestBindingRunnable;->mId:I

    if-ne v3, v9, :cond_2

    .line 780
    iget-object v3, p0, Lcom/htc/cs/activity/accountactivities/CS_login$RequestBindingRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    iget-object v4, p0, Lcom/htc/cs/activity/accountactivities/CS_login$RequestBindingRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-virtual {v4}, Lcom/htc/cs/activity/accountactivities/CS_login;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$500()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/cs/util/CloudProxyUtil;->requestBinding(Landroid/content/Context;Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v4

    #setter for: Lcom/htc/cs/activity/accountactivities/CS_login;->RequestBindingID:Ljava/util/UUID;
    invoke-static {v3, v4}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$702(Lcom/htc/cs/activity/accountactivities/CS_login;Ljava/util/UUID;)Ljava/util/UUID;
    :try_end_0
    .catch Lcom/htc/cscore/restapi/exceptions/CSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 867
    :goto_1
    iget v3, p0, Lcom/htc/cs/activity/accountactivities/CS_login$RequestBindingRunnable;->mId:I

    if-ne v3, v9, :cond_9

    .line 868
    iget-object v3, p0, Lcom/htc/cs/activity/accountactivities/CS_login$RequestBindingRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-virtual {v3, v10}, Lcom/htc/cs/activity/accountactivities/CS_login;->confirmAccount(Ljava/lang/String;)V

    goto :goto_0

    .line 784
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/htc/cs/activity/accountactivities/CS_login$RequestBindingRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #getter for: Lcom/htc/cs/activity/accountactivities/CS_login;->spinnerCountryCode:Lcom/htc/widget/HtcSpinner;
    invoke-static {v3}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$1800(Lcom/htc/cs/activity/accountactivities/CS_login;)Lcom/htc/widget/HtcSpinner;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcSpinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 791
    .local v2, regionName:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/cs/activity/accountactivities/CS_login$RequestBindingRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #getter for: Lcom/htc/cs/activity/accountactivities/CS_login;->regionsMap:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$1900(Lcom/htc/cs/activity/accountactivities/CS_login;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;

    .line 792
    .local v0, accountRegion:Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;
    if-eqz v0, :cond_3

    iget-object v3, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;->DataCenter:Lcom/htc/cscore/restapi/proxy/WebClasses$WDataCenter;

    if-eqz v3, :cond_3

    .line 794
    iget-object v3, p0, Lcom/htc/cs/activity/accountactivities/CS_login$RequestBindingRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-virtual {v3}, Lcom/htc/cs/activity/accountactivities/CS_login;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;->DataCenter:Lcom/htc/cscore/restapi/proxy/WebClasses$WDataCenter;

    iget-object v4, v4, Lcom/htc/cscore/restapi/proxy/WebClasses$WDataCenter;->ServiceUri:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setServeName(Landroid/content/Context;Ljava/lang/String;)V

    .line 797
    iget-object v3, p0, Lcom/htc/cs/activity/accountactivities/CS_login$RequestBindingRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-virtual {v3}, Lcom/htc/cs/activity/accountactivities/CS_login;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;->DataCenter:Lcom/htc/cscore/restapi/proxy/WebClasses$WDataCenter;

    iget-object v4, v4, Lcom/htc/cscore/restapi/proxy/WebClasses$WDataCenter;->CmsUri:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setCMSURI(Landroid/content/Context;Ljava/lang/String;)V

    .line 799
    iget-object v3, p0, Lcom/htc/cs/activity/accountactivities/CS_login$RequestBindingRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-virtual {v3}, Lcom/htc/cs/activity/accountactivities/CS_login;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;->DataCenter:Lcom/htc/cscore/restapi/proxy/WebClasses$WDataCenter;

    iget-object v4, v4, Lcom/htc/cscore/restapi/proxy/WebClasses$WDataCenter;->ImcUri:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setIMCURI(Landroid/content/Context;Ljava/lang/String;)V

    .line 801
    iget-object v3, p0, Lcom/htc/cs/activity/accountactivities/CS_login$RequestBindingRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-virtual {v3}, Lcom/htc/cs/activity/accountactivities/CS_login;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;->DataCenter:Lcom/htc/cscore/restapi/proxy/WebClasses$WDataCenter;

    iget-object v4, v4, Lcom/htc/cscore/restapi/proxy/WebClasses$WDataCenter;->UpUri:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setStatusURI(Landroid/content/Context;Ljava/lang/String;)V

    .line 804
    iget-object v3, p0, Lcom/htc/cs/activity/accountactivities/CS_login$RequestBindingRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-virtual {v3}, Lcom/htc/cs/activity/accountactivities/CS_login;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;->CountryCode:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setCSRegion(Landroid/content/Context;Ljava/lang/String;)V

    .line 807
    iget-object v3, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;->DataCenter:Lcom/htc/cscore/restapi/proxy/WebClasses$WDataCenter;

    iget-object v3, v3, Lcom/htc/cscore/restapi/proxy/WebClasses$WDataCenter;->ServiceUri:Ljava/lang/String;

    sput-object v3, Lcom/htc/cs/util/Keys;->SERVER_URL:Ljava/lang/String;

    .line 808
    iget-object v3, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;->DataCenter:Lcom/htc/cscore/restapi/proxy/WebClasses$WDataCenter;

    iget-object v3, v3, Lcom/htc/cscore/restapi/proxy/WebClasses$WDataCenter;->CmsUri:Ljava/lang/String;

    sput-object v3, Lcom/htc/cs/util/Keys;->CMS_URI:Ljava/lang/String;

    .line 809
    iget-object v3, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;->DataCenter:Lcom/htc/cscore/restapi/proxy/WebClasses$WDataCenter;

    iget-object v3, v3, Lcom/htc/cscore/restapi/proxy/WebClasses$WDataCenter;->ImcUri:Ljava/lang/String;

    sput-object v3, Lcom/htc/cs/util/Keys;->IMC_URI:Ljava/lang/String;

    .line 810
    iget-object v3, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;->DataCenter:Lcom/htc/cscore/restapi/proxy/WebClasses$WDataCenter;

    iget-object v3, v3, Lcom/htc/cscore/restapi/proxy/WebClasses$WDataCenter;->UpUri:Ljava/lang/String;

    sput-object v3, Lcom/htc/cs/util/Keys;->STATUS_URI:Ljava/lang/String;

    .line 812
    :cond_3
    if-eqz v0, :cond_4

    iget-object v3, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;->Id:Ljava/util/UUID;

    if-nez v3, :cond_6

    .line 813
    :cond_4
    const/16 v3, 0x10

    invoke-direct {p0, v3}, Lcom/htc/cs/activity/accountactivities/CS_login$RequestBindingRunnable;->sendMessage(I)V
    :try_end_1
    .catch Lcom/htc/cscore/restapi/exceptions/CSException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 839
    .end local v0           #accountRegion:Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;
    .end local v2           #regionName:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 840
    .local v1, e:Lcom/htc/cscore/restapi/exceptions/CSException;
    iget-object v3, p0, Lcom/htc/cs/activity/accountactivities/CS_login$RequestBindingRunnable;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v3, v1}, Lcom/htc/cs/util/Logger;->exception(Ljava/lang/Throwable;)V

    .line 842
    invoke-static {v1}, Lcom/htc/cscore/util/CSUtil;->getExceptionErrorCode(Lcom/htc/cscore/restapi/exceptions/CSException;)Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    move-result-object v3

    sget-object v4, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->InvalidCredentials:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    if-eq v3, v4, :cond_5

    invoke-static {v1}, Lcom/htc/cscore/util/CSUtil;->getExceptionErrorCode(Lcom/htc/cscore/restapi/exceptions/CSException;)Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    move-result-object v3

    sget-object v4, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->EmailInUse:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    if-ne v3, v4, :cond_8

    .line 844
    :cond_5
    iget v3, p0, Lcom/htc/cs/activity/accountactivities/CS_login$RequestBindingRunnable;->mId:I

    if-ne v3, v9, :cond_7

    .line 845
    const/16 v3, 0xc

    invoke-direct {p0, v3}, Lcom/htc/cs/activity/accountactivities/CS_login$RequestBindingRunnable;->sendMessage(I)V

    goto/16 :goto_0

    .line 818
    .end local v1           #e:Lcom/htc/cscore/restapi/exceptions/CSException;
    .restart local v0       #accountRegion:Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;
    .restart local v2       #regionName:Ljava/lang/String;
    :cond_6
    :try_start_2
    iget-object v3, p0, Lcom/htc/cs/activity/accountactivities/CS_login$RequestBindingRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    iget-object v4, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;->CountryCode:Ljava/lang/String;

    #calls: Lcom/htc/cs/activity/accountactivities/CS_login;->getLegalDocumentId(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$2000(Lcom/htc/cs/activity/accountactivities/CS_login;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/htc/cscore/restapi/exceptions/CSException; {:try_start_2 .. :try_end_2} :catch_0

    .line 826
    :try_start_3
    iget-object v3, p0, Lcom/htc/cs/activity/accountactivities/CS_login$RequestBindingRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    iget-object v4, p0, Lcom/htc/cs/activity/accountactivities/CS_login$RequestBindingRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-virtual {v4}, Lcom/htc/cs/activity/accountactivities/CS_login;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;->Id:Ljava/util/UUID;

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/cs/activity/accountactivities/CS_login$RequestBindingRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #getter for: Lcom/htc/cs/activity/accountactivities/CS_login;->chkMarketing:Landroid/widget/CheckBox;
    invoke-static {v6}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$2100(Lcom/htc/cs/activity/accountactivities/CS_login;)Landroid/widget/CheckBox;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$500()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/htc/cs/util/CloudProxyUtil;->createCSAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v4

    #setter for: Lcom/htc/cs/activity/accountactivities/CS_login;->RequestBindingID:Ljava/util/UUID;
    invoke-static {v3, v4}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$702(Lcom/htc/cs/activity/accountactivities/CS_login;Ljava/util/UUID;)Ljava/util/UUID;

    .line 831
    iget-object v3, p0, Lcom/htc/cs/activity/accountactivities/CS_login$RequestBindingRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-virtual {v3}, Lcom/htc/cs/activity/accountactivities/CS_login;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/cs/activity/accountactivities/CS_login$RequestBindingRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #getter for: Lcom/htc/cs/activity/accountactivities/CS_login;->chkMarketing:Landroid/widget/CheckBox;
    invoke-static {v4}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$2100(Lcom/htc/cs/activity/accountactivities/CS_login;)Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setHTCNewsLetter(Landroid/content/Context;Ljava/lang/Boolean;)V

    .line 833
    iget-object v3, p0, Lcom/htc/cs/activity/accountactivities/CS_login$RequestBindingRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-virtual {v3}, Lcom/htc/cs/activity/accountactivities/CS_login;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/cs/activity/accountactivities/CS_login$RequestBindingRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #getter for: Lcom/htc/cs/activity/accountactivities/CS_login;->editEmailAddr:Landroid/widget/AutoCompleteTextView;
    invoke-static {v4}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$1600(Lcom/htc/cs/activity/accountactivities/CS_login;)Landroid/widget/AutoCompleteTextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setLegalDocAccount(Landroid/content/Context;Ljava/lang/String;)V

    .line 836
    iget-object v3, p0, Lcom/htc/cs/activity/accountactivities/CS_login$RequestBindingRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-virtual {v3}, Lcom/htc/cs/activity/accountactivities/CS_login;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/cs/activity/accountactivities/CS_login$RequestBindingRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #getter for: Lcom/htc/cs/activity/accountactivities/CS_login;->versionList:Ljava/util/List;
    invoke-static {v4}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$800(Lcom/htc/cs/activity/accountactivities/CS_login;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setLegalDocVersion(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 819
    :catch_1
    move-exception v1

    .line 820
    .local v1, e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/htc/cs/activity/accountactivities/CS_login$RequestBindingRunnable;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v3, v1}, Lcom/htc/cs/util/Logger;->exception(Ljava/lang/Throwable;)V

    .line 821
    const/16 v3, 0x10

    invoke-direct {p0, v3}, Lcom/htc/cs/activity/accountactivities/CS_login$RequestBindingRunnable;->sendMessage(I)V
    :try_end_3
    .catch Lcom/htc/cscore/restapi/exceptions/CSException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 847
    .end local v0           #accountRegion:Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;
    .end local v2           #regionName:Ljava/lang/String;
    .local v1, e:Lcom/htc/cscore/restapi/exceptions/CSException;
    :cond_7
    invoke-direct {p0, v8}, Lcom/htc/cs/activity/accountactivities/CS_login$RequestBindingRunnable;->sendMessage(I)V

    goto/16 :goto_0

    .line 850
    :cond_8
    const/4 v3, 0x4

    invoke-direct {p0, v3}, Lcom/htc/cs/activity/accountactivities/CS_login$RequestBindingRunnable;->sendMessage(I)V

    goto/16 :goto_0

    .line 870
    .end local v1           #e:Lcom/htc/cscore/restapi/exceptions/CSException;
    :cond_9
    iget-object v3, p0, Lcom/htc/cs/activity/accountactivities/CS_login$RequestBindingRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-virtual {v3, v10}, Lcom/htc/cs/activity/accountactivities/CS_login;->almostDone(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
