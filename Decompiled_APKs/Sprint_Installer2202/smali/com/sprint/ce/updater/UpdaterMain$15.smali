.class Lcom/sprint/ce/updater/UpdaterMain$15;
.super Ljava/lang/Thread;
.source "UpdaterMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/ce/updater/UpdaterMain;->performBrowserRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/ce/updater/UpdaterMain;


# direct methods
.method constructor <init>(Lcom/sprint/ce/updater/UpdaterMain;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/ce/updater/UpdaterMain$15;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    .line 814
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 818
    const/4 v1, 0x0

    .line 819
    .local v1, errorResId:I
    iget-object v6, p0, Lcom/sprint/ce/updater/UpdaterMain$15;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v4, v6, Lcom/sprint/ce/updater/UpdaterMain;->mAltUrl:Ljava/lang/String;

    .line 821
    .local v4, url:Ljava/lang/String;
    iget-object v6, p0, Lcom/sprint/ce/updater/UpdaterMain$15;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    invoke-static {}, Lcom/sprint/ce/updater/TrustedHosts;->getInstance()Lcom/sprint/ce/updater/TrustedHosts;

    move-result-object v7

    iput-object v7, v6, Lcom/sprint/ce/updater/UpdaterMain;->mTrustedHosts:Lcom/sprint/ce/updater/TrustedHosts;

    .line 822
    iget-object v6, p0, Lcom/sprint/ce/updater/UpdaterMain$15;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v6, v6, Lcom/sprint/ce/updater/UpdaterMain;->mTrustedHosts:Lcom/sprint/ce/updater/TrustedHosts;

    invoke-virtual {v6}, Lcom/sprint/ce/updater/TrustedHosts;->isUptoDate()Z

    move-result v6

    if-nez v6, :cond_0

    .line 823
    iget-object v6, p0, Lcom/sprint/ce/updater/UpdaterMain$15;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v6, v6, Lcom/sprint/ce/updater/UpdaterMain;->mTrustedHosts:Lcom/sprint/ce/updater/TrustedHosts;

    invoke-virtual {v6}, Lcom/sprint/ce/updater/TrustedHosts;->removeAll()V

    .line 825
    new-instance v2, Lcom/sprint/ce/updater/HttpServer;

    iget-object v6, p0, Lcom/sprint/ce/updater/UpdaterMain$15;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    invoke-direct {v2, v6}, Lcom/sprint/ce/updater/HttpServer;-><init>(Landroid/content/Context;)V

    .line 828
    .local v2, httpServer:Lcom/sprint/ce/updater/HttpServer;
    :try_start_0
    sget-boolean v6, Lcom/sprint/ce/updater/DownloadUtil;->useCertificationUrl:Z

    if-eqz v6, :cond_3

    const-string v6, "http://sebu.pcslab.com/szone/saitest/trustedsource.xml"

    .line 827
    :goto_0
    invoke-virtual {v2, v6}, Lcom/sprint/ce/updater/HttpServer;->process(Ljava/lang/String;)Z

    move-result v3

    .line 829
    .local v3, status:Z
    if-eqz v3, :cond_4

    .line 830
    new-instance v5, Lcom/sprint/ce/updater/TrustedHostsXmlHandler;

    invoke-direct {v5}, Lcom/sprint/ce/updater/TrustedHostsXmlHandler;-><init>()V

    .line 831
    .local v5, xmlHandler:Lcom/sprint/ce/updater/TrustedHostsXmlHandler;
    invoke-virtual {v2, v5}, Lcom/sprint/ce/updater/HttpServer;->processXMLResponse(Lorg/xml/sax/helpers/DefaultHandler;)Z

    move-result v3

    .line 832
    if-nez v3, :cond_0

    .line 833
    const-string v6, "SprintUpdater"

    const-string v7, "Error parsing trustedsource.xml"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 834
    const v1, 0x7f05000d

    .line 846
    .end local v2           #httpServer:Lcom/sprint/ce/updater/HttpServer;
    .end local v3           #status:Z
    .end local v5           #xmlHandler:Lcom/sprint/ce/updater/TrustedHostsXmlHandler;
    :cond_0
    :goto_1
    if-gtz v1, :cond_1

    iget-object v6, p0, Lcom/sprint/ce/updater/UpdaterMain$15;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v6, v6, Lcom/sprint/ce/updater/UpdaterMain;->mTrustedHosts:Lcom/sprint/ce/updater/TrustedHosts;

    invoke-virtual {v6, v4}, Lcom/sprint/ce/updater/TrustedHosts;->isValidHost(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 847
    :cond_1
    const-string v6, "SprintUpdater"

    const-string v7, "Unable to validate host"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    iget-object v6, p0, Lcom/sprint/ce/updater/UpdaterMain$15;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iput-object v8, v6, Lcom/sprint/ce/updater/UpdaterMain;->mResponse:Lcom/sprint/ce/updater/Response;

    .line 849
    iget-object v6, p0, Lcom/sprint/ce/updater/UpdaterMain$15;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    #setter for: Lcom/sprint/ce/updater/UpdaterMain;->mEntries:Ljava/util/List;
    invoke-static {v6, v8}, Lcom/sprint/ce/updater/UpdaterMain;->access$14(Lcom/sprint/ce/updater/UpdaterMain;Ljava/util/List;)V

    .line 851
    iget-object v6, p0, Lcom/sprint/ce/updater/UpdaterMain$15;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    if-nez v1, :cond_2

    const v1, 0x7f05000d

    .end local v1           #errorResId:I
    :cond_2
    const v7, 0x104000a

    #calls: Lcom/sprint/ce/updater/UpdaterMain;->setViewStatusOnUi(IIIZ)V
    invoke-static {v6, v1, v7, v9, v9}, Lcom/sprint/ce/updater/UpdaterMain;->access$7(Lcom/sprint/ce/updater/UpdaterMain;IIIZ)V

    .line 852
    iget-object v6, p0, Lcom/sprint/ce/updater/UpdaterMain$15;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v6, v6, Lcom/sprint/ce/updater/UpdaterMain;->mActionButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/sprint/ce/updater/UpdaterMain$15;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v7, v7, Lcom/sprint/ce/updater/UpdaterMain;->mFinishOnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 859
    :goto_2
    return-void

    .line 828
    .restart local v1       #errorResId:I
    .restart local v2       #httpServer:Lcom/sprint/ce/updater/HttpServer;
    :cond_3
    :try_start_1
    const-string v6, "https://deviceselfservice.sprint.com/upgrd/trustedsource.xml"

    goto :goto_0

    .line 837
    .restart local v3       #status:Z
    :cond_4
    const-string v6, "SprintUpdater"

    const-string v7, "Error getting trustedsource.xml"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    .line 838
    const v1, 0x7f05000d

    goto :goto_1

    .line 840
    .end local v3           #status:Z
    :catch_0
    move-exception v0

    .line 841
    .local v0, e:Ljava/io/EOFException;
    const-string v6, "SprintUpdater"

    const-string v7, "Unable to get TrustedSource.xml file"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 842
    const v1, 0x7f05000d

    goto :goto_1

    .line 855
    .end local v0           #e:Ljava/io/EOFException;
    .end local v2           #httpServer:Lcom/sprint/ce/updater/HttpServer;
    :cond_5
    iget-object v6, p0, Lcom/sprint/ce/updater/UpdaterMain$15;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-boolean v6, v6, Lcom/sprint/ce/updater/UpdaterMain;->mBrowserAPK:Z

    if-eqz v6, :cond_6

    .line 856
    iget-object v6, p0, Lcom/sprint/ce/updater/UpdaterMain$15;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v7, p0, Lcom/sprint/ce/updater/UpdaterMain$15;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    #getter for: Lcom/sprint/ce/updater/UpdaterMain;->mUpdateCheckDoneAlt:Ljava/lang/Runnable;
    invoke-static {v7}, Lcom/sprint/ce/updater/UpdaterMain;->access$9(Lcom/sprint/ce/updater/UpdaterMain;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sprint/ce/updater/UpdaterMain;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 858
    :cond_6
    iget-object v6, p0, Lcom/sprint/ce/updater/UpdaterMain$15;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    iget-object v7, p0, Lcom/sprint/ce/updater/UpdaterMain$15;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    #getter for: Lcom/sprint/ce/updater/UpdaterMain;->mUpdateCheckDoneAlt:Ljava/lang/Runnable;
    invoke-static {v7}, Lcom/sprint/ce/updater/UpdaterMain;->access$9(Lcom/sprint/ce/updater/UpdaterMain;)Ljava/lang/Runnable;

    move-result-object v7

    #calls: Lcom/sprint/ce/updater/UpdaterMain;->performUpdateCheck(Lcom/sprint/ce/updater/Response;Ljava/lang/Runnable;)V
    invoke-static {v6, v8, v7}, Lcom/sprint/ce/updater/UpdaterMain;->access$10(Lcom/sprint/ce/updater/UpdaterMain;Lcom/sprint/ce/updater/Response;Ljava/lang/Runnable;)V

    goto :goto_2
.end method
