.class Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;
.super Lcom/htc/fusion/fx/MessageListener;
.source "ContactWidgetMatrix.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListItemBtnListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/fusion/fx/MessageListener",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private id:I

.field protected m_ListItem:Lcom/htc/fusion/fx/controls/FxListItem;

.field final synthetic this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;


# direct methods
.method public constructor <init>(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;Lcom/htc/fusion/fx/controls/FxListItem;)V
    .locals 1
    .parameter
    .parameter "listItem"

    .prologue
    .line 962
    iput-object p1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    .line 960
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;->id:I

    .line 963
    iput-object p2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;->m_ListItem:Lcom/htc/fusion/fx/controls/FxListItem;

    .line 964
    return-void
.end method

.method public constructor <init>(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;Lcom/htc/fusion/fx/controls/FxListItem;I)V
    .locals 1
    .parameter
    .parameter "listItem"
    .parameter "nID"

    .prologue
    .line 966
    iput-object p1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    .line 960
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;->id:I

    .line 967
    iput-object p2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;->m_ListItem:Lcom/htc/fusion/fx/controls/FxListItem;

    .line 968
    iput p3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;->id:I

    .line 969
    return-void
.end method


# virtual methods
.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 958
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;->onMessageReceived(Ljava/lang/Void;)V

    return-void
.end method

.method public onMessageReceived(Ljava/lang/Void;)V
    .locals 7
    .parameter "message"

    .prologue
    const-wide/16 v5, -0x2

    const-wide/16 v3, -0x3

    .line 974
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;->m_ListItem:Lcom/htc/fusion/fx/controls/FxListItem;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxListItem;->getIndex()I

    move-result v1

    iget-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$600(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$600(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 1038
    :cond_0
    :goto_0
    return-void

    .line 981
    :cond_1
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$600(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 983
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$600(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;->m_ListItem:Lcom/htc/fusion/fx/controls/FxListItem;

    invoke-virtual {v2}, Lcom/htc/fusion/fx/controls/FxListItem;->getIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;

    .line 989
    .local v0, contact:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;
    iget v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;->id:I

    if-nez v1, :cond_6

    .line 991
    iget-wide v1, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->pid:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 992
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #calls: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->launchVoiceMail()V
    invoke-static {v1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$2500(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)V

    goto :goto_0

    .line 993
    :cond_2
    iget-wide v1, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->pid:J

    cmp-long v1, v1, v5

    if-nez v1, :cond_3

    .line 994
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #calls: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->launchAddFavorites()V
    invoke-static {v1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$2600(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)V

    goto :goto_0

    .line 997
    :cond_3
    invoke-static {}, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->isTabletSetting()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 999
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    iget-wide v2, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->pid:J

    #calls: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->launchContactCard(J)V
    invoke-static {v1, v2, v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$2700(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;J)V

    goto :goto_0

    .line 1004
    :cond_4
    iget-object v1, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->action:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1006
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    iget-object v2, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->action:Ljava/lang/String;

    #calls: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->launchDefaultAction(Ljava/lang/String;Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;)V
    invoke-static {v1, v2, v0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$2800(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;Ljava/lang/String;Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;)V

    goto :goto_0

    .line 1008
    :cond_5
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    iget-wide v2, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->pid:J

    #calls: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->selectDefaultAction(J)V
    invoke-static {v1, v2, v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$2900(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;J)V

    goto :goto_0

    .line 1012
    :cond_6
    iget v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;->id:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    .line 1014
    iget-wide v1, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->pid:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_7

    .line 1015
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #calls: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->launchVoiceMail()V
    invoke-static {v1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$2500(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)V

    goto :goto_0

    .line 1016
    :cond_7
    iget-wide v1, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->pid:J

    cmp-long v1, v1, v5

    if-nez v1, :cond_8

    .line 1017
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #calls: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->launchAddFavorites()V
    invoke-static {v1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$2600(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)V

    goto :goto_0

    .line 1020
    :cond_8
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    iget-wide v2, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->pid:J

    #calls: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->launchContactCard(J)V
    invoke-static {v1, v2, v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$2700(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;J)V

    goto/16 :goto_0

    .line 1023
    :cond_9
    iget v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;->id:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_b

    .line 1025
    iget-wide v1, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->pid:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_a

    .line 1026
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #calls: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->launchVoiceMail()V
    invoke-static {v1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$2500(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)V

    goto/16 :goto_0

    .line 1027
    :cond_a
    iget-wide v1, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->pid:J

    cmp-long v1, v1, v5

    if-nez v1, :cond_0

    .line 1028
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #calls: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->launchAddFavorites()V
    invoke-static {v1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$2600(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)V

    goto/16 :goto_0

    .line 1030
    :cond_b
    iget v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;->id:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_c

    .line 1032
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    iget v2, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoType:I

    #calls: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->launchContactRelatedAction(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;I)V
    invoke-static {v1, v0, v2}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$3000(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;I)V

    goto/16 :goto_0

    .line 1036
    :cond_c
    const-string v1, "ContactWidgetMatrix"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Action ID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
