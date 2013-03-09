.class Lcom/htc/omadm/test/TestAPIActivity$ConfingVerifyHandler;
.super Landroid/os/Handler;
.source "TestAPIActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/omadm/test/TestAPIActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConfingVerifyHandler"
.end annotation


# instance fields
.field protected mCM:Lcom/htc/omadm/libdo/config/ConfigManager;

.field protected sys:Lcom/htc/omadm/libdo/system/SysLib;

.field final synthetic this$0:Lcom/htc/omadm/test/TestAPIActivity;


# direct methods
.method public constructor <init>(Lcom/htc/omadm/test/TestAPIActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 676
    iput-object p1, p0, Lcom/htc/omadm/test/TestAPIActivity$ConfingVerifyHandler;->this$0:Lcom/htc/omadm/test/TestAPIActivity;

    .line 677
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 678
    return-void
.end method

.method public constructor <init>(Lcom/htc/omadm/test/TestAPIActivity;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 680
    iput-object p1, p0, Lcom/htc/omadm/test/TestAPIActivity$ConfingVerifyHandler;->this$0:Lcom/htc/omadm/test/TestAPIActivity;

    .line 681
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 682
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/4 v11, 0x7

    const/4 v7, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 685
    iget-object v4, p0, Lcom/htc/omadm/test/TestAPIActivity$ConfingVerifyHandler;->this$0:Lcom/htc/omadm/test/TestAPIActivity;

    #getter for: Lcom/htc/omadm/test/TestAPIActivity;->LOG_TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/omadm/test/TestAPIActivity;->access$000(Lcom/htc/omadm/test/TestAPIActivity;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ConfingVerifyHandler:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    invoke-static {}, Lcom/htc/omadm/libdo/config/ConfigManager;->getSingleton()Lcom/htc/omadm/libdo/config/ConfigManager;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/omadm/test/TestAPIActivity$ConfingVerifyHandler;->mCM:Lcom/htc/omadm/libdo/config/ConfigManager;

    .line 687
    invoke-static {}, Lcom/htc/omadm/libdo/system/SysLib;->getSingleton()Lcom/htc/omadm/libdo/system/SysLib;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/omadm/test/TestAPIActivity$ConfingVerifyHandler;->sys:Lcom/htc/omadm/libdo/system/SysLib;

    .line 688
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 800
    :goto_0
    return-void

    .line 691
    :sswitch_0
    iget-object v4, p0, Lcom/htc/omadm/test/TestAPIActivity$ConfingVerifyHandler;->this$0:Lcom/htc/omadm/test/TestAPIActivity;

    iget-object v4, v4, Lcom/htc/omadm/test/TestAPIActivity;->mContext:Landroid/content/Context;

    const-string v5, "prepare connection ...."

    invoke-static {v4, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 692
    iget-object v4, p0, Lcom/htc/omadm/test/TestAPIActivity$ConfingVerifyHandler;->sys:Lcom/htc/omadm/libdo/system/SysLib;

    invoke-virtual {v4}, Lcom/htc/omadm/libdo/system/SysLib;->enableDmConnector()Z

    .line 693
    iget-object v4, p0, Lcom/htc/omadm/test/TestAPIActivity$ConfingVerifyHandler;->this$0:Lcom/htc/omadm/test/TestAPIActivity;

    iget-object v4, v4, Lcom/htc/omadm/test/TestAPIActivity;->mContext:Landroid/content/Context;

    const-string v5, "connection done"

    invoke-static {v4, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 704
    :sswitch_1
    iget-object v4, p0, Lcom/htc/omadm/test/TestAPIActivity$ConfingVerifyHandler;->this$0:Lcom/htc/omadm/test/TestAPIActivity;

    iget-object v4, v4, Lcom/htc/omadm/test/TestAPIActivity;->mContext:Landroid/content/Context;

    const-string v5, "Send digitalOffline->radioReset"

    invoke-static {v4, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 705
    iget-object v4, p0, Lcom/htc/omadm/test/TestAPIActivity$ConfingVerifyHandler;->this$0:Lcom/htc/omadm/test/TestAPIActivity;

    #getter for: Lcom/htc/omadm/test/TestAPIActivity;->LOG_TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/omadm/test/TestAPIActivity;->access$000(Lcom/htc/omadm/test/TestAPIActivity;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "digitalOffline():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/omadm/test/TestAPIActivity$ConfingVerifyHandler;->sys:Lcom/htc/omadm/libdo/system/SysLib;

    invoke-virtual {v6}, Lcom/htc/omadm/libdo/system/SysLib;->digitalOffline()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    iget-object v4, p0, Lcom/htc/omadm/test/TestAPIActivity$ConfingVerifyHandler;->this$0:Lcom/htc/omadm/test/TestAPIActivity;

    #getter for: Lcom/htc/omadm/test/TestAPIActivity;->LOG_TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/omadm/test/TestAPIActivity;->access$000(Lcom/htc/omadm/test/TestAPIActivity;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "radioReset():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/omadm/test/TestAPIActivity$ConfingVerifyHandler;->sys:Lcom/htc/omadm/libdo/system/SysLib;

    invoke-virtual {v6, v11}, Lcom/htc/omadm/libdo/system/SysLib;->radioReset(I)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    iget-object v4, p0, Lcom/htc/omadm/test/TestAPIActivity$ConfingVerifyHandler;->this$0:Lcom/htc/omadm/test/TestAPIActivity;

    iget-object v4, v4, Lcom/htc/omadm/test/TestAPIActivity;->mContext:Landroid/content/Context;

    const-string v5, "radioReset done"

    invoke-static {v4, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 710
    :sswitch_2
    iget-object v4, p0, Lcom/htc/omadm/test/TestAPIActivity$ConfingVerifyHandler;->this$0:Lcom/htc/omadm/test/TestAPIActivity;

    invoke-virtual {v4}, Lcom/htc/omadm/test/TestAPIActivity;->verifyJNIGetConValue()V

    goto/16 :goto_0

    .line 714
    :sswitch_3
    new-array v3, v11, [[Ljava/lang/String;

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "./CDMA/3GPD/Profile1/NAI"

    aput-object v5, v4, v10

    const-string v5, "54321"

    aput-object v5, v4, v9

    aput-object v4, v3, v10

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "./CDMA/3GPD/Profile1/PasswordAAA"

    aput-object v5, v4, v10

    const-string v5, "1.1.1.1"

    aput-object v5, v4, v9

    aput-object v4, v3, v9

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "./CDMA/3GPD/Profile1/PriHAIp"

    aput-object v5, v4, v10

    const-string v5, "63.168.238.41"

    aput-object v5, v4, v9

    aput-object v4, v3, v7

    const/4 v4, 0x3

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "./CDMA/3GPD/Profile1/ReverseTunneling"

    aput-object v6, v5, v10

    const-string v6, "0"

    aput-object v6, v5, v9

    aput-object v5, v3, v4

    const/4 v4, 0x4

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "./CDMA/3GPD/Profile1/SecHAIp"

    aput-object v6, v5, v10

    const-string v6, "63.168.229.41"

    aput-object v6, v5, v9

    aput-object v5, v3, v4

    const/4 v4, 0x5

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "./CDMA/NAM/CdmaNam"

    aput-object v6, v5, v10

    const-string v6, "10cd5864f7d0abfa8015c8ff3f"

    aput-object v6, v5, v9

    aput-object v5, v3, v4

    const/4 v4, 0x6

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "./CDMA/NAM/MobDirNum"

    aput-object v6, v5, v10

    const-string v6, "9a3156432700"

    aput-object v6, v5, v9

    aput-object v5, v3, v4

    .line 731
    .local v3, s_conValue:[[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 732
    iget-object v4, p0, Lcom/htc/omadm/test/TestAPIActivity$ConfingVerifyHandler;->this$0:Lcom/htc/omadm/test/TestAPIActivity;

    #getter for: Lcom/htc/omadm/test/TestAPIActivity;->LOG_TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/omadm/test/TestAPIActivity;->access$000(Lcom/htc/omadm/test/TestAPIActivity;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Set_ConValue:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v1

    aget-object v6, v6, v10

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v1

    aget-object v6, v6, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/omadm/test/TestAPIActivity$ConfingVerifyHandler;->mCM:Lcom/htc/omadm/libdo/config/ConfigManager;

    aget-object v7, v3, v1

    aget-object v7, v7, v10

    aget-object v8, v3, v1

    aget-object v8, v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/htc/omadm/libdo/config/ConfigManager;->Set_ConValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 738
    :cond_0
    iget-object v4, p0, Lcom/htc/omadm/test/TestAPIActivity$ConfingVerifyHandler;->this$0:Lcom/htc/omadm/test/TestAPIActivity;

    iget-object v4, v4, Lcom/htc/omadm/test/TestAPIActivity;->mContext:Landroid/content/Context;

    const-string v5, "Send system command digitalOffline...."

    invoke-static {v4, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 739
    iget-object v4, p0, Lcom/htc/omadm/test/TestAPIActivity$ConfingVerifyHandler;->this$0:Lcom/htc/omadm/test/TestAPIActivity;

    #getter for: Lcom/htc/omadm/test/TestAPIActivity;->LOG_TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/omadm/test/TestAPIActivity;->access$000(Lcom/htc/omadm/test/TestAPIActivity;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "digitalOffline():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/omadm/test/TestAPIActivity$ConfingVerifyHandler;->sys:Lcom/htc/omadm/libdo/system/SysLib;

    invoke-virtual {v6}, Lcom/htc/omadm/libdo/system/SysLib;->digitalOffline()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    iget-object v4, p0, Lcom/htc/omadm/test/TestAPIActivity$ConfingVerifyHandler;->this$0:Lcom/htc/omadm/test/TestAPIActivity;

    iget-object v4, v4, Lcom/htc/omadm/test/TestAPIActivity;->mContext:Landroid/content/Context;

    const-string v5, "Write data...."

    invoke-static {v4, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 742
    iget-object v4, p0, Lcom/htc/omadm/test/TestAPIActivity$ConfingVerifyHandler;->mCM:Lcom/htc/omadm/libdo/config/ConfigManager;

    invoke-static {}, Lcom/htc/omadm/libdo/config/ConfigManager;->COMMIT_ALL_Set_ConValue()V

    .line 743
    iget-object v4, p0, Lcom/htc/omadm/test/TestAPIActivity$ConfingVerifyHandler;->mCM:Lcom/htc/omadm/libdo/config/ConfigManager;

    invoke-static {}, Lcom/htc/omadm/libdo/config/ConfigManager;->CLEAR_COMMIT_MAP()V

    .line 745
    iget-object v4, p0, Lcom/htc/omadm/test/TestAPIActivity$ConfingVerifyHandler;->this$0:Lcom/htc/omadm/test/TestAPIActivity;

    iget-object v4, v4, Lcom/htc/omadm/test/TestAPIActivity;->mContext:Landroid/content/Context;

    const-string v5, "Radio reset...."

    invoke-static {v4, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 746
    iget-object v4, p0, Lcom/htc/omadm/test/TestAPIActivity$ConfingVerifyHandler;->this$0:Lcom/htc/omadm/test/TestAPIActivity;

    #getter for: Lcom/htc/omadm/test/TestAPIActivity;->LOG_TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/omadm/test/TestAPIActivity;->access$000(Lcom/htc/omadm/test/TestAPIActivity;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "radioReset():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/omadm/test/TestAPIActivity$ConfingVerifyHandler;->sys:Lcom/htc/omadm/libdo/system/SysLib;

    invoke-virtual {v6, v11}, Lcom/htc/omadm/libdo/system/SysLib;->radioReset(I)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    iget-object v4, p0, Lcom/htc/omadm/test/TestAPIActivity$ConfingVerifyHandler;->this$0:Lcom/htc/omadm/test/TestAPIActivity;

    iget-object v4, v4, Lcom/htc/omadm/test/TestAPIActivity;->mContext:Landroid/content/Context;

    const-string v5, "Radio reset done"

    invoke-static {v4, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 752
    .end local v1           #i:I
    .end local v3           #s_conValue:[[Ljava/lang/String;
    :sswitch_4
    const-string v0, "1390ECC503500A00012B80060D49F43528FD38945190CE5A947E0607223F4E26A4FA00060F50320C812C640AF1F476D9CB526D6006136819190578BBAD5064191771DB15E3E8FA1450060B39C247EA29131773E8578006082AA34B08FCED9F400201F0060720FA0642BD4500060722262EE6A538800607204B15E0C87D00060828C815E3E81947E0060B39A93E88FC0C9455145780060931F447E76C0CAA38FC061059F44E25781917760E8FD6A9A91C2E74060D4A8A3E8A8D1F8190966A4191DB0612601906412C5795E2EE708FA23F5143E88980060931A944CB55770E160E060F50C80642BCBB8FA28A6A470B9D0320060D4B396A4E75DB2D560EDADE79450610595E28A5DD5181992EB552C0640963E8061679455AA578BBAEE60E6A51FA713E83200CB398031F80060D4C7E92ED48640E13527099CAEE0614715E6D6514BBC9780306A19C655AA9C59CC4C73A060C40191900CA4BB390962BC7D0060C40190C8258EDA715465DCE100612615E5469617735273B25CFA433672C1C190005012005012C050124050130050134050128031EA91B300ACD8481D0DE2E4608C71C43BC859182685C4CD1A53867B114A520030B38DE20E46CD28C7050FF800B320945081908320896084B087D08E109DB086408AF0C9708FA0A710B070B390BCF0913092C095E09770AD50B520C010C650C7E0B2C0945083208960AA3084B087D08E109DB0A260A58086408AF0A0D0A710A8A0B070BCF091309A909C209F40A3F0B1A00F200C90AEE0B0701D2027609770C330C9701A909DB08190C1A0B2009DB01AA0025004E004901D2024D00C9013C0113016B01D4094509A9027C0A260B16004900C901FE025201D4024D009D08AF00C701D20B070B12084B09DB095E09C20AEE0B520BB60C7E0C974040702014030500406070208403050040607020900305004070B03310030E0050F1181A00840AC060A050E1381A0086620061C050F1381A0086622824A04070B03313412500307030089B403060D032A540306030037B403060300A4B403060300A51403060D82201403070300B99403070300CA940306030001140306030002D40306030003940306030009D4030603000AD4030603000C14030603000EF4030603001C54030603001F54030603002154030603002594030603003294030603003CD403060300BC5403060300BC9403060300BD940307030101540307030027340307030003B404040182062030400406060209403040040601020AE0304004070B03310030E0050F1101A00840AC0608050F1381A0086620061C050E1301A0086592820403070B0331340406030006B410200306030080B40306030085B404060300B834102003070300D9740307030193D4030603008474030703008674030603000054030603000094030603000514030603000614030603000814030603000E14030603001194030603001454030603001C940306030080540306030080940306030080D403070300871403070300851403070300801403060300037403070300057402820F8271E2820F8275A40402820A80305004060882032030500406060209C03050040606020B403050040606020B80347004060B03310030E005060310E3E0F2A0334005060310E420F2A0334004070320B4203340050E1181A00840AC060A050F1181A00840AC068E050E1381A0086620061C050E1301A00865900668050F1301A0086590068E050E1301A0086592820403070B03313404060300E3F4102004060300E4341020030603003CF40306030091B40306030092B403060300D97403060300D9B403070301809403060300369403060300489403060300C8F403060300C95403060300DE7403070300DF1403060E82705403060F02C19403060A02EEF403060F02EF5403060902FB1403060E832AD403060E832CB403060E832D9403060F832DD403070300E85403070E80E8540306030000D40306030003D4030603000754030603000BD4030603001BD403060D001BD4030603002214030603002394030603002914030603003D540306030087740306030087D403060300881403060300919403060300DE1403060300E41403070300E4D403070300DF940306030005F40307030007B4040400020300305004060682088030500406010205603050040600820BC03050040604020CC0305004060B03310030E0040608832C403320040608832C60333004060300C5803380040603000640338004060580C580338004060320288033600407058028803360050F1181A00840AC060A050E1381A0086620061C050E1181A00865880664050E1181A008658C0666050E1281A00818B00670050F1201A0080510066C050E1381A0086622824A050E1201A00805128208050E1301A0086592820404070B033134125005070310288000B41040030603001534040603001B941020040603002AD410200406030031141020040603003454102004060A00345410200406030037141020040603004234102004060300445410200406030044D41020040603009D54102004060D009D541020040603009EF4102004060300AF1410200306030EE7940306030EF57403070300951403070300AE9403070300F7140306030014D40306030025540306030030140306030047D40306030097F4030603009F1403060300AEF403060300AF7403060300AFD403060300B17403060300B1F403060300B23403060300C774030603010BB403060F02E29403060F02FCD403060F83227403060D032A7403070300B07403060300023403060300077403060300B01403070D0202F403070300043402820D832CE2820F8286A2820F8325230501820C4024060E8C15BC90D004060E8C04FC90D004060300BEBC90D00406030C003C90D00406030C017C90D00406030C01BC90D00406030C01FC90D00406030C023C90D00406030C08FC90D00406030C093C90D00406030C097C90D00406030C0CBC90D00406030C0CFC90D00406030C0D3C90D00406030C0DBC90D00406030C1BFC90D00406030C1C3C90D004060D0C427C90D00407030D207C90D0050E1201A00817D7921A04040B8207E03470040605020AA0304004060B0241C0304004070B03310030E0050E1101A00840AC0608050F1101A00840AC068E050F1381A0086620061C050F1301A0086590068E050F1381A0086622824A050E1301A0086592820404070B0331341250030604000734030603000734030603000AB4040603000F141020040603001A9410200306030023340406030044141020030603002E5404060300AE34102003070300387403060300211403070300AE5403060E020AD4030703000194040406820600305004060A025980305004070B03310030E0050F1181A00840AC060A050E1381A0086620061C050F1381A0086622824A050E1301A0086592820404070B033134125004060F00ABF410200406030019B41020040603001A141020040603003BD410200406030081D41020040603008454102004060300ABF4102004060300ACF4102003070300AD3403060300ACD403060900F99403070300F9940307030011F40404018200E030400406010207A0304004070B03310030E0050F1101A00840AC0608050E1381A0086620061C050F1381A0086622824A050E1301A0086592820404070B03313412500406098037941020040703003794102003070300D1D40307030105D4030603000E340306030016740307030108F40404058203803050040601820760305004060703310030E00506031023A0F5403350050703102E60F5403350050F1181A00840AC060A050E1381A0086620061C050F1301A0086590066A050F1381A0086622824A050E1301A0086592820404070703313412500406030023B41020040603002E741020040603003FF4102004060300E3541020030603009A940406030027D4102003060300AB9404070300E294102003060300AB3403060300AAF404070300457410200307030097D403060F02EED4030603001834030603001874030603001BB40306030025F40306030029740306030030B40306030049B40306030092F40306030098740306030098F40306030099940306030099B4030703009AB4030603000354030603002954030603002794030603003F5403060300989403060300C194030703017F54030603009E7403060300AB54030703010A340307030002F40282030F9002820306072405070208C03050050F1181A00840AC060A050E1301A00865928204040703001314102003070300979403060E832B1403070300B7340404010206E0304004060A0245C03040040709827F803040050F1101A00840AC0608050E1301A008659282040406030005541020030603002A94040603002B9410200406030044141020040603008C94102003070E82C47403060E02055403060E02071403070E020C140307030453F402820F8259E40409826EC03040040609822580304004060482016030500406020203C0305005060C9223600320346005060C9223600300346005060C92236002E0346005060C92236002C0346005060C92236002A0346005060C9223600220346005060C9223600200346005060C92236001E0346005060C92236001C0346005060C92236001A0346005060C9223600340346005060C922360036034600406078207203040040607820C60304004060A024AC0304004060A022400304004060A0224C0304004060A0228403040040603820960304004070B03310030E0050E1101A00840AC0608050F1181A00840AC060A050E1381A0086620061C050F1101A008446C068C050F1381A0086622824A050E1301A0086592820404070B033134125004070C92236000740406030006D41020040603000FD41020040603001E1410200406030027D41020040603003194102004060300E3541020030603000954030603000A74030603001054030603001E9403060300351403060300C4D403070300DBF4030703002D540306030000B4030603000D14030603001BB40306030026B40306030092F403060300D1D403060300E05403060300E15403060300EF5403070E02021403060300025403060300029403060E00029403060B0002B40306030002B403060300041403060300071403060F000934030608800BB4030603000BB4030603001354030603001554030603001AD4030603003ED4030603003F5403060300425403060300429403060300BCD403060300DAB403060300EF1403070E02075404070C922360005403070300935403070300A8D403060300007403060300C4340307030008F40404018204E03050040606820680305004070B03310030E0050F1181A00840AC060A050E1381A0086620061C050F1381A0086622824A04070B033134125003060F8201D403070782103403070300961403070300A014030603000834030603000A140306030017D403070300A09403070300A154030507820C4024060B08049C906004060308049C90600306030809DC84060B08059C90C00406030800DC908004060308031C90800406030803DC90800406030805DC908004060308035C90A004060308039C90A004070308059C90C004070B0800DC9080040602088B9C906004060B08001C906004060E08069C906004060B0804DC906004060308001C90600406030804DC9060040703088B9C9060050F1201A0090093920C050F1281A0090003920C050E1281A009001B9210050E1281A009006B9214050E1281A00900B3921803060308045C830609880B5C830703080B5C8405080204803050050F1181A00840AC060A03070300079404050A0282C03040050F1101A00840AC06080A0F118680000000000000000000A1E01B1A08180A0F118680028A140000000000000000001E4890050E1201A00896C79232050E1201A0087FFB9232040704020A1410300307030305DC8407090450BC912003070903EC1C84060E84B63C919004070C83FFDC919003070303F43C83070303FE1C83070303F21C83070E82821C82820302F3E2820E82F3E2820F828AA40401823280309005060192002000203090050F1381A0084004061203070182003403070301029404040A021640304004060A022300347004070B03310030E0050E1101A00840AC0608050F1101A00840AC068E050F1381A0086620061C050F1301A0086590068E050F1381A0086622824A050E1301A0086592820404070B0331341250030603000C340406030009F410200406030088B4102004060300BB741020030603000E940406030016D410200406030019941020040603002BD41020030603002E140406030041141020040603000A941020040603008F9410200306030011D4040603002F141020030603000C9404060300121410200406030013941020040603000E54102003060300485404060300BAB4102004060300BF14102004060300BF54102004060300BF94102003060300C01404060300C054102003060300C09404060300C0D4102004060300C114102004060300CD14102004060300CE54102004060300BFD4102003060300C15404060300CE94102004060300FED410200407030193541020030603001ED40306030026B403070300C0B403070300BE5403060F800BF4030603000B94030603000534030603001174030603007EF4030603008D340307030008B402820F82162305030400BC83041086023C84050304223C9080050E1301A0088447921003040F85305C8305030F601C8304030FD03C8306030FDFBC8307030FDFFC83050C0FB01C83040300E7FC83070300E7740305030FF81C83050E8F385C83050F8FF51C8305030F481C83050C0F801C8305108FF13C8305030F7EDC83040300087C83070300107C83050305245C84050317C41CC07C8306032001BC83060305323C83070305841C83050306983C8305100727FC8305030430FC83041001179C8307100117DC83051086827C84920"

    .line 754
    .local v0, Sprint60613PRL:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/omadm/test/TestAPIActivity$ConfingVerifyHandler;->this$0:Lcom/htc/omadm/test/TestAPIActivity;

    #getter for: Lcom/htc/omadm/test/TestAPIActivity;->LOG_TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/omadm/test/TestAPIActivity;->access$000(Lcom/htc/omadm/test/TestAPIActivity;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Set_ConValue:./CDMA/PRL/PrefRoamList:Sprint60613PRL:["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/omadm/test/TestAPIActivity$ConfingVerifyHandler;->mCM:Lcom/htc/omadm/libdo/config/ConfigManager;

    const-string v7, "./CDMA/PRL/PrefRoamList"

    invoke-virtual {v6, v7, v0}, Lcom/htc/omadm/libdo/config/ConfigManager;->Set_ConValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    iget-object v4, p0, Lcom/htc/omadm/test/TestAPIActivity$ConfingVerifyHandler;->this$0:Lcom/htc/omadm/test/TestAPIActivity;

    iget-object v4, v4, Lcom/htc/omadm/test/TestAPIActivity;->mContext:Landroid/content/Context;

    const-string v5, "Send system command digitalOffline...."

    invoke-static {v4, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 759
    iget-object v4, p0, Lcom/htc/omadm/test/TestAPIActivity$ConfingVerifyHandler;->this$0:Lcom/htc/omadm/test/TestAPIActivity;

    #getter for: Lcom/htc/omadm/test/TestAPIActivity;->LOG_TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/omadm/test/TestAPIActivity;->access$000(Lcom/htc/omadm/test/TestAPIActivity;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "digitalOffline():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/omadm/test/TestAPIActivity$ConfingVerifyHandler;->sys:Lcom/htc/omadm/libdo/system/SysLib;

    invoke-virtual {v6}, Lcom/htc/omadm/libdo/system/SysLib;->digitalOffline()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    iget-object v4, p0, Lcom/htc/omadm/test/TestAPIActivity$ConfingVerifyHandler;->this$0:Lcom/htc/omadm/test/TestAPIActivity;

    iget-object v4, v4, Lcom/htc/omadm/test/TestAPIActivity;->mContext:Landroid/content/Context;

    const-string v5, "Write PRL data...."

    invoke-static {v4, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 762
    iget-object v4, p0, Lcom/htc/omadm/test/TestAPIActivity$ConfingVerifyHandler;->mCM:Lcom/htc/omadm/libdo/config/ConfigManager;

    invoke-static {}, Lcom/htc/omadm/libdo/config/ConfigManager;->COMMIT_ALL_Set_ConValue()V

    .line 763
    iget-object v4, p0, Lcom/htc/omadm/test/TestAPIActivity$ConfingVerifyHandler;->mCM:Lcom/htc/omadm/libdo/config/ConfigManager;

    invoke-static {}, Lcom/htc/omadm/libdo/config/ConfigManager;->CLEAR_COMMIT_MAP()V

    .line 765
    iget-object v4, p0, Lcom/htc/omadm/test/TestAPIActivity$ConfingVerifyHandler;->this$0:Lcom/htc/omadm/test/TestAPIActivity;

    iget-object v4, v4, Lcom/htc/omadm/test/TestAPIActivity;->mContext:Landroid/content/Context;

    const-string v5, "Radio reset...."

    invoke-static {v4, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 766
    iget-object v4, p0, Lcom/htc/omadm/test/TestAPIActivity$ConfingVerifyHandler;->this$0:Lcom/htc/omadm/test/TestAPIActivity;

    #getter for: Lcom/htc/omadm/test/TestAPIActivity;->LOG_TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/omadm/test/TestAPIActivity;->access$000(Lcom/htc/omadm/test/TestAPIActivity;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "radioReset():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/omadm/test/TestAPIActivity$ConfingVerifyHandler;->sys:Lcom/htc/omadm/libdo/system/SysLib;

    invoke-virtual {v6, v11}, Lcom/htc/omadm/libdo/system/SysLib;->radioReset(I)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    iget-object v4, p0, Lcom/htc/omadm/test/TestAPIActivity$ConfingVerifyHandler;->this$0:Lcom/htc/omadm/test/TestAPIActivity;

    iget-object v4, v4, Lcom/htc/omadm/test/TestAPIActivity;->mContext:Landroid/content/Context;

    const-string v5, "Radio reset done"

    invoke-static {v4, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 772
    .end local v0           #Sprint60613PRL:Ljava/lang/String;
    :sswitch_5
    const-string v2, "12E1ECF403800D400127800612615E2EE514321A90320C8578C83E88FD2C00060B3832096190578C81F40640060F51C23E88FCEDA58514A8CD4A7115E0060F5019190579B59F45AABB983945352006051A26352BB8060721A944CE747080060C425854725D7715E73AD4A1980201F0060B39F447E6A5132584E2A8C0060B39F447EA28258AF0640640060B3A8A5467D0D4A26064E740060B39F43529C5452A32EE5780060D48320323203204B2BCE74A2977060F515E2EE7D1452A35DC8FD38AD560E00607204B0325DCAF00060829452BC0C8258190060721F44E2A8CD480060D49452BC5DD83AD50320C8320C806082AD5672BB9A936B006082B07672D49B5B9D006082819064514AF177006082819672D49B5B9D0060B39A938476CFA20D44C8FC0060F52D55DCC1D9CB526D70CE26401834006082945352CE5A939D0060720E179EFA20080060412D580200604111379E00607207D28A9C44B00060410FA5AA0060411A94B0006051A715AAE74060722EE6A4515CE80060411455AA0060412716720060B39454E2B559CC338991940060B38AF2EE8FD83B396D725C00609315E8025DCA2C1A86606072064352B54E100060518325AB0CC05012005012C050124050130050134050128031A911B300ACD8486F1822E4710EF2164609A17133470CF62294A40030B38DE20E46C638287FC3C400B2A09450AA308960A2608320819084B09DB08640A580A8A09770A71087D08AF08E108FA0A0D0B070B520C970B12084B0913097709DB0A0D0BCF0C0101A901AA0B1400C9004900C701D401FE024D025208AF009D01D20B1209770C330C9701D2027601D4024D01AA027C0B1009F40A260AEE0B070B9D0BCF00C900F240404820140305004060482084030500407048209003050050F1801A00840AC060A03060A02725403060A032A540306038037B403060380A4B403060380A51403060A02201403070380B99403070380CA940306038001140306038002D40306038003940306038009D4030603800AD4030603800C14030616000EF4030603800EF4030603801C54030603801F54030603802154030603802594030603803294030603803CD403060380BC5403060380BC9403060380BD94030703810154030603802734030603803C9404040602062030500406010209403050040706020AE03050050F1801A00840AC060A050E1901A008659282040406038006B410200306038080B40406038085B4102004070380B834102003070380847403070380B854030603801194030603800054030603800094030603800514030603800814030603800E14030603801454030603801C940306038080940306038080540306038080D40306038081540307038087140307038085140307038080140306038177540307120177540406158C15BC90D00406158C04FC90D004060380BEBC90D00406038C003C90D00406038C017C90D00406038C01BC90D00406038C01FC90D00406038C023C90D00406038C08FC90D00406038C093C90D00406038C097C90D00406038C0CBC90D00406038C0CFC90D00406038C0D3C90D00406038C0DBC90D00406038C1BFC90D00406038C1C3C90D00407038D207C90D00406140C419C90D0050E1A01A00817D7921A040404020A80305004060602032030500406040209C03050040604020B403050040601020B80347005060390E3E0F2A0334005060390E420F2A03340040703A0B4203340050E1801A00840AC060A050F1801A00840AC068E050E1901A00865900668050F1901A0086590068E050E1901A0086592820404060380E3F4102004060380E4341020040603803CF410200306038091B40306038092B404060380D974102003060380D9B403060381B0D403070381809403060380369403060380489403060380C8F403060380C95403060380DE7403070380DF1403060B82705403060B82C19403060B82EEF403060B82EF5403060B82FB1403060B832AD403060B832CB403060B832D9403060B832DD403060B8332B403070B80E8540306038000D40306038003D403060E8003D4030603800754030603800BD403060E801BD4030603801BD40306038020D4030603802214030603802914030603803D540306038080540306038087740306038087D403060380881403060380919403060380C91403060380D99403060380E47403070380DE1403070380DF940306038177540307120177540306160183D40306038183D40306038F2E94040404020300305004060402088030500406060205603050040604020BC03050040604020CC03050040602832C403320040602832C60333004060380C5803380040603800640338004060280C5803380040703A0288033600407028028803360050F1801A00840AC060A050E1881A00865880664050E1881A008658C0666050E1881A00818B00670050F1881A0080510066C050E1881A0080512826E050E1901A0086592820405070390288000B41370030603801534040603801B941020040603802AD410200406038031141020040603803454102004060E00345410200406038037141020040603804234102004060380445410200406038044D41020040603809D54102004060E009D541020040603809EF4102004060380AF1410200406038EE79410200306038EF574040703809514102003070380AE940306038014D40306038025540306038030140306038047D40306038097F403060380AF7403060380AFD403060380B17403060380B1F403060380B23403060380C774030603810BB403060A82E29403060A83227403070A832A74030703832CD403070D010F540307038202F403060380023403060380077403060380B01403070E0202F403070380EC9403070383973403060380F1940404008207E034700506009207E00B803480040600820AA030500407018241C03050050E1801A00840AC060A050E1801A00840AC068E050F1801A00840AC0690050E1901A0086590068E050F1901A00865900690050F1901A00800580690050E1901A00865928204030603800734030614800734030603800AB4040603800F141020040603801A94102004060380233410200406038044141020030603802E5404060380AE34102003070380387403070382081403060380211403060C02C39403060C00AE5403070380AE5403060F020AD403060380019403070F0001940307168225740406158C15BC90D0050E1A01A00817D7921A04040802060030500407088259803050050F1801A00840AC060A050E1901A008659282040406038019B41020040603801A141020040603803BD410200406038081D41020040603808454102004060380ABF4102004061600ABF4102004060380ACF4102004070380AD34102003070382081403060C00ACD403060C02C39403070C00F9940306038011F403060F8011F40404008207A030500407018200E03050050F1801A00840AC060A050E1901A008659282040406038037941020040714803794102003070380D1D40307038105D403060F800E34030603800E340306038016740306038108F4040400820760305004060582038030500506039023A0F5403350050703902E60F5403350050F1801A00840AC060A050F1901A0086590066A050E1901A00865928204040716028ED410200406038023B41020040603802E741020040603803FF41020030603809A940406038027D4102003060380AB9404060380E2941020040703804574102003070380AB540307140A8A340307038097D40306038018340306038018740306038025F40306038029740306038030B40306038049B40306038097B40306038098740306038098F40306038099B4030703809AB4030603809E74030610010A34030603800354030610800354030603802794030603804214030603817F5403060380AB3403070380AAF403071602DAD403060384AB540405050208C03050050F1801A00840AC060A050E1901A00865928204040703801314102003070380979403060380B7340404008206E030500406068245C03050040706827F803050050F1801A00840AC060A050E1901A008659282040406038005541020030603802A94040603802B9410200406038044141020040703808C941020030603820C14030603820554030703820714030603807EF403060F02071403060F020C14040400820C603050040607026EC03050040606824AC030500406068224C03050050603122360032034600506031223600300346005060312236002E0346005060312236002C0346005060312236002A03460050603122360022034600506031223600200346005060312236001E0346005060312236001C0346005060312236001A034600506031223600340346005070312236003603460050F1801A00840AC060A050F1881A008446C068C050E1901A008659282040406038009541020030603800A74040603803514102003070380DBF40407031223600054030603800D140306038026B403060380D1D403060380E05403070380E1540306038002B40306118002B4030603800254030603800BB4030603801554030603803ED403060380EF140404008201603050040600820720305004060082096030500406010203C03050040606822580305004060682240030500407068228403050050F1801A00840AC060A050E1901A008659282040406038006D41020040603800FD41020030603801054040603801E141020040603801E941020040603803194102003060380C4D404070380E35410200306038000B4030603801BB40306038092F403060380EF5403070B0202140306118002B40307038002B403060982C294030609829354030703802D54030611800294030611800414030603800414030603800714030603801354030603801AD403060380425403060380429403070380BCD403070380935403070380A8D404061288049C906004060388049C90600306038809DC8406038800DC908004060388031C90800406038803DC90800406038805DC908004060388035C90A004060388039C90A0030603880B1C84070388059C90C004060388001C90600406038804DC9060030703888B9C83060388045C850F1981A0090093920C050F1981A0090003920C050E1981A009001B9210050E1981A009006B9214050E1981A00900B392180404060204E030500407080206803050050F1801A00840AC060A03060D8201D403070D82103403070380961403060C832B5403060C832B9403070380A014030603800834030611000834030603800A14030611000A140306038017D403070380A09403060380A154040407823280309004060202048030500406078282C0305005060792002000203090050F1801A00840AC060A050F1881A008400406120307078200340307038102940306090292B403060902B0D403060902B13403060902C65403070902C6B403060380FF54030603800794040713020A14103003060382F3F403071582F3F40407168450BC912003071683EC1C83061384B63C83071383FFDC83060383F43C83071405475C8306038305DC83060384B65C8306168F557C8307038F55FC83070384CC1C83070383F21C8306038544BC8306140544BC830613020A3C898F1A0600000000000000000000A1E01A08180A0E1A0680028A140000000000000000001E489004040002164030500407068223003050050F1801A00840AC060A050E1901A00865928204030603800C340406038009F410200406038088B4102004060380BB741020030603800E940406038016D410200406038019941020040603802BD41020040603802E1410200406038041141020040603800A941020040603808F9410200306038011D4040603802F141020030603800C9404060380121410200406038013941020040603800E54102003060380485404060380BAB4102004060380BF14102004060380BF54102004060380BF94102003060380C01404060380C054102004060380C094102004060380C0D4102004060380C114102004060380CD14102004060380CE54102004060380BFD4102003060380C15404060380CE94102004060380FED410200407038193541020030603801ED40306038026B403060380BDD403070380C0B403061680BE5403070380BE54030616800BF4030603800B940306038005340306038008B4030603800DD4030603801174030603807EF4030703808D340306038177540307120177540406158C04FC90D0050E1A01A00817D7921A03041786023C83061786021C83061786061C83061786063C83061786065C83061786067C83061786069C8306178606BC8306178606DC8306178606FC83040384223C8304038F601C8304038FD03C8306038FDCBC8306038FDFFC8306038FD13C8306038FDF7C8306038FD2BC830414023D5C830703805BDC83060380E77C8304178FF13C83040380087C83060380007C8306038002FC83060380037C8306038003BC83060380043C83060380057C8306038005FC8306038007BC8306038008FC83060380107C83060380307C83060380207C83060380C43C8304038615BC8306038615FC83060386161C83040385245C84040317C41CC07C83060386C01C83060386C21C83060386C09C83060386C0FC83060386C85C83070386CE9C83060385841C83060385331C83040386983C8304170727FC8304038430FC83041701179C8306170115DC83041786827C86B50"

    .line 773
    .local v2, prl:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/omadm/test/TestAPIActivity$ConfingVerifyHandler;->this$0:Lcom/htc/omadm/test/TestAPIActivity;

    #getter for: Lcom/htc/omadm/test/TestAPIActivity;->LOG_TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/omadm/test/TestAPIActivity;->access$000(Lcom/htc/omadm/test/TestAPIActivity;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Set_ConValue:./CDMA/PRL/PrefRoamList:Sprint60660PRL:["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/omadm/test/TestAPIActivity$ConfingVerifyHandler;->mCM:Lcom/htc/omadm/libdo/config/ConfigManager;

    const-string v7, "./CDMA/PRL/PrefRoamList"

    invoke-virtual {v6, v7, v2}, Lcom/htc/omadm/libdo/config/ConfigManager;->Set_ConValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    iget-object v4, p0, Lcom/htc/omadm/test/TestAPIActivity$ConfingVerifyHandler;->this$0:Lcom/htc/omadm/test/TestAPIActivity;

    iget-object v4, v4, Lcom/htc/omadm/test/TestAPIActivity;->mContext:Landroid/content/Context;

    const-string v5, "Send system command digitalOffline...."

    invoke-static {v4, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 778
    iget-object v4, p0, Lcom/htc/omadm/test/TestAPIActivity$ConfingVerifyHandler;->this$0:Lcom/htc/omadm/test/TestAPIActivity;

    #getter for: Lcom/htc/omadm/test/TestAPIActivity;->LOG_TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/omadm/test/TestAPIActivity;->access$000(Lcom/htc/omadm/test/TestAPIActivity;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "digitalOffline():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/omadm/test/TestAPIActivity$ConfingVerifyHandler;->sys:Lcom/htc/omadm/libdo/system/SysLib;

    invoke-virtual {v6}, Lcom/htc/omadm/libdo/system/SysLib;->digitalOffline()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    iget-object v4, p0, Lcom/htc/omadm/test/TestAPIActivity$ConfingVerifyHandler;->this$0:Lcom/htc/omadm/test/TestAPIActivity;

    iget-object v4, v4, Lcom/htc/omadm/test/TestAPIActivity;->mContext:Landroid/content/Context;

    const-string v5, "Write PRL data...."

    invoke-static {v4, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 781
    iget-object v4, p0, Lcom/htc/omadm/test/TestAPIActivity$ConfingVerifyHandler;->mCM:Lcom/htc/omadm/libdo/config/ConfigManager;

    invoke-static {}, Lcom/htc/omadm/libdo/config/ConfigManager;->COMMIT_ALL_Set_ConValue()V

    .line 782
    iget-object v4, p0, Lcom/htc/omadm/test/TestAPIActivity$ConfingVerifyHandler;->mCM:Lcom/htc/omadm/libdo/config/ConfigManager;

    invoke-static {}, Lcom/htc/omadm/libdo/config/ConfigManager;->CLEAR_COMMIT_MAP()V

    .line 784
    iget-object v4, p0, Lcom/htc/omadm/test/TestAPIActivity$ConfingVerifyHandler;->this$0:Lcom/htc/omadm/test/TestAPIActivity;

    iget-object v4, v4, Lcom/htc/omadm/test/TestAPIActivity;->mContext:Landroid/content/Context;

    const-string v5, "Radio reset...."

    invoke-static {v4, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 785
    iget-object v4, p0, Lcom/htc/omadm/test/TestAPIActivity$ConfingVerifyHandler;->this$0:Lcom/htc/omadm/test/TestAPIActivity;

    #getter for: Lcom/htc/omadm/test/TestAPIActivity;->LOG_TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/omadm/test/TestAPIActivity;->access$000(Lcom/htc/omadm/test/TestAPIActivity;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "radioReset():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/omadm/test/TestAPIActivity$ConfingVerifyHandler;->sys:Lcom/htc/omadm/libdo/system/SysLib;

    invoke-virtual {v6, v11}, Lcom/htc/omadm/libdo/system/SysLib;->radioReset(I)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    iget-object v4, p0, Lcom/htc/omadm/test/TestAPIActivity$ConfingVerifyHandler;->this$0:Lcom/htc/omadm/test/TestAPIActivity;

    iget-object v4, v4, Lcom/htc/omadm/test/TestAPIActivity;->mContext:Landroid/content/Context;

    const-string v5, "Radio reset done"

    invoke-static {v4, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 790
    .end local v2           #prl:Ljava/lang/String;
    :sswitch_6
    iget-object v4, p0, Lcom/htc/omadm/test/TestAPIActivity$ConfingVerifyHandler;->sys:Lcom/htc/omadm/libdo/system/SysLib;

    invoke-virtual {v4}, Lcom/htc/omadm/libdo/system/SysLib;->ExecRefurbish()V

    .line 791
    iget-object v4, p0, Lcom/htc/omadm/test/TestAPIActivity$ConfingVerifyHandler;->this$0:Lcom/htc/omadm/test/TestAPIActivity;

    iget-object v4, v4, Lcom/htc/omadm/test/TestAPIActivity;->mContext:Landroid/content/Context;

    const-string v5, "ExecRefurbish completed"

    invoke-static {v4, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 795
    :sswitch_7
    iget-object v4, p0, Lcom/htc/omadm/test/TestAPIActivity$ConfingVerifyHandler;->sys:Lcom/htc/omadm/libdo/system/SysLib;

    invoke-virtual {v4}, Lcom/htc/omadm/libdo/system/SysLib;->ExecRefurbish()V

    .line 796
    iget-object v4, p0, Lcom/htc/omadm/test/TestAPIActivity$ConfingVerifyHandler;->sys:Lcom/htc/omadm/libdo/system/SysLib;

    invoke-virtual {v4}, Lcom/htc/omadm/libdo/system/SysLib;->ExecFactoryReset()V

    .line 797
    iget-object v4, p0, Lcom/htc/omadm/test/TestAPIActivity$ConfingVerifyHandler;->this$0:Lcom/htc/omadm/test/TestAPIActivity;

    iget-object v4, v4, Lcom/htc/omadm/test/TestAPIActivity;->mContext:Landroid/content/Context;

    const-string v5, "RTN completed"

    invoke-static {v4, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 688
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0xc -> :sswitch_6
        0xe -> :sswitch_7
        0x64 -> :sswitch_0
    .end sparse-switch
.end method
