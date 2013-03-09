.class Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$15;
.super Lcom/htc/fusion/fx/MessageListener;
.source "ContactWidgetMatrix.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->SetScene(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final synthetic this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;


# direct methods
.method constructor <init>(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)V
    .locals 0
    .parameter

    .prologue
    .line 1351
    iput-object p1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$15;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1351
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$15;->onMessageReceived(Ljava/lang/Void;)V

    return-void
.end method

.method public onMessageReceived(Ljava/lang/Void;)V
    .locals 8
    .parameter "message"

    .prologue
    const-wide/16 v6, -0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1354
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$15;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mstrGroupName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1355
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$15;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #calls: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->launchGroupPicker()V
    invoke-static {v0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$3500(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)V

    .line 1384
    :cond_0
    :goto_0
    return-void

    .line 1358
    :cond_1
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$15;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$600(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$15;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$600(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v5, :cond_5

    .line 1360
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$15;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$15;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$600(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;

    iput-object v0, v1, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->contactInfo:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;

    .line 1361
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$15;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->contactInfo:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;

    iget-wide v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->pid:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_2

    .line 1363
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$15;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHost:Lcom/htc/android/rosie/widget/Widget$Host;
    invoke-static {v0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$3600(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$15;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    iget-object v1, v1, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mstrGroupName:Ljava/lang/String;

    invoke-static {v0, v1, v4}, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->launchGroupMemberView(Lcom/htc/android/rosie/widget/Widget$Host;Ljava/lang/String;I)V

    goto :goto_0

    .line 1365
    :cond_2
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$15;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->contactInfo:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;

    iget-wide v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->pid:J

    const-wide/16 v2, -0x3

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 1367
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$15;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$600(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 1369
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$15;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$15;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$600(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;

    iput-object v0, v1, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->contactInfo:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;

    .line 1370
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$15;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->contactInfo:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;

    iget-wide v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->pid:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_3

    .line 1371
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$15;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHost:Lcom/htc/android/rosie/widget/Widget$Host;
    invoke-static {v0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$3600(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$15;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    iget-object v1, v1, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mstrGroupName:Ljava/lang/String;

    invoke-static {v0, v1, v4}, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->launchGroupMemberView(Lcom/htc/android/rosie/widget/Widget$Host;Ljava/lang/String;I)V

    goto :goto_0

    .line 1373
    :cond_3
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$15;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHost:Lcom/htc/android/rosie/widget/Widget$Host;
    invoke-static {v0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$3600(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$15;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    iget-object v1, v1, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mstrGroupName:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$15;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$600(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->launchGroupMemberView(Lcom/htc/android/rosie/widget/Widget$Host;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1377
    :cond_4
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$15;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHost:Lcom/htc/android/rosie/widget/Widget$Host;
    invoke-static {v0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$3600(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$15;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    iget-object v1, v1, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mstrGroupName:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$15;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$600(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->launchGroupMemberView(Lcom/htc/android/rosie/widget/Widget$Host;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1381
    :cond_5
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$15;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHost:Lcom/htc/android/rosie/widget/Widget$Host;
    invoke-static {v0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$3600(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$15;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    iget-object v1, v1, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mstrGroupName:Ljava/lang/String;

    invoke-static {v0, v1, v4}, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->launchGroupMemberView(Lcom/htc/android/rosie/widget/Widget$Host;Ljava/lang/String;I)V

    goto/16 :goto_0
.end method
